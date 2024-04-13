(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx89803%_)
      (let* ((_%g8980789821%_
              (lambda (_%g8980889817%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8980889817%_)))
             (_%g8980689863%_
              (lambda (_%g8980889825%_)
                (if (gx#stx-pair? _%g8980889825%_)
                    (let ((_%e8981089828%_ (gx#syntax-e _%g8980889825%_)))
                      (let ((_%hd8981189832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8981089828%_)))
                            (_%tl8981289835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8981089828%_))))
                        (if (gx#stx-pair? _%tl8981289835%_)
                            (let ((_%e8981389838%_
                                   (gx#syntax-e _%tl8981289835%_)))
                              (let ((_%hd8981489842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8981389838%_)))
                                    (_%tl8981589845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8981389838%_))))
                                (if (gx#stx-null? _%tl8981589845%_)
                                    ((lambda (_%L89848%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L89848%_ '()))))
                                     _%hd8981489842%_)
                                    (_%g8980789821%_ _%g8980889825%_))))
                            (_%g8980789821%_ _%g8980889825%_))))
                    (_%g8980789821%_ _%g8980889825%_)))))
        (_%g8980689863%_ _%$stx89803%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx89867%_)
      (let* ((_%g8987189917%_
              (lambda (_%g8987289913%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8987289913%_)))
             (_%g8987090070%_
              (lambda (_%g8987289921%_)
                (if (gx#stx-pair? _%g8987289921%_)
                    (let ((_%e8988289924%_ (gx#syntax-e _%g8987289921%_)))
                      (let ((_%hd8988389928%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8988289924%_)))
                            (_%tl8988489931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8988289924%_))))
                        (if (gx#stx-pair? _%tl8988489931%_)
                            (let ((_%e8988589934%_
                                   (gx#syntax-e _%tl8988489931%_)))
                              (let ((_%hd8988689938%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8988589934%_)))
                                    (_%tl8988789941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8988589934%_))))
                                (if (gx#stx-pair? _%tl8988789941%_)
                                    (let ((_%e8988889944%_
                                           (gx#syntax-e _%tl8988789941%_)))
                                      (let ((_%hd8988989948%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8988889944%_)))
                                            (_%tl8989089951%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8988889944%_))))
                                        (if (gx#stx-pair? _%tl8989089951%_)
                                            (let ((_%e8989189954%_
                                                   (gx#syntax-e
                                                    _%tl8989089951%_)))
                                              (let ((_%hd8989289958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8989189954%_)))
                                                    (_%tl8989389961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8989189954%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8989389961%_)
                                                    (let ((_%e8989489964%_
                                                           (gx#syntax-e
                                                            _%tl8989389961%_)))
                                                      (let ((_%hd8989589968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8989489964%_)))
                    (_%tl8989689971%_
                     (let () (declare (not safe)) (##cdr _%e8989489964%_))))
                (if (gx#stx-pair? _%tl8989689971%_)
                    (let ((_%e8989789974%_ (gx#syntax-e _%tl8989689971%_)))
                      (let ((_%hd8989889978%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8989789974%_)))
                            (_%tl8989989981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8989789974%_))))
                        (if (gx#stx-pair? _%tl8989989981%_)
                            (let ((_%e8990089984%_
                                   (gx#syntax-e _%tl8989989981%_)))
                              (let ((_%hd8990189988%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8990089984%_)))
                                    (_%tl8990289991%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8990089984%_))))
                                (if (gx#stx-pair? _%tl8990289991%_)
                                    (let ((_%e8990389994%_
                                           (gx#syntax-e _%tl8990289991%_)))
                                      (let ((_%hd8990489998%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8990389994%_)))
                                            (_%tl8990590001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8990389994%_))))
                                        (if (gx#stx-pair? _%tl8990590001%_)
                                            (let ((_%e8990690004%_
                                                   (gx#syntax-e
                                                    _%tl8990590001%_)))
                                              (let ((_%hd8990790008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8990690004%_)))
                                                    (_%tl8990890011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8990690004%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8990890011%_)
                                                    (let ((_%e8990990014%_
                                                           (gx#syntax-e
                                                            _%tl8990890011%_)))
                                                      (let ((_%hd8991090018%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8990990014%_)))
                    (_%tl8991190021%_
                     (let () (declare (not safe)) (##cdr _%e8990990014%_))))
                (if (gx#stx-null? _%tl8991190021%_)
                    ((lambda (_%L90024%_
                              _%L90026%_
                              _%L90027%_
                              _%L90028%_
                              _%L90029%_
                              _%L90030%_
                              _%L90031%_
                              _%L90032%_
                              _%L90033%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L90033%_
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
                         (cons _%L90026%_
                               (cons _%L90024%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L90032%_
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
                                                       (cons _%L90026%_
                                                             (cons _%L90024%_
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
                                                     (cons (cons _%L90031%_
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
                         (cons (cons _%L90030%_
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
                                                           (cons (cons _%L90030%_
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
                           (cons _%L90026%_
                                 (cons _%L90024%_
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
                         (cons (cons _%L90029%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L90029%_
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
                                     (cons (cons _%L90028%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L90029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L90028%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L90029%_
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
                                       (cons _%L90026%_
                                             (cons _%L90024%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L90029%_
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
                                     (cons (cons _%L90027%_
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
                                             (cons _%L90026%_
                                                   (cons _%L90024%_
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
                     _%hd8991090018%_
                     _%hd8990790008%_
                     _%hd8990489998%_
                     _%hd8990189988%_
                     _%hd8989889978%_
                     _%hd8989589968%_
                     _%hd8989289958%_
                     _%hd8988989948%_
                     _%hd8988689938%_)
                    (_%g8987189917%_ _%g8987289921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8987189917%_
                                                     _%g8987289921%_))))
                                            (_%g8987189917%_
                                             _%g8987289921%_))))
                                    (_%g8987189917%_ _%g8987289921%_))))
                            (_%g8987189917%_ _%g8987289921%_))))
                    (_%g8987189917%_ _%g8987289921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8987189917%_
                                                     _%g8987289921%_))))
                                            (_%g8987189917%_
                                             _%g8987289921%_))))
                                    (_%g8987189917%_ _%g8987289921%_))))
                            (_%g8987189917%_ _%g8987289921%_))))
                    (_%g8987189917%_ _%g8987289921%_)))))
        (_%g8987090070%_ _%$stx89867%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx90074%_)
      (let* ((_%g9007890100%_
              (lambda (_%g9007990096%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9007990096%_)))
             (_%g9007790169%_
              (lambda (_%g9007990104%_)
                (if (gx#stx-pair? _%g9007990104%_)
                    (let ((_%e9008390107%_ (gx#syntax-e _%g9007990104%_)))
                      (let ((_%hd9008490111%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9008390107%_)))
                            (_%tl9008590114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9008390107%_))))
                        (if (gx#stx-pair? _%tl9008590114%_)
                            (let ((_%e9008690117%_
                                   (gx#syntax-e _%tl9008590114%_)))
                              (let ((_%hd9008790121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9008690117%_)))
                                    (_%tl9008890124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9008690117%_))))
                                (if (gx#stx-pair? _%tl9008890124%_)
                                    (let ((_%e9008990127%_
                                           (gx#syntax-e _%tl9008890124%_)))
                                      (let ((_%hd9009090131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9008990127%_)))
                                            (_%tl9009190134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9008990127%_))))
                                        (if (gx#stx-pair? _%tl9009190134%_)
                                            (let ((_%e9009290137%_
                                                   (gx#syntax-e
                                                    _%tl9009190134%_)))
                                              (let ((_%hd9009390141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9009290137%_)))
                                                    (_%tl9009490144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9009290137%_))))
                                                (if (gx#stx-null?
                                                     _%tl9009490144%_)
                                                    ((lambda (_%L90147%_
                                                              _%L90149%_
                                                              _%L90150%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L90150%_
                                                   (cons _%L90149%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L90149%_ (cons _%L90149%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L90147%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9009390141%_
                                                     _%hd9009090131%_
                                                     _%hd9008790121%_)
                                                    (_%g9007890100%_
                                                     _%g9007990104%_))))
                                            (_%g9007890100%_
                                             _%g9007990104%_))))
                                    (_%g9007890100%_ _%g9007990104%_))))
                            (_%g9007890100%_ _%g9007990104%_))))
                    (_%g9007890100%_ _%g9007990104%_)))))
        (_%g9007790169%_ _%$stx90074%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx90173%_)
      (let* ((_%g9017790211%_
              (lambda (_%g9017890207%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9017890207%_)))
             (_%g9017690322%_
              (lambda (_%g9017890215%_)
                (if (gx#stx-pair? _%g9017890215%_)
                    (let ((_%e9018590218%_ (gx#syntax-e _%g9017890215%_)))
                      (let ((_%hd9018690222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9018590218%_)))
                            (_%tl9018790225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9018590218%_))))
                        (if (gx#stx-pair? _%tl9018790225%_)
                            (let ((_%e9018890228%_
                                   (gx#syntax-e _%tl9018790225%_)))
                              (let ((_%hd9018990232%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9018890228%_)))
                                    (_%tl9019090235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9018890228%_))))
                                (if (gx#stx-pair? _%tl9019090235%_)
                                    (let ((_%e9019190238%_
                                           (gx#syntax-e _%tl9019090235%_)))
                                      (let ((_%hd9019290242%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9019190238%_)))
                                            (_%tl9019390245%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9019190238%_))))
                                        (if (gx#stx-pair? _%tl9019390245%_)
                                            (let ((_%e9019490248%_
                                                   (gx#syntax-e
                                                    _%tl9019390245%_)))
                                              (let ((_%hd9019590252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9019490248%_)))
                                                    (_%tl9019690255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9019490248%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9019690255%_)
                                                    (let ((_%e9019790258%_
                                                           (gx#syntax-e
                                                            _%tl9019690255%_)))
                                                      (let ((_%hd9019890262%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9019790258%_)))
                    (_%tl9019990265%_
                     (let () (declare (not safe)) (##cdr _%e9019790258%_))))
                (if (gx#stx-pair? _%tl9019990265%_)
                    (let ((_%e9020090268%_ (gx#syntax-e _%tl9019990265%_)))
                      (let ((_%hd9020190272%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9020090268%_)))
                            (_%tl9020290275%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9020090268%_))))
                        (if (gx#stx-pair? _%tl9020290275%_)
                            (let ((_%e9020390278%_
                                   (gx#syntax-e _%tl9020290275%_)))
                              (let ((_%hd9020490282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9020390278%_)))
                                    (_%tl9020590285%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9020390278%_))))
                                (if (gx#stx-null? _%tl9020590285%_)
                                    ((lambda (_%L90288%_
                                              _%L90290%_
                                              _%L90291%_
                                              _%L90292%_
                                              _%L90293%_
                                              _%L90294%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90292%_
                                               (cons _%L90290%_ '()))
                                         (cons _%L90293%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90294%_ '()))
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
                               (cons _%L90294%_
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
                                     (cons _%L90288%_ '()))
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
                                     (cons (cons (cons _%L90291%_
                                                       (cons _%L90290%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90294%_
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
                                     _%hd9020490282%_
                                     _%hd9020190272%_
                                     _%hd9019890262%_
                                     _%hd9019590252%_
                                     _%hd9019290242%_
                                     _%hd9018990232%_)
                                    (_%g9017790211%_ _%g9017890215%_))))
                            (_%g9017790211%_ _%g9017890215%_))))
                    (_%g9017790211%_ _%g9017890215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9017790211%_
                                                     _%g9017890215%_))))
                                            (_%g9017790211%_
                                             _%g9017890215%_))))
                                    (_%g9017790211%_ _%g9017890215%_))))
                            (_%g9017790211%_ _%g9017890215%_))))
                    (_%g9017790211%_ _%g9017890215%_)))))
        (_%g9017690322%_ _%$stx90173%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90326%_)
      (let* ((_%g9033090372%_
              (lambda (_%g9033190368%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9033190368%_)))
             (_%g9032990511%_
              (lambda (_%g9033190376%_)
                (if (gx#stx-pair? _%g9033190376%_)
                    (let ((_%e9034090379%_ (gx#syntax-e _%g9033190376%_)))
                      (let ((_%hd9034190383%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9034090379%_)))
                            (_%tl9034290386%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9034090379%_))))
                        (if (gx#stx-pair? _%tl9034290386%_)
                            (let ((_%e9034390389%_
                                   (gx#syntax-e _%tl9034290386%_)))
                              (let ((_%hd9034490393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9034390389%_)))
                                    (_%tl9034590396%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9034390389%_))))
                                (if (gx#stx-pair? _%tl9034590396%_)
                                    (let ((_%e9034690399%_
                                           (gx#syntax-e _%tl9034590396%_)))
                                      (let ((_%hd9034790403%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9034690399%_)))
                                            (_%tl9034890406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9034690399%_))))
                                        (if (gx#stx-pair? _%tl9034890406%_)
                                            (let ((_%e9034990409%_
                                                   (gx#syntax-e
                                                    _%tl9034890406%_)))
                                              (let ((_%hd9035090413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9034990409%_)))
                                                    (_%tl9035190416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9034990409%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9035190416%_)
                                                    (let ((_%e9035290419%_
                                                           (gx#syntax-e
                                                            _%tl9035190416%_)))
                                                      (let ((_%hd9035390423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9035290419%_)))
                    (_%tl9035490426%_
                     (let () (declare (not safe)) (##cdr _%e9035290419%_))))
                (if (gx#stx-pair? _%tl9035490426%_)
                    (let ((_%e9035590429%_ (gx#syntax-e _%tl9035490426%_)))
                      (let ((_%hd9035690433%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9035590429%_)))
                            (_%tl9035790436%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9035590429%_))))
                        (if (gx#stx-pair? _%tl9035790436%_)
                            (let ((_%e9035890439%_
                                   (gx#syntax-e _%tl9035790436%_)))
                              (let ((_%hd9035990443%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9035890439%_)))
                                    (_%tl9036090446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9035890439%_))))
                                (if (gx#stx-pair? _%tl9036090446%_)
                                    (let ((_%e9036190449%_
                                           (gx#syntax-e _%tl9036090446%_)))
                                      (let ((_%hd9036290453%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9036190449%_)))
                                            (_%tl9036390456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9036190449%_))))
                                        (if (gx#stx-pair? _%tl9036390456%_)
                                            (let ((_%e9036490459%_
                                                   (gx#syntax-e
                                                    _%tl9036390456%_)))
                                              (let ((_%hd9036590463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9036490459%_)))
                                                    (_%tl9036690466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9036490459%_))))
                                                (if (gx#stx-null?
                                                     _%tl9036690466%_)
                                                    ((lambda (_%L90469%_
                                                              _%L90471%_
                                                              _%L90472%_
                                                              _%L90473%_
                                                              _%L90474%_
                                                              _%L90475%_
                                                              _%L90476%_
                                                              _%L90477%_)
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
                                                   (cons (cons _%L90475%_
                                                               (cons _%L90473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90476%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90477%_ '()))
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
                                               (cons _%L90477%_
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
                                                       (cons _%L90477%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90473%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90472%_ '()))))
               (cons (cons _%L90469%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90473%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90477%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90472%_ '()))))
                     (cons (cons _%L90471%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90473%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90477%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90473%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90477%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90472%_ '()))))
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
                                                     _%hd9036590463%_
                                                     _%hd9036290453%_
                                                     _%hd9035990443%_
                                                     _%hd9035690433%_
                                                     _%hd9035390423%_
                                                     _%hd9035090413%_
                                                     _%hd9034790403%_
                                                     _%hd9034490393%_)
                                                    (_%g9033090372%_
                                                     _%g9033190376%_))))
                                            (_%g9033090372%_
                                             _%g9033190376%_))))
                                    (_%g9033090372%_ _%g9033190376%_))))
                            (_%g9033090372%_ _%g9033190376%_))))
                    (_%g9033090372%_ _%g9033190376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9033090372%_
                                                     _%g9033190376%_))))
                                            (_%g9033090372%_
                                             _%g9033190376%_))))
                                    (_%g9033090372%_ _%g9033190376%_))))
                            (_%g9033090372%_ _%g9033190376%_))))
                    (_%g9033090372%_ _%g9033190376%_)))))
        (_%g9032990511%_ _%$stx90326%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90515%_)
      (let* ((_%g9051990565%_
              (lambda (_%g9052090561%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9052090561%_)))
             (_%g9051890718%_
              (lambda (_%g9052090569%_)
                (if (gx#stx-pair? _%g9052090569%_)
                    (let ((_%e9053090572%_ (gx#syntax-e _%g9052090569%_)))
                      (let ((_%hd9053190576%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9053090572%_)))
                            (_%tl9053290579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9053090572%_))))
                        (if (gx#stx-pair? _%tl9053290579%_)
                            (let ((_%e9053390582%_
                                   (gx#syntax-e _%tl9053290579%_)))
                              (let ((_%hd9053490586%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9053390582%_)))
                                    (_%tl9053590589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9053390582%_))))
                                (if (gx#stx-pair? _%tl9053590589%_)
                                    (let ((_%e9053690592%_
                                           (gx#syntax-e _%tl9053590589%_)))
                                      (let ((_%hd9053790596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9053690592%_)))
                                            (_%tl9053890599%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9053690592%_))))
                                        (if (gx#stx-pair? _%tl9053890599%_)
                                            (let ((_%e9053990602%_
                                                   (gx#syntax-e
                                                    _%tl9053890599%_)))
                                              (let ((_%hd9054090606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9053990602%_)))
                                                    (_%tl9054190609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9053990602%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9054190609%_)
                                                    (let ((_%e9054290612%_
                                                           (gx#syntax-e
                                                            _%tl9054190609%_)))
                                                      (let ((_%hd9054390616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9054290612%_)))
                    (_%tl9054490619%_
                     (let () (declare (not safe)) (##cdr _%e9054290612%_))))
                (if (gx#stx-pair? _%tl9054490619%_)
                    (let ((_%e9054590622%_ (gx#syntax-e _%tl9054490619%_)))
                      (let ((_%hd9054690626%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9054590622%_)))
                            (_%tl9054790629%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9054590622%_))))
                        (if (gx#stx-pair? _%tl9054790629%_)
                            (let ((_%e9054890632%_
                                   (gx#syntax-e _%tl9054790629%_)))
                              (let ((_%hd9054990636%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9054890632%_)))
                                    (_%tl9055090639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9054890632%_))))
                                (if (gx#stx-pair? _%tl9055090639%_)
                                    (let ((_%e9055190642%_
                                           (gx#syntax-e _%tl9055090639%_)))
                                      (let ((_%hd9055290646%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9055190642%_)))
                                            (_%tl9055390649%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9055190642%_))))
                                        (if (gx#stx-pair? _%tl9055390649%_)
                                            (let ((_%e9055490652%_
                                                   (gx#syntax-e
                                                    _%tl9055390649%_)))
                                              (let ((_%hd9055590656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9055490652%_)))
                                                    (_%tl9055690659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9055490652%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9055690659%_)
                                                    (let ((_%e9055790662%_
                                                           (gx#syntax-e
                                                            _%tl9055690659%_)))
                                                      (let ((_%hd9055890666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9055790662%_)))
                    (_%tl9055990669%_
                     (let () (declare (not safe)) (##cdr _%e9055790662%_))))
                (if (gx#stx-null? _%tl9055990669%_)
                    ((lambda (_%L90672%_
                              _%L90674%_
                              _%L90675%_
                              _%L90676%_
                              _%L90677%_
                              _%L90678%_
                              _%L90679%_
                              _%L90680%_
                              _%L90681%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90677%_ '()))
                         (cons _%L90680%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90681%_ '()))
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
                                                       (cons _%L90681%_
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
                                                               (cons _%L90681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90677%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90681%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90676%_
                                                     (cons _%L90675%_ '()))
                                               '()))))
                       (cons (cons _%L90672%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90681%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90677%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90681%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90676%_
                                                           (cons _%L90675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90674%_ '()) '()))))
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
                     (cons (cons (cons _%L90678%_
                                       (cons _%L90677%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90681%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90677%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90681%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90676%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90681%_
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
                     _%hd9055890666%_
                     _%hd9055590656%_
                     _%hd9055290646%_
                     _%hd9054990636%_
                     _%hd9054690626%_
                     _%hd9054390616%_
                     _%hd9054090606%_
                     _%hd9053790596%_
                     _%hd9053490586%_)
                    (_%g9051990565%_ _%g9052090569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9051990565%_
                                                     _%g9052090569%_))))
                                            (_%g9051990565%_
                                             _%g9052090569%_))))
                                    (_%g9051990565%_ _%g9052090569%_))))
                            (_%g9051990565%_ _%g9052090569%_))))
                    (_%g9051990565%_ _%g9052090569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9051990565%_
                                                     _%g9052090569%_))))
                                            (_%g9051990565%_
                                             _%g9052090569%_))))
                                    (_%g9051990565%_ _%g9052090569%_))))
                            (_%g9051990565%_ _%g9052090569%_))))
                    (_%g9051990565%_ _%g9052090569%_)))))
        (_%g9051890718%_ _%$stx90515%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90722%_)
      (let* ((_%g9072690760%_
              (lambda (_%g9072790756%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9072790756%_)))
             (_%g9072590871%_
              (lambda (_%g9072790764%_)
                (if (gx#stx-pair? _%g9072790764%_)
                    (let ((_%e9073490767%_ (gx#syntax-e _%g9072790764%_)))
                      (let ((_%hd9073590771%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9073490767%_)))
                            (_%tl9073690774%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9073490767%_))))
                        (if (gx#stx-pair? _%tl9073690774%_)
                            (let ((_%e9073790777%_
                                   (gx#syntax-e _%tl9073690774%_)))
                              (let ((_%hd9073890781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9073790777%_)))
                                    (_%tl9073990784%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9073790777%_))))
                                (if (gx#stx-pair? _%tl9073990784%_)
                                    (let ((_%e9074090787%_
                                           (gx#syntax-e _%tl9073990784%_)))
                                      (let ((_%hd9074190791%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9074090787%_)))
                                            (_%tl9074290794%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9074090787%_))))
                                        (if (gx#stx-pair? _%tl9074290794%_)
                                            (let ((_%e9074390797%_
                                                   (gx#syntax-e
                                                    _%tl9074290794%_)))
                                              (let ((_%hd9074490801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9074390797%_)))
                                                    (_%tl9074590804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9074390797%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9074590804%_)
                                                    (let ((_%e9074690807%_
                                                           (gx#syntax-e
                                                            _%tl9074590804%_)))
                                                      (let ((_%hd9074790811%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9074690807%_)))
                    (_%tl9074890814%_
                     (let () (declare (not safe)) (##cdr _%e9074690807%_))))
                (if (gx#stx-pair? _%tl9074890814%_)
                    (let ((_%e9074990817%_ (gx#syntax-e _%tl9074890814%_)))
                      (let ((_%hd9075090821%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9074990817%_)))
                            (_%tl9075190824%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9074990817%_))))
                        (if (gx#stx-pair? _%tl9075190824%_)
                            (let ((_%e9075290827%_
                                   (gx#syntax-e _%tl9075190824%_)))
                              (let ((_%hd9075390831%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9075290827%_)))
                                    (_%tl9075490834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9075290827%_))))
                                (if (gx#stx-null? _%tl9075490834%_)
                                    ((lambda (_%L90837%_
                                              _%L90839%_
                                              _%L90840%_
                                              _%L90841%_
                                              _%L90842%_
                                              _%L90843%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90841%_
                                               (cons _%L90839%_ '()))
                                         (cons _%L90842%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90843%_ '()))
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
                               (cons _%L90843%_
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
                                     (cons (cons (cons _%L90840%_
                                                       (cons _%L90839%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90843%_
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
                     (cons (cons _%L90837%_ '()) '()))))
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
                                     _%hd9075390831%_
                                     _%hd9075090821%_
                                     _%hd9074790811%_
                                     _%hd9074490801%_
                                     _%hd9074190791%_
                                     _%hd9073890781%_)
                                    (_%g9072690760%_ _%g9072790764%_))))
                            (_%g9072690760%_ _%g9072790764%_))))
                    (_%g9072690760%_ _%g9072790764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9072690760%_
                                                     _%g9072790764%_))))
                                            (_%g9072690760%_
                                             _%g9072790764%_))))
                                    (_%g9072690760%_ _%g9072790764%_))))
                            (_%g9072690760%_ _%g9072790764%_))))
                    (_%g9072690760%_ _%g9072790764%_)))))
        (_%g9072590871%_ _%$stx90722%_)))))

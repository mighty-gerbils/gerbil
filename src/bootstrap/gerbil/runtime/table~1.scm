(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx89570%_)
      (let* ((_%g8957489588%_
              (lambda (_%g8957589584%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8957589584%_)))
             (_%g8957389630%_
              (lambda (_%g8957589592%_)
                (if (gx#stx-pair? _%g8957589592%_)
                    (let ((_%e8957789595%_ (gx#syntax-e _%g8957589592%_)))
                      (let ((_%hd8957889599%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8957789595%_)))
                            (_%tl8957989602%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8957789595%_))))
                        (if (gx#stx-pair? _%tl8957989602%_)
                            (let ((_%e8958089605%_
                                   (gx#syntax-e _%tl8957989602%_)))
                              (let ((_%hd8958189609%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8958089605%_)))
                                    (_%tl8958289612%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8958089605%_))))
                                (if (gx#stx-null? _%tl8958289612%_)
                                    ((lambda (_%L89615%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L89615%_ '()))))
                                     _%hd8958189609%_)
                                    (_%g8957489588%_ _%g8957589592%_))))
                            (_%g8957489588%_ _%g8957589592%_))))
                    (_%g8957489588%_ _%g8957589592%_)))))
        (_%g8957389630%_ _%$stx89570%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx89634%_)
      (let* ((_%g8963889684%_
              (lambda (_%g8963989680%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8963989680%_)))
             (_%g8963789837%_
              (lambda (_%g8963989688%_)
                (if (gx#stx-pair? _%g8963989688%_)
                    (let ((_%e8964989691%_ (gx#syntax-e _%g8963989688%_)))
                      (let ((_%hd8965089695%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8964989691%_)))
                            (_%tl8965189698%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8964989691%_))))
                        (if (gx#stx-pair? _%tl8965189698%_)
                            (let ((_%e8965289701%_
                                   (gx#syntax-e _%tl8965189698%_)))
                              (let ((_%hd8965389705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8965289701%_)))
                                    (_%tl8965489708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8965289701%_))))
                                (if (gx#stx-pair? _%tl8965489708%_)
                                    (let ((_%e8965589711%_
                                           (gx#syntax-e _%tl8965489708%_)))
                                      (let ((_%hd8965689715%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8965589711%_)))
                                            (_%tl8965789718%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8965589711%_))))
                                        (if (gx#stx-pair? _%tl8965789718%_)
                                            (let ((_%e8965889721%_
                                                   (gx#syntax-e
                                                    _%tl8965789718%_)))
                                              (let ((_%hd8965989725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8965889721%_)))
                                                    (_%tl8966089728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8965889721%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8966089728%_)
                                                    (let ((_%e8966189731%_
                                                           (gx#syntax-e
                                                            _%tl8966089728%_)))
                                                      (let ((_%hd8966289735%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8966189731%_)))
                    (_%tl8966389738%_
                     (let () (declare (not safe)) (##cdr _%e8966189731%_))))
                (if (gx#stx-pair? _%tl8966389738%_)
                    (let ((_%e8966489741%_ (gx#syntax-e _%tl8966389738%_)))
                      (let ((_%hd8966589745%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8966489741%_)))
                            (_%tl8966689748%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8966489741%_))))
                        (if (gx#stx-pair? _%tl8966689748%_)
                            (let ((_%e8966789751%_
                                   (gx#syntax-e _%tl8966689748%_)))
                              (let ((_%hd8966889755%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8966789751%_)))
                                    (_%tl8966989758%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8966789751%_))))
                                (if (gx#stx-pair? _%tl8966989758%_)
                                    (let ((_%e8967089761%_
                                           (gx#syntax-e _%tl8966989758%_)))
                                      (let ((_%hd8967189765%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8967089761%_)))
                                            (_%tl8967289768%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8967089761%_))))
                                        (if (gx#stx-pair? _%tl8967289768%_)
                                            (let ((_%e8967389771%_
                                                   (gx#syntax-e
                                                    _%tl8967289768%_)))
                                              (let ((_%hd8967489775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8967389771%_)))
                                                    (_%tl8967589778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8967389771%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8967589778%_)
                                                    (let ((_%e8967689781%_
                                                           (gx#syntax-e
                                                            _%tl8967589778%_)))
                                                      (let ((_%hd8967789785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8967689781%_)))
                    (_%tl8967889788%_
                     (let () (declare (not safe)) (##cdr _%e8967689781%_))))
                (if (gx#stx-null? _%tl8967889788%_)
                    ((lambda (_%L89791%_
                              _%L89793%_
                              _%L89794%_
                              _%L89795%_
                              _%L89796%_
                              _%L89797%_
                              _%L89798%_
                              _%L89799%_
                              _%L89800%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L89800%_
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
                         (cons _%L89793%_
                               (cons _%L89791%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L89799%_
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
                                                       (cons _%L89793%_
                                                             (cons _%L89791%_
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
                                                     (cons (cons _%L89798%_
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
                         (cons (cons _%L89797%_
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
                                                           (cons (cons _%L89797%_
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
                           (cons _%L89793%_
                                 (cons _%L89791%_
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
                         (cons (cons _%L89796%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L89796%_
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
                                     (cons (cons _%L89795%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L89796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L89795%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L89796%_
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
                                       (cons _%L89793%_
                                             (cons _%L89791%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L89796%_
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
                                     (cons (cons _%L89794%_
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
                                             (cons _%L89793%_
                                                   (cons _%L89791%_
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
                     _%hd8967789785%_
                     _%hd8967489775%_
                     _%hd8967189765%_
                     _%hd8966889755%_
                     _%hd8966589745%_
                     _%hd8966289735%_
                     _%hd8965989725%_
                     _%hd8965689715%_
                     _%hd8965389705%_)
                    (_%g8963889684%_ _%g8963989688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8963889684%_
                                                     _%g8963989688%_))))
                                            (_%g8963889684%_
                                             _%g8963989688%_))))
                                    (_%g8963889684%_ _%g8963989688%_))))
                            (_%g8963889684%_ _%g8963989688%_))))
                    (_%g8963889684%_ _%g8963989688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8963889684%_
                                                     _%g8963989688%_))))
                                            (_%g8963889684%_
                                             _%g8963989688%_))))
                                    (_%g8963889684%_ _%g8963989688%_))))
                            (_%g8963889684%_ _%g8963989688%_))))
                    (_%g8963889684%_ _%g8963989688%_)))))
        (_%g8963789837%_ _%$stx89634%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx89841%_)
      (let* ((_%g8984589867%_
              (lambda (_%g8984689863%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8984689863%_)))
             (_%g8984489936%_
              (lambda (_%g8984689871%_)
                (if (gx#stx-pair? _%g8984689871%_)
                    (let ((_%e8985089874%_ (gx#syntax-e _%g8984689871%_)))
                      (let ((_%hd8985189878%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8985089874%_)))
                            (_%tl8985289881%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8985089874%_))))
                        (if (gx#stx-pair? _%tl8985289881%_)
                            (let ((_%e8985389884%_
                                   (gx#syntax-e _%tl8985289881%_)))
                              (let ((_%hd8985489888%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8985389884%_)))
                                    (_%tl8985589891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8985389884%_))))
                                (if (gx#stx-pair? _%tl8985589891%_)
                                    (let ((_%e8985689894%_
                                           (gx#syntax-e _%tl8985589891%_)))
                                      (let ((_%hd8985789898%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8985689894%_)))
                                            (_%tl8985889901%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8985689894%_))))
                                        (if (gx#stx-pair? _%tl8985889901%_)
                                            (let ((_%e8985989904%_
                                                   (gx#syntax-e
                                                    _%tl8985889901%_)))
                                              (let ((_%hd8986089908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8985989904%_)))
                                                    (_%tl8986189911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8985989904%_))))
                                                (if (gx#stx-null?
                                                     _%tl8986189911%_)
                                                    ((lambda (_%L89914%_
                                                              _%L89916%_
                                                              _%L89917%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L89917%_
                                                   (cons _%L89916%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L89916%_ (cons _%L89916%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L89914%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8986089908%_
                                                     _%hd8985789898%_
                                                     _%hd8985489888%_)
                                                    (_%g8984589867%_
                                                     _%g8984689871%_))))
                                            (_%g8984589867%_
                                             _%g8984689871%_))))
                                    (_%g8984589867%_ _%g8984689871%_))))
                            (_%g8984589867%_ _%g8984689871%_))))
                    (_%g8984589867%_ _%g8984689871%_)))))
        (_%g8984489936%_ _%$stx89841%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx89940%_)
      (let* ((_%g8994489978%_
              (lambda (_%g8994589974%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8994589974%_)))
             (_%g8994390089%_
              (lambda (_%g8994589982%_)
                (if (gx#stx-pair? _%g8994589982%_)
                    (let ((_%e8995289985%_ (gx#syntax-e _%g8994589982%_)))
                      (let ((_%hd8995389989%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8995289985%_)))
                            (_%tl8995489992%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8995289985%_))))
                        (if (gx#stx-pair? _%tl8995489992%_)
                            (let ((_%e8995589995%_
                                   (gx#syntax-e _%tl8995489992%_)))
                              (let ((_%hd8995689999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8995589995%_)))
                                    (_%tl8995790002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8995589995%_))))
                                (if (gx#stx-pair? _%tl8995790002%_)
                                    (let ((_%e8995890005%_
                                           (gx#syntax-e _%tl8995790002%_)))
                                      (let ((_%hd8995990009%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8995890005%_)))
                                            (_%tl8996090012%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8995890005%_))))
                                        (if (gx#stx-pair? _%tl8996090012%_)
                                            (let ((_%e8996190015%_
                                                   (gx#syntax-e
                                                    _%tl8996090012%_)))
                                              (let ((_%hd8996290019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8996190015%_)))
                                                    (_%tl8996390022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8996190015%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8996390022%_)
                                                    (let ((_%e8996490025%_
                                                           (gx#syntax-e
                                                            _%tl8996390022%_)))
                                                      (let ((_%hd8996590029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8996490025%_)))
                    (_%tl8996690032%_
                     (let () (declare (not safe)) (##cdr _%e8996490025%_))))
                (if (gx#stx-pair? _%tl8996690032%_)
                    (let ((_%e8996790035%_ (gx#syntax-e _%tl8996690032%_)))
                      (let ((_%hd8996890039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8996790035%_)))
                            (_%tl8996990042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8996790035%_))))
                        (if (gx#stx-pair? _%tl8996990042%_)
                            (let ((_%e8997090045%_
                                   (gx#syntax-e _%tl8996990042%_)))
                              (let ((_%hd8997190049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8997090045%_)))
                                    (_%tl8997290052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8997090045%_))))
                                (if (gx#stx-null? _%tl8997290052%_)
                                    ((lambda (_%L90055%_
                                              _%L90057%_
                                              _%L90058%_
                                              _%L90059%_
                                              _%L90060%_
                                              _%L90061%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90059%_
                                               (cons _%L90057%_ '()))
                                         (cons _%L90060%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90061%_ '()))
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
                               (cons _%L90061%_
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
                                     (cons _%L90055%_ '()))
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
                                     (cons (cons (cons _%L90058%_
                                                       (cons _%L90057%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90061%_
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
                                     _%hd8997190049%_
                                     _%hd8996890039%_
                                     _%hd8996590029%_
                                     _%hd8996290019%_
                                     _%hd8995990009%_
                                     _%hd8995689999%_)
                                    (_%g8994489978%_ _%g8994589982%_))))
                            (_%g8994489978%_ _%g8994589982%_))))
                    (_%g8994489978%_ _%g8994589982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8994489978%_
                                                     _%g8994589982%_))))
                                            (_%g8994489978%_
                                             _%g8994589982%_))))
                                    (_%g8994489978%_ _%g8994589982%_))))
                            (_%g8994489978%_ _%g8994589982%_))))
                    (_%g8994489978%_ _%g8994589982%_)))))
        (_%g8994390089%_ _%$stx89940%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90093%_)
      (let* ((_%g9009790139%_
              (lambda (_%g9009890135%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9009890135%_)))
             (_%g9009690278%_
              (lambda (_%g9009890143%_)
                (if (gx#stx-pair? _%g9009890143%_)
                    (let ((_%e9010790146%_ (gx#syntax-e _%g9009890143%_)))
                      (let ((_%hd9010890150%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9010790146%_)))
                            (_%tl9010990153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9010790146%_))))
                        (if (gx#stx-pair? _%tl9010990153%_)
                            (let ((_%e9011090156%_
                                   (gx#syntax-e _%tl9010990153%_)))
                              (let ((_%hd9011190160%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9011090156%_)))
                                    (_%tl9011290163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9011090156%_))))
                                (if (gx#stx-pair? _%tl9011290163%_)
                                    (let ((_%e9011390166%_
                                           (gx#syntax-e _%tl9011290163%_)))
                                      (let ((_%hd9011490170%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9011390166%_)))
                                            (_%tl9011590173%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9011390166%_))))
                                        (if (gx#stx-pair? _%tl9011590173%_)
                                            (let ((_%e9011690176%_
                                                   (gx#syntax-e
                                                    _%tl9011590173%_)))
                                              (let ((_%hd9011790180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9011690176%_)))
                                                    (_%tl9011890183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9011690176%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9011890183%_)
                                                    (let ((_%e9011990186%_
                                                           (gx#syntax-e
                                                            _%tl9011890183%_)))
                                                      (let ((_%hd9012090190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9011990186%_)))
                    (_%tl9012190193%_
                     (let () (declare (not safe)) (##cdr _%e9011990186%_))))
                (if (gx#stx-pair? _%tl9012190193%_)
                    (let ((_%e9012290196%_ (gx#syntax-e _%tl9012190193%_)))
                      (let ((_%hd9012390200%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9012290196%_)))
                            (_%tl9012490203%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9012290196%_))))
                        (if (gx#stx-pair? _%tl9012490203%_)
                            (let ((_%e9012590206%_
                                   (gx#syntax-e _%tl9012490203%_)))
                              (let ((_%hd9012690210%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9012590206%_)))
                                    (_%tl9012790213%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9012590206%_))))
                                (if (gx#stx-pair? _%tl9012790213%_)
                                    (let ((_%e9012890216%_
                                           (gx#syntax-e _%tl9012790213%_)))
                                      (let ((_%hd9012990220%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9012890216%_)))
                                            (_%tl9013090223%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9012890216%_))))
                                        (if (gx#stx-pair? _%tl9013090223%_)
                                            (let ((_%e9013190226%_
                                                   (gx#syntax-e
                                                    _%tl9013090223%_)))
                                              (let ((_%hd9013290230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9013190226%_)))
                                                    (_%tl9013390233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9013190226%_))))
                                                (if (gx#stx-null?
                                                     _%tl9013390233%_)
                                                    ((lambda (_%L90236%_
                                                              _%L90238%_
                                                              _%L90239%_
                                                              _%L90240%_
                                                              _%L90241%_
                                                              _%L90242%_
                                                              _%L90243%_
                                                              _%L90244%_)
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
                                                   (cons (cons _%L90242%_
                                                               (cons _%L90240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90243%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90244%_ '()))
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
                                               (cons _%L90244%_
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
                                                       (cons _%L90244%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90240%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90239%_ '()))))
               (cons (cons _%L90236%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90240%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90244%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90239%_ '()))))
                     (cons (cons _%L90238%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90240%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90244%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90240%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90244%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90239%_ '()))))
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
                                                     _%hd9013290230%_
                                                     _%hd9012990220%_
                                                     _%hd9012690210%_
                                                     _%hd9012390200%_
                                                     _%hd9012090190%_
                                                     _%hd9011790180%_
                                                     _%hd9011490170%_
                                                     _%hd9011190160%_)
                                                    (_%g9009790139%_
                                                     _%g9009890143%_))))
                                            (_%g9009790139%_
                                             _%g9009890143%_))))
                                    (_%g9009790139%_ _%g9009890143%_))))
                            (_%g9009790139%_ _%g9009890143%_))))
                    (_%g9009790139%_ _%g9009890143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9009790139%_
                                                     _%g9009890143%_))))
                                            (_%g9009790139%_
                                             _%g9009890143%_))))
                                    (_%g9009790139%_ _%g9009890143%_))))
                            (_%g9009790139%_ _%g9009890143%_))))
                    (_%g9009790139%_ _%g9009890143%_)))))
        (_%g9009690278%_ _%$stx90093%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90282%_)
      (let* ((_%g9028690332%_
              (lambda (_%g9028790328%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9028790328%_)))
             (_%g9028590485%_
              (lambda (_%g9028790336%_)
                (if (gx#stx-pair? _%g9028790336%_)
                    (let ((_%e9029790339%_ (gx#syntax-e _%g9028790336%_)))
                      (let ((_%hd9029890343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9029790339%_)))
                            (_%tl9029990346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9029790339%_))))
                        (if (gx#stx-pair? _%tl9029990346%_)
                            (let ((_%e9030090349%_
                                   (gx#syntax-e _%tl9029990346%_)))
                              (let ((_%hd9030190353%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9030090349%_)))
                                    (_%tl9030290356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9030090349%_))))
                                (if (gx#stx-pair? _%tl9030290356%_)
                                    (let ((_%e9030390359%_
                                           (gx#syntax-e _%tl9030290356%_)))
                                      (let ((_%hd9030490363%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9030390359%_)))
                                            (_%tl9030590366%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9030390359%_))))
                                        (if (gx#stx-pair? _%tl9030590366%_)
                                            (let ((_%e9030690369%_
                                                   (gx#syntax-e
                                                    _%tl9030590366%_)))
                                              (let ((_%hd9030790373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9030690369%_)))
                                                    (_%tl9030890376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9030690369%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9030890376%_)
                                                    (let ((_%e9030990379%_
                                                           (gx#syntax-e
                                                            _%tl9030890376%_)))
                                                      (let ((_%hd9031090383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9030990379%_)))
                    (_%tl9031190386%_
                     (let () (declare (not safe)) (##cdr _%e9030990379%_))))
                (if (gx#stx-pair? _%tl9031190386%_)
                    (let ((_%e9031290389%_ (gx#syntax-e _%tl9031190386%_)))
                      (let ((_%hd9031390393%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9031290389%_)))
                            (_%tl9031490396%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9031290389%_))))
                        (if (gx#stx-pair? _%tl9031490396%_)
                            (let ((_%e9031590399%_
                                   (gx#syntax-e _%tl9031490396%_)))
                              (let ((_%hd9031690403%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9031590399%_)))
                                    (_%tl9031790406%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9031590399%_))))
                                (if (gx#stx-pair? _%tl9031790406%_)
                                    (let ((_%e9031890409%_
                                           (gx#syntax-e _%tl9031790406%_)))
                                      (let ((_%hd9031990413%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9031890409%_)))
                                            (_%tl9032090416%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9031890409%_))))
                                        (if (gx#stx-pair? _%tl9032090416%_)
                                            (let ((_%e9032190419%_
                                                   (gx#syntax-e
                                                    _%tl9032090416%_)))
                                              (let ((_%hd9032290423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9032190419%_)))
                                                    (_%tl9032390426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9032190419%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9032390426%_)
                                                    (let ((_%e9032490429%_
                                                           (gx#syntax-e
                                                            _%tl9032390426%_)))
                                                      (let ((_%hd9032590433%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9032490429%_)))
                    (_%tl9032690436%_
                     (let () (declare (not safe)) (##cdr _%e9032490429%_))))
                (if (gx#stx-null? _%tl9032690436%_)
                    ((lambda (_%L90439%_
                              _%L90441%_
                              _%L90442%_
                              _%L90443%_
                              _%L90444%_
                              _%L90445%_
                              _%L90446%_
                              _%L90447%_
                              _%L90448%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90444%_ '()))
                         (cons _%L90447%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90448%_ '()))
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
                                                       (cons _%L90448%_
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
                                                               (cons _%L90448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90444%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90448%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90443%_
                                                     (cons _%L90442%_ '()))
                                               '()))))
                       (cons (cons _%L90439%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90448%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90444%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90448%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90443%_
                                                           (cons _%L90442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90441%_ '()) '()))))
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
                     (cons (cons (cons _%L90445%_
                                       (cons _%L90444%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90448%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90444%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90448%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90443%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90448%_
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
                     _%hd9032590433%_
                     _%hd9032290423%_
                     _%hd9031990413%_
                     _%hd9031690403%_
                     _%hd9031390393%_
                     _%hd9031090383%_
                     _%hd9030790373%_
                     _%hd9030490363%_
                     _%hd9030190353%_)
                    (_%g9028690332%_ _%g9028790336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9028690332%_
                                                     _%g9028790336%_))))
                                            (_%g9028690332%_
                                             _%g9028790336%_))))
                                    (_%g9028690332%_ _%g9028790336%_))))
                            (_%g9028690332%_ _%g9028790336%_))))
                    (_%g9028690332%_ _%g9028790336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9028690332%_
                                                     _%g9028790336%_))))
                                            (_%g9028690332%_
                                             _%g9028790336%_))))
                                    (_%g9028690332%_ _%g9028790336%_))))
                            (_%g9028690332%_ _%g9028790336%_))))
                    (_%g9028690332%_ _%g9028790336%_)))))
        (_%g9028590485%_ _%$stx90282%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90489%_)
      (let* ((_%g9049390527%_
              (lambda (_%g9049490523%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9049490523%_)))
             (_%g9049290638%_
              (lambda (_%g9049490531%_)
                (if (gx#stx-pair? _%g9049490531%_)
                    (let ((_%e9050190534%_ (gx#syntax-e _%g9049490531%_)))
                      (let ((_%hd9050290538%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9050190534%_)))
                            (_%tl9050390541%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9050190534%_))))
                        (if (gx#stx-pair? _%tl9050390541%_)
                            (let ((_%e9050490544%_
                                   (gx#syntax-e _%tl9050390541%_)))
                              (let ((_%hd9050590548%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9050490544%_)))
                                    (_%tl9050690551%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9050490544%_))))
                                (if (gx#stx-pair? _%tl9050690551%_)
                                    (let ((_%e9050790554%_
                                           (gx#syntax-e _%tl9050690551%_)))
                                      (let ((_%hd9050890558%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9050790554%_)))
                                            (_%tl9050990561%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9050790554%_))))
                                        (if (gx#stx-pair? _%tl9050990561%_)
                                            (let ((_%e9051090564%_
                                                   (gx#syntax-e
                                                    _%tl9050990561%_)))
                                              (let ((_%hd9051190568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9051090564%_)))
                                                    (_%tl9051290571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9051090564%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9051290571%_)
                                                    (let ((_%e9051390574%_
                                                           (gx#syntax-e
                                                            _%tl9051290571%_)))
                                                      (let ((_%hd9051490578%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9051390574%_)))
                    (_%tl9051590581%_
                     (let () (declare (not safe)) (##cdr _%e9051390574%_))))
                (if (gx#stx-pair? _%tl9051590581%_)
                    (let ((_%e9051690584%_ (gx#syntax-e _%tl9051590581%_)))
                      (let ((_%hd9051790588%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9051690584%_)))
                            (_%tl9051890591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9051690584%_))))
                        (if (gx#stx-pair? _%tl9051890591%_)
                            (let ((_%e9051990594%_
                                   (gx#syntax-e _%tl9051890591%_)))
                              (let ((_%hd9052090598%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9051990594%_)))
                                    (_%tl9052190601%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9051990594%_))))
                                (if (gx#stx-null? _%tl9052190601%_)
                                    ((lambda (_%L90604%_
                                              _%L90606%_
                                              _%L90607%_
                                              _%L90608%_
                                              _%L90609%_
                                              _%L90610%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90608%_
                                               (cons _%L90606%_ '()))
                                         (cons _%L90609%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90610%_ '()))
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
                               (cons _%L90610%_
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
                                     (cons (cons (cons _%L90607%_
                                                       (cons _%L90606%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90610%_
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
                     (cons (cons _%L90604%_ '()) '()))))
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
                                     _%hd9052090598%_
                                     _%hd9051790588%_
                                     _%hd9051490578%_
                                     _%hd9051190568%_
                                     _%hd9050890558%_
                                     _%hd9050590548%_)
                                    (_%g9049390527%_ _%g9049490531%_))))
                            (_%g9049390527%_ _%g9049490531%_))))
                    (_%g9049390527%_ _%g9049490531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9049390527%_
                                                     _%g9049490531%_))))
                                            (_%g9049390527%_
                                             _%g9049490531%_))))
                                    (_%g9049390527%_ _%g9049490531%_))))
                            (_%g9049390527%_ _%g9049490531%_))))
                    (_%g9049390527%_ _%g9049490531%_)))))
        (_%g9049290638%_ _%$stx90489%_)))))

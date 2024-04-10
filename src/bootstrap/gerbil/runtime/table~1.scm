(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx89569%_)
      (let* ((_%g8957389587%_
              (lambda (_%g8957489583%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8957489583%_)))
             (_%g8957289629%_
              (lambda (_%g8957489591%_)
                (if (gx#stx-pair? _%g8957489591%_)
                    (let ((_%e8957689594%_ (gx#syntax-e _%g8957489591%_)))
                      (let ((_%hd8957789598%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8957689594%_)))
                            (_%tl8957889601%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8957689594%_))))
                        (if (gx#stx-pair? _%tl8957889601%_)
                            (let ((_%e8957989604%_
                                   (gx#syntax-e _%tl8957889601%_)))
                              (let ((_%hd8958089608%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8957989604%_)))
                                    (_%tl8958189611%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8957989604%_))))
                                (if (gx#stx-null? _%tl8958189611%_)
                                    ((lambda (_%L89614%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L89614%_ '()))))
                                     _%hd8958089608%_)
                                    (_%g8957389587%_ _%g8957489591%_))))
                            (_%g8957389587%_ _%g8957489591%_))))
                    (_%g8957389587%_ _%g8957489591%_)))))
        (_%g8957289629%_ _%$stx89569%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx89633%_)
      (let* ((_%g8963789683%_
              (lambda (_%g8963889679%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8963889679%_)))
             (_%g8963689836%_
              (lambda (_%g8963889687%_)
                (if (gx#stx-pair? _%g8963889687%_)
                    (let ((_%e8964889690%_ (gx#syntax-e _%g8963889687%_)))
                      (let ((_%hd8964989694%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8964889690%_)))
                            (_%tl8965089697%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8964889690%_))))
                        (if (gx#stx-pair? _%tl8965089697%_)
                            (let ((_%e8965189700%_
                                   (gx#syntax-e _%tl8965089697%_)))
                              (let ((_%hd8965289704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8965189700%_)))
                                    (_%tl8965389707%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8965189700%_))))
                                (if (gx#stx-pair? _%tl8965389707%_)
                                    (let ((_%e8965489710%_
                                           (gx#syntax-e _%tl8965389707%_)))
                                      (let ((_%hd8965589714%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8965489710%_)))
                                            (_%tl8965689717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8965489710%_))))
                                        (if (gx#stx-pair? _%tl8965689717%_)
                                            (let ((_%e8965789720%_
                                                   (gx#syntax-e
                                                    _%tl8965689717%_)))
                                              (let ((_%hd8965889724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8965789720%_)))
                                                    (_%tl8965989727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8965789720%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8965989727%_)
                                                    (let ((_%e8966089730%_
                                                           (gx#syntax-e
                                                            _%tl8965989727%_)))
                                                      (let ((_%hd8966189734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8966089730%_)))
                    (_%tl8966289737%_
                     (let () (declare (not safe)) (##cdr _%e8966089730%_))))
                (if (gx#stx-pair? _%tl8966289737%_)
                    (let ((_%e8966389740%_ (gx#syntax-e _%tl8966289737%_)))
                      (let ((_%hd8966489744%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8966389740%_)))
                            (_%tl8966589747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8966389740%_))))
                        (if (gx#stx-pair? _%tl8966589747%_)
                            (let ((_%e8966689750%_
                                   (gx#syntax-e _%tl8966589747%_)))
                              (let ((_%hd8966789754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8966689750%_)))
                                    (_%tl8966889757%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8966689750%_))))
                                (if (gx#stx-pair? _%tl8966889757%_)
                                    (let ((_%e8966989760%_
                                           (gx#syntax-e _%tl8966889757%_)))
                                      (let ((_%hd8967089764%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8966989760%_)))
                                            (_%tl8967189767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8966989760%_))))
                                        (if (gx#stx-pair? _%tl8967189767%_)
                                            (let ((_%e8967289770%_
                                                   (gx#syntax-e
                                                    _%tl8967189767%_)))
                                              (let ((_%hd8967389774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8967289770%_)))
                                                    (_%tl8967489777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8967289770%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8967489777%_)
                                                    (let ((_%e8967589780%_
                                                           (gx#syntax-e
                                                            _%tl8967489777%_)))
                                                      (let ((_%hd8967689784%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8967589780%_)))
                    (_%tl8967789787%_
                     (let () (declare (not safe)) (##cdr _%e8967589780%_))))
                (if (gx#stx-null? _%tl8967789787%_)
                    ((lambda (_%L89790%_
                              _%L89792%_
                              _%L89793%_
                              _%L89794%_
                              _%L89795%_
                              _%L89796%_
                              _%L89797%_
                              _%L89798%_
                              _%L89799%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L89799%_
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
                         (cons _%L89792%_
                               (cons _%L89790%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L89798%_
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
                                                       (cons _%L89792%_
                                                             (cons _%L89790%_
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
                                                     (cons (cons _%L89797%_
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
                         (cons (cons _%L89796%_
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
                                                           (cons (cons _%L89796%_
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
                           (cons _%L89792%_
                                 (cons _%L89790%_
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
                         (cons (cons _%L89795%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L89795%_
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
                                     (cons (cons _%L89794%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L89795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L89794%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L89795%_
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
                                       (cons _%L89792%_
                                             (cons _%L89790%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L89795%_
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
                                     (cons (cons _%L89793%_
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
                                             (cons _%L89792%_
                                                   (cons _%L89790%_
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
                     _%hd8967689784%_
                     _%hd8967389774%_
                     _%hd8967089764%_
                     _%hd8966789754%_
                     _%hd8966489744%_
                     _%hd8966189734%_
                     _%hd8965889724%_
                     _%hd8965589714%_
                     _%hd8965289704%_)
                    (_%g8963789683%_ _%g8963889687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8963789683%_
                                                     _%g8963889687%_))))
                                            (_%g8963789683%_
                                             _%g8963889687%_))))
                                    (_%g8963789683%_ _%g8963889687%_))))
                            (_%g8963789683%_ _%g8963889687%_))))
                    (_%g8963789683%_ _%g8963889687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8963789683%_
                                                     _%g8963889687%_))))
                                            (_%g8963789683%_
                                             _%g8963889687%_))))
                                    (_%g8963789683%_ _%g8963889687%_))))
                            (_%g8963789683%_ _%g8963889687%_))))
                    (_%g8963789683%_ _%g8963889687%_)))))
        (_%g8963689836%_ _%$stx89633%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx89840%_)
      (let* ((_%g8984489866%_
              (lambda (_%g8984589862%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8984589862%_)))
             (_%g8984389935%_
              (lambda (_%g8984589870%_)
                (if (gx#stx-pair? _%g8984589870%_)
                    (let ((_%e8984989873%_ (gx#syntax-e _%g8984589870%_)))
                      (let ((_%hd8985089877%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8984989873%_)))
                            (_%tl8985189880%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8984989873%_))))
                        (if (gx#stx-pair? _%tl8985189880%_)
                            (let ((_%e8985289883%_
                                   (gx#syntax-e _%tl8985189880%_)))
                              (let ((_%hd8985389887%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8985289883%_)))
                                    (_%tl8985489890%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8985289883%_))))
                                (if (gx#stx-pair? _%tl8985489890%_)
                                    (let ((_%e8985589893%_
                                           (gx#syntax-e _%tl8985489890%_)))
                                      (let ((_%hd8985689897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8985589893%_)))
                                            (_%tl8985789900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8985589893%_))))
                                        (if (gx#stx-pair? _%tl8985789900%_)
                                            (let ((_%e8985889903%_
                                                   (gx#syntax-e
                                                    _%tl8985789900%_)))
                                              (let ((_%hd8985989907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8985889903%_)))
                                                    (_%tl8986089910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8985889903%_))))
                                                (if (gx#stx-null?
                                                     _%tl8986089910%_)
                                                    ((lambda (_%L89913%_
                                                              _%L89915%_
                                                              _%L89916%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L89916%_
                                                   (cons _%L89915%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L89915%_ (cons _%L89915%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L89913%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8985989907%_
                                                     _%hd8985689897%_
                                                     _%hd8985389887%_)
                                                    (_%g8984489866%_
                                                     _%g8984589870%_))))
                                            (_%g8984489866%_
                                             _%g8984589870%_))))
                                    (_%g8984489866%_ _%g8984589870%_))))
                            (_%g8984489866%_ _%g8984589870%_))))
                    (_%g8984489866%_ _%g8984589870%_)))))
        (_%g8984389935%_ _%$stx89840%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx89939%_)
      (let* ((_%g8994389977%_
              (lambda (_%g8994489973%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8994489973%_)))
             (_%g8994290088%_
              (lambda (_%g8994489981%_)
                (if (gx#stx-pair? _%g8994489981%_)
                    (let ((_%e8995189984%_ (gx#syntax-e _%g8994489981%_)))
                      (let ((_%hd8995289988%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8995189984%_)))
                            (_%tl8995389991%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8995189984%_))))
                        (if (gx#stx-pair? _%tl8995389991%_)
                            (let ((_%e8995489994%_
                                   (gx#syntax-e _%tl8995389991%_)))
                              (let ((_%hd8995589998%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8995489994%_)))
                                    (_%tl8995690001%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8995489994%_))))
                                (if (gx#stx-pair? _%tl8995690001%_)
                                    (let ((_%e8995790004%_
                                           (gx#syntax-e _%tl8995690001%_)))
                                      (let ((_%hd8995890008%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8995790004%_)))
                                            (_%tl8995990011%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8995790004%_))))
                                        (if (gx#stx-pair? _%tl8995990011%_)
                                            (let ((_%e8996090014%_
                                                   (gx#syntax-e
                                                    _%tl8995990011%_)))
                                              (let ((_%hd8996190018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8996090014%_)))
                                                    (_%tl8996290021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8996090014%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8996290021%_)
                                                    (let ((_%e8996390024%_
                                                           (gx#syntax-e
                                                            _%tl8996290021%_)))
                                                      (let ((_%hd8996490028%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8996390024%_)))
                    (_%tl8996590031%_
                     (let () (declare (not safe)) (##cdr _%e8996390024%_))))
                (if (gx#stx-pair? _%tl8996590031%_)
                    (let ((_%e8996690034%_ (gx#syntax-e _%tl8996590031%_)))
                      (let ((_%hd8996790038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8996690034%_)))
                            (_%tl8996890041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8996690034%_))))
                        (if (gx#stx-pair? _%tl8996890041%_)
                            (let ((_%e8996990044%_
                                   (gx#syntax-e _%tl8996890041%_)))
                              (let ((_%hd8997090048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8996990044%_)))
                                    (_%tl8997190051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8996990044%_))))
                                (if (gx#stx-null? _%tl8997190051%_)
                                    ((lambda (_%L90054%_
                                              _%L90056%_
                                              _%L90057%_
                                              _%L90058%_
                                              _%L90059%_
                                              _%L90060%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90058%_
                                               (cons _%L90056%_ '()))
                                         (cons _%L90059%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90060%_ '()))
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
                               (cons _%L90060%_
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
                                     (cons _%L90054%_ '()))
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
                                     (cons (cons (cons _%L90057%_
                                                       (cons _%L90056%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90060%_
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
                                     _%hd8997090048%_
                                     _%hd8996790038%_
                                     _%hd8996490028%_
                                     _%hd8996190018%_
                                     _%hd8995890008%_
                                     _%hd8995589998%_)
                                    (_%g8994389977%_ _%g8994489981%_))))
                            (_%g8994389977%_ _%g8994489981%_))))
                    (_%g8994389977%_ _%g8994489981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8994389977%_
                                                     _%g8994489981%_))))
                                            (_%g8994389977%_
                                             _%g8994489981%_))))
                                    (_%g8994389977%_ _%g8994489981%_))))
                            (_%g8994389977%_ _%g8994489981%_))))
                    (_%g8994389977%_ _%g8994489981%_)))))
        (_%g8994290088%_ _%$stx89939%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90092%_)
      (let* ((_%g9009690138%_
              (lambda (_%g9009790134%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9009790134%_)))
             (_%g9009590277%_
              (lambda (_%g9009790142%_)
                (if (gx#stx-pair? _%g9009790142%_)
                    (let ((_%e9010690145%_ (gx#syntax-e _%g9009790142%_)))
                      (let ((_%hd9010790149%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9010690145%_)))
                            (_%tl9010890152%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9010690145%_))))
                        (if (gx#stx-pair? _%tl9010890152%_)
                            (let ((_%e9010990155%_
                                   (gx#syntax-e _%tl9010890152%_)))
                              (let ((_%hd9011090159%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9010990155%_)))
                                    (_%tl9011190162%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9010990155%_))))
                                (if (gx#stx-pair? _%tl9011190162%_)
                                    (let ((_%e9011290165%_
                                           (gx#syntax-e _%tl9011190162%_)))
                                      (let ((_%hd9011390169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9011290165%_)))
                                            (_%tl9011490172%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9011290165%_))))
                                        (if (gx#stx-pair? _%tl9011490172%_)
                                            (let ((_%e9011590175%_
                                                   (gx#syntax-e
                                                    _%tl9011490172%_)))
                                              (let ((_%hd9011690179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9011590175%_)))
                                                    (_%tl9011790182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9011590175%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9011790182%_)
                                                    (let ((_%e9011890185%_
                                                           (gx#syntax-e
                                                            _%tl9011790182%_)))
                                                      (let ((_%hd9011990189%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9011890185%_)))
                    (_%tl9012090192%_
                     (let () (declare (not safe)) (##cdr _%e9011890185%_))))
                (if (gx#stx-pair? _%tl9012090192%_)
                    (let ((_%e9012190195%_ (gx#syntax-e _%tl9012090192%_)))
                      (let ((_%hd9012290199%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9012190195%_)))
                            (_%tl9012390202%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9012190195%_))))
                        (if (gx#stx-pair? _%tl9012390202%_)
                            (let ((_%e9012490205%_
                                   (gx#syntax-e _%tl9012390202%_)))
                              (let ((_%hd9012590209%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9012490205%_)))
                                    (_%tl9012690212%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9012490205%_))))
                                (if (gx#stx-pair? _%tl9012690212%_)
                                    (let ((_%e9012790215%_
                                           (gx#syntax-e _%tl9012690212%_)))
                                      (let ((_%hd9012890219%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9012790215%_)))
                                            (_%tl9012990222%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9012790215%_))))
                                        (if (gx#stx-pair? _%tl9012990222%_)
                                            (let ((_%e9013090225%_
                                                   (gx#syntax-e
                                                    _%tl9012990222%_)))
                                              (let ((_%hd9013190229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9013090225%_)))
                                                    (_%tl9013290232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9013090225%_))))
                                                (if (gx#stx-null?
                                                     _%tl9013290232%_)
                                                    ((lambda (_%L90235%_
                                                              _%L90237%_
                                                              _%L90238%_
                                                              _%L90239%_
                                                              _%L90240%_
                                                              _%L90241%_
                                                              _%L90242%_
                                                              _%L90243%_)
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
                                                   (cons (cons _%L90241%_
                                                               (cons _%L90239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90242%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90243%_ '()))
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
                                               (cons _%L90243%_
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
                                                       (cons _%L90243%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90239%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90238%_ '()))))
               (cons (cons _%L90235%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90239%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90243%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90238%_ '()))))
                     (cons (cons _%L90237%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90239%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90243%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90239%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90243%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90238%_ '()))))
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
                                                     _%hd9013190229%_
                                                     _%hd9012890219%_
                                                     _%hd9012590209%_
                                                     _%hd9012290199%_
                                                     _%hd9011990189%_
                                                     _%hd9011690179%_
                                                     _%hd9011390169%_
                                                     _%hd9011090159%_)
                                                    (_%g9009690138%_
                                                     _%g9009790142%_))))
                                            (_%g9009690138%_
                                             _%g9009790142%_))))
                                    (_%g9009690138%_ _%g9009790142%_))))
                            (_%g9009690138%_ _%g9009790142%_))))
                    (_%g9009690138%_ _%g9009790142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9009690138%_
                                                     _%g9009790142%_))))
                                            (_%g9009690138%_
                                             _%g9009790142%_))))
                                    (_%g9009690138%_ _%g9009790142%_))))
                            (_%g9009690138%_ _%g9009790142%_))))
                    (_%g9009690138%_ _%g9009790142%_)))))
        (_%g9009590277%_ _%$stx90092%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90281%_)
      (let* ((_%g9028590331%_
              (lambda (_%g9028690327%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9028690327%_)))
             (_%g9028490484%_
              (lambda (_%g9028690335%_)
                (if (gx#stx-pair? _%g9028690335%_)
                    (let ((_%e9029690338%_ (gx#syntax-e _%g9028690335%_)))
                      (let ((_%hd9029790342%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9029690338%_)))
                            (_%tl9029890345%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9029690338%_))))
                        (if (gx#stx-pair? _%tl9029890345%_)
                            (let ((_%e9029990348%_
                                   (gx#syntax-e _%tl9029890345%_)))
                              (let ((_%hd9030090352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9029990348%_)))
                                    (_%tl9030190355%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9029990348%_))))
                                (if (gx#stx-pair? _%tl9030190355%_)
                                    (let ((_%e9030290358%_
                                           (gx#syntax-e _%tl9030190355%_)))
                                      (let ((_%hd9030390362%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9030290358%_)))
                                            (_%tl9030490365%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9030290358%_))))
                                        (if (gx#stx-pair? _%tl9030490365%_)
                                            (let ((_%e9030590368%_
                                                   (gx#syntax-e
                                                    _%tl9030490365%_)))
                                              (let ((_%hd9030690372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9030590368%_)))
                                                    (_%tl9030790375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9030590368%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9030790375%_)
                                                    (let ((_%e9030890378%_
                                                           (gx#syntax-e
                                                            _%tl9030790375%_)))
                                                      (let ((_%hd9030990382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9030890378%_)))
                    (_%tl9031090385%_
                     (let () (declare (not safe)) (##cdr _%e9030890378%_))))
                (if (gx#stx-pair? _%tl9031090385%_)
                    (let ((_%e9031190388%_ (gx#syntax-e _%tl9031090385%_)))
                      (let ((_%hd9031290392%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9031190388%_)))
                            (_%tl9031390395%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9031190388%_))))
                        (if (gx#stx-pair? _%tl9031390395%_)
                            (let ((_%e9031490398%_
                                   (gx#syntax-e _%tl9031390395%_)))
                              (let ((_%hd9031590402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9031490398%_)))
                                    (_%tl9031690405%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9031490398%_))))
                                (if (gx#stx-pair? _%tl9031690405%_)
                                    (let ((_%e9031790408%_
                                           (gx#syntax-e _%tl9031690405%_)))
                                      (let ((_%hd9031890412%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9031790408%_)))
                                            (_%tl9031990415%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9031790408%_))))
                                        (if (gx#stx-pair? _%tl9031990415%_)
                                            (let ((_%e9032090418%_
                                                   (gx#syntax-e
                                                    _%tl9031990415%_)))
                                              (let ((_%hd9032190422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9032090418%_)))
                                                    (_%tl9032290425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9032090418%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9032290425%_)
                                                    (let ((_%e9032390428%_
                                                           (gx#syntax-e
                                                            _%tl9032290425%_)))
                                                      (let ((_%hd9032490432%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9032390428%_)))
                    (_%tl9032590435%_
                     (let () (declare (not safe)) (##cdr _%e9032390428%_))))
                (if (gx#stx-null? _%tl9032590435%_)
                    ((lambda (_%L90438%_
                              _%L90440%_
                              _%L90441%_
                              _%L90442%_
                              _%L90443%_
                              _%L90444%_
                              _%L90445%_
                              _%L90446%_
                              _%L90447%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90443%_ '()))
                         (cons _%L90446%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90447%_ '()))
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
                                                       (cons _%L90447%_
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
                                                               (cons _%L90447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90443%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90447%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90442%_
                                                     (cons _%L90441%_ '()))
                                               '()))))
                       (cons (cons _%L90438%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90447%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90443%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90447%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90442%_
                                                           (cons _%L90441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90440%_ '()) '()))))
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
                     (cons (cons (cons _%L90444%_
                                       (cons _%L90443%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90447%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90443%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90447%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90442%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90447%_
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
                     _%hd9032490432%_
                     _%hd9032190422%_
                     _%hd9031890412%_
                     _%hd9031590402%_
                     _%hd9031290392%_
                     _%hd9030990382%_
                     _%hd9030690372%_
                     _%hd9030390362%_
                     _%hd9030090352%_)
                    (_%g9028590331%_ _%g9028690335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9028590331%_
                                                     _%g9028690335%_))))
                                            (_%g9028590331%_
                                             _%g9028690335%_))))
                                    (_%g9028590331%_ _%g9028690335%_))))
                            (_%g9028590331%_ _%g9028690335%_))))
                    (_%g9028590331%_ _%g9028690335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9028590331%_
                                                     _%g9028690335%_))))
                                            (_%g9028590331%_
                                             _%g9028690335%_))))
                                    (_%g9028590331%_ _%g9028690335%_))))
                            (_%g9028590331%_ _%g9028690335%_))))
                    (_%g9028590331%_ _%g9028690335%_)))))
        (_%g9028490484%_ _%$stx90281%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90488%_)
      (let* ((_%g9049290526%_
              (lambda (_%g9049390522%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9049390522%_)))
             (_%g9049190637%_
              (lambda (_%g9049390530%_)
                (if (gx#stx-pair? _%g9049390530%_)
                    (let ((_%e9050090533%_ (gx#syntax-e _%g9049390530%_)))
                      (let ((_%hd9050190537%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9050090533%_)))
                            (_%tl9050290540%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9050090533%_))))
                        (if (gx#stx-pair? _%tl9050290540%_)
                            (let ((_%e9050390543%_
                                   (gx#syntax-e _%tl9050290540%_)))
                              (let ((_%hd9050490547%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9050390543%_)))
                                    (_%tl9050590550%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9050390543%_))))
                                (if (gx#stx-pair? _%tl9050590550%_)
                                    (let ((_%e9050690553%_
                                           (gx#syntax-e _%tl9050590550%_)))
                                      (let ((_%hd9050790557%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9050690553%_)))
                                            (_%tl9050890560%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9050690553%_))))
                                        (if (gx#stx-pair? _%tl9050890560%_)
                                            (let ((_%e9050990563%_
                                                   (gx#syntax-e
                                                    _%tl9050890560%_)))
                                              (let ((_%hd9051090567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9050990563%_)))
                                                    (_%tl9051190570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9050990563%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9051190570%_)
                                                    (let ((_%e9051290573%_
                                                           (gx#syntax-e
                                                            _%tl9051190570%_)))
                                                      (let ((_%hd9051390577%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9051290573%_)))
                    (_%tl9051490580%_
                     (let () (declare (not safe)) (##cdr _%e9051290573%_))))
                (if (gx#stx-pair? _%tl9051490580%_)
                    (let ((_%e9051590583%_ (gx#syntax-e _%tl9051490580%_)))
                      (let ((_%hd9051690587%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9051590583%_)))
                            (_%tl9051790590%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9051590583%_))))
                        (if (gx#stx-pair? _%tl9051790590%_)
                            (let ((_%e9051890593%_
                                   (gx#syntax-e _%tl9051790590%_)))
                              (let ((_%hd9051990597%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9051890593%_)))
                                    (_%tl9052090600%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9051890593%_))))
                                (if (gx#stx-null? _%tl9052090600%_)
                                    ((lambda (_%L90603%_
                                              _%L90605%_
                                              _%L90606%_
                                              _%L90607%_
                                              _%L90608%_
                                              _%L90609%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90607%_
                                               (cons _%L90605%_ '()))
                                         (cons _%L90608%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90609%_ '()))
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
                               (cons _%L90609%_
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
                                     (cons (cons (cons _%L90606%_
                                                       (cons _%L90605%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90609%_
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
                     (cons (cons _%L90603%_ '()) '()))))
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
                                     _%hd9051990597%_
                                     _%hd9051690587%_
                                     _%hd9051390577%_
                                     _%hd9051090567%_
                                     _%hd9050790557%_
                                     _%hd9050490547%_)
                                    (_%g9049290526%_ _%g9049390530%_))))
                            (_%g9049290526%_ _%g9049390530%_))))
                    (_%g9049290526%_ _%g9049390530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9049290526%_
                                                     _%g9049390530%_))))
                                            (_%g9049290526%_
                                             _%g9049390530%_))))
                                    (_%g9049290526%_ _%g9049390530%_))))
                            (_%g9049290526%_ _%g9049390530%_))))
                    (_%g9049290526%_ _%g9049390530%_)))))
        (_%g9049190637%_ _%$stx90488%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx87516%_)
      (let* ((_%g8752087534%_
              (lambda (_%g8752187530%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8752187530%_)))
             (_%g8751987576%_
              (lambda (_%g8752187538%_)
                (if (gx#stx-pair? _%g8752187538%_)
                    (let ((_%e8752587541%_ (gx#syntax-e _%g8752187538%_)))
                      (let ((_%hd8752487545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8752587541%_)))
                            (_%tl8752387548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8752587541%_))))
                        (if (gx#stx-pair? _%tl8752387548%_)
                            (let ((_%e8752887551%_
                                   (gx#syntax-e _%tl8752387548%_)))
                              (let ((_%hd8752787555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8752887551%_)))
                                    (_%tl8752687558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8752887551%_))))
                                (if (gx#stx-null? _%tl8752687558%_)
                                    ((lambda (_%L87561%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L87561%_ '()))))
                                     _%hd8752787555%_)
                                    (_%g8752087534%_ _%g8752187538%_))))
                            (_%g8752087534%_ _%g8752187538%_))))
                    (_%g8752087534%_ _%g8752187538%_)))))
        (_%g8751987576%_ _%$stx87516%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx87580%_)
      (let* ((_%g8758487630%_
              (lambda (_%g8758587626%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8758587626%_)))
             (_%g8758387783%_
              (lambda (_%g8758587634%_)
                (if (gx#stx-pair? _%g8758587634%_)
                    (let ((_%e8759787637%_ (gx#syntax-e _%g8758587634%_)))
                      (let ((_%hd8759687641%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8759787637%_)))
                            (_%tl8759587644%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8759787637%_))))
                        (if (gx#stx-pair? _%tl8759587644%_)
                            (let ((_%e8760087647%_
                                   (gx#syntax-e _%tl8759587644%_)))
                              (let ((_%hd8759987651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8760087647%_)))
                                    (_%tl8759887654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8760087647%_))))
                                (if (gx#stx-pair? _%tl8759887654%_)
                                    (let ((_%e8760387657%_
                                           (gx#syntax-e _%tl8759887654%_)))
                                      (let ((_%hd8760287661%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8760387657%_)))
                                            (_%tl8760187664%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8760387657%_))))
                                        (if (gx#stx-pair? _%tl8760187664%_)
                                            (let ((_%e8760687667%_
                                                   (gx#syntax-e
                                                    _%tl8760187664%_)))
                                              (let ((_%hd8760587671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8760687667%_)))
                                                    (_%tl8760487674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8760687667%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8760487674%_)
                                                    (let ((_%e8760987677%_
                                                           (gx#syntax-e
                                                            _%tl8760487674%_)))
                                                      (let ((_%hd8760887681%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8760987677%_)))
                    (_%tl8760787684%_
                     (let () (declare (not safe)) (##cdr _%e8760987677%_))))
                (if (gx#stx-pair? _%tl8760787684%_)
                    (let ((_%e8761287687%_ (gx#syntax-e _%tl8760787684%_)))
                      (let ((_%hd8761187691%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8761287687%_)))
                            (_%tl8761087694%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8761287687%_))))
                        (if (gx#stx-pair? _%tl8761087694%_)
                            (let ((_%e8761587697%_
                                   (gx#syntax-e _%tl8761087694%_)))
                              (let ((_%hd8761487701%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8761587697%_)))
                                    (_%tl8761387704%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8761587697%_))))
                                (if (gx#stx-pair? _%tl8761387704%_)
                                    (let ((_%e8761887707%_
                                           (gx#syntax-e _%tl8761387704%_)))
                                      (let ((_%hd8761787711%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8761887707%_)))
                                            (_%tl8761687714%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8761887707%_))))
                                        (if (gx#stx-pair? _%tl8761687714%_)
                                            (let ((_%e8762187717%_
                                                   (gx#syntax-e
                                                    _%tl8761687714%_)))
                                              (let ((_%hd8762087721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8762187717%_)))
                                                    (_%tl8761987724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8762187717%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8761987724%_)
                                                    (let ((_%e8762487727%_
                                                           (gx#syntax-e
                                                            _%tl8761987724%_)))
                                                      (let ((_%hd8762387731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8762487727%_)))
                    (_%tl8762287734%_
                     (let () (declare (not safe)) (##cdr _%e8762487727%_))))
                (if (gx#stx-null? _%tl8762287734%_)
                    ((lambda (_%L87737%_
                              _%L87739%_
                              _%L87740%_
                              _%L87741%_
                              _%L87742%_
                              _%L87743%_
                              _%L87744%_
                              _%L87745%_
                              _%L87746%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L87746%_
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
                         (cons _%L87739%_
                               (cons _%L87737%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L87745%_
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
                                                       (cons _%L87739%_
                                                             (cons _%L87737%_
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
                                                     (cons (cons _%L87744%_
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
                         (cons (cons _%L87743%_
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
                                                           (cons (cons _%L87743%_
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
                           (cons _%L87739%_
                                 (cons _%L87737%_
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
                         (cons (cons _%L87742%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L87742%_
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
                                     (cons (cons _%L87741%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L87742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L87741%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L87742%_
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
                                       (cons _%L87739%_
                                             (cons _%L87737%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L87742%_
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
                                     (cons (cons _%L87740%_
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
                                             (cons _%L87739%_
                                                   (cons _%L87737%_
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
                     _%hd8762387731%_
                     _%hd8762087721%_
                     _%hd8761787711%_
                     _%hd8761487701%_
                     _%hd8761187691%_
                     _%hd8760887681%_
                     _%hd8760587671%_
                     _%hd8760287661%_
                     _%hd8759987651%_)
                    (_%g8758487630%_ _%g8758587634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8758487630%_
                                                     _%g8758587634%_))))
                                            (_%g8758487630%_
                                             _%g8758587634%_))))
                                    (_%g8758487630%_ _%g8758587634%_))))
                            (_%g8758487630%_ _%g8758587634%_))))
                    (_%g8758487630%_ _%g8758587634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8758487630%_
                                                     _%g8758587634%_))))
                                            (_%g8758487630%_
                                             _%g8758587634%_))))
                                    (_%g8758487630%_ _%g8758587634%_))))
                            (_%g8758487630%_ _%g8758587634%_))))
                    (_%g8758487630%_ _%g8758587634%_)))))
        (_%g8758387783%_ _%$stx87580%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx87787%_)
      (let* ((_%g8779187813%_
              (lambda (_%g8779287809%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8779287809%_)))
             (_%g8779087882%_
              (lambda (_%g8779287817%_)
                (if (gx#stx-pair? _%g8779287817%_)
                    (let ((_%e8779887820%_ (gx#syntax-e _%g8779287817%_)))
                      (let ((_%hd8779787824%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8779887820%_)))
                            (_%tl8779687827%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8779887820%_))))
                        (if (gx#stx-pair? _%tl8779687827%_)
                            (let ((_%e8780187830%_
                                   (gx#syntax-e _%tl8779687827%_)))
                              (let ((_%hd8780087834%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8780187830%_)))
                                    (_%tl8779987837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8780187830%_))))
                                (if (gx#stx-pair? _%tl8779987837%_)
                                    (let ((_%e8780487840%_
                                           (gx#syntax-e _%tl8779987837%_)))
                                      (let ((_%hd8780387844%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8780487840%_)))
                                            (_%tl8780287847%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8780487840%_))))
                                        (if (gx#stx-pair? _%tl8780287847%_)
                                            (let ((_%e8780787850%_
                                                   (gx#syntax-e
                                                    _%tl8780287847%_)))
                                              (let ((_%hd8780687854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8780787850%_)))
                                                    (_%tl8780587857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8780787850%_))))
                                                (if (gx#stx-null?
                                                     _%tl8780587857%_)
                                                    ((lambda (_%L87860%_
                                                              _%L87862%_
                                                              _%L87863%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L87863%_
                                                   (cons _%L87862%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L87862%_ (cons _%L87862%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L87860%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8780687854%_
                                                     _%hd8780387844%_
                                                     _%hd8780087834%_)
                                                    (_%g8779187813%_
                                                     _%g8779287817%_))))
                                            (_%g8779187813%_
                                             _%g8779287817%_))))
                                    (_%g8779187813%_ _%g8779287817%_))))
                            (_%g8779187813%_ _%g8779287817%_))))
                    (_%g8779187813%_ _%g8779287817%_)))))
        (_%g8779087882%_ _%$stx87787%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx87886%_)
      (let* ((_%g8789087924%_
              (lambda (_%g8789187920%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8789187920%_)))
             (_%g8788988035%_
              (lambda (_%g8789187928%_)
                (if (gx#stx-pair? _%g8789187928%_)
                    (let ((_%e8790087931%_ (gx#syntax-e _%g8789187928%_)))
                      (let ((_%hd8789987935%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8790087931%_)))
                            (_%tl8789887938%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8790087931%_))))
                        (if (gx#stx-pair? _%tl8789887938%_)
                            (let ((_%e8790387941%_
                                   (gx#syntax-e _%tl8789887938%_)))
                              (let ((_%hd8790287945%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8790387941%_)))
                                    (_%tl8790187948%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8790387941%_))))
                                (if (gx#stx-pair? _%tl8790187948%_)
                                    (let ((_%e8790687951%_
                                           (gx#syntax-e _%tl8790187948%_)))
                                      (let ((_%hd8790587955%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8790687951%_)))
                                            (_%tl8790487958%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8790687951%_))))
                                        (if (gx#stx-pair? _%tl8790487958%_)
                                            (let ((_%e8790987961%_
                                                   (gx#syntax-e
                                                    _%tl8790487958%_)))
                                              (let ((_%hd8790887965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8790987961%_)))
                                                    (_%tl8790787968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8790987961%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8790787968%_)
                                                    (let ((_%e8791287971%_
                                                           (gx#syntax-e
                                                            _%tl8790787968%_)))
                                                      (let ((_%hd8791187975%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8791287971%_)))
                    (_%tl8791087978%_
                     (let () (declare (not safe)) (##cdr _%e8791287971%_))))
                (if (gx#stx-pair? _%tl8791087978%_)
                    (let ((_%e8791587981%_ (gx#syntax-e _%tl8791087978%_)))
                      (let ((_%hd8791487985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8791587981%_)))
                            (_%tl8791387988%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8791587981%_))))
                        (if (gx#stx-pair? _%tl8791387988%_)
                            (let ((_%e8791887991%_
                                   (gx#syntax-e _%tl8791387988%_)))
                              (let ((_%hd8791787995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8791887991%_)))
                                    (_%tl8791687998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8791887991%_))))
                                (if (gx#stx-null? _%tl8791687998%_)
                                    ((lambda (_%L88001%_
                                              _%L88003%_
                                              _%L88004%_
                                              _%L88005%_
                                              _%L88006%_
                                              _%L88007%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88005%_
                                               (cons _%L88003%_ '()))
                                         (cons _%L88006%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88007%_ '()))
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
                               (cons _%L88007%_
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
                                     (cons _%L88001%_ '()))
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
                                     (cons (cons (cons _%L88004%_
                                                       (cons _%L88003%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88007%_
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
                                     _%hd8791787995%_
                                     _%hd8791487985%_
                                     _%hd8791187975%_
                                     _%hd8790887965%_
                                     _%hd8790587955%_
                                     _%hd8790287945%_)
                                    (_%g8789087924%_ _%g8789187928%_))))
                            (_%g8789087924%_ _%g8789187928%_))))
                    (_%g8789087924%_ _%g8789187928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8789087924%_
                                                     _%g8789187928%_))))
                                            (_%g8789087924%_
                                             _%g8789187928%_))))
                                    (_%g8789087924%_ _%g8789187928%_))))
                            (_%g8789087924%_ _%g8789187928%_))))
                    (_%g8789087924%_ _%g8789187928%_)))))
        (_%g8788988035%_ _%$stx87886%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88039%_)
      (let* ((_%g8804388085%_
              (lambda (_%g8804488081%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8804488081%_)))
             (_%g8804288224%_
              (lambda (_%g8804488089%_)
                (if (gx#stx-pair? _%g8804488089%_)
                    (let ((_%e8805588092%_ (gx#syntax-e _%g8804488089%_)))
                      (let ((_%hd8805488096%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8805588092%_)))
                            (_%tl8805388099%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8805588092%_))))
                        (if (gx#stx-pair? _%tl8805388099%_)
                            (let ((_%e8805888102%_
                                   (gx#syntax-e _%tl8805388099%_)))
                              (let ((_%hd8805788106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8805888102%_)))
                                    (_%tl8805688109%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8805888102%_))))
                                (if (gx#stx-pair? _%tl8805688109%_)
                                    (let ((_%e8806188112%_
                                           (gx#syntax-e _%tl8805688109%_)))
                                      (let ((_%hd8806088116%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8806188112%_)))
                                            (_%tl8805988119%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8806188112%_))))
                                        (if (gx#stx-pair? _%tl8805988119%_)
                                            (let ((_%e8806488122%_
                                                   (gx#syntax-e
                                                    _%tl8805988119%_)))
                                              (let ((_%hd8806388126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8806488122%_)))
                                                    (_%tl8806288129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8806488122%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8806288129%_)
                                                    (let ((_%e8806788132%_
                                                           (gx#syntax-e
                                                            _%tl8806288129%_)))
                                                      (let ((_%hd8806688136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8806788132%_)))
                    (_%tl8806588139%_
                     (let () (declare (not safe)) (##cdr _%e8806788132%_))))
                (if (gx#stx-pair? _%tl8806588139%_)
                    (let ((_%e8807088142%_ (gx#syntax-e _%tl8806588139%_)))
                      (let ((_%hd8806988146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8807088142%_)))
                            (_%tl8806888149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8807088142%_))))
                        (if (gx#stx-pair? _%tl8806888149%_)
                            (let ((_%e8807388152%_
                                   (gx#syntax-e _%tl8806888149%_)))
                              (let ((_%hd8807288156%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8807388152%_)))
                                    (_%tl8807188159%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8807388152%_))))
                                (if (gx#stx-pair? _%tl8807188159%_)
                                    (let ((_%e8807688162%_
                                           (gx#syntax-e _%tl8807188159%_)))
                                      (let ((_%hd8807588166%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8807688162%_)))
                                            (_%tl8807488169%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8807688162%_))))
                                        (if (gx#stx-pair? _%tl8807488169%_)
                                            (let ((_%e8807988172%_
                                                   (gx#syntax-e
                                                    _%tl8807488169%_)))
                                              (let ((_%hd8807888176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8807988172%_)))
                                                    (_%tl8807788179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8807988172%_))))
                                                (if (gx#stx-null?
                                                     _%tl8807788179%_)
                                                    ((lambda (_%L88182%_
                                                              _%L88184%_
                                                              _%L88185%_
                                                              _%L88186%_
                                                              _%L88187%_
                                                              _%L88188%_
                                                              _%L88189%_
                                                              _%L88190%_)
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
                                                   (cons (cons _%L88188%_
                                                               (cons _%L88186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88189%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88190%_ '()))
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
                                               (cons _%L88190%_
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
                                                       (cons _%L88190%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88186%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88185%_ '()))))
               (cons (cons _%L88182%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88186%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88190%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88185%_ '()))))
                     (cons (cons _%L88184%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88186%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88190%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88186%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88190%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88185%_ '()))))
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
                                                     _%hd8807888176%_
                                                     _%hd8807588166%_
                                                     _%hd8807288156%_
                                                     _%hd8806988146%_
                                                     _%hd8806688136%_
                                                     _%hd8806388126%_
                                                     _%hd8806088116%_
                                                     _%hd8805788106%_)
                                                    (_%g8804388085%_
                                                     _%g8804488089%_))))
                                            (_%g8804388085%_
                                             _%g8804488089%_))))
                                    (_%g8804388085%_ _%g8804488089%_))))
                            (_%g8804388085%_ _%g8804488089%_))))
                    (_%g8804388085%_ _%g8804488089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8804388085%_
                                                     _%g8804488089%_))))
                                            (_%g8804388085%_
                                             _%g8804488089%_))))
                                    (_%g8804388085%_ _%g8804488089%_))))
                            (_%g8804388085%_ _%g8804488089%_))))
                    (_%g8804388085%_ _%g8804488089%_)))))
        (_%g8804288224%_ _%$stx88039%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88228%_)
      (let* ((_%g8823288278%_
              (lambda (_%g8823388274%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8823388274%_)))
             (_%g8823188431%_
              (lambda (_%g8823388282%_)
                (if (gx#stx-pair? _%g8823388282%_)
                    (let ((_%e8824588285%_ (gx#syntax-e _%g8823388282%_)))
                      (let ((_%hd8824488289%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8824588285%_)))
                            (_%tl8824388292%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8824588285%_))))
                        (if (gx#stx-pair? _%tl8824388292%_)
                            (let ((_%e8824888295%_
                                   (gx#syntax-e _%tl8824388292%_)))
                              (let ((_%hd8824788299%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8824888295%_)))
                                    (_%tl8824688302%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8824888295%_))))
                                (if (gx#stx-pair? _%tl8824688302%_)
                                    (let ((_%e8825188305%_
                                           (gx#syntax-e _%tl8824688302%_)))
                                      (let ((_%hd8825088309%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8825188305%_)))
                                            (_%tl8824988312%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8825188305%_))))
                                        (if (gx#stx-pair? _%tl8824988312%_)
                                            (let ((_%e8825488315%_
                                                   (gx#syntax-e
                                                    _%tl8824988312%_)))
                                              (let ((_%hd8825388319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8825488315%_)))
                                                    (_%tl8825288322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8825488315%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8825288322%_)
                                                    (let ((_%e8825788325%_
                                                           (gx#syntax-e
                                                            _%tl8825288322%_)))
                                                      (let ((_%hd8825688329%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8825788325%_)))
                    (_%tl8825588332%_
                     (let () (declare (not safe)) (##cdr _%e8825788325%_))))
                (if (gx#stx-pair? _%tl8825588332%_)
                    (let ((_%e8826088335%_ (gx#syntax-e _%tl8825588332%_)))
                      (let ((_%hd8825988339%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8826088335%_)))
                            (_%tl8825888342%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8826088335%_))))
                        (if (gx#stx-pair? _%tl8825888342%_)
                            (let ((_%e8826388345%_
                                   (gx#syntax-e _%tl8825888342%_)))
                              (let ((_%hd8826288349%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8826388345%_)))
                                    (_%tl8826188352%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8826388345%_))))
                                (if (gx#stx-pair? _%tl8826188352%_)
                                    (let ((_%e8826688355%_
                                           (gx#syntax-e _%tl8826188352%_)))
                                      (let ((_%hd8826588359%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8826688355%_)))
                                            (_%tl8826488362%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8826688355%_))))
                                        (if (gx#stx-pair? _%tl8826488362%_)
                                            (let ((_%e8826988365%_
                                                   (gx#syntax-e
                                                    _%tl8826488362%_)))
                                              (let ((_%hd8826888369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8826988365%_)))
                                                    (_%tl8826788372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8826988365%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8826788372%_)
                                                    (let ((_%e8827288375%_
                                                           (gx#syntax-e
                                                            _%tl8826788372%_)))
                                                      (let ((_%hd8827188379%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8827288375%_)))
                    (_%tl8827088382%_
                     (let () (declare (not safe)) (##cdr _%e8827288375%_))))
                (if (gx#stx-null? _%tl8827088382%_)
                    ((lambda (_%L88385%_
                              _%L88387%_
                              _%L88388%_
                              _%L88389%_
                              _%L88390%_
                              _%L88391%_
                              _%L88392%_
                              _%L88393%_
                              _%L88394%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88390%_ '()))
                         (cons _%L88393%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88394%_ '()))
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
                                                       (cons _%L88394%_
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
                                                               (cons _%L88394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88390%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88394%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88389%_
                                                     (cons _%L88388%_ '()))
                                               '()))))
                       (cons (cons _%L88385%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88394%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88390%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88394%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88389%_
                                                           (cons _%L88388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88387%_ '()) '()))))
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
                     (cons (cons (cons _%L88391%_
                                       (cons _%L88390%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88394%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88390%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88394%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88389%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88394%_
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
                     _%hd8827188379%_
                     _%hd8826888369%_
                     _%hd8826588359%_
                     _%hd8826288349%_
                     _%hd8825988339%_
                     _%hd8825688329%_
                     _%hd8825388319%_
                     _%hd8825088309%_
                     _%hd8824788299%_)
                    (_%g8823288278%_ _%g8823388282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8823288278%_
                                                     _%g8823388282%_))))
                                            (_%g8823288278%_
                                             _%g8823388282%_))))
                                    (_%g8823288278%_ _%g8823388282%_))))
                            (_%g8823288278%_ _%g8823388282%_))))
                    (_%g8823288278%_ _%g8823388282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8823288278%_
                                                     _%g8823388282%_))))
                                            (_%g8823288278%_
                                             _%g8823388282%_))))
                                    (_%g8823288278%_ _%g8823388282%_))))
                            (_%g8823288278%_ _%g8823388282%_))))
                    (_%g8823288278%_ _%g8823388282%_)))))
        (_%g8823188431%_ _%$stx88228%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88435%_)
      (let* ((_%g8843988473%_
              (lambda (_%g8844088469%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8844088469%_)))
             (_%g8843888584%_
              (lambda (_%g8844088477%_)
                (if (gx#stx-pair? _%g8844088477%_)
                    (let ((_%e8844988480%_ (gx#syntax-e _%g8844088477%_)))
                      (let ((_%hd8844888484%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8844988480%_)))
                            (_%tl8844788487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8844988480%_))))
                        (if (gx#stx-pair? _%tl8844788487%_)
                            (let ((_%e8845288490%_
                                   (gx#syntax-e _%tl8844788487%_)))
                              (let ((_%hd8845188494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8845288490%_)))
                                    (_%tl8845088497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8845288490%_))))
                                (if (gx#stx-pair? _%tl8845088497%_)
                                    (let ((_%e8845588500%_
                                           (gx#syntax-e _%tl8845088497%_)))
                                      (let ((_%hd8845488504%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8845588500%_)))
                                            (_%tl8845388507%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8845588500%_))))
                                        (if (gx#stx-pair? _%tl8845388507%_)
                                            (let ((_%e8845888510%_
                                                   (gx#syntax-e
                                                    _%tl8845388507%_)))
                                              (let ((_%hd8845788514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8845888510%_)))
                                                    (_%tl8845688517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8845888510%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8845688517%_)
                                                    (let ((_%e8846188520%_
                                                           (gx#syntax-e
                                                            _%tl8845688517%_)))
                                                      (let ((_%hd8846088524%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8846188520%_)))
                    (_%tl8845988527%_
                     (let () (declare (not safe)) (##cdr _%e8846188520%_))))
                (if (gx#stx-pair? _%tl8845988527%_)
                    (let ((_%e8846488530%_ (gx#syntax-e _%tl8845988527%_)))
                      (let ((_%hd8846388534%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8846488530%_)))
                            (_%tl8846288537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8846488530%_))))
                        (if (gx#stx-pair? _%tl8846288537%_)
                            (let ((_%e8846788540%_
                                   (gx#syntax-e _%tl8846288537%_)))
                              (let ((_%hd8846688544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8846788540%_)))
                                    (_%tl8846588547%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8846788540%_))))
                                (if (gx#stx-null? _%tl8846588547%_)
                                    ((lambda (_%L88550%_
                                              _%L88552%_
                                              _%L88553%_
                                              _%L88554%_
                                              _%L88555%_
                                              _%L88556%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88554%_
                                               (cons _%L88552%_ '()))
                                         (cons _%L88555%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88556%_ '()))
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
                               (cons _%L88556%_
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
                                     (cons (cons (cons _%L88553%_
                                                       (cons _%L88552%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88556%_
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
                     (cons (cons _%L88550%_ '()) '()))))
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
                                     _%hd8846688544%_
                                     _%hd8846388534%_
                                     _%hd8846088524%_
                                     _%hd8845788514%_
                                     _%hd8845488504%_
                                     _%hd8845188494%_)
                                    (_%g8843988473%_ _%g8844088477%_))))
                            (_%g8843988473%_ _%g8844088477%_))))
                    (_%g8843988473%_ _%g8844088477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8843988473%_
                                                     _%g8844088477%_))))
                                            (_%g8843988473%_
                                             _%g8844088477%_))))
                                    (_%g8843988473%_ _%g8844088477%_))))
                            (_%g8843988473%_ _%g8844088477%_))))
                    (_%g8843988473%_ _%g8844088477%_)))))
        (_%g8843888584%_ _%$stx88435%_)))))

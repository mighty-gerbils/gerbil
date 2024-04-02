(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx87447%_)
      (let* ((_%g8745187465%_
              (lambda (_%g8745287461%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8745287461%_)))
             (_%g8745087507%_
              (lambda (_%g8745287469%_)
                (if (gx#stx-pair? _%g8745287469%_)
                    (let ((_%e8745687472%_ (gx#syntax-e _%g8745287469%_)))
                      (let ((_%hd8745587476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8745687472%_)))
                            (_%tl8745487479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8745687472%_))))
                        (if (gx#stx-pair? _%tl8745487479%_)
                            (let ((_%e8745987482%_
                                   (gx#syntax-e _%tl8745487479%_)))
                              (let ((_%hd8745887486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8745987482%_)))
                                    (_%tl8745787489%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8745987482%_))))
                                (if (gx#stx-null? _%tl8745787489%_)
                                    ((lambda (_%L87492%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L87492%_ '()))))
                                     _%hd8745887486%_)
                                    (_%g8745187465%_ _%g8745287469%_))))
                            (_%g8745187465%_ _%g8745287469%_))))
                    (_%g8745187465%_ _%g8745287469%_)))))
        (_%g8745087507%_ _%$stx87447%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx87511%_)
      (let* ((_%g8751587561%_
              (lambda (_%g8751687557%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8751687557%_)))
             (_%g8751487714%_
              (lambda (_%g8751687565%_)
                (if (gx#stx-pair? _%g8751687565%_)
                    (let ((_%e8752887568%_ (gx#syntax-e _%g8751687565%_)))
                      (let ((_%hd8752787572%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8752887568%_)))
                            (_%tl8752687575%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8752887568%_))))
                        (if (gx#stx-pair? _%tl8752687575%_)
                            (let ((_%e8753187578%_
                                   (gx#syntax-e _%tl8752687575%_)))
                              (let ((_%hd8753087582%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8753187578%_)))
                                    (_%tl8752987585%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8753187578%_))))
                                (if (gx#stx-pair? _%tl8752987585%_)
                                    (let ((_%e8753487588%_
                                           (gx#syntax-e _%tl8752987585%_)))
                                      (let ((_%hd8753387592%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8753487588%_)))
                                            (_%tl8753287595%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8753487588%_))))
                                        (if (gx#stx-pair? _%tl8753287595%_)
                                            (let ((_%e8753787598%_
                                                   (gx#syntax-e
                                                    _%tl8753287595%_)))
                                              (let ((_%hd8753687602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8753787598%_)))
                                                    (_%tl8753587605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8753787598%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8753587605%_)
                                                    (let ((_%e8754087608%_
                                                           (gx#syntax-e
                                                            _%tl8753587605%_)))
                                                      (let ((_%hd8753987612%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8754087608%_)))
                    (_%tl8753887615%_
                     (let () (declare (not safe)) (##cdr _%e8754087608%_))))
                (if (gx#stx-pair? _%tl8753887615%_)
                    (let ((_%e8754387618%_ (gx#syntax-e _%tl8753887615%_)))
                      (let ((_%hd8754287622%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8754387618%_)))
                            (_%tl8754187625%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8754387618%_))))
                        (if (gx#stx-pair? _%tl8754187625%_)
                            (let ((_%e8754687628%_
                                   (gx#syntax-e _%tl8754187625%_)))
                              (let ((_%hd8754587632%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8754687628%_)))
                                    (_%tl8754487635%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8754687628%_))))
                                (if (gx#stx-pair? _%tl8754487635%_)
                                    (let ((_%e8754987638%_
                                           (gx#syntax-e _%tl8754487635%_)))
                                      (let ((_%hd8754887642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8754987638%_)))
                                            (_%tl8754787645%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8754987638%_))))
                                        (if (gx#stx-pair? _%tl8754787645%_)
                                            (let ((_%e8755287648%_
                                                   (gx#syntax-e
                                                    _%tl8754787645%_)))
                                              (let ((_%hd8755187652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8755287648%_)))
                                                    (_%tl8755087655%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8755287648%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8755087655%_)
                                                    (let ((_%e8755587658%_
                                                           (gx#syntax-e
                                                            _%tl8755087655%_)))
                                                      (let ((_%hd8755487662%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8755587658%_)))
                    (_%tl8755387665%_
                     (let () (declare (not safe)) (##cdr _%e8755587658%_))))
                (if (gx#stx-null? _%tl8755387665%_)
                    ((lambda (_%L87668%_
                              _%L87670%_
                              _%L87671%_
                              _%L87672%_
                              _%L87673%_
                              _%L87674%_
                              _%L87675%_
                              _%L87676%_
                              _%L87677%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L87677%_
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
                         (cons _%L87670%_
                               (cons _%L87668%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L87676%_
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
                                                       (cons _%L87670%_
                                                             (cons _%L87668%_
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
                                                     (cons (cons _%L87675%_
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
                         (cons (cons _%L87674%_
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
                                                           (cons (cons _%L87674%_
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
                           (cons _%L87670%_
                                 (cons _%L87668%_
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
                         (cons (cons _%L87673%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L87673%_
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
                                     (cons (cons _%L87672%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L87673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L87672%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L87673%_
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
                                       (cons _%L87670%_
                                             (cons _%L87668%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L87673%_
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
                                     (cons (cons _%L87671%_
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
                                             (cons _%L87670%_
                                                   (cons _%L87668%_
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
                     _%hd8755487662%_
                     _%hd8755187652%_
                     _%hd8754887642%_
                     _%hd8754587632%_
                     _%hd8754287622%_
                     _%hd8753987612%_
                     _%hd8753687602%_
                     _%hd8753387592%_
                     _%hd8753087582%_)
                    (_%g8751587561%_ _%g8751687565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8751587561%_
                                                     _%g8751687565%_))))
                                            (_%g8751587561%_
                                             _%g8751687565%_))))
                                    (_%g8751587561%_ _%g8751687565%_))))
                            (_%g8751587561%_ _%g8751687565%_))))
                    (_%g8751587561%_ _%g8751687565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8751587561%_
                                                     _%g8751687565%_))))
                                            (_%g8751587561%_
                                             _%g8751687565%_))))
                                    (_%g8751587561%_ _%g8751687565%_))))
                            (_%g8751587561%_ _%g8751687565%_))))
                    (_%g8751587561%_ _%g8751687565%_)))))
        (_%g8751487714%_ _%$stx87511%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx87718%_)
      (let* ((_%g8772287744%_
              (lambda (_%g8772387740%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8772387740%_)))
             (_%g8772187813%_
              (lambda (_%g8772387748%_)
                (if (gx#stx-pair? _%g8772387748%_)
                    (let ((_%e8772987751%_ (gx#syntax-e _%g8772387748%_)))
                      (let ((_%hd8772887755%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8772987751%_)))
                            (_%tl8772787758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8772987751%_))))
                        (if (gx#stx-pair? _%tl8772787758%_)
                            (let ((_%e8773287761%_
                                   (gx#syntax-e _%tl8772787758%_)))
                              (let ((_%hd8773187765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8773287761%_)))
                                    (_%tl8773087768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8773287761%_))))
                                (if (gx#stx-pair? _%tl8773087768%_)
                                    (let ((_%e8773587771%_
                                           (gx#syntax-e _%tl8773087768%_)))
                                      (let ((_%hd8773487775%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8773587771%_)))
                                            (_%tl8773387778%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8773587771%_))))
                                        (if (gx#stx-pair? _%tl8773387778%_)
                                            (let ((_%e8773887781%_
                                                   (gx#syntax-e
                                                    _%tl8773387778%_)))
                                              (let ((_%hd8773787785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8773887781%_)))
                                                    (_%tl8773687788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8773887781%_))))
                                                (if (gx#stx-null?
                                                     _%tl8773687788%_)
                                                    ((lambda (_%L87791%_
                                                              _%L87793%_
                                                              _%L87794%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L87794%_
                                                   (cons _%L87793%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L87793%_ (cons _%L87793%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L87791%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8773787785%_
                                                     _%hd8773487775%_
                                                     _%hd8773187765%_)
                                                    (_%g8772287744%_
                                                     _%g8772387748%_))))
                                            (_%g8772287744%_
                                             _%g8772387748%_))))
                                    (_%g8772287744%_ _%g8772387748%_))))
                            (_%g8772287744%_ _%g8772387748%_))))
                    (_%g8772287744%_ _%g8772387748%_)))))
        (_%g8772187813%_ _%$stx87718%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx87817%_)
      (let* ((_%g8782187855%_
              (lambda (_%g8782287851%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8782287851%_)))
             (_%g8782087966%_
              (lambda (_%g8782287859%_)
                (if (gx#stx-pair? _%g8782287859%_)
                    (let ((_%e8783187862%_ (gx#syntax-e _%g8782287859%_)))
                      (let ((_%hd8783087866%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8783187862%_)))
                            (_%tl8782987869%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8783187862%_))))
                        (if (gx#stx-pair? _%tl8782987869%_)
                            (let ((_%e8783487872%_
                                   (gx#syntax-e _%tl8782987869%_)))
                              (let ((_%hd8783387876%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8783487872%_)))
                                    (_%tl8783287879%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8783487872%_))))
                                (if (gx#stx-pair? _%tl8783287879%_)
                                    (let ((_%e8783787882%_
                                           (gx#syntax-e _%tl8783287879%_)))
                                      (let ((_%hd8783687886%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8783787882%_)))
                                            (_%tl8783587889%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8783787882%_))))
                                        (if (gx#stx-pair? _%tl8783587889%_)
                                            (let ((_%e8784087892%_
                                                   (gx#syntax-e
                                                    _%tl8783587889%_)))
                                              (let ((_%hd8783987896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8784087892%_)))
                                                    (_%tl8783887899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8784087892%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8783887899%_)
                                                    (let ((_%e8784387902%_
                                                           (gx#syntax-e
                                                            _%tl8783887899%_)))
                                                      (let ((_%hd8784287906%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8784387902%_)))
                    (_%tl8784187909%_
                     (let () (declare (not safe)) (##cdr _%e8784387902%_))))
                (if (gx#stx-pair? _%tl8784187909%_)
                    (let ((_%e8784687912%_ (gx#syntax-e _%tl8784187909%_)))
                      (let ((_%hd8784587916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8784687912%_)))
                            (_%tl8784487919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8784687912%_))))
                        (if (gx#stx-pair? _%tl8784487919%_)
                            (let ((_%e8784987922%_
                                   (gx#syntax-e _%tl8784487919%_)))
                              (let ((_%hd8784887926%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8784987922%_)))
                                    (_%tl8784787929%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8784987922%_))))
                                (if (gx#stx-null? _%tl8784787929%_)
                                    ((lambda (_%L87932%_
                                              _%L87934%_
                                              _%L87935%_
                                              _%L87936%_
                                              _%L87937%_
                                              _%L87938%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L87936%_
                                               (cons _%L87934%_ '()))
                                         (cons _%L87937%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L87938%_ '()))
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
                               (cons _%L87938%_
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
                                     (cons _%L87932%_ '()))
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
                                     (cons (cons (cons _%L87935%_
                                                       (cons _%L87934%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L87938%_
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
                                     _%hd8784887926%_
                                     _%hd8784587916%_
                                     _%hd8784287906%_
                                     _%hd8783987896%_
                                     _%hd8783687886%_
                                     _%hd8783387876%_)
                                    (_%g8782187855%_ _%g8782287859%_))))
                            (_%g8782187855%_ _%g8782287859%_))))
                    (_%g8782187855%_ _%g8782287859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8782187855%_
                                                     _%g8782287859%_))))
                                            (_%g8782187855%_
                                             _%g8782287859%_))))
                                    (_%g8782187855%_ _%g8782287859%_))))
                            (_%g8782187855%_ _%g8782287859%_))))
                    (_%g8782187855%_ _%g8782287859%_)))))
        (_%g8782087966%_ _%$stx87817%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx87970%_)
      (let* ((_%g8797488016%_
              (lambda (_%g8797588012%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8797588012%_)))
             (_%g8797388155%_
              (lambda (_%g8797588020%_)
                (if (gx#stx-pair? _%g8797588020%_)
                    (let ((_%e8798688023%_ (gx#syntax-e _%g8797588020%_)))
                      (let ((_%hd8798588027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8798688023%_)))
                            (_%tl8798488030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8798688023%_))))
                        (if (gx#stx-pair? _%tl8798488030%_)
                            (let ((_%e8798988033%_
                                   (gx#syntax-e _%tl8798488030%_)))
                              (let ((_%hd8798888037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8798988033%_)))
                                    (_%tl8798788040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8798988033%_))))
                                (if (gx#stx-pair? _%tl8798788040%_)
                                    (let ((_%e8799288043%_
                                           (gx#syntax-e _%tl8798788040%_)))
                                      (let ((_%hd8799188047%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8799288043%_)))
                                            (_%tl8799088050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8799288043%_))))
                                        (if (gx#stx-pair? _%tl8799088050%_)
                                            (let ((_%e8799588053%_
                                                   (gx#syntax-e
                                                    _%tl8799088050%_)))
                                              (let ((_%hd8799488057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8799588053%_)))
                                                    (_%tl8799388060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8799588053%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8799388060%_)
                                                    (let ((_%e8799888063%_
                                                           (gx#syntax-e
                                                            _%tl8799388060%_)))
                                                      (let ((_%hd8799788067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8799888063%_)))
                    (_%tl8799688070%_
                     (let () (declare (not safe)) (##cdr _%e8799888063%_))))
                (if (gx#stx-pair? _%tl8799688070%_)
                    (let ((_%e8800188073%_ (gx#syntax-e _%tl8799688070%_)))
                      (let ((_%hd8800088077%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8800188073%_)))
                            (_%tl8799988080%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8800188073%_))))
                        (if (gx#stx-pair? _%tl8799988080%_)
                            (let ((_%e8800488083%_
                                   (gx#syntax-e _%tl8799988080%_)))
                              (let ((_%hd8800388087%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8800488083%_)))
                                    (_%tl8800288090%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8800488083%_))))
                                (if (gx#stx-pair? _%tl8800288090%_)
                                    (let ((_%e8800788093%_
                                           (gx#syntax-e _%tl8800288090%_)))
                                      (let ((_%hd8800688097%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8800788093%_)))
                                            (_%tl8800588100%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8800788093%_))))
                                        (if (gx#stx-pair? _%tl8800588100%_)
                                            (let ((_%e8801088103%_
                                                   (gx#syntax-e
                                                    _%tl8800588100%_)))
                                              (let ((_%hd8800988107%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8801088103%_)))
                                                    (_%tl8800888110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8801088103%_))))
                                                (if (gx#stx-null?
                                                     _%tl8800888110%_)
                                                    ((lambda (_%L88113%_
                                                              _%L88115%_
                                                              _%L88116%_
                                                              _%L88117%_
                                                              _%L88118%_
                                                              _%L88119%_
                                                              _%L88120%_
                                                              _%L88121%_)
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
                                                   (cons (cons _%L88119%_
                                                               (cons _%L88117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88120%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88121%_ '()))
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
                                               (cons _%L88121%_
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
                                                       (cons _%L88121%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88117%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88116%_ '()))))
               (cons (cons _%L88113%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88117%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88121%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88116%_ '()))))
                     (cons (cons _%L88115%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88117%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88121%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88117%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88121%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88116%_ '()))))
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
                                                     _%hd8800988107%_
                                                     _%hd8800688097%_
                                                     _%hd8800388087%_
                                                     _%hd8800088077%_
                                                     _%hd8799788067%_
                                                     _%hd8799488057%_
                                                     _%hd8799188047%_
                                                     _%hd8798888037%_)
                                                    (_%g8797488016%_
                                                     _%g8797588020%_))))
                                            (_%g8797488016%_
                                             _%g8797588020%_))))
                                    (_%g8797488016%_ _%g8797588020%_))))
                            (_%g8797488016%_ _%g8797588020%_))))
                    (_%g8797488016%_ _%g8797588020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8797488016%_
                                                     _%g8797588020%_))))
                                            (_%g8797488016%_
                                             _%g8797588020%_))))
                                    (_%g8797488016%_ _%g8797588020%_))))
                            (_%g8797488016%_ _%g8797588020%_))))
                    (_%g8797488016%_ _%g8797588020%_)))))
        (_%g8797388155%_ _%$stx87970%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88159%_)
      (let* ((_%g8816388209%_
              (lambda (_%g8816488205%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8816488205%_)))
             (_%g8816288362%_
              (lambda (_%g8816488213%_)
                (if (gx#stx-pair? _%g8816488213%_)
                    (let ((_%e8817688216%_ (gx#syntax-e _%g8816488213%_)))
                      (let ((_%hd8817588220%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8817688216%_)))
                            (_%tl8817488223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8817688216%_))))
                        (if (gx#stx-pair? _%tl8817488223%_)
                            (let ((_%e8817988226%_
                                   (gx#syntax-e _%tl8817488223%_)))
                              (let ((_%hd8817888230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8817988226%_)))
                                    (_%tl8817788233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8817988226%_))))
                                (if (gx#stx-pair? _%tl8817788233%_)
                                    (let ((_%e8818288236%_
                                           (gx#syntax-e _%tl8817788233%_)))
                                      (let ((_%hd8818188240%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8818288236%_)))
                                            (_%tl8818088243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8818288236%_))))
                                        (if (gx#stx-pair? _%tl8818088243%_)
                                            (let ((_%e8818588246%_
                                                   (gx#syntax-e
                                                    _%tl8818088243%_)))
                                              (let ((_%hd8818488250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8818588246%_)))
                                                    (_%tl8818388253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8818588246%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8818388253%_)
                                                    (let ((_%e8818888256%_
                                                           (gx#syntax-e
                                                            _%tl8818388253%_)))
                                                      (let ((_%hd8818788260%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8818888256%_)))
                    (_%tl8818688263%_
                     (let () (declare (not safe)) (##cdr _%e8818888256%_))))
                (if (gx#stx-pair? _%tl8818688263%_)
                    (let ((_%e8819188266%_ (gx#syntax-e _%tl8818688263%_)))
                      (let ((_%hd8819088270%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8819188266%_)))
                            (_%tl8818988273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8819188266%_))))
                        (if (gx#stx-pair? _%tl8818988273%_)
                            (let ((_%e8819488276%_
                                   (gx#syntax-e _%tl8818988273%_)))
                              (let ((_%hd8819388280%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8819488276%_)))
                                    (_%tl8819288283%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8819488276%_))))
                                (if (gx#stx-pair? _%tl8819288283%_)
                                    (let ((_%e8819788286%_
                                           (gx#syntax-e _%tl8819288283%_)))
                                      (let ((_%hd8819688290%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8819788286%_)))
                                            (_%tl8819588293%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8819788286%_))))
                                        (if (gx#stx-pair? _%tl8819588293%_)
                                            (let ((_%e8820088296%_
                                                   (gx#syntax-e
                                                    _%tl8819588293%_)))
                                              (let ((_%hd8819988300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8820088296%_)))
                                                    (_%tl8819888303%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8820088296%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8819888303%_)
                                                    (let ((_%e8820388306%_
                                                           (gx#syntax-e
                                                            _%tl8819888303%_)))
                                                      (let ((_%hd8820288310%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8820388306%_)))
                    (_%tl8820188313%_
                     (let () (declare (not safe)) (##cdr _%e8820388306%_))))
                (if (gx#stx-null? _%tl8820188313%_)
                    ((lambda (_%L88316%_
                              _%L88318%_
                              _%L88319%_
                              _%L88320%_
                              _%L88321%_
                              _%L88322%_
                              _%L88323%_
                              _%L88324%_
                              _%L88325%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88321%_ '()))
                         (cons _%L88324%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88325%_ '()))
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
                                                       (cons _%L88325%_
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
                                                               (cons _%L88325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88321%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88325%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88320%_
                                                     (cons _%L88319%_ '()))
                                               '()))))
                       (cons (cons _%L88316%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88325%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88321%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88325%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88320%_
                                                           (cons _%L88319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88318%_ '()) '()))))
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
                     (cons (cons (cons _%L88322%_
                                       (cons _%L88321%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88325%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88321%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88325%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88320%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88325%_
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
                     _%hd8820288310%_
                     _%hd8819988300%_
                     _%hd8819688290%_
                     _%hd8819388280%_
                     _%hd8819088270%_
                     _%hd8818788260%_
                     _%hd8818488250%_
                     _%hd8818188240%_
                     _%hd8817888230%_)
                    (_%g8816388209%_ _%g8816488213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8816388209%_
                                                     _%g8816488213%_))))
                                            (_%g8816388209%_
                                             _%g8816488213%_))))
                                    (_%g8816388209%_ _%g8816488213%_))))
                            (_%g8816388209%_ _%g8816488213%_))))
                    (_%g8816388209%_ _%g8816488213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8816388209%_
                                                     _%g8816488213%_))))
                                            (_%g8816388209%_
                                             _%g8816488213%_))))
                                    (_%g8816388209%_ _%g8816488213%_))))
                            (_%g8816388209%_ _%g8816488213%_))))
                    (_%g8816388209%_ _%g8816488213%_)))))
        (_%g8816288362%_ _%$stx88159%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88366%_)
      (let* ((_%g8837088404%_
              (lambda (_%g8837188400%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8837188400%_)))
             (_%g8836988515%_
              (lambda (_%g8837188408%_)
                (if (gx#stx-pair? _%g8837188408%_)
                    (let ((_%e8838088411%_ (gx#syntax-e _%g8837188408%_)))
                      (let ((_%hd8837988415%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8838088411%_)))
                            (_%tl8837888418%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8838088411%_))))
                        (if (gx#stx-pair? _%tl8837888418%_)
                            (let ((_%e8838388421%_
                                   (gx#syntax-e _%tl8837888418%_)))
                              (let ((_%hd8838288425%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8838388421%_)))
                                    (_%tl8838188428%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8838388421%_))))
                                (if (gx#stx-pair? _%tl8838188428%_)
                                    (let ((_%e8838688431%_
                                           (gx#syntax-e _%tl8838188428%_)))
                                      (let ((_%hd8838588435%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8838688431%_)))
                                            (_%tl8838488438%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8838688431%_))))
                                        (if (gx#stx-pair? _%tl8838488438%_)
                                            (let ((_%e8838988441%_
                                                   (gx#syntax-e
                                                    _%tl8838488438%_)))
                                              (let ((_%hd8838888445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8838988441%_)))
                                                    (_%tl8838788448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8838988441%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8838788448%_)
                                                    (let ((_%e8839288451%_
                                                           (gx#syntax-e
                                                            _%tl8838788448%_)))
                                                      (let ((_%hd8839188455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8839288451%_)))
                    (_%tl8839088458%_
                     (let () (declare (not safe)) (##cdr _%e8839288451%_))))
                (if (gx#stx-pair? _%tl8839088458%_)
                    (let ((_%e8839588461%_ (gx#syntax-e _%tl8839088458%_)))
                      (let ((_%hd8839488465%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8839588461%_)))
                            (_%tl8839388468%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8839588461%_))))
                        (if (gx#stx-pair? _%tl8839388468%_)
                            (let ((_%e8839888471%_
                                   (gx#syntax-e _%tl8839388468%_)))
                              (let ((_%hd8839788475%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8839888471%_)))
                                    (_%tl8839688478%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8839888471%_))))
                                (if (gx#stx-null? _%tl8839688478%_)
                                    ((lambda (_%L88481%_
                                              _%L88483%_
                                              _%L88484%_
                                              _%L88485%_
                                              _%L88486%_
                                              _%L88487%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88485%_
                                               (cons _%L88483%_ '()))
                                         (cons _%L88486%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88487%_ '()))
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
                               (cons _%L88487%_
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
                                     (cons (cons (cons _%L88484%_
                                                       (cons _%L88483%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88487%_
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
                     (cons (cons _%L88481%_ '()) '()))))
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
                                     _%hd8839788475%_
                                     _%hd8839488465%_
                                     _%hd8839188455%_
                                     _%hd8838888445%_
                                     _%hd8838588435%_
                                     _%hd8838288425%_)
                                    (_%g8837088404%_ _%g8837188408%_))))
                            (_%g8837088404%_ _%g8837188408%_))))
                    (_%g8837088404%_ _%g8837188408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8837088404%_
                                                     _%g8837188408%_))))
                                            (_%g8837088404%_
                                             _%g8837188408%_))))
                                    (_%g8837088404%_ _%g8837188408%_))))
                            (_%g8837088404%_ _%g8837188408%_))))
                    (_%g8837088404%_ _%g8837188408%_)))))
        (_%g8836988515%_ _%$stx88366%_)))))

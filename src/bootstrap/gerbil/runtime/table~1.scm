(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx89568%_)
      (let* ((_%g8957289586%_
              (lambda (_%g8957389582%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8957389582%_)))
             (_%g8957189628%_
              (lambda (_%g8957389590%_)
                (if (gx#stx-pair? _%g8957389590%_)
                    (let ((_%e8957589593%_ (gx#syntax-e _%g8957389590%_)))
                      (let ((_%hd8957689597%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8957589593%_)))
                            (_%tl8957789600%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8957589593%_))))
                        (if (gx#stx-pair? _%tl8957789600%_)
                            (let ((_%e8957889603%_
                                   (gx#syntax-e _%tl8957789600%_)))
                              (let ((_%hd8957989607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8957889603%_)))
                                    (_%tl8958089610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8957889603%_))))
                                (if (gx#stx-null? _%tl8958089610%_)
                                    ((lambda (_%L89613%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L89613%_ '()))))
                                     _%hd8957989607%_)
                                    (_%g8957289586%_ _%g8957389590%_))))
                            (_%g8957289586%_ _%g8957389590%_))))
                    (_%g8957289586%_ _%g8957389590%_)))))
        (_%g8957189628%_ _%$stx89568%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx89632%_)
      (let* ((_%g8963689682%_
              (lambda (_%g8963789678%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8963789678%_)))
             (_%g8963589835%_
              (lambda (_%g8963789686%_)
                (if (gx#stx-pair? _%g8963789686%_)
                    (let ((_%e8964789689%_ (gx#syntax-e _%g8963789686%_)))
                      (let ((_%hd8964889693%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8964789689%_)))
                            (_%tl8964989696%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8964789689%_))))
                        (if (gx#stx-pair? _%tl8964989696%_)
                            (let ((_%e8965089699%_
                                   (gx#syntax-e _%tl8964989696%_)))
                              (let ((_%hd8965189703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8965089699%_)))
                                    (_%tl8965289706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8965089699%_))))
                                (if (gx#stx-pair? _%tl8965289706%_)
                                    (let ((_%e8965389709%_
                                           (gx#syntax-e _%tl8965289706%_)))
                                      (let ((_%hd8965489713%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8965389709%_)))
                                            (_%tl8965589716%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8965389709%_))))
                                        (if (gx#stx-pair? _%tl8965589716%_)
                                            (let ((_%e8965689719%_
                                                   (gx#syntax-e
                                                    _%tl8965589716%_)))
                                              (let ((_%hd8965789723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8965689719%_)))
                                                    (_%tl8965889726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8965689719%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8965889726%_)
                                                    (let ((_%e8965989729%_
                                                           (gx#syntax-e
                                                            _%tl8965889726%_)))
                                                      (let ((_%hd8966089733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8965989729%_)))
                    (_%tl8966189736%_
                     (let () (declare (not safe)) (##cdr _%e8965989729%_))))
                (if (gx#stx-pair? _%tl8966189736%_)
                    (let ((_%e8966289739%_ (gx#syntax-e _%tl8966189736%_)))
                      (let ((_%hd8966389743%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8966289739%_)))
                            (_%tl8966489746%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8966289739%_))))
                        (if (gx#stx-pair? _%tl8966489746%_)
                            (let ((_%e8966589749%_
                                   (gx#syntax-e _%tl8966489746%_)))
                              (let ((_%hd8966689753%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8966589749%_)))
                                    (_%tl8966789756%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8966589749%_))))
                                (if (gx#stx-pair? _%tl8966789756%_)
                                    (let ((_%e8966889759%_
                                           (gx#syntax-e _%tl8966789756%_)))
                                      (let ((_%hd8966989763%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8966889759%_)))
                                            (_%tl8967089766%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8966889759%_))))
                                        (if (gx#stx-pair? _%tl8967089766%_)
                                            (let ((_%e8967189769%_
                                                   (gx#syntax-e
                                                    _%tl8967089766%_)))
                                              (let ((_%hd8967289773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8967189769%_)))
                                                    (_%tl8967389776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8967189769%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8967389776%_)
                                                    (let ((_%e8967489779%_
                                                           (gx#syntax-e
                                                            _%tl8967389776%_)))
                                                      (let ((_%hd8967589783%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8967489779%_)))
                    (_%tl8967689786%_
                     (let () (declare (not safe)) (##cdr _%e8967489779%_))))
                (if (gx#stx-null? _%tl8967689786%_)
                    ((lambda (_%L89789%_
                              _%L89791%_
                              _%L89792%_
                              _%L89793%_
                              _%L89794%_
                              _%L89795%_
                              _%L89796%_
                              _%L89797%_
                              _%L89798%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L89798%_
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
                         (cons _%L89791%_
                               (cons _%L89789%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L89797%_
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
                                                       (cons _%L89791%_
                                                             (cons _%L89789%_
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
                                                     (cons (cons _%L89796%_
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
                         (cons (cons _%L89795%_
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
                                                           (cons (cons _%L89795%_
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
                           (cons _%L89791%_
                                 (cons _%L89789%_
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
                         (cons (cons _%L89794%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L89794%_
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
                                     (cons (cons _%L89793%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L89794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L89793%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L89794%_
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
                                       (cons _%L89791%_
                                             (cons _%L89789%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L89794%_
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
                                     (cons (cons _%L89792%_
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
                                             (cons _%L89791%_
                                                   (cons _%L89789%_
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
                     _%hd8967589783%_
                     _%hd8967289773%_
                     _%hd8966989763%_
                     _%hd8966689753%_
                     _%hd8966389743%_
                     _%hd8966089733%_
                     _%hd8965789723%_
                     _%hd8965489713%_
                     _%hd8965189703%_)
                    (_%g8963689682%_ _%g8963789686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8963689682%_
                                                     _%g8963789686%_))))
                                            (_%g8963689682%_
                                             _%g8963789686%_))))
                                    (_%g8963689682%_ _%g8963789686%_))))
                            (_%g8963689682%_ _%g8963789686%_))))
                    (_%g8963689682%_ _%g8963789686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8963689682%_
                                                     _%g8963789686%_))))
                                            (_%g8963689682%_
                                             _%g8963789686%_))))
                                    (_%g8963689682%_ _%g8963789686%_))))
                            (_%g8963689682%_ _%g8963789686%_))))
                    (_%g8963689682%_ _%g8963789686%_)))))
        (_%g8963589835%_ _%$stx89632%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx89839%_)
      (let* ((_%g8984389865%_
              (lambda (_%g8984489861%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8984489861%_)))
             (_%g8984289934%_
              (lambda (_%g8984489869%_)
                (if (gx#stx-pair? _%g8984489869%_)
                    (let ((_%e8984889872%_ (gx#syntax-e _%g8984489869%_)))
                      (let ((_%hd8984989876%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8984889872%_)))
                            (_%tl8985089879%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8984889872%_))))
                        (if (gx#stx-pair? _%tl8985089879%_)
                            (let ((_%e8985189882%_
                                   (gx#syntax-e _%tl8985089879%_)))
                              (let ((_%hd8985289886%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8985189882%_)))
                                    (_%tl8985389889%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8985189882%_))))
                                (if (gx#stx-pair? _%tl8985389889%_)
                                    (let ((_%e8985489892%_
                                           (gx#syntax-e _%tl8985389889%_)))
                                      (let ((_%hd8985589896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8985489892%_)))
                                            (_%tl8985689899%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8985489892%_))))
                                        (if (gx#stx-pair? _%tl8985689899%_)
                                            (let ((_%e8985789902%_
                                                   (gx#syntax-e
                                                    _%tl8985689899%_)))
                                              (let ((_%hd8985889906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8985789902%_)))
                                                    (_%tl8985989909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8985789902%_))))
                                                (if (gx#stx-null?
                                                     _%tl8985989909%_)
                                                    ((lambda (_%L89912%_
                                                              _%L89914%_
                                                              _%L89915%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L89915%_
                                                   (cons _%L89914%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L89914%_ (cons _%L89914%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L89912%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8985889906%_
                                                     _%hd8985589896%_
                                                     _%hd8985289886%_)
                                                    (_%g8984389865%_
                                                     _%g8984489869%_))))
                                            (_%g8984389865%_
                                             _%g8984489869%_))))
                                    (_%g8984389865%_ _%g8984489869%_))))
                            (_%g8984389865%_ _%g8984489869%_))))
                    (_%g8984389865%_ _%g8984489869%_)))))
        (_%g8984289934%_ _%$stx89839%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx89938%_)
      (let* ((_%g8994289976%_
              (lambda (_%g8994389972%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8994389972%_)))
             (_%g8994190087%_
              (lambda (_%g8994389980%_)
                (if (gx#stx-pair? _%g8994389980%_)
                    (let ((_%e8995089983%_ (gx#syntax-e _%g8994389980%_)))
                      (let ((_%hd8995189987%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8995089983%_)))
                            (_%tl8995289990%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8995089983%_))))
                        (if (gx#stx-pair? _%tl8995289990%_)
                            (let ((_%e8995389993%_
                                   (gx#syntax-e _%tl8995289990%_)))
                              (let ((_%hd8995489997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8995389993%_)))
                                    (_%tl8995590000%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8995389993%_))))
                                (if (gx#stx-pair? _%tl8995590000%_)
                                    (let ((_%e8995690003%_
                                           (gx#syntax-e _%tl8995590000%_)))
                                      (let ((_%hd8995790007%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8995690003%_)))
                                            (_%tl8995890010%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8995690003%_))))
                                        (if (gx#stx-pair? _%tl8995890010%_)
                                            (let ((_%e8995990013%_
                                                   (gx#syntax-e
                                                    _%tl8995890010%_)))
                                              (let ((_%hd8996090017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8995990013%_)))
                                                    (_%tl8996190020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8995990013%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8996190020%_)
                                                    (let ((_%e8996290023%_
                                                           (gx#syntax-e
                                                            _%tl8996190020%_)))
                                                      (let ((_%hd8996390027%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8996290023%_)))
                    (_%tl8996490030%_
                     (let () (declare (not safe)) (##cdr _%e8996290023%_))))
                (if (gx#stx-pair? _%tl8996490030%_)
                    (let ((_%e8996590033%_ (gx#syntax-e _%tl8996490030%_)))
                      (let ((_%hd8996690037%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8996590033%_)))
                            (_%tl8996790040%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8996590033%_))))
                        (if (gx#stx-pair? _%tl8996790040%_)
                            (let ((_%e8996890043%_
                                   (gx#syntax-e _%tl8996790040%_)))
                              (let ((_%hd8996990047%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8996890043%_)))
                                    (_%tl8997090050%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8996890043%_))))
                                (if (gx#stx-null? _%tl8997090050%_)
                                    ((lambda (_%L90053%_
                                              _%L90055%_
                                              _%L90056%_
                                              _%L90057%_
                                              _%L90058%_
                                              _%L90059%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90057%_
                                               (cons _%L90055%_ '()))
                                         (cons _%L90058%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90059%_ '()))
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
                               (cons _%L90059%_
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
                                     (cons _%L90053%_ '()))
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
                                     (cons (cons (cons _%L90056%_
                                                       (cons _%L90055%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90059%_
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
                                     _%hd8996990047%_
                                     _%hd8996690037%_
                                     _%hd8996390027%_
                                     _%hd8996090017%_
                                     _%hd8995790007%_
                                     _%hd8995489997%_)
                                    (_%g8994289976%_ _%g8994389980%_))))
                            (_%g8994289976%_ _%g8994389980%_))))
                    (_%g8994289976%_ _%g8994389980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8994289976%_
                                                     _%g8994389980%_))))
                                            (_%g8994289976%_
                                             _%g8994389980%_))))
                                    (_%g8994289976%_ _%g8994389980%_))))
                            (_%g8994289976%_ _%g8994389980%_))))
                    (_%g8994289976%_ _%g8994389980%_)))))
        (_%g8994190087%_ _%$stx89938%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90091%_)
      (let* ((_%g9009590137%_
              (lambda (_%g9009690133%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9009690133%_)))
             (_%g9009490276%_
              (lambda (_%g9009690141%_)
                (if (gx#stx-pair? _%g9009690141%_)
                    (let ((_%e9010590144%_ (gx#syntax-e _%g9009690141%_)))
                      (let ((_%hd9010690148%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9010590144%_)))
                            (_%tl9010790151%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9010590144%_))))
                        (if (gx#stx-pair? _%tl9010790151%_)
                            (let ((_%e9010890154%_
                                   (gx#syntax-e _%tl9010790151%_)))
                              (let ((_%hd9010990158%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9010890154%_)))
                                    (_%tl9011090161%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9010890154%_))))
                                (if (gx#stx-pair? _%tl9011090161%_)
                                    (let ((_%e9011190164%_
                                           (gx#syntax-e _%tl9011090161%_)))
                                      (let ((_%hd9011290168%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9011190164%_)))
                                            (_%tl9011390171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9011190164%_))))
                                        (if (gx#stx-pair? _%tl9011390171%_)
                                            (let ((_%e9011490174%_
                                                   (gx#syntax-e
                                                    _%tl9011390171%_)))
                                              (let ((_%hd9011590178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9011490174%_)))
                                                    (_%tl9011690181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9011490174%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9011690181%_)
                                                    (let ((_%e9011790184%_
                                                           (gx#syntax-e
                                                            _%tl9011690181%_)))
                                                      (let ((_%hd9011890188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9011790184%_)))
                    (_%tl9011990191%_
                     (let () (declare (not safe)) (##cdr _%e9011790184%_))))
                (if (gx#stx-pair? _%tl9011990191%_)
                    (let ((_%e9012090194%_ (gx#syntax-e _%tl9011990191%_)))
                      (let ((_%hd9012190198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9012090194%_)))
                            (_%tl9012290201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9012090194%_))))
                        (if (gx#stx-pair? _%tl9012290201%_)
                            (let ((_%e9012390204%_
                                   (gx#syntax-e _%tl9012290201%_)))
                              (let ((_%hd9012490208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9012390204%_)))
                                    (_%tl9012590211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9012390204%_))))
                                (if (gx#stx-pair? _%tl9012590211%_)
                                    (let ((_%e9012690214%_
                                           (gx#syntax-e _%tl9012590211%_)))
                                      (let ((_%hd9012790218%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9012690214%_)))
                                            (_%tl9012890221%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9012690214%_))))
                                        (if (gx#stx-pair? _%tl9012890221%_)
                                            (let ((_%e9012990224%_
                                                   (gx#syntax-e
                                                    _%tl9012890221%_)))
                                              (let ((_%hd9013090228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9012990224%_)))
                                                    (_%tl9013190231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9012990224%_))))
                                                (if (gx#stx-null?
                                                     _%tl9013190231%_)
                                                    ((lambda (_%L90234%_
                                                              _%L90236%_
                                                              _%L90237%_
                                                              _%L90238%_
                                                              _%L90239%_
                                                              _%L90240%_
                                                              _%L90241%_
                                                              _%L90242%_)
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
                                                   (cons (cons _%L90240%_
                                                               (cons _%L90238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90241%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90242%_ '()))
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
                                               (cons _%L90242%_
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
                                                       (cons _%L90242%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90238%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90237%_ '()))))
               (cons (cons _%L90234%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90238%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90242%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90237%_ '()))))
                     (cons (cons _%L90236%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90238%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90242%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90238%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90242%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90237%_ '()))))
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
                                                     _%hd9013090228%_
                                                     _%hd9012790218%_
                                                     _%hd9012490208%_
                                                     _%hd9012190198%_
                                                     _%hd9011890188%_
                                                     _%hd9011590178%_
                                                     _%hd9011290168%_
                                                     _%hd9010990158%_)
                                                    (_%g9009590137%_
                                                     _%g9009690141%_))))
                                            (_%g9009590137%_
                                             _%g9009690141%_))))
                                    (_%g9009590137%_ _%g9009690141%_))))
                            (_%g9009590137%_ _%g9009690141%_))))
                    (_%g9009590137%_ _%g9009690141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9009590137%_
                                                     _%g9009690141%_))))
                                            (_%g9009590137%_
                                             _%g9009690141%_))))
                                    (_%g9009590137%_ _%g9009690141%_))))
                            (_%g9009590137%_ _%g9009690141%_))))
                    (_%g9009590137%_ _%g9009690141%_)))))
        (_%g9009490276%_ _%$stx90091%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90280%_)
      (let* ((_%g9028490330%_
              (lambda (_%g9028590326%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9028590326%_)))
             (_%g9028390483%_
              (lambda (_%g9028590334%_)
                (if (gx#stx-pair? _%g9028590334%_)
                    (let ((_%e9029590337%_ (gx#syntax-e _%g9028590334%_)))
                      (let ((_%hd9029690341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9029590337%_)))
                            (_%tl9029790344%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9029590337%_))))
                        (if (gx#stx-pair? _%tl9029790344%_)
                            (let ((_%e9029890347%_
                                   (gx#syntax-e _%tl9029790344%_)))
                              (let ((_%hd9029990351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9029890347%_)))
                                    (_%tl9030090354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9029890347%_))))
                                (if (gx#stx-pair? _%tl9030090354%_)
                                    (let ((_%e9030190357%_
                                           (gx#syntax-e _%tl9030090354%_)))
                                      (let ((_%hd9030290361%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9030190357%_)))
                                            (_%tl9030390364%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9030190357%_))))
                                        (if (gx#stx-pair? _%tl9030390364%_)
                                            (let ((_%e9030490367%_
                                                   (gx#syntax-e
                                                    _%tl9030390364%_)))
                                              (let ((_%hd9030590371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9030490367%_)))
                                                    (_%tl9030690374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9030490367%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9030690374%_)
                                                    (let ((_%e9030790377%_
                                                           (gx#syntax-e
                                                            _%tl9030690374%_)))
                                                      (let ((_%hd9030890381%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9030790377%_)))
                    (_%tl9030990384%_
                     (let () (declare (not safe)) (##cdr _%e9030790377%_))))
                (if (gx#stx-pair? _%tl9030990384%_)
                    (let ((_%e9031090387%_ (gx#syntax-e _%tl9030990384%_)))
                      (let ((_%hd9031190391%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9031090387%_)))
                            (_%tl9031290394%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9031090387%_))))
                        (if (gx#stx-pair? _%tl9031290394%_)
                            (let ((_%e9031390397%_
                                   (gx#syntax-e _%tl9031290394%_)))
                              (let ((_%hd9031490401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9031390397%_)))
                                    (_%tl9031590404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9031390397%_))))
                                (if (gx#stx-pair? _%tl9031590404%_)
                                    (let ((_%e9031690407%_
                                           (gx#syntax-e _%tl9031590404%_)))
                                      (let ((_%hd9031790411%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9031690407%_)))
                                            (_%tl9031890414%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9031690407%_))))
                                        (if (gx#stx-pair? _%tl9031890414%_)
                                            (let ((_%e9031990417%_
                                                   (gx#syntax-e
                                                    _%tl9031890414%_)))
                                              (let ((_%hd9032090421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9031990417%_)))
                                                    (_%tl9032190424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9031990417%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9032190424%_)
                                                    (let ((_%e9032290427%_
                                                           (gx#syntax-e
                                                            _%tl9032190424%_)))
                                                      (let ((_%hd9032390431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9032290427%_)))
                    (_%tl9032490434%_
                     (let () (declare (not safe)) (##cdr _%e9032290427%_))))
                (if (gx#stx-null? _%tl9032490434%_)
                    ((lambda (_%L90437%_
                              _%L90439%_
                              _%L90440%_
                              _%L90441%_
                              _%L90442%_
                              _%L90443%_
                              _%L90444%_
                              _%L90445%_
                              _%L90446%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90442%_ '()))
                         (cons _%L90445%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90446%_ '()))
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
                                                       (cons _%L90446%_
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
                                                               (cons _%L90446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90442%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90446%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90441%_
                                                     (cons _%L90440%_ '()))
                                               '()))))
                       (cons (cons _%L90437%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90446%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90442%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90446%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90441%_
                                                           (cons _%L90440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90439%_ '()) '()))))
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
                     (cons (cons (cons _%L90443%_
                                       (cons _%L90442%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90446%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90442%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90446%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90441%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90446%_
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
                     _%hd9032390431%_
                     _%hd9032090421%_
                     _%hd9031790411%_
                     _%hd9031490401%_
                     _%hd9031190391%_
                     _%hd9030890381%_
                     _%hd9030590371%_
                     _%hd9030290361%_
                     _%hd9029990351%_)
                    (_%g9028490330%_ _%g9028590334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9028490330%_
                                                     _%g9028590334%_))))
                                            (_%g9028490330%_
                                             _%g9028590334%_))))
                                    (_%g9028490330%_ _%g9028590334%_))))
                            (_%g9028490330%_ _%g9028590334%_))))
                    (_%g9028490330%_ _%g9028590334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9028490330%_
                                                     _%g9028590334%_))))
                                            (_%g9028490330%_
                                             _%g9028590334%_))))
                                    (_%g9028490330%_ _%g9028590334%_))))
                            (_%g9028490330%_ _%g9028590334%_))))
                    (_%g9028490330%_ _%g9028590334%_)))))
        (_%g9028390483%_ _%$stx90280%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90487%_)
      (let* ((_%g9049190525%_
              (lambda (_%g9049290521%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9049290521%_)))
             (_%g9049090636%_
              (lambda (_%g9049290529%_)
                (if (gx#stx-pair? _%g9049290529%_)
                    (let ((_%e9049990532%_ (gx#syntax-e _%g9049290529%_)))
                      (let ((_%hd9050090536%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9049990532%_)))
                            (_%tl9050190539%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9049990532%_))))
                        (if (gx#stx-pair? _%tl9050190539%_)
                            (let ((_%e9050290542%_
                                   (gx#syntax-e _%tl9050190539%_)))
                              (let ((_%hd9050390546%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9050290542%_)))
                                    (_%tl9050490549%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9050290542%_))))
                                (if (gx#stx-pair? _%tl9050490549%_)
                                    (let ((_%e9050590552%_
                                           (gx#syntax-e _%tl9050490549%_)))
                                      (let ((_%hd9050690556%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9050590552%_)))
                                            (_%tl9050790559%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9050590552%_))))
                                        (if (gx#stx-pair? _%tl9050790559%_)
                                            (let ((_%e9050890562%_
                                                   (gx#syntax-e
                                                    _%tl9050790559%_)))
                                              (let ((_%hd9050990566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9050890562%_)))
                                                    (_%tl9051090569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9050890562%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9051090569%_)
                                                    (let ((_%e9051190572%_
                                                           (gx#syntax-e
                                                            _%tl9051090569%_)))
                                                      (let ((_%hd9051290576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9051190572%_)))
                    (_%tl9051390579%_
                     (let () (declare (not safe)) (##cdr _%e9051190572%_))))
                (if (gx#stx-pair? _%tl9051390579%_)
                    (let ((_%e9051490582%_ (gx#syntax-e _%tl9051390579%_)))
                      (let ((_%hd9051590586%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9051490582%_)))
                            (_%tl9051690589%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9051490582%_))))
                        (if (gx#stx-pair? _%tl9051690589%_)
                            (let ((_%e9051790592%_
                                   (gx#syntax-e _%tl9051690589%_)))
                              (let ((_%hd9051890596%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9051790592%_)))
                                    (_%tl9051990599%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9051790592%_))))
                                (if (gx#stx-null? _%tl9051990599%_)
                                    ((lambda (_%L90602%_
                                              _%L90604%_
                                              _%L90605%_
                                              _%L90606%_
                                              _%L90607%_
                                              _%L90608%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90606%_
                                               (cons _%L90604%_ '()))
                                         (cons _%L90607%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90608%_ '()))
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
                               (cons _%L90608%_
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
                                     (cons (cons (cons _%L90605%_
                                                       (cons _%L90604%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90608%_
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
                     (cons (cons _%L90602%_ '()) '()))))
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
                                     _%hd9051890596%_
                                     _%hd9051590586%_
                                     _%hd9051290576%_
                                     _%hd9050990566%_
                                     _%hd9050690556%_
                                     _%hd9050390546%_)
                                    (_%g9049190525%_ _%g9049290529%_))))
                            (_%g9049190525%_ _%g9049290529%_))))
                    (_%g9049190525%_ _%g9049290529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9049190525%_
                                                     _%g9049290529%_))))
                                            (_%g9049190525%_
                                             _%g9049290529%_))))
                                    (_%g9049190525%_ _%g9049290529%_))))
                            (_%g9049190525%_ _%g9049290529%_))))
                    (_%g9049190525%_ _%g9049290529%_)))))
        (_%g9049090636%_ _%$stx90487%_)))))

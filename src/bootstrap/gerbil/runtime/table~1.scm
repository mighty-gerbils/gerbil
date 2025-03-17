(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx92328%_)
      (let* ((_%g9233292378%_
              (lambda (_%g9233392374%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9233392374%_)))
             (_%g9233192532%_
              (lambda (_%g9233392382%_)
                (if (gx#stx-pair? _%g9233392382%_)
                    (let ((_%e9234392385%_ (gx#syntax-e _%g9233392382%_)))
                      (let ((_%hd9234492389%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9234392385%_)))
                            (_%tl9234592392%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9234392385%_))))
                        (if (gx#stx-pair? _%tl9234592392%_)
                            (let ((_%e9234692395%_
                                   (gx#syntax-e _%tl9234592392%_)))
                              (let ((_%hd9234792399%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9234692395%_)))
                                    (_%tl9234892402%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9234692395%_))))
                                (if (gx#stx-pair? _%tl9234892402%_)
                                    (let ((_%e9234992405%_
                                           (gx#syntax-e _%tl9234892402%_)))
                                      (let ((_%hd9235092409%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9234992405%_)))
                                            (_%tl9235192412%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9234992405%_))))
                                        (if (gx#stx-pair? _%tl9235192412%_)
                                            (let ((_%e9235292415%_
                                                   (gx#syntax-e
                                                    _%tl9235192412%_)))
                                              (let ((_%hd9235392419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9235292415%_)))
                                                    (_%tl9235492422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9235292415%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9235492422%_)
                                                    (let ((_%e9235592425%_
                                                           (gx#syntax-e
                                                            _%tl9235492422%_)))
                                                      (let ((_%hd9235692429%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9235592425%_)))
                    (_%tl9235792432%_
                     (let () (declare (not safe)) (##cdr _%e9235592425%_))))
                (if (gx#stx-pair? _%tl9235792432%_)
                    (let ((_%e9235892435%_ (gx#syntax-e _%tl9235792432%_)))
                      (let ((_%hd9235992439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9235892435%_)))
                            (_%tl9236092442%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9235892435%_))))
                        (if (gx#stx-pair? _%tl9236092442%_)
                            (let ((_%e9236192445%_
                                   (gx#syntax-e _%tl9236092442%_)))
                              (let ((_%hd9236292449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9236192445%_)))
                                    (_%tl9236392452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9236192445%_))))
                                (if (gx#stx-pair? _%tl9236392452%_)
                                    (let ((_%e9236492455%_
                                           (gx#syntax-e _%tl9236392452%_)))
                                      (let ((_%hd9236592459%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9236492455%_)))
                                            (_%tl9236692462%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9236492455%_))))
                                        (if (gx#stx-pair? _%tl9236692462%_)
                                            (let ((_%e9236792465%_
                                                   (gx#syntax-e
                                                    _%tl9236692462%_)))
                                              (let ((_%hd9236892469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9236792465%_)))
                                                    (_%tl9236992472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9236792465%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9236992472%_)
                                                    (let ((_%e9237092475%_
                                                           (gx#syntax-e
                                                            _%tl9236992472%_)))
                                                      (let ((_%hd9237192479%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9237092475%_)))
                    (_%tl9237292482%_
                     (let () (declare (not safe)) (##cdr _%e9237092475%_))))
                (if (gx#stx-null? _%tl9237292482%_)
                    ((lambda (_%L92485%_
                              _%L92487%_
                              _%L92488%_
                              _%L92489%_
                              _%L92490%_
                              _%L92491%_
                              _%L92492%_
                              _%L92493%_
                              _%L92494%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L92494%_
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
                         (cons _%L92487%_
                               (cons _%L92485%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L92493%_
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
                                                       (cons _%L92487%_
                                                             (cons _%L92485%_
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
                                                     (cons (cons _%L92492%_
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
                         (cons (cons _%L92491%_
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
                                                           (cons (cons _%L92491%_
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
                           (cons _%L92487%_
                                 (cons _%L92485%_
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
                         (cons (cons _%L92490%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L92490%_
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
                                     (cons (cons _%L92489%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L92490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L92489%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L92490%_
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
                                       (cons _%L92487%_
                                             (cons _%L92485%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L92490%_
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
                                     (cons (cons _%L92488%_
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
                                             (cons _%L92487%_
                                                   (cons _%L92485%_
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
                     _%hd9237192479%_
                     _%hd9236892469%_
                     _%hd9236592459%_
                     _%hd9236292449%_
                     _%hd9235992439%_
                     _%hd9235692429%_
                     _%hd9235392419%_
                     _%hd9235092409%_
                     _%hd9234792399%_)
                    (_%g9233292378%_ _%g9233392382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9233292378%_
                                                     _%g9233392382%_))))
                                            (_%g9233292378%_
                                             _%g9233392382%_))))
                                    (_%g9233292378%_ _%g9233392382%_))))
                            (_%g9233292378%_ _%g9233392382%_))))
                    (_%g9233292378%_ _%g9233392382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9233292378%_
                                                     _%g9233392382%_))))
                                            (_%g9233292378%_
                                             _%g9233392382%_))))
                                    (_%g9233292378%_ _%g9233392382%_))))
                            (_%g9233292378%_ _%g9233392382%_))))
                    (_%g9233292378%_ _%g9233392382%_)))))
        (_%g9233192532%_ _%$stx92328%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx92536%_)
      (let* ((_%g9254092562%_
              (lambda (_%g9254192558%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9254192558%_)))
             (_%g9253992631%_
              (lambda (_%g9254192566%_)
                (if (gx#stx-pair? _%g9254192566%_)
                    (let ((_%e9254592569%_ (gx#syntax-e _%g9254192566%_)))
                      (let ((_%hd9254692573%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9254592569%_)))
                            (_%tl9254792576%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9254592569%_))))
                        (if (gx#stx-pair? _%tl9254792576%_)
                            (let ((_%e9254892579%_
                                   (gx#syntax-e _%tl9254792576%_)))
                              (let ((_%hd9254992583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9254892579%_)))
                                    (_%tl9255092586%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9254892579%_))))
                                (if (gx#stx-pair? _%tl9255092586%_)
                                    (let ((_%e9255192589%_
                                           (gx#syntax-e _%tl9255092586%_)))
                                      (let ((_%hd9255292593%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9255192589%_)))
                                            (_%tl9255392596%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9255192589%_))))
                                        (if (gx#stx-pair? _%tl9255392596%_)
                                            (let ((_%e9255492599%_
                                                   (gx#syntax-e
                                                    _%tl9255392596%_)))
                                              (let ((_%hd9255592603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9255492599%_)))
                                                    (_%tl9255692606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9255492599%_))))
                                                (if (gx#stx-null?
                                                     _%tl9255692606%_)
                                                    ((lambda (_%L92609%_
                                                              _%L92611%_
                                                              _%L92612%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L92612%_
                                                   (cons _%L92611%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L92611%_ (cons _%L92611%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L92609%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9255592603%_
                                                     _%hd9255292593%_
                                                     _%hd9254992583%_)
                                                    (_%g9254092562%_
                                                     _%g9254192566%_))))
                                            (_%g9254092562%_
                                             _%g9254192566%_))))
                                    (_%g9254092562%_ _%g9254192566%_))))
                            (_%g9254092562%_ _%g9254192566%_))))
                    (_%g9254092562%_ _%g9254192566%_)))))
        (_%g9253992631%_ _%$stx92536%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx92635%_)
      (let* ((_%g9263992673%_
              (lambda (_%g9264092669%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9264092669%_)))
             (_%g9263892784%_
              (lambda (_%g9264092677%_)
                (if (gx#stx-pair? _%g9264092677%_)
                    (let ((_%e9264792680%_ (gx#syntax-e _%g9264092677%_)))
                      (let ((_%hd9264892684%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9264792680%_)))
                            (_%tl9264992687%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9264792680%_))))
                        (if (gx#stx-pair? _%tl9264992687%_)
                            (let ((_%e9265092690%_
                                   (gx#syntax-e _%tl9264992687%_)))
                              (let ((_%hd9265192694%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9265092690%_)))
                                    (_%tl9265292697%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9265092690%_))))
                                (if (gx#stx-pair? _%tl9265292697%_)
                                    (let ((_%e9265392700%_
                                           (gx#syntax-e _%tl9265292697%_)))
                                      (let ((_%hd9265492704%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9265392700%_)))
                                            (_%tl9265592707%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9265392700%_))))
                                        (if (gx#stx-pair? _%tl9265592707%_)
                                            (let ((_%e9265692710%_
                                                   (gx#syntax-e
                                                    _%tl9265592707%_)))
                                              (let ((_%hd9265792714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9265692710%_)))
                                                    (_%tl9265892717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9265692710%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9265892717%_)
                                                    (let ((_%e9265992720%_
                                                           (gx#syntax-e
                                                            _%tl9265892717%_)))
                                                      (let ((_%hd9266092724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9265992720%_)))
                    (_%tl9266192727%_
                     (let () (declare (not safe)) (##cdr _%e9265992720%_))))
                (if (gx#stx-pair? _%tl9266192727%_)
                    (let ((_%e9266292730%_ (gx#syntax-e _%tl9266192727%_)))
                      (let ((_%hd9266392734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9266292730%_)))
                            (_%tl9266492737%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9266292730%_))))
                        (if (gx#stx-pair? _%tl9266492737%_)
                            (let ((_%e9266592740%_
                                   (gx#syntax-e _%tl9266492737%_)))
                              (let ((_%hd9266692744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9266592740%_)))
                                    (_%tl9266792747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9266592740%_))))
                                (if (gx#stx-null? _%tl9266792747%_)
                                    ((lambda (_%L92750%_
                                              _%L92752%_
                                              _%L92753%_
                                              _%L92754%_
                                              _%L92755%_
                                              _%L92756%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92754%_
                                               (cons _%L92752%_ '()))
                                         (cons _%L92755%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92756%_ '()))
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
                               (cons _%L92756%_
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
                                     (cons _%L92750%_ '()))
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
                                     (cons (cons (cons _%L92753%_
                                                       (cons _%L92752%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L92756%_
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
                                     _%hd9266692744%_
                                     _%hd9266392734%_
                                     _%hd9266092724%_
                                     _%hd9265792714%_
                                     _%hd9265492704%_
                                     _%hd9265192694%_)
                                    (_%g9263992673%_ _%g9264092677%_))))
                            (_%g9263992673%_ _%g9264092677%_))))
                    (_%g9263992673%_ _%g9264092677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9263992673%_
                                                     _%g9264092677%_))))
                                            (_%g9263992673%_
                                             _%g9264092677%_))))
                                    (_%g9263992673%_ _%g9264092677%_))))
                            (_%g9263992673%_ _%g9264092677%_))))
                    (_%g9263992673%_ _%g9264092677%_)))))
        (_%g9263892784%_ _%$stx92635%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx92788%_)
      (let* ((_%g9279292834%_
              (lambda (_%g9279392830%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9279392830%_)))
             (_%g9279192973%_
              (lambda (_%g9279392838%_)
                (if (gx#stx-pair? _%g9279392838%_)
                    (let ((_%e9280292841%_ (gx#syntax-e _%g9279392838%_)))
                      (let ((_%hd9280392845%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9280292841%_)))
                            (_%tl9280492848%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9280292841%_))))
                        (if (gx#stx-pair? _%tl9280492848%_)
                            (let ((_%e9280592851%_
                                   (gx#syntax-e _%tl9280492848%_)))
                              (let ((_%hd9280692855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9280592851%_)))
                                    (_%tl9280792858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9280592851%_))))
                                (if (gx#stx-pair? _%tl9280792858%_)
                                    (let ((_%e9280892861%_
                                           (gx#syntax-e _%tl9280792858%_)))
                                      (let ((_%hd9280992865%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9280892861%_)))
                                            (_%tl9281092868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9280892861%_))))
                                        (if (gx#stx-pair? _%tl9281092868%_)
                                            (let ((_%e9281192871%_
                                                   (gx#syntax-e
                                                    _%tl9281092868%_)))
                                              (let ((_%hd9281292875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9281192871%_)))
                                                    (_%tl9281392878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9281192871%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9281392878%_)
                                                    (let ((_%e9281492881%_
                                                           (gx#syntax-e
                                                            _%tl9281392878%_)))
                                                      (let ((_%hd9281592885%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9281492881%_)))
                    (_%tl9281692888%_
                     (let () (declare (not safe)) (##cdr _%e9281492881%_))))
                (if (gx#stx-pair? _%tl9281692888%_)
                    (let ((_%e9281792891%_ (gx#syntax-e _%tl9281692888%_)))
                      (let ((_%hd9281892895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9281792891%_)))
                            (_%tl9281992898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9281792891%_))))
                        (if (gx#stx-pair? _%tl9281992898%_)
                            (let ((_%e9282092901%_
                                   (gx#syntax-e _%tl9281992898%_)))
                              (let ((_%hd9282192905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9282092901%_)))
                                    (_%tl9282292908%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9282092901%_))))
                                (if (gx#stx-pair? _%tl9282292908%_)
                                    (let ((_%e9282392911%_
                                           (gx#syntax-e _%tl9282292908%_)))
                                      (let ((_%hd9282492915%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9282392911%_)))
                                            (_%tl9282592918%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9282392911%_))))
                                        (if (gx#stx-pair? _%tl9282592918%_)
                                            (let ((_%e9282692921%_
                                                   (gx#syntax-e
                                                    _%tl9282592918%_)))
                                              (let ((_%hd9282792925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9282692921%_)))
                                                    (_%tl9282892928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9282692921%_))))
                                                (if (gx#stx-null?
                                                     _%tl9282892928%_)
                                                    ((lambda (_%L92931%_
                                                              _%L92933%_
                                                              _%L92934%_
                                                              _%L92935%_
                                                              _%L92936%_
                                                              _%L92937%_
                                                              _%L92938%_
                                                              _%L92939%_)
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
                                                   (cons (cons _%L92937%_
                                                               (cons _%L92935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92938%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92939%_ '()))
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
                                               (cons _%L92939%_
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
                                                       (cons _%L92939%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92935%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92934%_ '()))))
               (cons (cons _%L92931%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92935%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92939%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92934%_ '()))))
                     (cons (cons _%L92933%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92935%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92939%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92935%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92939%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92934%_ '()))))
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
                                                     _%hd9282792925%_
                                                     _%hd9282492915%_
                                                     _%hd9282192905%_
                                                     _%hd9281892895%_
                                                     _%hd9281592885%_
                                                     _%hd9281292875%_
                                                     _%hd9280992865%_
                                                     _%hd9280692855%_)
                                                    (_%g9279292834%_
                                                     _%g9279392838%_))))
                                            (_%g9279292834%_
                                             _%g9279392838%_))))
                                    (_%g9279292834%_ _%g9279392838%_))))
                            (_%g9279292834%_ _%g9279392838%_))))
                    (_%g9279292834%_ _%g9279392838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9279292834%_
                                                     _%g9279392838%_))))
                                            (_%g9279292834%_
                                             _%g9279392838%_))))
                                    (_%g9279292834%_ _%g9279392838%_))))
                            (_%g9279292834%_ _%g9279392838%_))))
                    (_%g9279292834%_ _%g9279392838%_)))))
        (_%g9279192973%_ _%$stx92788%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92977%_)
      (let* ((_%g9298193027%_
              (lambda (_%g9298293023%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9298293023%_)))
             (_%g9298093180%_
              (lambda (_%g9298293031%_)
                (if (gx#stx-pair? _%g9298293031%_)
                    (let ((_%e9299293034%_ (gx#syntax-e _%g9298293031%_)))
                      (let ((_%hd9299393038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9299293034%_)))
                            (_%tl9299493041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9299293034%_))))
                        (if (gx#stx-pair? _%tl9299493041%_)
                            (let ((_%e9299593044%_
                                   (gx#syntax-e _%tl9299493041%_)))
                              (let ((_%hd9299693048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9299593044%_)))
                                    (_%tl9299793051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9299593044%_))))
                                (if (gx#stx-pair? _%tl9299793051%_)
                                    (let ((_%e9299893054%_
                                           (gx#syntax-e _%tl9299793051%_)))
                                      (let ((_%hd9299993058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9299893054%_)))
                                            (_%tl9300093061%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9299893054%_))))
                                        (if (gx#stx-pair? _%tl9300093061%_)
                                            (let ((_%e9300193064%_
                                                   (gx#syntax-e
                                                    _%tl9300093061%_)))
                                              (let ((_%hd9300293068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9300193064%_)))
                                                    (_%tl9300393071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9300193064%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9300393071%_)
                                                    (let ((_%e9300493074%_
                                                           (gx#syntax-e
                                                            _%tl9300393071%_)))
                                                      (let ((_%hd9300593078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9300493074%_)))
                    (_%tl9300693081%_
                     (let () (declare (not safe)) (##cdr _%e9300493074%_))))
                (if (gx#stx-pair? _%tl9300693081%_)
                    (let ((_%e9300793084%_ (gx#syntax-e _%tl9300693081%_)))
                      (let ((_%hd9300893088%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9300793084%_)))
                            (_%tl9300993091%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9300793084%_))))
                        (if (gx#stx-pair? _%tl9300993091%_)
                            (let ((_%e9301093094%_
                                   (gx#syntax-e _%tl9300993091%_)))
                              (let ((_%hd9301193098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9301093094%_)))
                                    (_%tl9301293101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9301093094%_))))
                                (if (gx#stx-pair? _%tl9301293101%_)
                                    (let ((_%e9301393104%_
                                           (gx#syntax-e _%tl9301293101%_)))
                                      (let ((_%hd9301493108%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9301393104%_)))
                                            (_%tl9301593111%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9301393104%_))))
                                        (if (gx#stx-pair? _%tl9301593111%_)
                                            (let ((_%e9301693114%_
                                                   (gx#syntax-e
                                                    _%tl9301593111%_)))
                                              (let ((_%hd9301793118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9301693114%_)))
                                                    (_%tl9301893121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9301693114%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9301893121%_)
                                                    (let ((_%e9301993124%_
                                                           (gx#syntax-e
                                                            _%tl9301893121%_)))
                                                      (let ((_%hd9302093128%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9301993124%_)))
                    (_%tl9302193131%_
                     (let () (declare (not safe)) (##cdr _%e9301993124%_))))
                (if (gx#stx-null? _%tl9302193131%_)
                    ((lambda (_%L93134%_
                              _%L93136%_
                              _%L93137%_
                              _%L93138%_
                              _%L93139%_
                              _%L93140%_
                              _%L93141%_
                              _%L93142%_
                              _%L93143%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L93141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93139%_ '()))
                         (cons _%L93142%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L93143%_ '()))
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
                                                       (cons _%L93143%_
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
                                                               (cons _%L93143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L93139%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L93143%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L93138%_
                                                     (cons _%L93137%_ '()))
                                               '()))))
                       (cons (cons _%L93134%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L93143%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L93139%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L93143%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L93138%_
                                                           (cons _%L93137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L93136%_ '()) '()))))
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
                     (cons (cons (cons _%L93140%_
                                       (cons _%L93139%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L93143%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L93139%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L93143%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L93138%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L93143%_
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
                     _%hd9302093128%_
                     _%hd9301793118%_
                     _%hd9301493108%_
                     _%hd9301193098%_
                     _%hd9300893088%_
                     _%hd9300593078%_
                     _%hd9300293068%_
                     _%hd9299993058%_
                     _%hd9299693048%_)
                    (_%g9298193027%_ _%g9298293031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9298193027%_
                                                     _%g9298293031%_))))
                                            (_%g9298193027%_
                                             _%g9298293031%_))))
                                    (_%g9298193027%_ _%g9298293031%_))))
                            (_%g9298193027%_ _%g9298293031%_))))
                    (_%g9298193027%_ _%g9298293031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9298193027%_
                                                     _%g9298293031%_))))
                                            (_%g9298193027%_
                                             _%g9298293031%_))))
                                    (_%g9298193027%_ _%g9298293031%_))))
                            (_%g9298193027%_ _%g9298293031%_))))
                    (_%g9298193027%_ _%g9298293031%_)))))
        (_%g9298093180%_ _%$stx92977%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx93184%_)
      (let* ((_%g9318893222%_
              (lambda (_%g9318993218%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9318993218%_)))
             (_%g9318793333%_
              (lambda (_%g9318993226%_)
                (if (gx#stx-pair? _%g9318993226%_)
                    (let ((_%e9319693229%_ (gx#syntax-e _%g9318993226%_)))
                      (let ((_%hd9319793233%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9319693229%_)))
                            (_%tl9319893236%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9319693229%_))))
                        (if (gx#stx-pair? _%tl9319893236%_)
                            (let ((_%e9319993239%_
                                   (gx#syntax-e _%tl9319893236%_)))
                              (let ((_%hd9320093243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9319993239%_)))
                                    (_%tl9320193246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9319993239%_))))
                                (if (gx#stx-pair? _%tl9320193246%_)
                                    (let ((_%e9320293249%_
                                           (gx#syntax-e _%tl9320193246%_)))
                                      (let ((_%hd9320393253%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9320293249%_)))
                                            (_%tl9320493256%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9320293249%_))))
                                        (if (gx#stx-pair? _%tl9320493256%_)
                                            (let ((_%e9320593259%_
                                                   (gx#syntax-e
                                                    _%tl9320493256%_)))
                                              (let ((_%hd9320693263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9320593259%_)))
                                                    (_%tl9320793266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9320593259%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9320793266%_)
                                                    (let ((_%e9320893269%_
                                                           (gx#syntax-e
                                                            _%tl9320793266%_)))
                                                      (let ((_%hd9320993273%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9320893269%_)))
                    (_%tl9321093276%_
                     (let () (declare (not safe)) (##cdr _%e9320893269%_))))
                (if (gx#stx-pair? _%tl9321093276%_)
                    (let ((_%e9321193279%_ (gx#syntax-e _%tl9321093276%_)))
                      (let ((_%hd9321293283%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9321193279%_)))
                            (_%tl9321393286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9321193279%_))))
                        (if (gx#stx-pair? _%tl9321393286%_)
                            (let ((_%e9321493289%_
                                   (gx#syntax-e _%tl9321393286%_)))
                              (let ((_%hd9321593293%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9321493289%_)))
                                    (_%tl9321693296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9321493289%_))))
                                (if (gx#stx-null? _%tl9321693296%_)
                                    ((lambda (_%L93299%_
                                              _%L93301%_
                                              _%L93302%_
                                              _%L93303%_
                                              _%L93304%_
                                              _%L93305%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L93303%_
                                               (cons _%L93301%_ '()))
                                         (cons _%L93304%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L93305%_ '()))
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
                               (cons _%L93305%_
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
                                     (cons (cons (cons _%L93302%_
                                                       (cons _%L93301%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L93305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L93305%_
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
                     (cons (cons _%L93299%_ '()) '()))))
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
                                     _%hd9321593293%_
                                     _%hd9321293283%_
                                     _%hd9320993273%_
                                     _%hd9320693263%_
                                     _%hd9320393253%_
                                     _%hd9320093243%_)
                                    (_%g9318893222%_ _%g9318993226%_))))
                            (_%g9318893222%_ _%g9318993226%_))))
                    (_%g9318893222%_ _%g9318993226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9318893222%_
                                                     _%g9318993226%_))))
                                            (_%g9318893222%_
                                             _%g9318993226%_))))
                                    (_%g9318893222%_ _%g9318993226%_))))
                            (_%g9318893222%_ _%g9318993226%_))))
                    (_%g9318893222%_ _%g9318993226%_)))))
        (_%g9318793333%_ _%$stx93184%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88009%_)
      (let* ((_%g8801388027%_
              (lambda (_%g8801488023%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8801488023%_)))
             (_%g8801288069%_
              (lambda (_%g8801488031%_)
                (if (gx#stx-pair? _%g8801488031%_)
                    (let ((_%e8801888034%_ (gx#syntax-e _%g8801488031%_)))
                      (let ((_%hd8801788038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8801888034%_)))
                            (_%tl8801688041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8801888034%_))))
                        (if (gx#stx-pair? _%tl8801688041%_)
                            (let ((_%e8802188044%_
                                   (gx#syntax-e _%tl8801688041%_)))
                              (let ((_%hd8802088048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8802188044%_)))
                                    (_%tl8801988051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8802188044%_))))
                                (if (gx#stx-null? _%tl8801988051%_)
                                    ((lambda (_%L88054%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88054%_ '()))))
                                     _%hd8802088048%_)
                                    (_%g8801388027%_ _%g8801488031%_))))
                            (_%g8801388027%_ _%g8801488031%_))))
                    (_%g8801388027%_ _%g8801488031%_)))))
        (_%g8801288069%_ _%$stx88009%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88073%_)
      (let* ((_%g8807788123%_
              (lambda (_%g8807888119%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8807888119%_)))
             (_%g8807688276%_
              (lambda (_%g8807888127%_)
                (if (gx#stx-pair? _%g8807888127%_)
                    (let ((_%e8809088130%_ (gx#syntax-e _%g8807888127%_)))
                      (let ((_%hd8808988134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8809088130%_)))
                            (_%tl8808888137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8809088130%_))))
                        (if (gx#stx-pair? _%tl8808888137%_)
                            (let ((_%e8809388140%_
                                   (gx#syntax-e _%tl8808888137%_)))
                              (let ((_%hd8809288144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8809388140%_)))
                                    (_%tl8809188147%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8809388140%_))))
                                (if (gx#stx-pair? _%tl8809188147%_)
                                    (let ((_%e8809688150%_
                                           (gx#syntax-e _%tl8809188147%_)))
                                      (let ((_%hd8809588154%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8809688150%_)))
                                            (_%tl8809488157%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8809688150%_))))
                                        (if (gx#stx-pair? _%tl8809488157%_)
                                            (let ((_%e8809988160%_
                                                   (gx#syntax-e
                                                    _%tl8809488157%_)))
                                              (let ((_%hd8809888164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8809988160%_)))
                                                    (_%tl8809788167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8809988160%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8809788167%_)
                                                    (let ((_%e8810288170%_
                                                           (gx#syntax-e
                                                            _%tl8809788167%_)))
                                                      (let ((_%hd8810188174%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8810288170%_)))
                    (_%tl8810088177%_
                     (let () (declare (not safe)) (##cdr _%e8810288170%_))))
                (if (gx#stx-pair? _%tl8810088177%_)
                    (let ((_%e8810588180%_ (gx#syntax-e _%tl8810088177%_)))
                      (let ((_%hd8810488184%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8810588180%_)))
                            (_%tl8810388187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8810588180%_))))
                        (if (gx#stx-pair? _%tl8810388187%_)
                            (let ((_%e8810888190%_
                                   (gx#syntax-e _%tl8810388187%_)))
                              (let ((_%hd8810788194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8810888190%_)))
                                    (_%tl8810688197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8810888190%_))))
                                (if (gx#stx-pair? _%tl8810688197%_)
                                    (let ((_%e8811188200%_
                                           (gx#syntax-e _%tl8810688197%_)))
                                      (let ((_%hd8811088204%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8811188200%_)))
                                            (_%tl8810988207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8811188200%_))))
                                        (if (gx#stx-pair? _%tl8810988207%_)
                                            (let ((_%e8811488210%_
                                                   (gx#syntax-e
                                                    _%tl8810988207%_)))
                                              (let ((_%hd8811388214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8811488210%_)))
                                                    (_%tl8811288217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8811488210%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8811288217%_)
                                                    (let ((_%e8811788220%_
                                                           (gx#syntax-e
                                                            _%tl8811288217%_)))
                                                      (let ((_%hd8811688224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8811788220%_)))
                    (_%tl8811588227%_
                     (let () (declare (not safe)) (##cdr _%e8811788220%_))))
                (if (gx#stx-null? _%tl8811588227%_)
                    ((lambda (_%L88230%_
                              _%L88232%_
                              _%L88233%_
                              _%L88234%_
                              _%L88235%_
                              _%L88236%_
                              _%L88237%_
                              _%L88238%_
                              _%L88239%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L88239%_
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
                         (cons _%L88232%_
                               (cons _%L88230%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L88238%_
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
                                                       (cons _%L88232%_
                                                             (cons _%L88230%_
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
                                                     (cons (cons _%L88237%_
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
                         (cons (cons _%L88236%_
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
                                                           (cons (cons _%L88236%_
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
                           (cons _%L88232%_
                                 (cons _%L88230%_
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
                         (cons (cons _%L88235%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L88235%_
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
                                     (cons (cons _%L88234%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L88235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L88234%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L88235%_
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
                                       (cons _%L88232%_
                                             (cons _%L88230%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L88235%_
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
                                     (cons (cons _%L88233%_
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
                                             (cons _%L88232%_
                                                   (cons _%L88230%_
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
                     _%hd8811688224%_
                     _%hd8811388214%_
                     _%hd8811088204%_
                     _%hd8810788194%_
                     _%hd8810488184%_
                     _%hd8810188174%_
                     _%hd8809888164%_
                     _%hd8809588154%_
                     _%hd8809288144%_)
                    (_%g8807788123%_ _%g8807888127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8807788123%_
                                                     _%g8807888127%_))))
                                            (_%g8807788123%_
                                             _%g8807888127%_))))
                                    (_%g8807788123%_ _%g8807888127%_))))
                            (_%g8807788123%_ _%g8807888127%_))))
                    (_%g8807788123%_ _%g8807888127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8807788123%_
                                                     _%g8807888127%_))))
                                            (_%g8807788123%_
                                             _%g8807888127%_))))
                                    (_%g8807788123%_ _%g8807888127%_))))
                            (_%g8807788123%_ _%g8807888127%_))))
                    (_%g8807788123%_ _%g8807888127%_)))))
        (_%g8807688276%_ _%$stx88073%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx88280%_)
      (let* ((_%g8828488306%_
              (lambda (_%g8828588302%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8828588302%_)))
             (_%g8828388375%_
              (lambda (_%g8828588310%_)
                (if (gx#stx-pair? _%g8828588310%_)
                    (let ((_%e8829188313%_ (gx#syntax-e _%g8828588310%_)))
                      (let ((_%hd8829088317%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8829188313%_)))
                            (_%tl8828988320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8829188313%_))))
                        (if (gx#stx-pair? _%tl8828988320%_)
                            (let ((_%e8829488323%_
                                   (gx#syntax-e _%tl8828988320%_)))
                              (let ((_%hd8829388327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8829488323%_)))
                                    (_%tl8829288330%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8829488323%_))))
                                (if (gx#stx-pair? _%tl8829288330%_)
                                    (let ((_%e8829788333%_
                                           (gx#syntax-e _%tl8829288330%_)))
                                      (let ((_%hd8829688337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8829788333%_)))
                                            (_%tl8829588340%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8829788333%_))))
                                        (if (gx#stx-pair? _%tl8829588340%_)
                                            (let ((_%e8830088343%_
                                                   (gx#syntax-e
                                                    _%tl8829588340%_)))
                                              (let ((_%hd8829988347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8830088343%_)))
                                                    (_%tl8829888350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8830088343%_))))
                                                (if (gx#stx-null?
                                                     _%tl8829888350%_)
                                                    ((lambda (_%L88353%_
                                                              _%L88355%_
                                                              _%L88356%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88356%_
                                                   (cons _%L88355%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88355%_ (cons _%L88355%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88353%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8829988347%_
                                                     _%hd8829688337%_
                                                     _%hd8829388327%_)
                                                    (_%g8828488306%_
                                                     _%g8828588310%_))))
                                            (_%g8828488306%_
                                             _%g8828588310%_))))
                                    (_%g8828488306%_ _%g8828588310%_))))
                            (_%g8828488306%_ _%g8828588310%_))))
                    (_%g8828488306%_ _%g8828588310%_)))))
        (_%g8828388375%_ _%$stx88280%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88379%_)
      (let* ((_%g8838388417%_
              (lambda (_%g8838488413%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8838488413%_)))
             (_%g8838288528%_
              (lambda (_%g8838488421%_)
                (if (gx#stx-pair? _%g8838488421%_)
                    (let ((_%e8839388424%_ (gx#syntax-e _%g8838488421%_)))
                      (let ((_%hd8839288428%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8839388424%_)))
                            (_%tl8839188431%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8839388424%_))))
                        (if (gx#stx-pair? _%tl8839188431%_)
                            (let ((_%e8839688434%_
                                   (gx#syntax-e _%tl8839188431%_)))
                              (let ((_%hd8839588438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8839688434%_)))
                                    (_%tl8839488441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8839688434%_))))
                                (if (gx#stx-pair? _%tl8839488441%_)
                                    (let ((_%e8839988444%_
                                           (gx#syntax-e _%tl8839488441%_)))
                                      (let ((_%hd8839888448%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8839988444%_)))
                                            (_%tl8839788451%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8839988444%_))))
                                        (if (gx#stx-pair? _%tl8839788451%_)
                                            (let ((_%e8840288454%_
                                                   (gx#syntax-e
                                                    _%tl8839788451%_)))
                                              (let ((_%hd8840188458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8840288454%_)))
                                                    (_%tl8840088461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8840288454%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8840088461%_)
                                                    (let ((_%e8840588464%_
                                                           (gx#syntax-e
                                                            _%tl8840088461%_)))
                                                      (let ((_%hd8840488468%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8840588464%_)))
                    (_%tl8840388471%_
                     (let () (declare (not safe)) (##cdr _%e8840588464%_))))
                (if (gx#stx-pair? _%tl8840388471%_)
                    (let ((_%e8840888474%_ (gx#syntax-e _%tl8840388471%_)))
                      (let ((_%hd8840788478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8840888474%_)))
                            (_%tl8840688481%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8840888474%_))))
                        (if (gx#stx-pair? _%tl8840688481%_)
                            (let ((_%e8841188484%_
                                   (gx#syntax-e _%tl8840688481%_)))
                              (let ((_%hd8841088488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8841188484%_)))
                                    (_%tl8840988491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8841188484%_))))
                                (if (gx#stx-null? _%tl8840988491%_)
                                    ((lambda (_%L88494%_
                                              _%L88496%_
                                              _%L88497%_
                                              _%L88498%_
                                              _%L88499%_
                                              _%L88500%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88498%_
                                               (cons _%L88496%_ '()))
                                         (cons _%L88499%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88500%_ '()))
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
                               (cons _%L88500%_
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
                                     (cons _%L88494%_ '()))
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
                                     (cons (cons (cons _%L88497%_
                                                       (cons _%L88496%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88500%_
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
                                     _%hd8841088488%_
                                     _%hd8840788478%_
                                     _%hd8840488468%_
                                     _%hd8840188458%_
                                     _%hd8839888448%_
                                     _%hd8839588438%_)
                                    (_%g8838388417%_ _%g8838488421%_))))
                            (_%g8838388417%_ _%g8838488421%_))))
                    (_%g8838388417%_ _%g8838488421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8838388417%_
                                                     _%g8838488421%_))))
                                            (_%g8838388417%_
                                             _%g8838488421%_))))
                                    (_%g8838388417%_ _%g8838488421%_))))
                            (_%g8838388417%_ _%g8838488421%_))))
                    (_%g8838388417%_ _%g8838488421%_)))))
        (_%g8838288528%_ _%$stx88379%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88532%_)
      (let* ((_%g8853688578%_
              (lambda (_%g8853788574%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8853788574%_)))
             (_%g8853588717%_
              (lambda (_%g8853788582%_)
                (if (gx#stx-pair? _%g8853788582%_)
                    (let ((_%e8854888585%_ (gx#syntax-e _%g8853788582%_)))
                      (let ((_%hd8854788589%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8854888585%_)))
                            (_%tl8854688592%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8854888585%_))))
                        (if (gx#stx-pair? _%tl8854688592%_)
                            (let ((_%e8855188595%_
                                   (gx#syntax-e _%tl8854688592%_)))
                              (let ((_%hd8855088599%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8855188595%_)))
                                    (_%tl8854988602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8855188595%_))))
                                (if (gx#stx-pair? _%tl8854988602%_)
                                    (let ((_%e8855488605%_
                                           (gx#syntax-e _%tl8854988602%_)))
                                      (let ((_%hd8855388609%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8855488605%_)))
                                            (_%tl8855288612%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8855488605%_))))
                                        (if (gx#stx-pair? _%tl8855288612%_)
                                            (let ((_%e8855788615%_
                                                   (gx#syntax-e
                                                    _%tl8855288612%_)))
                                              (let ((_%hd8855688619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8855788615%_)))
                                                    (_%tl8855588622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8855788615%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8855588622%_)
                                                    (let ((_%e8856088625%_
                                                           (gx#syntax-e
                                                            _%tl8855588622%_)))
                                                      (let ((_%hd8855988629%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8856088625%_)))
                    (_%tl8855888632%_
                     (let () (declare (not safe)) (##cdr _%e8856088625%_))))
                (if (gx#stx-pair? _%tl8855888632%_)
                    (let ((_%e8856388635%_ (gx#syntax-e _%tl8855888632%_)))
                      (let ((_%hd8856288639%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8856388635%_)))
                            (_%tl8856188642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8856388635%_))))
                        (if (gx#stx-pair? _%tl8856188642%_)
                            (let ((_%e8856688645%_
                                   (gx#syntax-e _%tl8856188642%_)))
                              (let ((_%hd8856588649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8856688645%_)))
                                    (_%tl8856488652%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8856688645%_))))
                                (if (gx#stx-pair? _%tl8856488652%_)
                                    (let ((_%e8856988655%_
                                           (gx#syntax-e _%tl8856488652%_)))
                                      (let ((_%hd8856888659%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8856988655%_)))
                                            (_%tl8856788662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8856988655%_))))
                                        (if (gx#stx-pair? _%tl8856788662%_)
                                            (let ((_%e8857288665%_
                                                   (gx#syntax-e
                                                    _%tl8856788662%_)))
                                              (let ((_%hd8857188669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8857288665%_)))
                                                    (_%tl8857088672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8857288665%_))))
                                                (if (gx#stx-null?
                                                     _%tl8857088672%_)
                                                    ((lambda (_%L88675%_
                                                              _%L88677%_
                                                              _%L88678%_
                                                              _%L88679%_
                                                              _%L88680%_
                                                              _%L88681%_
                                                              _%L88682%_
                                                              _%L88683%_)
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
                                                   (cons (cons _%L88681%_
                                                               (cons _%L88679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88682%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88683%_ '()))
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
                                               (cons _%L88683%_
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
                                                       (cons _%L88683%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88679%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88678%_ '()))))
               (cons (cons _%L88675%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88679%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88683%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88678%_ '()))))
                     (cons (cons _%L88677%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88679%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88683%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88679%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88683%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88678%_ '()))))
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
                                                     _%hd8857188669%_
                                                     _%hd8856888659%_
                                                     _%hd8856588649%_
                                                     _%hd8856288639%_
                                                     _%hd8855988629%_
                                                     _%hd8855688619%_
                                                     _%hd8855388609%_
                                                     _%hd8855088599%_)
                                                    (_%g8853688578%_
                                                     _%g8853788582%_))))
                                            (_%g8853688578%_
                                             _%g8853788582%_))))
                                    (_%g8853688578%_ _%g8853788582%_))))
                            (_%g8853688578%_ _%g8853788582%_))))
                    (_%g8853688578%_ _%g8853788582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8853688578%_
                                                     _%g8853788582%_))))
                                            (_%g8853688578%_
                                             _%g8853788582%_))))
                                    (_%g8853688578%_ _%g8853788582%_))))
                            (_%g8853688578%_ _%g8853788582%_))))
                    (_%g8853688578%_ _%g8853788582%_)))))
        (_%g8853588717%_ _%$stx88532%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88721%_)
      (let* ((_%g8872588771%_
              (lambda (_%g8872688767%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8872688767%_)))
             (_%g8872488924%_
              (lambda (_%g8872688775%_)
                (if (gx#stx-pair? _%g8872688775%_)
                    (let ((_%e8873888778%_ (gx#syntax-e _%g8872688775%_)))
                      (let ((_%hd8873788782%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8873888778%_)))
                            (_%tl8873688785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8873888778%_))))
                        (if (gx#stx-pair? _%tl8873688785%_)
                            (let ((_%e8874188788%_
                                   (gx#syntax-e _%tl8873688785%_)))
                              (let ((_%hd8874088792%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8874188788%_)))
                                    (_%tl8873988795%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8874188788%_))))
                                (if (gx#stx-pair? _%tl8873988795%_)
                                    (let ((_%e8874488798%_
                                           (gx#syntax-e _%tl8873988795%_)))
                                      (let ((_%hd8874388802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8874488798%_)))
                                            (_%tl8874288805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8874488798%_))))
                                        (if (gx#stx-pair? _%tl8874288805%_)
                                            (let ((_%e8874788808%_
                                                   (gx#syntax-e
                                                    _%tl8874288805%_)))
                                              (let ((_%hd8874688812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8874788808%_)))
                                                    (_%tl8874588815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8874788808%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8874588815%_)
                                                    (let ((_%e8875088818%_
                                                           (gx#syntax-e
                                                            _%tl8874588815%_)))
                                                      (let ((_%hd8874988822%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8875088818%_)))
                    (_%tl8874888825%_
                     (let () (declare (not safe)) (##cdr _%e8875088818%_))))
                (if (gx#stx-pair? _%tl8874888825%_)
                    (let ((_%e8875388828%_ (gx#syntax-e _%tl8874888825%_)))
                      (let ((_%hd8875288832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8875388828%_)))
                            (_%tl8875188835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8875388828%_))))
                        (if (gx#stx-pair? _%tl8875188835%_)
                            (let ((_%e8875688838%_
                                   (gx#syntax-e _%tl8875188835%_)))
                              (let ((_%hd8875588842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8875688838%_)))
                                    (_%tl8875488845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8875688838%_))))
                                (if (gx#stx-pair? _%tl8875488845%_)
                                    (let ((_%e8875988848%_
                                           (gx#syntax-e _%tl8875488845%_)))
                                      (let ((_%hd8875888852%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8875988848%_)))
                                            (_%tl8875788855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8875988848%_))))
                                        (if (gx#stx-pair? _%tl8875788855%_)
                                            (let ((_%e8876288858%_
                                                   (gx#syntax-e
                                                    _%tl8875788855%_)))
                                              (let ((_%hd8876188862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8876288858%_)))
                                                    (_%tl8876088865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8876288858%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8876088865%_)
                                                    (let ((_%e8876588868%_
                                                           (gx#syntax-e
                                                            _%tl8876088865%_)))
                                                      (let ((_%hd8876488872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8876588868%_)))
                    (_%tl8876388875%_
                     (let () (declare (not safe)) (##cdr _%e8876588868%_))))
                (if (gx#stx-null? _%tl8876388875%_)
                    ((lambda (_%L88878%_
                              _%L88880%_
                              _%L88881%_
                              _%L88882%_
                              _%L88883%_
                              _%L88884%_
                              _%L88885%_
                              _%L88886%_
                              _%L88887%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88883%_ '()))
                         (cons _%L88886%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88887%_ '()))
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
                                                       (cons _%L88887%_
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
                                                               (cons _%L88887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88883%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88887%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88882%_
                                                     (cons _%L88881%_ '()))
                                               '()))))
                       (cons (cons _%L88878%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88887%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88883%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88887%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88882%_
                                                           (cons _%L88881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88880%_ '()) '()))))
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
                     (cons (cons (cons _%L88884%_
                                       (cons _%L88883%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88887%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88883%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88887%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88882%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88887%_
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
                     _%hd8876488872%_
                     _%hd8876188862%_
                     _%hd8875888852%_
                     _%hd8875588842%_
                     _%hd8875288832%_
                     _%hd8874988822%_
                     _%hd8874688812%_
                     _%hd8874388802%_
                     _%hd8874088792%_)
                    (_%g8872588771%_ _%g8872688775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8872588771%_
                                                     _%g8872688775%_))))
                                            (_%g8872588771%_
                                             _%g8872688775%_))))
                                    (_%g8872588771%_ _%g8872688775%_))))
                            (_%g8872588771%_ _%g8872688775%_))))
                    (_%g8872588771%_ _%g8872688775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8872588771%_
                                                     _%g8872688775%_))))
                                            (_%g8872588771%_
                                             _%g8872688775%_))))
                                    (_%g8872588771%_ _%g8872688775%_))))
                            (_%g8872588771%_ _%g8872688775%_))))
                    (_%g8872588771%_ _%g8872688775%_)))))
        (_%g8872488924%_ _%$stx88721%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88928%_)
      (let* ((_%g8893288966%_
              (lambda (_%g8893388962%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8893388962%_)))
             (_%g8893189077%_
              (lambda (_%g8893388970%_)
                (if (gx#stx-pair? _%g8893388970%_)
                    (let ((_%e8894288973%_ (gx#syntax-e _%g8893388970%_)))
                      (let ((_%hd8894188977%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8894288973%_)))
                            (_%tl8894088980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8894288973%_))))
                        (if (gx#stx-pair? _%tl8894088980%_)
                            (let ((_%e8894588983%_
                                   (gx#syntax-e _%tl8894088980%_)))
                              (let ((_%hd8894488987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8894588983%_)))
                                    (_%tl8894388990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8894588983%_))))
                                (if (gx#stx-pair? _%tl8894388990%_)
                                    (let ((_%e8894888993%_
                                           (gx#syntax-e _%tl8894388990%_)))
                                      (let ((_%hd8894788997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8894888993%_)))
                                            (_%tl8894689000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8894888993%_))))
                                        (if (gx#stx-pair? _%tl8894689000%_)
                                            (let ((_%e8895189003%_
                                                   (gx#syntax-e
                                                    _%tl8894689000%_)))
                                              (let ((_%hd8895089007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8895189003%_)))
                                                    (_%tl8894989010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8895189003%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8894989010%_)
                                                    (let ((_%e8895489013%_
                                                           (gx#syntax-e
                                                            _%tl8894989010%_)))
                                                      (let ((_%hd8895389017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8895489013%_)))
                    (_%tl8895289020%_
                     (let () (declare (not safe)) (##cdr _%e8895489013%_))))
                (if (gx#stx-pair? _%tl8895289020%_)
                    (let ((_%e8895789023%_ (gx#syntax-e _%tl8895289020%_)))
                      (let ((_%hd8895689027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8895789023%_)))
                            (_%tl8895589030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8895789023%_))))
                        (if (gx#stx-pair? _%tl8895589030%_)
                            (let ((_%e8896089033%_
                                   (gx#syntax-e _%tl8895589030%_)))
                              (let ((_%hd8895989037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8896089033%_)))
                                    (_%tl8895889040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8896089033%_))))
                                (if (gx#stx-null? _%tl8895889040%_)
                                    ((lambda (_%L89043%_
                                              _%L89045%_
                                              _%L89046%_
                                              _%L89047%_
                                              _%L89048%_
                                              _%L89049%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89047%_
                                               (cons _%L89045%_ '()))
                                         (cons _%L89048%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89049%_ '()))
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
                               (cons _%L89049%_
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
                                     (cons (cons (cons _%L89046%_
                                                       (cons _%L89045%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89049%_
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
                     (cons (cons _%L89043%_ '()) '()))))
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
                                     _%hd8895989037%_
                                     _%hd8895689027%_
                                     _%hd8895389017%_
                                     _%hd8895089007%_
                                     _%hd8894788997%_
                                     _%hd8894488987%_)
                                    (_%g8893288966%_ _%g8893388970%_))))
                            (_%g8893288966%_ _%g8893388970%_))))
                    (_%g8893288966%_ _%g8893388970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8893288966%_
                                                     _%g8893388970%_))))
                                            (_%g8893288966%_
                                             _%g8893388970%_))))
                                    (_%g8893288966%_ _%g8893388970%_))))
                            (_%g8893288966%_ _%g8893388970%_))))
                    (_%g8893288966%_ _%g8893388970%_)))))
        (_%g8893189077%_ _%$stx88928%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx98072%_)
      (let* ((_%g9807698122%_
              (lambda (_%g9807798118%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9807798118%_)))
             (_%g9807598276%_
              (lambda (_%g9807798126%_)
                (if (gx#stx-pair? _%g9807798126%_)
                    (let ((_%e9808798129%_ (gx#syntax-e _%g9807798126%_)))
                      (let ((_%hd9808898133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9808798129%_)))
                            (_%tl9808998136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9808798129%_))))
                        (if (gx#stx-pair? _%tl9808998136%_)
                            (let ((_%e9809098139%_
                                   (gx#syntax-e _%tl9808998136%_)))
                              (let ((_%hd9809198143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9809098139%_)))
                                    (_%tl9809298146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9809098139%_))))
                                (if (gx#stx-pair? _%tl9809298146%_)
                                    (let ((_%e9809398149%_
                                           (gx#syntax-e _%tl9809298146%_)))
                                      (let ((_%hd9809498153%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9809398149%_)))
                                            (_%tl9809598156%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9809398149%_))))
                                        (if (gx#stx-pair? _%tl9809598156%_)
                                            (let ((_%e9809698159%_
                                                   (gx#syntax-e
                                                    _%tl9809598156%_)))
                                              (let ((_%hd9809798163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9809698159%_)))
                                                    (_%tl9809898166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9809698159%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9809898166%_)
                                                    (let ((_%e9809998169%_
                                                           (gx#syntax-e
                                                            _%tl9809898166%_)))
                                                      (let ((_%hd9810098173%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9809998169%_)))
                    (_%tl9810198176%_
                     (let () (declare (not safe)) (##cdr _%e9809998169%_))))
                (if (gx#stx-pair? _%tl9810198176%_)
                    (let ((_%e9810298179%_ (gx#syntax-e _%tl9810198176%_)))
                      (let ((_%hd9810398183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9810298179%_)))
                            (_%tl9810498186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9810298179%_))))
                        (if (gx#stx-pair? _%tl9810498186%_)
                            (let ((_%e9810598189%_
                                   (gx#syntax-e _%tl9810498186%_)))
                              (let ((_%hd9810698193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9810598189%_)))
                                    (_%tl9810798196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9810598189%_))))
                                (if (gx#stx-pair? _%tl9810798196%_)
                                    (let ((_%e9810898199%_
                                           (gx#syntax-e _%tl9810798196%_)))
                                      (let ((_%hd9810998203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9810898199%_)))
                                            (_%tl9811098206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9810898199%_))))
                                        (if (gx#stx-pair? _%tl9811098206%_)
                                            (let ((_%e9811198209%_
                                                   (gx#syntax-e
                                                    _%tl9811098206%_)))
                                              (let ((_%hd9811298213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9811198209%_)))
                                                    (_%tl9811398216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9811198209%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9811398216%_)
                                                    (let ((_%e9811498219%_
                                                           (gx#syntax-e
                                                            _%tl9811398216%_)))
                                                      (let ((_%hd9811598223%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9811498219%_)))
                    (_%tl9811698226%_
                     (let () (declare (not safe)) (##cdr _%e9811498219%_))))
                (if (gx#stx-null? _%tl9811698226%_)
                    ((lambda (_%L98229%_
                              _%L98231%_
                              _%L98232%_
                              _%L98233%_
                              _%L98234%_
                              _%L98235%_
                              _%L98236%_
                              _%L98237%_
                              _%L98238%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L98238%_
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
                         (cons _%L98231%_
                               (cons _%L98229%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L98237%_
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
                                                       (cons _%L98231%_
                                                             (cons _%L98229%_
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
                                                     (cons (cons _%L98236%_
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
                         (cons (cons _%L98235%_
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
                                                           (cons (cons _%L98235%_
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
                           (cons _%L98231%_
                                 (cons _%L98229%_
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
                         (cons (cons _%L98234%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L98234%_
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
                                     (cons (cons _%L98233%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L98234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L98233%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L98234%_
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
                                       (cons _%L98231%_
                                             (cons _%L98229%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L98234%_
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
                                     (cons (cons _%L98232%_
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
                                             (cons _%L98231%_
                                                   (cons _%L98229%_
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
                     _%hd9811598223%_
                     _%hd9811298213%_
                     _%hd9810998203%_
                     _%hd9810698193%_
                     _%hd9810398183%_
                     _%hd9810098173%_
                     _%hd9809798163%_
                     _%hd9809498153%_
                     _%hd9809198143%_)
                    (_%g9807698122%_ _%g9807798126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9807698122%_
                                                     _%g9807798126%_))))
                                            (_%g9807698122%_
                                             _%g9807798126%_))))
                                    (_%g9807698122%_ _%g9807798126%_))))
                            (_%g9807698122%_ _%g9807798126%_))))
                    (_%g9807698122%_ _%g9807798126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9807698122%_
                                                     _%g9807798126%_))))
                                            (_%g9807698122%_
                                             _%g9807798126%_))))
                                    (_%g9807698122%_ _%g9807798126%_))))
                            (_%g9807698122%_ _%g9807798126%_))))
                    (_%g9807698122%_ _%g9807798126%_)))))
        (_%g9807598276%_ _%$stx98072%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx98280%_)
      (let* ((_%g9828498306%_
              (lambda (_%g9828598302%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9828598302%_)))
             (_%g9828398375%_
              (lambda (_%g9828598310%_)
                (if (gx#stx-pair? _%g9828598310%_)
                    (let ((_%e9828998313%_ (gx#syntax-e _%g9828598310%_)))
                      (let ((_%hd9829098317%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9828998313%_)))
                            (_%tl9829198320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9828998313%_))))
                        (if (gx#stx-pair? _%tl9829198320%_)
                            (let ((_%e9829298323%_
                                   (gx#syntax-e _%tl9829198320%_)))
                              (let ((_%hd9829398327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9829298323%_)))
                                    (_%tl9829498330%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9829298323%_))))
                                (if (gx#stx-pair? _%tl9829498330%_)
                                    (let ((_%e9829598333%_
                                           (gx#syntax-e _%tl9829498330%_)))
                                      (let ((_%hd9829698337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9829598333%_)))
                                            (_%tl9829798340%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9829598333%_))))
                                        (if (gx#stx-pair? _%tl9829798340%_)
                                            (let ((_%e9829898343%_
                                                   (gx#syntax-e
                                                    _%tl9829798340%_)))
                                              (let ((_%hd9829998347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9829898343%_)))
                                                    (_%tl9830098350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9829898343%_))))
                                                (if (gx#stx-null?
                                                     _%tl9830098350%_)
                                                    ((lambda (_%L98353%_
                                                              _%L98355%_
                                                              _%L98356%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L98356%_
                                                   (cons _%L98355%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L98355%_ (cons _%L98355%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L98353%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9829998347%_
                                                     _%hd9829698337%_
                                                     _%hd9829398327%_)
                                                    (_%g9828498306%_
                                                     _%g9828598310%_))))
                                            (_%g9828498306%_
                                             _%g9828598310%_))))
                                    (_%g9828498306%_ _%g9828598310%_))))
                            (_%g9828498306%_ _%g9828598310%_))))
                    (_%g9828498306%_ _%g9828598310%_)))))
        (_%g9828398375%_ _%$stx98280%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx98379%_)
      (let* ((_%g9838398417%_
              (lambda (_%g9838498413%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9838498413%_)))
             (_%g9838298528%_
              (lambda (_%g9838498421%_)
                (if (gx#stx-pair? _%g9838498421%_)
                    (let ((_%e9839198424%_ (gx#syntax-e _%g9838498421%_)))
                      (let ((_%hd9839298428%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9839198424%_)))
                            (_%tl9839398431%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9839198424%_))))
                        (if (gx#stx-pair? _%tl9839398431%_)
                            (let ((_%e9839498434%_
                                   (gx#syntax-e _%tl9839398431%_)))
                              (let ((_%hd9839598438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9839498434%_)))
                                    (_%tl9839698441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9839498434%_))))
                                (if (gx#stx-pair? _%tl9839698441%_)
                                    (let ((_%e9839798444%_
                                           (gx#syntax-e _%tl9839698441%_)))
                                      (let ((_%hd9839898448%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9839798444%_)))
                                            (_%tl9839998451%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9839798444%_))))
                                        (if (gx#stx-pair? _%tl9839998451%_)
                                            (let ((_%e9840098454%_
                                                   (gx#syntax-e
                                                    _%tl9839998451%_)))
                                              (let ((_%hd9840198458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9840098454%_)))
                                                    (_%tl9840298461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9840098454%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9840298461%_)
                                                    (let ((_%e9840398464%_
                                                           (gx#syntax-e
                                                            _%tl9840298461%_)))
                                                      (let ((_%hd9840498468%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9840398464%_)))
                    (_%tl9840598471%_
                     (let () (declare (not safe)) (##cdr _%e9840398464%_))))
                (if (gx#stx-pair? _%tl9840598471%_)
                    (let ((_%e9840698474%_ (gx#syntax-e _%tl9840598471%_)))
                      (let ((_%hd9840798478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9840698474%_)))
                            (_%tl9840898481%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9840698474%_))))
                        (if (gx#stx-pair? _%tl9840898481%_)
                            (let ((_%e9840998484%_
                                   (gx#syntax-e _%tl9840898481%_)))
                              (let ((_%hd9841098488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9840998484%_)))
                                    (_%tl9841198491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9840998484%_))))
                                (if (gx#stx-null? _%tl9841198491%_)
                                    ((lambda (_%L98494%_
                                              _%L98496%_
                                              _%L98497%_
                                              _%L98498%_
                                              _%L98499%_
                                              _%L98500%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L98498%_
                                               (cons _%L98496%_ '()))
                                         (cons _%L98499%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L98500%_ '()))
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
                               (cons _%L98500%_
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
                                     (cons _%L98494%_ '()))
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
                                     (cons (cons (cons _%L98497%_
                                                       (cons _%L98496%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L98500%_
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
                                     _%hd9841098488%_
                                     _%hd9840798478%_
                                     _%hd9840498468%_
                                     _%hd9840198458%_
                                     _%hd9839898448%_
                                     _%hd9839598438%_)
                                    (_%g9838398417%_ _%g9838498421%_))))
                            (_%g9838398417%_ _%g9838498421%_))))
                    (_%g9838398417%_ _%g9838498421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9838398417%_
                                                     _%g9838498421%_))))
                                            (_%g9838398417%_
                                             _%g9838498421%_))))
                                    (_%g9838398417%_ _%g9838498421%_))))
                            (_%g9838398417%_ _%g9838498421%_))))
                    (_%g9838398417%_ _%g9838498421%_)))))
        (_%g9838298528%_ _%$stx98379%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx98532%_)
      (let* ((_%g9853698578%_
              (lambda (_%g9853798574%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9853798574%_)))
             (_%g9853598717%_
              (lambda (_%g9853798582%_)
                (if (gx#stx-pair? _%g9853798582%_)
                    (let ((_%e9854698585%_ (gx#syntax-e _%g9853798582%_)))
                      (let ((_%hd9854798589%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9854698585%_)))
                            (_%tl9854898592%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9854698585%_))))
                        (if (gx#stx-pair? _%tl9854898592%_)
                            (let ((_%e9854998595%_
                                   (gx#syntax-e _%tl9854898592%_)))
                              (let ((_%hd9855098599%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9854998595%_)))
                                    (_%tl9855198602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9854998595%_))))
                                (if (gx#stx-pair? _%tl9855198602%_)
                                    (let ((_%e9855298605%_
                                           (gx#syntax-e _%tl9855198602%_)))
                                      (let ((_%hd9855398609%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9855298605%_)))
                                            (_%tl9855498612%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9855298605%_))))
                                        (if (gx#stx-pair? _%tl9855498612%_)
                                            (let ((_%e9855598615%_
                                                   (gx#syntax-e
                                                    _%tl9855498612%_)))
                                              (let ((_%hd9855698619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9855598615%_)))
                                                    (_%tl9855798622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9855598615%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9855798622%_)
                                                    (let ((_%e9855898625%_
                                                           (gx#syntax-e
                                                            _%tl9855798622%_)))
                                                      (let ((_%hd9855998629%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9855898625%_)))
                    (_%tl9856098632%_
                     (let () (declare (not safe)) (##cdr _%e9855898625%_))))
                (if (gx#stx-pair? _%tl9856098632%_)
                    (let ((_%e9856198635%_ (gx#syntax-e _%tl9856098632%_)))
                      (let ((_%hd9856298639%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9856198635%_)))
                            (_%tl9856398642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9856198635%_))))
                        (if (gx#stx-pair? _%tl9856398642%_)
                            (let ((_%e9856498645%_
                                   (gx#syntax-e _%tl9856398642%_)))
                              (let ((_%hd9856598649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9856498645%_)))
                                    (_%tl9856698652%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9856498645%_))))
                                (if (gx#stx-pair? _%tl9856698652%_)
                                    (let ((_%e9856798655%_
                                           (gx#syntax-e _%tl9856698652%_)))
                                      (let ((_%hd9856898659%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9856798655%_)))
                                            (_%tl9856998662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9856798655%_))))
                                        (if (gx#stx-pair? _%tl9856998662%_)
                                            (let ((_%e9857098665%_
                                                   (gx#syntax-e
                                                    _%tl9856998662%_)))
                                              (let ((_%hd9857198669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9857098665%_)))
                                                    (_%tl9857298672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9857098665%_))))
                                                (if (gx#stx-null?
                                                     _%tl9857298672%_)
                                                    ((lambda (_%L98675%_
                                                              _%L98677%_
                                                              _%L98678%_
                                                              _%L98679%_
                                                              _%L98680%_
                                                              _%L98681%_
                                                              _%L98682%_
                                                              _%L98683%_)
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
                                                   (cons (cons _%L98681%_
                                                               (cons _%L98679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L98682%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L98683%_ '()))
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
                                               (cons _%L98683%_
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
                                                       (cons _%L98683%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L98679%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L98683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L98678%_ '()))))
               (cons (cons _%L98675%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L98683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L98679%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L98683%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L98678%_ '()))))
                     (cons (cons _%L98677%_ '()) '()))))
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
                                                     (cons (cons (cons _%L98680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L98679%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L98683%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L98679%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L98683%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L98678%_ '()))))
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
                                                     _%hd9857198669%_
                                                     _%hd9856898659%_
                                                     _%hd9856598649%_
                                                     _%hd9856298639%_
                                                     _%hd9855998629%_
                                                     _%hd9855698619%_
                                                     _%hd9855398609%_
                                                     _%hd9855098599%_)
                                                    (_%g9853698578%_
                                                     _%g9853798582%_))))
                                            (_%g9853698578%_
                                             _%g9853798582%_))))
                                    (_%g9853698578%_ _%g9853798582%_))))
                            (_%g9853698578%_ _%g9853798582%_))))
                    (_%g9853698578%_ _%g9853798582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9853698578%_
                                                     _%g9853798582%_))))
                                            (_%g9853698578%_
                                             _%g9853798582%_))))
                                    (_%g9853698578%_ _%g9853798582%_))))
                            (_%g9853698578%_ _%g9853798582%_))))
                    (_%g9853698578%_ _%g9853798582%_)))))
        (_%g9853598717%_ _%$stx98532%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx98721%_)
      (let* ((_%g9872598771%_
              (lambda (_%g9872698767%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9872698767%_)))
             (_%g9872498924%_
              (lambda (_%g9872698775%_)
                (if (gx#stx-pair? _%g9872698775%_)
                    (let ((_%e9873698778%_ (gx#syntax-e _%g9872698775%_)))
                      (let ((_%hd9873798782%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9873698778%_)))
                            (_%tl9873898785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9873698778%_))))
                        (if (gx#stx-pair? _%tl9873898785%_)
                            (let ((_%e9873998788%_
                                   (gx#syntax-e _%tl9873898785%_)))
                              (let ((_%hd9874098792%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9873998788%_)))
                                    (_%tl9874198795%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9873998788%_))))
                                (if (gx#stx-pair? _%tl9874198795%_)
                                    (let ((_%e9874298798%_
                                           (gx#syntax-e _%tl9874198795%_)))
                                      (let ((_%hd9874398802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9874298798%_)))
                                            (_%tl9874498805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9874298798%_))))
                                        (if (gx#stx-pair? _%tl9874498805%_)
                                            (let ((_%e9874598808%_
                                                   (gx#syntax-e
                                                    _%tl9874498805%_)))
                                              (let ((_%hd9874698812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9874598808%_)))
                                                    (_%tl9874798815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9874598808%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9874798815%_)
                                                    (let ((_%e9874898818%_
                                                           (gx#syntax-e
                                                            _%tl9874798815%_)))
                                                      (let ((_%hd9874998822%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9874898818%_)))
                    (_%tl9875098825%_
                     (let () (declare (not safe)) (##cdr _%e9874898818%_))))
                (if (gx#stx-pair? _%tl9875098825%_)
                    (let ((_%e9875198828%_ (gx#syntax-e _%tl9875098825%_)))
                      (let ((_%hd9875298832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9875198828%_)))
                            (_%tl9875398835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9875198828%_))))
                        (if (gx#stx-pair? _%tl9875398835%_)
                            (let ((_%e9875498838%_
                                   (gx#syntax-e _%tl9875398835%_)))
                              (let ((_%hd9875598842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9875498838%_)))
                                    (_%tl9875698845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9875498838%_))))
                                (if (gx#stx-pair? _%tl9875698845%_)
                                    (let ((_%e9875798848%_
                                           (gx#syntax-e _%tl9875698845%_)))
                                      (let ((_%hd9875898852%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9875798848%_)))
                                            (_%tl9875998855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9875798848%_))))
                                        (if (gx#stx-pair? _%tl9875998855%_)
                                            (let ((_%e9876098858%_
                                                   (gx#syntax-e
                                                    _%tl9875998855%_)))
                                              (let ((_%hd9876198862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9876098858%_)))
                                                    (_%tl9876298865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9876098858%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9876298865%_)
                                                    (let ((_%e9876398868%_
                                                           (gx#syntax-e
                                                            _%tl9876298865%_)))
                                                      (let ((_%hd9876498872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9876398868%_)))
                    (_%tl9876598875%_
                     (let () (declare (not safe)) (##cdr _%e9876398868%_))))
                (if (gx#stx-null? _%tl9876598875%_)
                    ((lambda (_%L98878%_
                              _%L98880%_
                              _%L98881%_
                              _%L98882%_
                              _%L98883%_
                              _%L98884%_
                              _%L98885%_
                              _%L98886%_
                              _%L98887%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L98885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L98883%_ '()))
                         (cons _%L98886%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L98887%_ '()))
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
                                                       (cons _%L98887%_
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
                                                               (cons _%L98887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L98883%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L98887%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L98882%_
                                                     (cons _%L98881%_ '()))
                                               '()))))
                       (cons (cons _%L98878%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L98887%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L98883%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L98887%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L98882%_
                                                           (cons _%L98881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L98880%_ '()) '()))))
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
                     (cons (cons (cons _%L98884%_
                                       (cons _%L98883%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L98887%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L98883%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L98887%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L98882%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L98887%_
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
                     _%hd9876498872%_
                     _%hd9876198862%_
                     _%hd9875898852%_
                     _%hd9875598842%_
                     _%hd9875298832%_
                     _%hd9874998822%_
                     _%hd9874698812%_
                     _%hd9874398802%_
                     _%hd9874098792%_)
                    (_%g9872598771%_ _%g9872698775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9872598771%_
                                                     _%g9872698775%_))))
                                            (_%g9872598771%_
                                             _%g9872698775%_))))
                                    (_%g9872598771%_ _%g9872698775%_))))
                            (_%g9872598771%_ _%g9872698775%_))))
                    (_%g9872598771%_ _%g9872698775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9872598771%_
                                                     _%g9872698775%_))))
                                            (_%g9872598771%_
                                             _%g9872698775%_))))
                                    (_%g9872598771%_ _%g9872698775%_))))
                            (_%g9872598771%_ _%g9872698775%_))))
                    (_%g9872598771%_ _%g9872698775%_)))))
        (_%g9872498924%_ _%$stx98721%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx98928%_)
      (let* ((_%g9893298966%_
              (lambda (_%g9893398962%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9893398962%_)))
             (_%g9893199077%_
              (lambda (_%g9893398970%_)
                (if (gx#stx-pair? _%g9893398970%_)
                    (let ((_%e9894098973%_ (gx#syntax-e _%g9893398970%_)))
                      (let ((_%hd9894198977%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9894098973%_)))
                            (_%tl9894298980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9894098973%_))))
                        (if (gx#stx-pair? _%tl9894298980%_)
                            (let ((_%e9894398983%_
                                   (gx#syntax-e _%tl9894298980%_)))
                              (let ((_%hd9894498987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9894398983%_)))
                                    (_%tl9894598990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9894398983%_))))
                                (if (gx#stx-pair? _%tl9894598990%_)
                                    (let ((_%e9894698993%_
                                           (gx#syntax-e _%tl9894598990%_)))
                                      (let ((_%hd9894798997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9894698993%_)))
                                            (_%tl9894899000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9894698993%_))))
                                        (if (gx#stx-pair? _%tl9894899000%_)
                                            (let ((_%e9894999003%_
                                                   (gx#syntax-e
                                                    _%tl9894899000%_)))
                                              (let ((_%hd9895099007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9894999003%_)))
                                                    (_%tl9895199010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9894999003%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9895199010%_)
                                                    (let ((_%e9895299013%_
                                                           (gx#syntax-e
                                                            _%tl9895199010%_)))
                                                      (let ((_%hd9895399017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9895299013%_)))
                    (_%tl9895499020%_
                     (let () (declare (not safe)) (##cdr _%e9895299013%_))))
                (if (gx#stx-pair? _%tl9895499020%_)
                    (let ((_%e9895599023%_ (gx#syntax-e _%tl9895499020%_)))
                      (let ((_%hd9895699027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9895599023%_)))
                            (_%tl9895799030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9895599023%_))))
                        (if (gx#stx-pair? _%tl9895799030%_)
                            (let ((_%e9895899033%_
                                   (gx#syntax-e _%tl9895799030%_)))
                              (let ((_%hd9895999037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9895899033%_)))
                                    (_%tl9896099040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9895899033%_))))
                                (if (gx#stx-null? _%tl9896099040%_)
                                    ((lambda (_%L99043%_
                                              _%L99045%_
                                              _%L99046%_
                                              _%L99047%_
                                              _%L99048%_
                                              _%L99049%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L99047%_
                                               (cons _%L99045%_ '()))
                                         (cons _%L99048%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L99049%_ '()))
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
                               (cons _%L99049%_
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
                                     (cons (cons (cons _%L99046%_
                                                       (cons _%L99045%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L99049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L99049%_
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
                     (cons (cons _%L99043%_ '()) '()))))
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
                                     _%hd9895999037%_
                                     _%hd9895699027%_
                                     _%hd9895399017%_
                                     _%hd9895099007%_
                                     _%hd9894798997%_
                                     _%hd9894498987%_)
                                    (_%g9893298966%_ _%g9893398970%_))))
                            (_%g9893298966%_ _%g9893398970%_))))
                    (_%g9893298966%_ _%g9893398970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9893298966%_
                                                     _%g9893398970%_))))
                                            (_%g9893298966%_
                                             _%g9893398970%_))))
                                    (_%g9893298966%_ _%g9893398970%_))))
                            (_%g9893298966%_ _%g9893398970%_))))
                    (_%g9893298966%_ _%g9893398970%_)))))
        (_%g9893199077%_ _%$stx98928%_)))))

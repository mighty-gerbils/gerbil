(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx91211%_)
      (let* ((_%g9121591229%_
              (lambda (_%g9121691225%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9121691225%_)))
             (_%g9121491271%_
              (lambda (_%g9121691233%_)
                (if (gx#stx-pair? _%g9121691233%_)
                    (let ((_%e9121891236%_ (gx#syntax-e _%g9121691233%_)))
                      (let ((_%hd9121991240%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9121891236%_)))
                            (_%tl9122091243%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9121891236%_))))
                        (if (gx#stx-pair? _%tl9122091243%_)
                            (let ((_%e9122191246%_
                                   (gx#syntax-e _%tl9122091243%_)))
                              (let ((_%hd9122291250%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9122191246%_)))
                                    (_%tl9122391253%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9122191246%_))))
                                (if (gx#stx-null? _%tl9122391253%_)
                                    ((lambda (_%L91256%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L91256%_ '()))))
                                     _%hd9122291250%_)
                                    (_%g9121591229%_ _%g9121691233%_))))
                            (_%g9121591229%_ _%g9121691233%_))))
                    (_%g9121591229%_ _%g9121691233%_)))))
        (_%g9121491271%_ _%$stx91211%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx91275%_)
      (let* ((_%g9127991325%_
              (lambda (_%g9128091321%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9128091321%_)))
             (_%g9127891478%_
              (lambda (_%g9128091329%_)
                (if (gx#stx-pair? _%g9128091329%_)
                    (let ((_%e9129091332%_ (gx#syntax-e _%g9128091329%_)))
                      (let ((_%hd9129191336%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9129091332%_)))
                            (_%tl9129291339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9129091332%_))))
                        (if (gx#stx-pair? _%tl9129291339%_)
                            (let ((_%e9129391342%_
                                   (gx#syntax-e _%tl9129291339%_)))
                              (let ((_%hd9129491346%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9129391342%_)))
                                    (_%tl9129591349%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9129391342%_))))
                                (if (gx#stx-pair? _%tl9129591349%_)
                                    (let ((_%e9129691352%_
                                           (gx#syntax-e _%tl9129591349%_)))
                                      (let ((_%hd9129791356%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9129691352%_)))
                                            (_%tl9129891359%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9129691352%_))))
                                        (if (gx#stx-pair? _%tl9129891359%_)
                                            (let ((_%e9129991362%_
                                                   (gx#syntax-e
                                                    _%tl9129891359%_)))
                                              (let ((_%hd9130091366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9129991362%_)))
                                                    (_%tl9130191369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9129991362%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9130191369%_)
                                                    (let ((_%e9130291372%_
                                                           (gx#syntax-e
                                                            _%tl9130191369%_)))
                                                      (let ((_%hd9130391376%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9130291372%_)))
                    (_%tl9130491379%_
                     (let () (declare (not safe)) (##cdr _%e9130291372%_))))
                (if (gx#stx-pair? _%tl9130491379%_)
                    (let ((_%e9130591382%_ (gx#syntax-e _%tl9130491379%_)))
                      (let ((_%hd9130691386%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9130591382%_)))
                            (_%tl9130791389%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9130591382%_))))
                        (if (gx#stx-pair? _%tl9130791389%_)
                            (let ((_%e9130891392%_
                                   (gx#syntax-e _%tl9130791389%_)))
                              (let ((_%hd9130991396%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9130891392%_)))
                                    (_%tl9131091399%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9130891392%_))))
                                (if (gx#stx-pair? _%tl9131091399%_)
                                    (let ((_%e9131191402%_
                                           (gx#syntax-e _%tl9131091399%_)))
                                      (let ((_%hd9131291406%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9131191402%_)))
                                            (_%tl9131391409%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9131191402%_))))
                                        (if (gx#stx-pair? _%tl9131391409%_)
                                            (let ((_%e9131491412%_
                                                   (gx#syntax-e
                                                    _%tl9131391409%_)))
                                              (let ((_%hd9131591416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9131491412%_)))
                                                    (_%tl9131691419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9131491412%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9131691419%_)
                                                    (let ((_%e9131791422%_
                                                           (gx#syntax-e
                                                            _%tl9131691419%_)))
                                                      (let ((_%hd9131891426%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9131791422%_)))
                    (_%tl9131991429%_
                     (let () (declare (not safe)) (##cdr _%e9131791422%_))))
                (if (gx#stx-null? _%tl9131991429%_)
                    ((lambda (_%L91432%_
                              _%L91434%_
                              _%L91435%_
                              _%L91436%_
                              _%L91437%_
                              _%L91438%_
                              _%L91439%_
                              _%L91440%_
                              _%L91441%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L91441%_
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
                         (cons _%L91434%_
                               (cons _%L91432%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L91440%_
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
                                                       (cons _%L91434%_
                                                             (cons _%L91432%_
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
                                                     (cons (cons _%L91439%_
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
                         (cons (cons _%L91438%_
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
                                                           (cons (cons _%L91438%_
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
                           (cons _%L91434%_
                                 (cons _%L91432%_
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
                         (cons (cons _%L91437%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L91437%_
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
                                     (cons (cons _%L91436%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L91437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L91436%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L91437%_
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
                                       (cons _%L91434%_
                                             (cons _%L91432%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L91437%_
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
                                     (cons (cons _%L91435%_
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
                                             (cons _%L91434%_
                                                   (cons _%L91432%_
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
                     _%hd9131891426%_
                     _%hd9131591416%_
                     _%hd9131291406%_
                     _%hd9130991396%_
                     _%hd9130691386%_
                     _%hd9130391376%_
                     _%hd9130091366%_
                     _%hd9129791356%_
                     _%hd9129491346%_)
                    (_%g9127991325%_ _%g9128091329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9127991325%_
                                                     _%g9128091329%_))))
                                            (_%g9127991325%_
                                             _%g9128091329%_))))
                                    (_%g9127991325%_ _%g9128091329%_))))
                            (_%g9127991325%_ _%g9128091329%_))))
                    (_%g9127991325%_ _%g9128091329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9127991325%_
                                                     _%g9128091329%_))))
                                            (_%g9127991325%_
                                             _%g9128091329%_))))
                                    (_%g9127991325%_ _%g9128091329%_))))
                            (_%g9127991325%_ _%g9128091329%_))))
                    (_%g9127991325%_ _%g9128091329%_)))))
        (_%g9127891478%_ _%$stx91275%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx91482%_)
      (let* ((_%g9148691508%_
              (lambda (_%g9148791504%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9148791504%_)))
             (_%g9148591577%_
              (lambda (_%g9148791512%_)
                (if (gx#stx-pair? _%g9148791512%_)
                    (let ((_%e9149191515%_ (gx#syntax-e _%g9148791512%_)))
                      (let ((_%hd9149291519%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9149191515%_)))
                            (_%tl9149391522%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9149191515%_))))
                        (if (gx#stx-pair? _%tl9149391522%_)
                            (let ((_%e9149491525%_
                                   (gx#syntax-e _%tl9149391522%_)))
                              (let ((_%hd9149591529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9149491525%_)))
                                    (_%tl9149691532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9149491525%_))))
                                (if (gx#stx-pair? _%tl9149691532%_)
                                    (let ((_%e9149791535%_
                                           (gx#syntax-e _%tl9149691532%_)))
                                      (let ((_%hd9149891539%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9149791535%_)))
                                            (_%tl9149991542%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9149791535%_))))
                                        (if (gx#stx-pair? _%tl9149991542%_)
                                            (let ((_%e9150091545%_
                                                   (gx#syntax-e
                                                    _%tl9149991542%_)))
                                              (let ((_%hd9150191549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9150091545%_)))
                                                    (_%tl9150291552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9150091545%_))))
                                                (if (gx#stx-null?
                                                     _%tl9150291552%_)
                                                    ((lambda (_%L91555%_
                                                              _%L91557%_
                                                              _%L91558%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L91558%_
                                                   (cons _%L91557%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L91557%_ (cons _%L91557%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L91555%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9150191549%_
                                                     _%hd9149891539%_
                                                     _%hd9149591529%_)
                                                    (_%g9148691508%_
                                                     _%g9148791512%_))))
                                            (_%g9148691508%_
                                             _%g9148791512%_))))
                                    (_%g9148691508%_ _%g9148791512%_))))
                            (_%g9148691508%_ _%g9148791512%_))))
                    (_%g9148691508%_ _%g9148791512%_)))))
        (_%g9148591577%_ _%$stx91482%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx91581%_)
      (let* ((_%g9158591619%_
              (lambda (_%g9158691615%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9158691615%_)))
             (_%g9158491730%_
              (lambda (_%g9158691623%_)
                (if (gx#stx-pair? _%g9158691623%_)
                    (let ((_%e9159391626%_ (gx#syntax-e _%g9158691623%_)))
                      (let ((_%hd9159491630%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9159391626%_)))
                            (_%tl9159591633%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9159391626%_))))
                        (if (gx#stx-pair? _%tl9159591633%_)
                            (let ((_%e9159691636%_
                                   (gx#syntax-e _%tl9159591633%_)))
                              (let ((_%hd9159791640%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9159691636%_)))
                                    (_%tl9159891643%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9159691636%_))))
                                (if (gx#stx-pair? _%tl9159891643%_)
                                    (let ((_%e9159991646%_
                                           (gx#syntax-e _%tl9159891643%_)))
                                      (let ((_%hd9160091650%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9159991646%_)))
                                            (_%tl9160191653%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9159991646%_))))
                                        (if (gx#stx-pair? _%tl9160191653%_)
                                            (let ((_%e9160291656%_
                                                   (gx#syntax-e
                                                    _%tl9160191653%_)))
                                              (let ((_%hd9160391660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9160291656%_)))
                                                    (_%tl9160491663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9160291656%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9160491663%_)
                                                    (let ((_%e9160591666%_
                                                           (gx#syntax-e
                                                            _%tl9160491663%_)))
                                                      (let ((_%hd9160691670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9160591666%_)))
                    (_%tl9160791673%_
                     (let () (declare (not safe)) (##cdr _%e9160591666%_))))
                (if (gx#stx-pair? _%tl9160791673%_)
                    (let ((_%e9160891676%_ (gx#syntax-e _%tl9160791673%_)))
                      (let ((_%hd9160991680%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9160891676%_)))
                            (_%tl9161091683%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9160891676%_))))
                        (if (gx#stx-pair? _%tl9161091683%_)
                            (let ((_%e9161191686%_
                                   (gx#syntax-e _%tl9161091683%_)))
                              (let ((_%hd9161291690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9161191686%_)))
                                    (_%tl9161391693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9161191686%_))))
                                (if (gx#stx-null? _%tl9161391693%_)
                                    ((lambda (_%L91696%_
                                              _%L91698%_
                                              _%L91699%_
                                              _%L91700%_
                                              _%L91701%_
                                              _%L91702%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L91700%_
                                               (cons _%L91698%_ '()))
                                         (cons _%L91701%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L91702%_ '()))
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
                               (cons _%L91702%_
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
                                     (cons _%L91696%_ '()))
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
                                     (cons (cons (cons _%L91699%_
                                                       (cons _%L91698%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L91702%_
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
                                     _%hd9161291690%_
                                     _%hd9160991680%_
                                     _%hd9160691670%_
                                     _%hd9160391660%_
                                     _%hd9160091650%_
                                     _%hd9159791640%_)
                                    (_%g9158591619%_ _%g9158691623%_))))
                            (_%g9158591619%_ _%g9158691623%_))))
                    (_%g9158591619%_ _%g9158691623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9158591619%_
                                                     _%g9158691623%_))))
                                            (_%g9158591619%_
                                             _%g9158691623%_))))
                                    (_%g9158591619%_ _%g9158691623%_))))
                            (_%g9158591619%_ _%g9158691623%_))))
                    (_%g9158591619%_ _%g9158691623%_)))))
        (_%g9158491730%_ _%$stx91581%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx91734%_)
      (let* ((_%g9173891780%_
              (lambda (_%g9173991776%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9173991776%_)))
             (_%g9173791919%_
              (lambda (_%g9173991784%_)
                (if (gx#stx-pair? _%g9173991784%_)
                    (let ((_%e9174891787%_ (gx#syntax-e _%g9173991784%_)))
                      (let ((_%hd9174991791%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9174891787%_)))
                            (_%tl9175091794%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9174891787%_))))
                        (if (gx#stx-pair? _%tl9175091794%_)
                            (let ((_%e9175191797%_
                                   (gx#syntax-e _%tl9175091794%_)))
                              (let ((_%hd9175291801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9175191797%_)))
                                    (_%tl9175391804%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9175191797%_))))
                                (if (gx#stx-pair? _%tl9175391804%_)
                                    (let ((_%e9175491807%_
                                           (gx#syntax-e _%tl9175391804%_)))
                                      (let ((_%hd9175591811%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9175491807%_)))
                                            (_%tl9175691814%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9175491807%_))))
                                        (if (gx#stx-pair? _%tl9175691814%_)
                                            (let ((_%e9175791817%_
                                                   (gx#syntax-e
                                                    _%tl9175691814%_)))
                                              (let ((_%hd9175891821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9175791817%_)))
                                                    (_%tl9175991824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9175791817%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9175991824%_)
                                                    (let ((_%e9176091827%_
                                                           (gx#syntax-e
                                                            _%tl9175991824%_)))
                                                      (let ((_%hd9176191831%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9176091827%_)))
                    (_%tl9176291834%_
                     (let () (declare (not safe)) (##cdr _%e9176091827%_))))
                (if (gx#stx-pair? _%tl9176291834%_)
                    (let ((_%e9176391837%_ (gx#syntax-e _%tl9176291834%_)))
                      (let ((_%hd9176491841%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9176391837%_)))
                            (_%tl9176591844%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9176391837%_))))
                        (if (gx#stx-pair? _%tl9176591844%_)
                            (let ((_%e9176691847%_
                                   (gx#syntax-e _%tl9176591844%_)))
                              (let ((_%hd9176791851%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9176691847%_)))
                                    (_%tl9176891854%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9176691847%_))))
                                (if (gx#stx-pair? _%tl9176891854%_)
                                    (let ((_%e9176991857%_
                                           (gx#syntax-e _%tl9176891854%_)))
                                      (let ((_%hd9177091861%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9176991857%_)))
                                            (_%tl9177191864%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9176991857%_))))
                                        (if (gx#stx-pair? _%tl9177191864%_)
                                            (let ((_%e9177291867%_
                                                   (gx#syntax-e
                                                    _%tl9177191864%_)))
                                              (let ((_%hd9177391871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9177291867%_)))
                                                    (_%tl9177491874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9177291867%_))))
                                                (if (gx#stx-null?
                                                     _%tl9177491874%_)
                                                    ((lambda (_%L91877%_
                                                              _%L91879%_
                                                              _%L91880%_
                                                              _%L91881%_
                                                              _%L91882%_
                                                              _%L91883%_
                                                              _%L91884%_
                                                              _%L91885%_)
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
                                                   (cons (cons _%L91883%_
                                                               (cons _%L91881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L91884%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L91885%_ '()))
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
                                               (cons _%L91885%_
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
                                                       (cons _%L91885%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L91881%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L91885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L91880%_ '()))))
               (cons (cons _%L91877%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L91885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L91881%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L91885%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L91880%_ '()))))
                     (cons (cons _%L91879%_ '()) '()))))
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
                                                     (cons (cons (cons _%L91882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91881%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L91885%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L91881%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L91885%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L91880%_ '()))))
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
                                                     _%hd9177391871%_
                                                     _%hd9177091861%_
                                                     _%hd9176791851%_
                                                     _%hd9176491841%_
                                                     _%hd9176191831%_
                                                     _%hd9175891821%_
                                                     _%hd9175591811%_
                                                     _%hd9175291801%_)
                                                    (_%g9173891780%_
                                                     _%g9173991784%_))))
                                            (_%g9173891780%_
                                             _%g9173991784%_))))
                                    (_%g9173891780%_ _%g9173991784%_))))
                            (_%g9173891780%_ _%g9173991784%_))))
                    (_%g9173891780%_ _%g9173991784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9173891780%_
                                                     _%g9173991784%_))))
                                            (_%g9173891780%_
                                             _%g9173991784%_))))
                                    (_%g9173891780%_ _%g9173991784%_))))
                            (_%g9173891780%_ _%g9173991784%_))))
                    (_%g9173891780%_ _%g9173991784%_)))))
        (_%g9173791919%_ _%$stx91734%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx91923%_)
      (let* ((_%g9192791973%_
              (lambda (_%g9192891969%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9192891969%_)))
             (_%g9192692126%_
              (lambda (_%g9192891977%_)
                (if (gx#stx-pair? _%g9192891977%_)
                    (let ((_%e9193891980%_ (gx#syntax-e _%g9192891977%_)))
                      (let ((_%hd9193991984%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9193891980%_)))
                            (_%tl9194091987%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9193891980%_))))
                        (if (gx#stx-pair? _%tl9194091987%_)
                            (let ((_%e9194191990%_
                                   (gx#syntax-e _%tl9194091987%_)))
                              (let ((_%hd9194291994%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9194191990%_)))
                                    (_%tl9194391997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9194191990%_))))
                                (if (gx#stx-pair? _%tl9194391997%_)
                                    (let ((_%e9194492000%_
                                           (gx#syntax-e _%tl9194391997%_)))
                                      (let ((_%hd9194592004%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9194492000%_)))
                                            (_%tl9194692007%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9194492000%_))))
                                        (if (gx#stx-pair? _%tl9194692007%_)
                                            (let ((_%e9194792010%_
                                                   (gx#syntax-e
                                                    _%tl9194692007%_)))
                                              (let ((_%hd9194892014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9194792010%_)))
                                                    (_%tl9194992017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9194792010%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9194992017%_)
                                                    (let ((_%e9195092020%_
                                                           (gx#syntax-e
                                                            _%tl9194992017%_)))
                                                      (let ((_%hd9195192024%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9195092020%_)))
                    (_%tl9195292027%_
                     (let () (declare (not safe)) (##cdr _%e9195092020%_))))
                (if (gx#stx-pair? _%tl9195292027%_)
                    (let ((_%e9195392030%_ (gx#syntax-e _%tl9195292027%_)))
                      (let ((_%hd9195492034%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9195392030%_)))
                            (_%tl9195592037%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9195392030%_))))
                        (if (gx#stx-pair? _%tl9195592037%_)
                            (let ((_%e9195692040%_
                                   (gx#syntax-e _%tl9195592037%_)))
                              (let ((_%hd9195792044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9195692040%_)))
                                    (_%tl9195892047%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9195692040%_))))
                                (if (gx#stx-pair? _%tl9195892047%_)
                                    (let ((_%e9195992050%_
                                           (gx#syntax-e _%tl9195892047%_)))
                                      (let ((_%hd9196092054%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9195992050%_)))
                                            (_%tl9196192057%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9195992050%_))))
                                        (if (gx#stx-pair? _%tl9196192057%_)
                                            (let ((_%e9196292060%_
                                                   (gx#syntax-e
                                                    _%tl9196192057%_)))
                                              (let ((_%hd9196392064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9196292060%_)))
                                                    (_%tl9196492067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9196292060%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9196492067%_)
                                                    (let ((_%e9196592070%_
                                                           (gx#syntax-e
                                                            _%tl9196492067%_)))
                                                      (let ((_%hd9196692074%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9196592070%_)))
                    (_%tl9196792077%_
                     (let () (declare (not safe)) (##cdr _%e9196592070%_))))
                (if (gx#stx-null? _%tl9196792077%_)
                    ((lambda (_%L92080%_
                              _%L92082%_
                              _%L92083%_
                              _%L92084%_
                              _%L92085%_
                              _%L92086%_
                              _%L92087%_
                              _%L92088%_
                              _%L92089%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L92087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92085%_ '()))
                         (cons _%L92088%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L92089%_ '()))
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
                                                       (cons _%L92089%_
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
                                                               (cons _%L92089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L92085%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L92089%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L92084%_
                                                     (cons _%L92083%_ '()))
                                               '()))))
                       (cons (cons _%L92080%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L92089%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L92085%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L92089%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L92084%_
                                                           (cons _%L92083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L92082%_ '()) '()))))
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
                     (cons (cons (cons _%L92086%_
                                       (cons _%L92085%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L92089%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L92085%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L92089%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L92084%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L92089%_
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
                     _%hd9196692074%_
                     _%hd9196392064%_
                     _%hd9196092054%_
                     _%hd9195792044%_
                     _%hd9195492034%_
                     _%hd9195192024%_
                     _%hd9194892014%_
                     _%hd9194592004%_
                     _%hd9194291994%_)
                    (_%g9192791973%_ _%g9192891977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9192791973%_
                                                     _%g9192891977%_))))
                                            (_%g9192791973%_
                                             _%g9192891977%_))))
                                    (_%g9192791973%_ _%g9192891977%_))))
                            (_%g9192791973%_ _%g9192891977%_))))
                    (_%g9192791973%_ _%g9192891977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9192791973%_
                                                     _%g9192891977%_))))
                                            (_%g9192791973%_
                                             _%g9192891977%_))))
                                    (_%g9192791973%_ _%g9192891977%_))))
                            (_%g9192791973%_ _%g9192891977%_))))
                    (_%g9192791973%_ _%g9192891977%_)))))
        (_%g9192692126%_ _%$stx91923%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx92130%_)
      (let* ((_%g9213492168%_
              (lambda (_%g9213592164%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9213592164%_)))
             (_%g9213392279%_
              (lambda (_%g9213592172%_)
                (if (gx#stx-pair? _%g9213592172%_)
                    (let ((_%e9214292175%_ (gx#syntax-e _%g9213592172%_)))
                      (let ((_%hd9214392179%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9214292175%_)))
                            (_%tl9214492182%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9214292175%_))))
                        (if (gx#stx-pair? _%tl9214492182%_)
                            (let ((_%e9214592185%_
                                   (gx#syntax-e _%tl9214492182%_)))
                              (let ((_%hd9214692189%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9214592185%_)))
                                    (_%tl9214792192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9214592185%_))))
                                (if (gx#stx-pair? _%tl9214792192%_)
                                    (let ((_%e9214892195%_
                                           (gx#syntax-e _%tl9214792192%_)))
                                      (let ((_%hd9214992199%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9214892195%_)))
                                            (_%tl9215092202%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9214892195%_))))
                                        (if (gx#stx-pair? _%tl9215092202%_)
                                            (let ((_%e9215192205%_
                                                   (gx#syntax-e
                                                    _%tl9215092202%_)))
                                              (let ((_%hd9215292209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9215192205%_)))
                                                    (_%tl9215392212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9215192205%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9215392212%_)
                                                    (let ((_%e9215492215%_
                                                           (gx#syntax-e
                                                            _%tl9215392212%_)))
                                                      (let ((_%hd9215592219%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9215492215%_)))
                    (_%tl9215692222%_
                     (let () (declare (not safe)) (##cdr _%e9215492215%_))))
                (if (gx#stx-pair? _%tl9215692222%_)
                    (let ((_%e9215792225%_ (gx#syntax-e _%tl9215692222%_)))
                      (let ((_%hd9215892229%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9215792225%_)))
                            (_%tl9215992232%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9215792225%_))))
                        (if (gx#stx-pair? _%tl9215992232%_)
                            (let ((_%e9216092235%_
                                   (gx#syntax-e _%tl9215992232%_)))
                              (let ((_%hd9216192239%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9216092235%_)))
                                    (_%tl9216292242%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9216092235%_))))
                                (if (gx#stx-null? _%tl9216292242%_)
                                    ((lambda (_%L92245%_
                                              _%L92247%_
                                              _%L92248%_
                                              _%L92249%_
                                              _%L92250%_
                                              _%L92251%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92249%_
                                               (cons _%L92247%_ '()))
                                         (cons _%L92250%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92251%_ '()))
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
                               (cons _%L92251%_
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
                                     (cons (cons (cons _%L92248%_
                                                       (cons _%L92247%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92251%_
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
                     (cons (cons _%L92245%_ '()) '()))))
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
                                     _%hd9216192239%_
                                     _%hd9215892229%_
                                     _%hd9215592219%_
                                     _%hd9215292209%_
                                     _%hd9214992199%_
                                     _%hd9214692189%_)
                                    (_%g9213492168%_ _%g9213592172%_))))
                            (_%g9213492168%_ _%g9213592172%_))))
                    (_%g9213492168%_ _%g9213592172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9213492168%_
                                                     _%g9213592172%_))))
                                            (_%g9213492168%_
                                             _%g9213592172%_))))
                                    (_%g9213492168%_ _%g9213592172%_))))
                            (_%g9213492168%_ _%g9213592172%_))))
                    (_%g9213492168%_ _%g9213592172%_)))))
        (_%g9213392279%_ _%$stx92130%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx92309%_)
      (let* ((_%g9231392327%_
              (lambda (_%g9231492323%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9231492323%_)))
             (_%g9231292369%_
              (lambda (_%g9231492331%_)
                (if (gx#stx-pair? _%g9231492331%_)
                    (let ((_%e9231692334%_ (gx#syntax-e _%g9231492331%_)))
                      (let ((_%hd9231792338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9231692334%_)))
                            (_%tl9231892341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9231692334%_))))
                        (if (gx#stx-pair? _%tl9231892341%_)
                            (let ((_%e9231992344%_
                                   (gx#syntax-e _%tl9231892341%_)))
                              (let ((_%hd9232092348%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9231992344%_)))
                                    (_%tl9232192351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9231992344%_))))
                                (if (gx#stx-null? _%tl9232192351%_)
                                    ((lambda (_%L92354%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L92354%_ '()))))
                                     _%hd9232092348%_)
                                    (_%g9231392327%_ _%g9231492331%_))))
                            (_%g9231392327%_ _%g9231492331%_))))
                    (_%g9231392327%_ _%g9231492331%_)))))
        (_%g9231292369%_ _%$stx92309%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx92373%_)
      (let* ((_%g9237792423%_
              (lambda (_%g9237892419%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9237892419%_)))
             (_%g9237692576%_
              (lambda (_%g9237892427%_)
                (if (gx#stx-pair? _%g9237892427%_)
                    (let ((_%e9238892430%_ (gx#syntax-e _%g9237892427%_)))
                      (let ((_%hd9238992434%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9238892430%_)))
                            (_%tl9239092437%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9238892430%_))))
                        (if (gx#stx-pair? _%tl9239092437%_)
                            (let ((_%e9239192440%_
                                   (gx#syntax-e _%tl9239092437%_)))
                              (let ((_%hd9239292444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9239192440%_)))
                                    (_%tl9239392447%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9239192440%_))))
                                (if (gx#stx-pair? _%tl9239392447%_)
                                    (let ((_%e9239492450%_
                                           (gx#syntax-e _%tl9239392447%_)))
                                      (let ((_%hd9239592454%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9239492450%_)))
                                            (_%tl9239692457%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9239492450%_))))
                                        (if (gx#stx-pair? _%tl9239692457%_)
                                            (let ((_%e9239792460%_
                                                   (gx#syntax-e
                                                    _%tl9239692457%_)))
                                              (let ((_%hd9239892464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9239792460%_)))
                                                    (_%tl9239992467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9239792460%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9239992467%_)
                                                    (let ((_%e9240092470%_
                                                           (gx#syntax-e
                                                            _%tl9239992467%_)))
                                                      (let ((_%hd9240192474%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9240092470%_)))
                    (_%tl9240292477%_
                     (let () (declare (not safe)) (##cdr _%e9240092470%_))))
                (if (gx#stx-pair? _%tl9240292477%_)
                    (let ((_%e9240392480%_ (gx#syntax-e _%tl9240292477%_)))
                      (let ((_%hd9240492484%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9240392480%_)))
                            (_%tl9240592487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9240392480%_))))
                        (if (gx#stx-pair? _%tl9240592487%_)
                            (let ((_%e9240692490%_
                                   (gx#syntax-e _%tl9240592487%_)))
                              (let ((_%hd9240792494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9240692490%_)))
                                    (_%tl9240892497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9240692490%_))))
                                (if (gx#stx-pair? _%tl9240892497%_)
                                    (let ((_%e9240992500%_
                                           (gx#syntax-e _%tl9240892497%_)))
                                      (let ((_%hd9241092504%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9240992500%_)))
                                            (_%tl9241192507%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9240992500%_))))
                                        (if (gx#stx-pair? _%tl9241192507%_)
                                            (let ((_%e9241292510%_
                                                   (gx#syntax-e
                                                    _%tl9241192507%_)))
                                              (let ((_%hd9241392514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9241292510%_)))
                                                    (_%tl9241492517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9241292510%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9241492517%_)
                                                    (let ((_%e9241592520%_
                                                           (gx#syntax-e
                                                            _%tl9241492517%_)))
                                                      (let ((_%hd9241692524%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9241592520%_)))
                    (_%tl9241792527%_
                     (let () (declare (not safe)) (##cdr _%e9241592520%_))))
                (if (gx#stx-null? _%tl9241792527%_)
                    ((lambda (_%L92530%_
                              _%L92532%_
                              _%L92533%_
                              _%L92534%_
                              _%L92535%_
                              _%L92536%_
                              _%L92537%_
                              _%L92538%_
                              _%L92539%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L92539%_
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
                         (cons _%L92532%_
                               (cons _%L92530%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L92538%_
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
                                                       (cons _%L92532%_
                                                             (cons _%L92530%_
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
                                                     (cons (cons _%L92537%_
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
                         (cons (cons _%L92536%_
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
                                                           (cons (cons _%L92536%_
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
                           (cons _%L92532%_
                                 (cons _%L92530%_
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
                         (cons (cons _%L92535%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L92535%_
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
                                     (cons (cons _%L92534%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L92535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L92534%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L92535%_
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
                                       (cons _%L92532%_
                                             (cons _%L92530%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L92535%_
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
                                     (cons (cons _%L92533%_
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
                                             (cons _%L92532%_
                                                   (cons _%L92530%_
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
                     _%hd9241692524%_
                     _%hd9241392514%_
                     _%hd9241092504%_
                     _%hd9240792494%_
                     _%hd9240492484%_
                     _%hd9240192474%_
                     _%hd9239892464%_
                     _%hd9239592454%_
                     _%hd9239292444%_)
                    (_%g9237792423%_ _%g9237892427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9237792423%_
                                                     _%g9237892427%_))))
                                            (_%g9237792423%_
                                             _%g9237892427%_))))
                                    (_%g9237792423%_ _%g9237892427%_))))
                            (_%g9237792423%_ _%g9237892427%_))))
                    (_%g9237792423%_ _%g9237892427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9237792423%_
                                                     _%g9237892427%_))))
                                            (_%g9237792423%_
                                             _%g9237892427%_))))
                                    (_%g9237792423%_ _%g9237892427%_))))
                            (_%g9237792423%_ _%g9237892427%_))))
                    (_%g9237792423%_ _%g9237892427%_)))))
        (_%g9237692576%_ _%$stx92373%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx92580%_)
      (let* ((_%g9258492606%_
              (lambda (_%g9258592602%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9258592602%_)))
             (_%g9258392675%_
              (lambda (_%g9258592610%_)
                (if (gx#stx-pair? _%g9258592610%_)
                    (let ((_%e9258992613%_ (gx#syntax-e _%g9258592610%_)))
                      (let ((_%hd9259092617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9258992613%_)))
                            (_%tl9259192620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9258992613%_))))
                        (if (gx#stx-pair? _%tl9259192620%_)
                            (let ((_%e9259292623%_
                                   (gx#syntax-e _%tl9259192620%_)))
                              (let ((_%hd9259392627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9259292623%_)))
                                    (_%tl9259492630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9259292623%_))))
                                (if (gx#stx-pair? _%tl9259492630%_)
                                    (let ((_%e9259592633%_
                                           (gx#syntax-e _%tl9259492630%_)))
                                      (let ((_%hd9259692637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9259592633%_)))
                                            (_%tl9259792640%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9259592633%_))))
                                        (if (gx#stx-pair? _%tl9259792640%_)
                                            (let ((_%e9259892643%_
                                                   (gx#syntax-e
                                                    _%tl9259792640%_)))
                                              (let ((_%hd9259992647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9259892643%_)))
                                                    (_%tl9260092650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9259892643%_))))
                                                (if (gx#stx-null?
                                                     _%tl9260092650%_)
                                                    ((lambda (_%L92653%_
                                                              _%L92655%_
                                                              _%L92656%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L92656%_
                                                   (cons _%L92655%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L92655%_ (cons _%L92655%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L92653%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9259992647%_
                                                     _%hd9259692637%_
                                                     _%hd9259392627%_)
                                                    (_%g9258492606%_
                                                     _%g9258592610%_))))
                                            (_%g9258492606%_
                                             _%g9258592610%_))))
                                    (_%g9258492606%_ _%g9258592610%_))))
                            (_%g9258492606%_ _%g9258592610%_))))
                    (_%g9258492606%_ _%g9258592610%_)))))
        (_%g9258392675%_ _%$stx92580%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx92679%_)
      (let* ((_%g9268392717%_
              (lambda (_%g9268492713%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9268492713%_)))
             (_%g9268292828%_
              (lambda (_%g9268492721%_)
                (if (gx#stx-pair? _%g9268492721%_)
                    (let ((_%e9269192724%_ (gx#syntax-e _%g9268492721%_)))
                      (let ((_%hd9269292728%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9269192724%_)))
                            (_%tl9269392731%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9269192724%_))))
                        (if (gx#stx-pair? _%tl9269392731%_)
                            (let ((_%e9269492734%_
                                   (gx#syntax-e _%tl9269392731%_)))
                              (let ((_%hd9269592738%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9269492734%_)))
                                    (_%tl9269692741%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9269492734%_))))
                                (if (gx#stx-pair? _%tl9269692741%_)
                                    (let ((_%e9269792744%_
                                           (gx#syntax-e _%tl9269692741%_)))
                                      (let ((_%hd9269892748%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9269792744%_)))
                                            (_%tl9269992751%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9269792744%_))))
                                        (if (gx#stx-pair? _%tl9269992751%_)
                                            (let ((_%e9270092754%_
                                                   (gx#syntax-e
                                                    _%tl9269992751%_)))
                                              (let ((_%hd9270192758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9270092754%_)))
                                                    (_%tl9270292761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9270092754%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9270292761%_)
                                                    (let ((_%e9270392764%_
                                                           (gx#syntax-e
                                                            _%tl9270292761%_)))
                                                      (let ((_%hd9270492768%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9270392764%_)))
                    (_%tl9270592771%_
                     (let () (declare (not safe)) (##cdr _%e9270392764%_))))
                (if (gx#stx-pair? _%tl9270592771%_)
                    (let ((_%e9270692774%_ (gx#syntax-e _%tl9270592771%_)))
                      (let ((_%hd9270792778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9270692774%_)))
                            (_%tl9270892781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9270692774%_))))
                        (if (gx#stx-pair? _%tl9270892781%_)
                            (let ((_%e9270992784%_
                                   (gx#syntax-e _%tl9270892781%_)))
                              (let ((_%hd9271092788%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9270992784%_)))
                                    (_%tl9271192791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9270992784%_))))
                                (if (gx#stx-null? _%tl9271192791%_)
                                    ((lambda (_%L92794%_
                                              _%L92796%_
                                              _%L92797%_
                                              _%L92798%_
                                              _%L92799%_
                                              _%L92800%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92798%_
                                               (cons _%L92796%_ '()))
                                         (cons _%L92799%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92800%_ '()))
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
                               (cons _%L92800%_
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
                                     (cons _%L92794%_ '()))
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
                                     (cons (cons (cons _%L92797%_
                                                       (cons _%L92796%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L92800%_
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
                                     _%hd9271092788%_
                                     _%hd9270792778%_
                                     _%hd9270492768%_
                                     _%hd9270192758%_
                                     _%hd9269892748%_
                                     _%hd9269592738%_)
                                    (_%g9268392717%_ _%g9268492721%_))))
                            (_%g9268392717%_ _%g9268492721%_))))
                    (_%g9268392717%_ _%g9268492721%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9268392717%_
                                                     _%g9268492721%_))))
                                            (_%g9268392717%_
                                             _%g9268492721%_))))
                                    (_%g9268392717%_ _%g9268492721%_))))
                            (_%g9268392717%_ _%g9268492721%_))))
                    (_%g9268392717%_ _%g9268492721%_)))))
        (_%g9268292828%_ _%$stx92679%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx92832%_)
      (let* ((_%g9283692878%_
              (lambda (_%g9283792874%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9283792874%_)))
             (_%g9283593017%_
              (lambda (_%g9283792882%_)
                (if (gx#stx-pair? _%g9283792882%_)
                    (let ((_%e9284692885%_ (gx#syntax-e _%g9283792882%_)))
                      (let ((_%hd9284792889%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9284692885%_)))
                            (_%tl9284892892%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9284692885%_))))
                        (if (gx#stx-pair? _%tl9284892892%_)
                            (let ((_%e9284992895%_
                                   (gx#syntax-e _%tl9284892892%_)))
                              (let ((_%hd9285092899%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9284992895%_)))
                                    (_%tl9285192902%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9284992895%_))))
                                (if (gx#stx-pair? _%tl9285192902%_)
                                    (let ((_%e9285292905%_
                                           (gx#syntax-e _%tl9285192902%_)))
                                      (let ((_%hd9285392909%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9285292905%_)))
                                            (_%tl9285492912%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9285292905%_))))
                                        (if (gx#stx-pair? _%tl9285492912%_)
                                            (let ((_%e9285592915%_
                                                   (gx#syntax-e
                                                    _%tl9285492912%_)))
                                              (let ((_%hd9285692919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9285592915%_)))
                                                    (_%tl9285792922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9285592915%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9285792922%_)
                                                    (let ((_%e9285892925%_
                                                           (gx#syntax-e
                                                            _%tl9285792922%_)))
                                                      (let ((_%hd9285992929%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9285892925%_)))
                    (_%tl9286092932%_
                     (let () (declare (not safe)) (##cdr _%e9285892925%_))))
                (if (gx#stx-pair? _%tl9286092932%_)
                    (let ((_%e9286192935%_ (gx#syntax-e _%tl9286092932%_)))
                      (let ((_%hd9286292939%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9286192935%_)))
                            (_%tl9286392942%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9286192935%_))))
                        (if (gx#stx-pair? _%tl9286392942%_)
                            (let ((_%e9286492945%_
                                   (gx#syntax-e _%tl9286392942%_)))
                              (let ((_%hd9286592949%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9286492945%_)))
                                    (_%tl9286692952%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9286492945%_))))
                                (if (gx#stx-pair? _%tl9286692952%_)
                                    (let ((_%e9286792955%_
                                           (gx#syntax-e _%tl9286692952%_)))
                                      (let ((_%hd9286892959%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9286792955%_)))
                                            (_%tl9286992962%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9286792955%_))))
                                        (if (gx#stx-pair? _%tl9286992962%_)
                                            (let ((_%e9287092965%_
                                                   (gx#syntax-e
                                                    _%tl9286992962%_)))
                                              (let ((_%hd9287192969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9287092965%_)))
                                                    (_%tl9287292972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9287092965%_))))
                                                (if (gx#stx-null?
                                                     _%tl9287292972%_)
                                                    ((lambda (_%L92975%_
                                                              _%L92977%_
                                                              _%L92978%_
                                                              _%L92979%_
                                                              _%L92980%_
                                                              _%L92981%_
                                                              _%L92982%_
                                                              _%L92983%_)
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
                                                   (cons (cons _%L92981%_
                                                               (cons _%L92979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92982%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92983%_ '()))
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
                                               (cons _%L92983%_
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
                                                       (cons _%L92983%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92979%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92978%_ '()))))
               (cons (cons _%L92975%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92979%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92983%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92978%_ '()))))
                     (cons (cons _%L92977%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92979%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92983%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92979%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92983%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92978%_ '()))))
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
                                                     _%hd9287192969%_
                                                     _%hd9286892959%_
                                                     _%hd9286592949%_
                                                     _%hd9286292939%_
                                                     _%hd9285992929%_
                                                     _%hd9285692919%_
                                                     _%hd9285392909%_
                                                     _%hd9285092899%_)
                                                    (_%g9283692878%_
                                                     _%g9283792882%_))))
                                            (_%g9283692878%_
                                             _%g9283792882%_))))
                                    (_%g9283692878%_ _%g9283792882%_))))
                            (_%g9283692878%_ _%g9283792882%_))))
                    (_%g9283692878%_ _%g9283792882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9283692878%_
                                                     _%g9283792882%_))))
                                            (_%g9283692878%_
                                             _%g9283792882%_))))
                                    (_%g9283692878%_ _%g9283792882%_))))
                            (_%g9283692878%_ _%g9283792882%_))))
                    (_%g9283692878%_ _%g9283792882%_)))))
        (_%g9283593017%_ _%$stx92832%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx93021%_)
      (let* ((_%g9302593071%_
              (lambda (_%g9302693067%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9302693067%_)))
             (_%g9302493224%_
              (lambda (_%g9302693075%_)
                (if (gx#stx-pair? _%g9302693075%_)
                    (let ((_%e9303693078%_ (gx#syntax-e _%g9302693075%_)))
                      (let ((_%hd9303793082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9303693078%_)))
                            (_%tl9303893085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9303693078%_))))
                        (if (gx#stx-pair? _%tl9303893085%_)
                            (let ((_%e9303993088%_
                                   (gx#syntax-e _%tl9303893085%_)))
                              (let ((_%hd9304093092%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9303993088%_)))
                                    (_%tl9304193095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9303993088%_))))
                                (if (gx#stx-pair? _%tl9304193095%_)
                                    (let ((_%e9304293098%_
                                           (gx#syntax-e _%tl9304193095%_)))
                                      (let ((_%hd9304393102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9304293098%_)))
                                            (_%tl9304493105%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9304293098%_))))
                                        (if (gx#stx-pair? _%tl9304493105%_)
                                            (let ((_%e9304593108%_
                                                   (gx#syntax-e
                                                    _%tl9304493105%_)))
                                              (let ((_%hd9304693112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9304593108%_)))
                                                    (_%tl9304793115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9304593108%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9304793115%_)
                                                    (let ((_%e9304893118%_
                                                           (gx#syntax-e
                                                            _%tl9304793115%_)))
                                                      (let ((_%hd9304993122%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9304893118%_)))
                    (_%tl9305093125%_
                     (let () (declare (not safe)) (##cdr _%e9304893118%_))))
                (if (gx#stx-pair? _%tl9305093125%_)
                    (let ((_%e9305193128%_ (gx#syntax-e _%tl9305093125%_)))
                      (let ((_%hd9305293132%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9305193128%_)))
                            (_%tl9305393135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9305193128%_))))
                        (if (gx#stx-pair? _%tl9305393135%_)
                            (let ((_%e9305493138%_
                                   (gx#syntax-e _%tl9305393135%_)))
                              (let ((_%hd9305593142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9305493138%_)))
                                    (_%tl9305693145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9305493138%_))))
                                (if (gx#stx-pair? _%tl9305693145%_)
                                    (let ((_%e9305793148%_
                                           (gx#syntax-e _%tl9305693145%_)))
                                      (let ((_%hd9305893152%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9305793148%_)))
                                            (_%tl9305993155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9305793148%_))))
                                        (if (gx#stx-pair? _%tl9305993155%_)
                                            (let ((_%e9306093158%_
                                                   (gx#syntax-e
                                                    _%tl9305993155%_)))
                                              (let ((_%hd9306193162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9306093158%_)))
                                                    (_%tl9306293165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9306093158%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9306293165%_)
                                                    (let ((_%e9306393168%_
                                                           (gx#syntax-e
                                                            _%tl9306293165%_)))
                                                      (let ((_%hd9306493172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9306393168%_)))
                    (_%tl9306593175%_
                     (let () (declare (not safe)) (##cdr _%e9306393168%_))))
                (if (gx#stx-null? _%tl9306593175%_)
                    ((lambda (_%L93178%_
                              _%L93180%_
                              _%L93181%_
                              _%L93182%_
                              _%L93183%_
                              _%L93184%_
                              _%L93185%_
                              _%L93186%_
                              _%L93187%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L93185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93183%_ '()))
                         (cons _%L93186%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L93187%_ '()))
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
                                                       (cons _%L93187%_
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
                                                               (cons _%L93187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L93183%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L93187%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L93182%_
                                                     (cons _%L93181%_ '()))
                                               '()))))
                       (cons (cons _%L93178%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L93187%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L93183%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L93187%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L93182%_
                                                           (cons _%L93181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L93180%_ '()) '()))))
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
                     (cons (cons (cons _%L93184%_
                                       (cons _%L93183%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L93187%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L93183%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L93187%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L93182%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L93187%_
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
                     _%hd9306493172%_
                     _%hd9306193162%_
                     _%hd9305893152%_
                     _%hd9305593142%_
                     _%hd9305293132%_
                     _%hd9304993122%_
                     _%hd9304693112%_
                     _%hd9304393102%_
                     _%hd9304093092%_)
                    (_%g9302593071%_ _%g9302693075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9302593071%_
                                                     _%g9302693075%_))))
                                            (_%g9302593071%_
                                             _%g9302693075%_))))
                                    (_%g9302593071%_ _%g9302693075%_))))
                            (_%g9302593071%_ _%g9302693075%_))))
                    (_%g9302593071%_ _%g9302693075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9302593071%_
                                                     _%g9302693075%_))))
                                            (_%g9302593071%_
                                             _%g9302693075%_))))
                                    (_%g9302593071%_ _%g9302693075%_))))
                            (_%g9302593071%_ _%g9302693075%_))))
                    (_%g9302593071%_ _%g9302693075%_)))))
        (_%g9302493224%_ _%$stx93021%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx93228%_)
      (let* ((_%g9323293266%_
              (lambda (_%g9323393262%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9323393262%_)))
             (_%g9323193377%_
              (lambda (_%g9323393270%_)
                (if (gx#stx-pair? _%g9323393270%_)
                    (let ((_%e9324093273%_ (gx#syntax-e _%g9323393270%_)))
                      (let ((_%hd9324193277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9324093273%_)))
                            (_%tl9324293280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9324093273%_))))
                        (if (gx#stx-pair? _%tl9324293280%_)
                            (let ((_%e9324393283%_
                                   (gx#syntax-e _%tl9324293280%_)))
                              (let ((_%hd9324493287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9324393283%_)))
                                    (_%tl9324593290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9324393283%_))))
                                (if (gx#stx-pair? _%tl9324593290%_)
                                    (let ((_%e9324693293%_
                                           (gx#syntax-e _%tl9324593290%_)))
                                      (let ((_%hd9324793297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9324693293%_)))
                                            (_%tl9324893300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9324693293%_))))
                                        (if (gx#stx-pair? _%tl9324893300%_)
                                            (let ((_%e9324993303%_
                                                   (gx#syntax-e
                                                    _%tl9324893300%_)))
                                              (let ((_%hd9325093307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9324993303%_)))
                                                    (_%tl9325193310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9324993303%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9325193310%_)
                                                    (let ((_%e9325293313%_
                                                           (gx#syntax-e
                                                            _%tl9325193310%_)))
                                                      (let ((_%hd9325393317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9325293313%_)))
                    (_%tl9325493320%_
                     (let () (declare (not safe)) (##cdr _%e9325293313%_))))
                (if (gx#stx-pair? _%tl9325493320%_)
                    (let ((_%e9325593323%_ (gx#syntax-e _%tl9325493320%_)))
                      (let ((_%hd9325693327%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9325593323%_)))
                            (_%tl9325793330%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9325593323%_))))
                        (if (gx#stx-pair? _%tl9325793330%_)
                            (let ((_%e9325893333%_
                                   (gx#syntax-e _%tl9325793330%_)))
                              (let ((_%hd9325993337%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9325893333%_)))
                                    (_%tl9326093340%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9325893333%_))))
                                (if (gx#stx-null? _%tl9326093340%_)
                                    ((lambda (_%L93343%_
                                              _%L93345%_
                                              _%L93346%_
                                              _%L93347%_
                                              _%L93348%_
                                              _%L93349%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L93347%_
                                               (cons _%L93345%_ '()))
                                         (cons _%L93348%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L93349%_ '()))
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
                               (cons _%L93349%_
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
                                     (cons (cons (cons _%L93346%_
                                                       (cons _%L93345%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L93349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L93349%_
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
                     (cons (cons _%L93343%_ '()) '()))))
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
                                     _%hd9325993337%_
                                     _%hd9325693327%_
                                     _%hd9325393317%_
                                     _%hd9325093307%_
                                     _%hd9324793297%_
                                     _%hd9324493287%_)
                                    (_%g9323293266%_ _%g9323393270%_))))
                            (_%g9323293266%_ _%g9323393270%_))))
                    (_%g9323293266%_ _%g9323393270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9323293266%_
                                                     _%g9323393270%_))))
                                            (_%g9323293266%_
                                             _%g9323393270%_))))
                                    (_%g9323293266%_ _%g9323393270%_))))
                            (_%g9323293266%_ _%g9323393270%_))))
                    (_%g9323293266%_ _%g9323393270%_)))))
        (_%g9323193377%_ _%$stx93228%_)))))

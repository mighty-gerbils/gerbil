(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx87498%_)
      (let* ((_%g8750287516%_
              (lambda (_%g8750387512%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8750387512%_)))
             (_%g8750187558%_
              (lambda (_%g8750387520%_)
                (if (gx#stx-pair? _%g8750387520%_)
                    (let ((_%e8750787523%_ (gx#syntax-e _%g8750387520%_)))
                      (let ((_%hd8750687527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8750787523%_)))
                            (_%tl8750587530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8750787523%_))))
                        (if (gx#stx-pair? _%tl8750587530%_)
                            (let ((_%e8751087533%_
                                   (gx#syntax-e _%tl8750587530%_)))
                              (let ((_%hd8750987537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8751087533%_)))
                                    (_%tl8750887540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8751087533%_))))
                                (if (gx#stx-null? _%tl8750887540%_)
                                    ((lambda (_%L87543%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L87543%_ '()))))
                                     _%hd8750987537%_)
                                    (_%g8750287516%_ _%g8750387520%_))))
                            (_%g8750287516%_ _%g8750387520%_))))
                    (_%g8750287516%_ _%g8750387520%_)))))
        (_%g8750187558%_ _%$stx87498%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx87562%_)
      (let* ((_%g8756687612%_
              (lambda (_%g8756787608%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8756787608%_)))
             (_%g8756587765%_
              (lambda (_%g8756787616%_)
                (if (gx#stx-pair? _%g8756787616%_)
                    (let ((_%e8757987619%_ (gx#syntax-e _%g8756787616%_)))
                      (let ((_%hd8757887623%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8757987619%_)))
                            (_%tl8757787626%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8757987619%_))))
                        (if (gx#stx-pair? _%tl8757787626%_)
                            (let ((_%e8758287629%_
                                   (gx#syntax-e _%tl8757787626%_)))
                              (let ((_%hd8758187633%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8758287629%_)))
                                    (_%tl8758087636%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8758287629%_))))
                                (if (gx#stx-pair? _%tl8758087636%_)
                                    (let ((_%e8758587639%_
                                           (gx#syntax-e _%tl8758087636%_)))
                                      (let ((_%hd8758487643%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8758587639%_)))
                                            (_%tl8758387646%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8758587639%_))))
                                        (if (gx#stx-pair? _%tl8758387646%_)
                                            (let ((_%e8758887649%_
                                                   (gx#syntax-e
                                                    _%tl8758387646%_)))
                                              (let ((_%hd8758787653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8758887649%_)))
                                                    (_%tl8758687656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8758887649%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8758687656%_)
                                                    (let ((_%e8759187659%_
                                                           (gx#syntax-e
                                                            _%tl8758687656%_)))
                                                      (let ((_%hd8759087663%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8759187659%_)))
                    (_%tl8758987666%_
                     (let () (declare (not safe)) (##cdr _%e8759187659%_))))
                (if (gx#stx-pair? _%tl8758987666%_)
                    (let ((_%e8759487669%_ (gx#syntax-e _%tl8758987666%_)))
                      (let ((_%hd8759387673%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8759487669%_)))
                            (_%tl8759287676%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8759487669%_))))
                        (if (gx#stx-pair? _%tl8759287676%_)
                            (let ((_%e8759787679%_
                                   (gx#syntax-e _%tl8759287676%_)))
                              (let ((_%hd8759687683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8759787679%_)))
                                    (_%tl8759587686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8759787679%_))))
                                (if (gx#stx-pair? _%tl8759587686%_)
                                    (let ((_%e8760087689%_
                                           (gx#syntax-e _%tl8759587686%_)))
                                      (let ((_%hd8759987693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8760087689%_)))
                                            (_%tl8759887696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8760087689%_))))
                                        (if (gx#stx-pair? _%tl8759887696%_)
                                            (let ((_%e8760387699%_
                                                   (gx#syntax-e
                                                    _%tl8759887696%_)))
                                              (let ((_%hd8760287703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8760387699%_)))
                                                    (_%tl8760187706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8760387699%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8760187706%_)
                                                    (let ((_%e8760687709%_
                                                           (gx#syntax-e
                                                            _%tl8760187706%_)))
                                                      (let ((_%hd8760587713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8760687709%_)))
                    (_%tl8760487716%_
                     (let () (declare (not safe)) (##cdr _%e8760687709%_))))
                (if (gx#stx-null? _%tl8760487716%_)
                    ((lambda (_%L87719%_
                              _%L87721%_
                              _%L87722%_
                              _%L87723%_
                              _%L87724%_
                              _%L87725%_
                              _%L87726%_
                              _%L87727%_
                              _%L87728%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L87728%_
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
                         (cons _%L87721%_
                               (cons _%L87719%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L87727%_
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
                                                       (cons _%L87721%_
                                                             (cons _%L87719%_
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
                                                     (cons (cons _%L87726%_
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
                         (cons (cons _%L87725%_
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
                                                           (cons (cons _%L87725%_
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
                           (cons _%L87721%_
                                 (cons _%L87719%_
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
                         (cons (cons _%L87724%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L87724%_
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
                                     (cons (cons _%L87723%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L87724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L87723%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L87724%_
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
                                       (cons _%L87721%_
                                             (cons _%L87719%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L87724%_
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
                                     (cons (cons _%L87722%_
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
                                             (cons _%L87721%_
                                                   (cons _%L87719%_
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
                     _%hd8760587713%_
                     _%hd8760287703%_
                     _%hd8759987693%_
                     _%hd8759687683%_
                     _%hd8759387673%_
                     _%hd8759087663%_
                     _%hd8758787653%_
                     _%hd8758487643%_
                     _%hd8758187633%_)
                    (_%g8756687612%_ _%g8756787616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8756687612%_
                                                     _%g8756787616%_))))
                                            (_%g8756687612%_
                                             _%g8756787616%_))))
                                    (_%g8756687612%_ _%g8756787616%_))))
                            (_%g8756687612%_ _%g8756787616%_))))
                    (_%g8756687612%_ _%g8756787616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8756687612%_
                                                     _%g8756787616%_))))
                                            (_%g8756687612%_
                                             _%g8756787616%_))))
                                    (_%g8756687612%_ _%g8756787616%_))))
                            (_%g8756687612%_ _%g8756787616%_))))
                    (_%g8756687612%_ _%g8756787616%_)))))
        (_%g8756587765%_ _%$stx87562%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx87769%_)
      (let* ((_%g8777387795%_
              (lambda (_%g8777487791%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8777487791%_)))
             (_%g8777287864%_
              (lambda (_%g8777487799%_)
                (if (gx#stx-pair? _%g8777487799%_)
                    (let ((_%e8778087802%_ (gx#syntax-e _%g8777487799%_)))
                      (let ((_%hd8777987806%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8778087802%_)))
                            (_%tl8777887809%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8778087802%_))))
                        (if (gx#stx-pair? _%tl8777887809%_)
                            (let ((_%e8778387812%_
                                   (gx#syntax-e _%tl8777887809%_)))
                              (let ((_%hd8778287816%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8778387812%_)))
                                    (_%tl8778187819%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8778387812%_))))
                                (if (gx#stx-pair? _%tl8778187819%_)
                                    (let ((_%e8778687822%_
                                           (gx#syntax-e _%tl8778187819%_)))
                                      (let ((_%hd8778587826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8778687822%_)))
                                            (_%tl8778487829%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8778687822%_))))
                                        (if (gx#stx-pair? _%tl8778487829%_)
                                            (let ((_%e8778987832%_
                                                   (gx#syntax-e
                                                    _%tl8778487829%_)))
                                              (let ((_%hd8778887836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8778987832%_)))
                                                    (_%tl8778787839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8778987832%_))))
                                                (if (gx#stx-null?
                                                     _%tl8778787839%_)
                                                    ((lambda (_%L87842%_
                                                              _%L87844%_
                                                              _%L87845%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L87845%_
                                                   (cons _%L87844%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L87844%_ (cons _%L87844%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L87842%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8778887836%_
                                                     _%hd8778587826%_
                                                     _%hd8778287816%_)
                                                    (_%g8777387795%_
                                                     _%g8777487799%_))))
                                            (_%g8777387795%_
                                             _%g8777487799%_))))
                                    (_%g8777387795%_ _%g8777487799%_))))
                            (_%g8777387795%_ _%g8777487799%_))))
                    (_%g8777387795%_ _%g8777487799%_)))))
        (_%g8777287864%_ _%$stx87769%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx87868%_)
      (let* ((_%g8787287906%_
              (lambda (_%g8787387902%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8787387902%_)))
             (_%g8787188017%_
              (lambda (_%g8787387910%_)
                (if (gx#stx-pair? _%g8787387910%_)
                    (let ((_%e8788287913%_ (gx#syntax-e _%g8787387910%_)))
                      (let ((_%hd8788187917%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8788287913%_)))
                            (_%tl8788087920%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8788287913%_))))
                        (if (gx#stx-pair? _%tl8788087920%_)
                            (let ((_%e8788587923%_
                                   (gx#syntax-e _%tl8788087920%_)))
                              (let ((_%hd8788487927%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8788587923%_)))
                                    (_%tl8788387930%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8788587923%_))))
                                (if (gx#stx-pair? _%tl8788387930%_)
                                    (let ((_%e8788887933%_
                                           (gx#syntax-e _%tl8788387930%_)))
                                      (let ((_%hd8788787937%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8788887933%_)))
                                            (_%tl8788687940%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8788887933%_))))
                                        (if (gx#stx-pair? _%tl8788687940%_)
                                            (let ((_%e8789187943%_
                                                   (gx#syntax-e
                                                    _%tl8788687940%_)))
                                              (let ((_%hd8789087947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8789187943%_)))
                                                    (_%tl8788987950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8789187943%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8788987950%_)
                                                    (let ((_%e8789487953%_
                                                           (gx#syntax-e
                                                            _%tl8788987950%_)))
                                                      (let ((_%hd8789387957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8789487953%_)))
                    (_%tl8789287960%_
                     (let () (declare (not safe)) (##cdr _%e8789487953%_))))
                (if (gx#stx-pair? _%tl8789287960%_)
                    (let ((_%e8789787963%_ (gx#syntax-e _%tl8789287960%_)))
                      (let ((_%hd8789687967%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8789787963%_)))
                            (_%tl8789587970%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8789787963%_))))
                        (if (gx#stx-pair? _%tl8789587970%_)
                            (let ((_%e8790087973%_
                                   (gx#syntax-e _%tl8789587970%_)))
                              (let ((_%hd8789987977%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8790087973%_)))
                                    (_%tl8789887980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8790087973%_))))
                                (if (gx#stx-null? _%tl8789887980%_)
                                    ((lambda (_%L87983%_
                                              _%L87985%_
                                              _%L87986%_
                                              _%L87987%_
                                              _%L87988%_
                                              _%L87989%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L87987%_
                                               (cons _%L87985%_ '()))
                                         (cons _%L87988%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L87989%_ '()))
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
                               (cons _%L87989%_
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
                                     (cons _%L87983%_ '()))
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
                                     (cons (cons (cons _%L87986%_
                                                       (cons _%L87985%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L87989%_
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
                                     _%hd8789987977%_
                                     _%hd8789687967%_
                                     _%hd8789387957%_
                                     _%hd8789087947%_
                                     _%hd8788787937%_
                                     _%hd8788487927%_)
                                    (_%g8787287906%_ _%g8787387910%_))))
                            (_%g8787287906%_ _%g8787387910%_))))
                    (_%g8787287906%_ _%g8787387910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8787287906%_
                                                     _%g8787387910%_))))
                                            (_%g8787287906%_
                                             _%g8787387910%_))))
                                    (_%g8787287906%_ _%g8787387910%_))))
                            (_%g8787287906%_ _%g8787387910%_))))
                    (_%g8787287906%_ _%g8787387910%_)))))
        (_%g8787188017%_ _%$stx87868%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88021%_)
      (let* ((_%g8802588067%_
              (lambda (_%g8802688063%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8802688063%_)))
             (_%g8802488206%_
              (lambda (_%g8802688071%_)
                (if (gx#stx-pair? _%g8802688071%_)
                    (let ((_%e8803788074%_ (gx#syntax-e _%g8802688071%_)))
                      (let ((_%hd8803688078%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8803788074%_)))
                            (_%tl8803588081%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8803788074%_))))
                        (if (gx#stx-pair? _%tl8803588081%_)
                            (let ((_%e8804088084%_
                                   (gx#syntax-e _%tl8803588081%_)))
                              (let ((_%hd8803988088%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8804088084%_)))
                                    (_%tl8803888091%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8804088084%_))))
                                (if (gx#stx-pair? _%tl8803888091%_)
                                    (let ((_%e8804388094%_
                                           (gx#syntax-e _%tl8803888091%_)))
                                      (let ((_%hd8804288098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8804388094%_)))
                                            (_%tl8804188101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8804388094%_))))
                                        (if (gx#stx-pair? _%tl8804188101%_)
                                            (let ((_%e8804688104%_
                                                   (gx#syntax-e
                                                    _%tl8804188101%_)))
                                              (let ((_%hd8804588108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8804688104%_)))
                                                    (_%tl8804488111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8804688104%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8804488111%_)
                                                    (let ((_%e8804988114%_
                                                           (gx#syntax-e
                                                            _%tl8804488111%_)))
                                                      (let ((_%hd8804888118%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8804988114%_)))
                    (_%tl8804788121%_
                     (let () (declare (not safe)) (##cdr _%e8804988114%_))))
                (if (gx#stx-pair? _%tl8804788121%_)
                    (let ((_%e8805288124%_ (gx#syntax-e _%tl8804788121%_)))
                      (let ((_%hd8805188128%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8805288124%_)))
                            (_%tl8805088131%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8805288124%_))))
                        (if (gx#stx-pair? _%tl8805088131%_)
                            (let ((_%e8805588134%_
                                   (gx#syntax-e _%tl8805088131%_)))
                              (let ((_%hd8805488138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8805588134%_)))
                                    (_%tl8805388141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8805588134%_))))
                                (if (gx#stx-pair? _%tl8805388141%_)
                                    (let ((_%e8805888144%_
                                           (gx#syntax-e _%tl8805388141%_)))
                                      (let ((_%hd8805788148%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8805888144%_)))
                                            (_%tl8805688151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8805888144%_))))
                                        (if (gx#stx-pair? _%tl8805688151%_)
                                            (let ((_%e8806188154%_
                                                   (gx#syntax-e
                                                    _%tl8805688151%_)))
                                              (let ((_%hd8806088158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8806188154%_)))
                                                    (_%tl8805988161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8806188154%_))))
                                                (if (gx#stx-null?
                                                     _%tl8805988161%_)
                                                    ((lambda (_%L88164%_
                                                              _%L88166%_
                                                              _%L88167%_
                                                              _%L88168%_
                                                              _%L88169%_
                                                              _%L88170%_
                                                              _%L88171%_
                                                              _%L88172%_)
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
                                                   (cons (cons _%L88170%_
                                                               (cons _%L88168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88171%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88172%_ '()))
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
                                               (cons _%L88172%_
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
                                                       (cons _%L88172%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88168%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88167%_ '()))))
               (cons (cons _%L88164%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88168%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88172%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88167%_ '()))))
                     (cons (cons _%L88166%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88168%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88172%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88168%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88172%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88167%_ '()))))
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
                                                     _%hd8806088158%_
                                                     _%hd8805788148%_
                                                     _%hd8805488138%_
                                                     _%hd8805188128%_
                                                     _%hd8804888118%_
                                                     _%hd8804588108%_
                                                     _%hd8804288098%_
                                                     _%hd8803988088%_)
                                                    (_%g8802588067%_
                                                     _%g8802688071%_))))
                                            (_%g8802588067%_
                                             _%g8802688071%_))))
                                    (_%g8802588067%_ _%g8802688071%_))))
                            (_%g8802588067%_ _%g8802688071%_))))
                    (_%g8802588067%_ _%g8802688071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8802588067%_
                                                     _%g8802688071%_))))
                                            (_%g8802588067%_
                                             _%g8802688071%_))))
                                    (_%g8802588067%_ _%g8802688071%_))))
                            (_%g8802588067%_ _%g8802688071%_))))
                    (_%g8802588067%_ _%g8802688071%_)))))
        (_%g8802488206%_ _%$stx88021%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88210%_)
      (let* ((_%g8821488260%_
              (lambda (_%g8821588256%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8821588256%_)))
             (_%g8821388413%_
              (lambda (_%g8821588264%_)
                (if (gx#stx-pair? _%g8821588264%_)
                    (let ((_%e8822788267%_ (gx#syntax-e _%g8821588264%_)))
                      (let ((_%hd8822688271%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8822788267%_)))
                            (_%tl8822588274%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8822788267%_))))
                        (if (gx#stx-pair? _%tl8822588274%_)
                            (let ((_%e8823088277%_
                                   (gx#syntax-e _%tl8822588274%_)))
                              (let ((_%hd8822988281%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8823088277%_)))
                                    (_%tl8822888284%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8823088277%_))))
                                (if (gx#stx-pair? _%tl8822888284%_)
                                    (let ((_%e8823388287%_
                                           (gx#syntax-e _%tl8822888284%_)))
                                      (let ((_%hd8823288291%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8823388287%_)))
                                            (_%tl8823188294%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8823388287%_))))
                                        (if (gx#stx-pair? _%tl8823188294%_)
                                            (let ((_%e8823688297%_
                                                   (gx#syntax-e
                                                    _%tl8823188294%_)))
                                              (let ((_%hd8823588301%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8823688297%_)))
                                                    (_%tl8823488304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8823688297%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8823488304%_)
                                                    (let ((_%e8823988307%_
                                                           (gx#syntax-e
                                                            _%tl8823488304%_)))
                                                      (let ((_%hd8823888311%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8823988307%_)))
                    (_%tl8823788314%_
                     (let () (declare (not safe)) (##cdr _%e8823988307%_))))
                (if (gx#stx-pair? _%tl8823788314%_)
                    (let ((_%e8824288317%_ (gx#syntax-e _%tl8823788314%_)))
                      (let ((_%hd8824188321%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8824288317%_)))
                            (_%tl8824088324%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8824288317%_))))
                        (if (gx#stx-pair? _%tl8824088324%_)
                            (let ((_%e8824588327%_
                                   (gx#syntax-e _%tl8824088324%_)))
                              (let ((_%hd8824488331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8824588327%_)))
                                    (_%tl8824388334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8824588327%_))))
                                (if (gx#stx-pair? _%tl8824388334%_)
                                    (let ((_%e8824888337%_
                                           (gx#syntax-e _%tl8824388334%_)))
                                      (let ((_%hd8824788341%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8824888337%_)))
                                            (_%tl8824688344%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8824888337%_))))
                                        (if (gx#stx-pair? _%tl8824688344%_)
                                            (let ((_%e8825188347%_
                                                   (gx#syntax-e
                                                    _%tl8824688344%_)))
                                              (let ((_%hd8825088351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8825188347%_)))
                                                    (_%tl8824988354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8825188347%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8824988354%_)
                                                    (let ((_%e8825488357%_
                                                           (gx#syntax-e
                                                            _%tl8824988354%_)))
                                                      (let ((_%hd8825388361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8825488357%_)))
                    (_%tl8825288364%_
                     (let () (declare (not safe)) (##cdr _%e8825488357%_))))
                (if (gx#stx-null? _%tl8825288364%_)
                    ((lambda (_%L88367%_
                              _%L88369%_
                              _%L88370%_
                              _%L88371%_
                              _%L88372%_
                              _%L88373%_
                              _%L88374%_
                              _%L88375%_
                              _%L88376%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88372%_ '()))
                         (cons _%L88375%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88376%_ '()))
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
                                                       (cons _%L88376%_
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
                                                               (cons _%L88376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88372%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88376%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88371%_
                                                     (cons _%L88370%_ '()))
                                               '()))))
                       (cons (cons _%L88367%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88376%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88372%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88376%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88371%_
                                                           (cons _%L88370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88369%_ '()) '()))))
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
                     (cons (cons (cons _%L88373%_
                                       (cons _%L88372%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88376%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88372%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88376%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88371%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88376%_
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
                     _%hd8825388361%_
                     _%hd8825088351%_
                     _%hd8824788341%_
                     _%hd8824488331%_
                     _%hd8824188321%_
                     _%hd8823888311%_
                     _%hd8823588301%_
                     _%hd8823288291%_
                     _%hd8822988281%_)
                    (_%g8821488260%_ _%g8821588264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8821488260%_
                                                     _%g8821588264%_))))
                                            (_%g8821488260%_
                                             _%g8821588264%_))))
                                    (_%g8821488260%_ _%g8821588264%_))))
                            (_%g8821488260%_ _%g8821588264%_))))
                    (_%g8821488260%_ _%g8821588264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8821488260%_
                                                     _%g8821588264%_))))
                                            (_%g8821488260%_
                                             _%g8821588264%_))))
                                    (_%g8821488260%_ _%g8821588264%_))))
                            (_%g8821488260%_ _%g8821588264%_))))
                    (_%g8821488260%_ _%g8821588264%_)))))
        (_%g8821388413%_ _%$stx88210%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88417%_)
      (let* ((_%g8842188455%_
              (lambda (_%g8842288451%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8842288451%_)))
             (_%g8842088566%_
              (lambda (_%g8842288459%_)
                (if (gx#stx-pair? _%g8842288459%_)
                    (let ((_%e8843188462%_ (gx#syntax-e _%g8842288459%_)))
                      (let ((_%hd8843088466%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8843188462%_)))
                            (_%tl8842988469%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8843188462%_))))
                        (if (gx#stx-pair? _%tl8842988469%_)
                            (let ((_%e8843488472%_
                                   (gx#syntax-e _%tl8842988469%_)))
                              (let ((_%hd8843388476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8843488472%_)))
                                    (_%tl8843288479%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8843488472%_))))
                                (if (gx#stx-pair? _%tl8843288479%_)
                                    (let ((_%e8843788482%_
                                           (gx#syntax-e _%tl8843288479%_)))
                                      (let ((_%hd8843688486%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8843788482%_)))
                                            (_%tl8843588489%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8843788482%_))))
                                        (if (gx#stx-pair? _%tl8843588489%_)
                                            (let ((_%e8844088492%_
                                                   (gx#syntax-e
                                                    _%tl8843588489%_)))
                                              (let ((_%hd8843988496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8844088492%_)))
                                                    (_%tl8843888499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8844088492%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8843888499%_)
                                                    (let ((_%e8844388502%_
                                                           (gx#syntax-e
                                                            _%tl8843888499%_)))
                                                      (let ((_%hd8844288506%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8844388502%_)))
                    (_%tl8844188509%_
                     (let () (declare (not safe)) (##cdr _%e8844388502%_))))
                (if (gx#stx-pair? _%tl8844188509%_)
                    (let ((_%e8844688512%_ (gx#syntax-e _%tl8844188509%_)))
                      (let ((_%hd8844588516%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8844688512%_)))
                            (_%tl8844488519%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8844688512%_))))
                        (if (gx#stx-pair? _%tl8844488519%_)
                            (let ((_%e8844988522%_
                                   (gx#syntax-e _%tl8844488519%_)))
                              (let ((_%hd8844888526%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8844988522%_)))
                                    (_%tl8844788529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8844988522%_))))
                                (if (gx#stx-null? _%tl8844788529%_)
                                    ((lambda (_%L88532%_
                                              _%L88534%_
                                              _%L88535%_
                                              _%L88536%_
                                              _%L88537%_
                                              _%L88538%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88536%_
                                               (cons _%L88534%_ '()))
                                         (cons _%L88537%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88538%_ '()))
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
                               (cons _%L88538%_
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
                                     (cons (cons (cons _%L88535%_
                                                       (cons _%L88534%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88538%_
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
                     (cons (cons _%L88532%_ '()) '()))))
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
                                     _%hd8844888526%_
                                     _%hd8844588516%_
                                     _%hd8844288506%_
                                     _%hd8843988496%_
                                     _%hd8843688486%_
                                     _%hd8843388476%_)
                                    (_%g8842188455%_ _%g8842288459%_))))
                            (_%g8842188455%_ _%g8842288459%_))))
                    (_%g8842188455%_ _%g8842288459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8842188455%_
                                                     _%g8842288459%_))))
                                            (_%g8842188455%_
                                             _%g8842288459%_))))
                                    (_%g8842188455%_ _%g8842288459%_))))
                            (_%g8842188455%_ _%g8842288459%_))))
                    (_%g8842188455%_ _%g8842288459%_)))))
        (_%g8842088566%_ _%$stx88417%_)))))

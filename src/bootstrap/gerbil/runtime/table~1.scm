(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx87481%_)
      (let* ((_%g8748587499%_
              (lambda (_%g8748687495%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8748687495%_)))
             (_%g8748487541%_
              (lambda (_%g8748687503%_)
                (if (gx#stx-pair? _%g8748687503%_)
                    (let ((_%e8749087506%_ (gx#syntax-e _%g8748687503%_)))
                      (let ((_%hd8748987510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8749087506%_)))
                            (_%tl8748887513%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8749087506%_))))
                        (if (gx#stx-pair? _%tl8748887513%_)
                            (let ((_%e8749387516%_
                                   (gx#syntax-e _%tl8748887513%_)))
                              (let ((_%hd8749287520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8749387516%_)))
                                    (_%tl8749187523%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8749387516%_))))
                                (if (gx#stx-null? _%tl8749187523%_)
                                    ((lambda (_%L87526%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L87526%_ '()))))
                                     _%hd8749287520%_)
                                    (_%g8748587499%_ _%g8748687503%_))))
                            (_%g8748587499%_ _%g8748687503%_))))
                    (_%g8748587499%_ _%g8748687503%_)))))
        (_%g8748487541%_ _%$stx87481%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx87545%_)
      (let* ((_%g8754987595%_
              (lambda (_%g8755087591%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8755087591%_)))
             (_%g8754887748%_
              (lambda (_%g8755087599%_)
                (if (gx#stx-pair? _%g8755087599%_)
                    (let ((_%e8756287602%_ (gx#syntax-e _%g8755087599%_)))
                      (let ((_%hd8756187606%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8756287602%_)))
                            (_%tl8756087609%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8756287602%_))))
                        (if (gx#stx-pair? _%tl8756087609%_)
                            (let ((_%e8756587612%_
                                   (gx#syntax-e _%tl8756087609%_)))
                              (let ((_%hd8756487616%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8756587612%_)))
                                    (_%tl8756387619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8756587612%_))))
                                (if (gx#stx-pair? _%tl8756387619%_)
                                    (let ((_%e8756887622%_
                                           (gx#syntax-e _%tl8756387619%_)))
                                      (let ((_%hd8756787626%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8756887622%_)))
                                            (_%tl8756687629%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8756887622%_))))
                                        (if (gx#stx-pair? _%tl8756687629%_)
                                            (let ((_%e8757187632%_
                                                   (gx#syntax-e
                                                    _%tl8756687629%_)))
                                              (let ((_%hd8757087636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8757187632%_)))
                                                    (_%tl8756987639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8757187632%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8756987639%_)
                                                    (let ((_%e8757487642%_
                                                           (gx#syntax-e
                                                            _%tl8756987639%_)))
                                                      (let ((_%hd8757387646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8757487642%_)))
                    (_%tl8757287649%_
                     (let () (declare (not safe)) (##cdr _%e8757487642%_))))
                (if (gx#stx-pair? _%tl8757287649%_)
                    (let ((_%e8757787652%_ (gx#syntax-e _%tl8757287649%_)))
                      (let ((_%hd8757687656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8757787652%_)))
                            (_%tl8757587659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8757787652%_))))
                        (if (gx#stx-pair? _%tl8757587659%_)
                            (let ((_%e8758087662%_
                                   (gx#syntax-e _%tl8757587659%_)))
                              (let ((_%hd8757987666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8758087662%_)))
                                    (_%tl8757887669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8758087662%_))))
                                (if (gx#stx-pair? _%tl8757887669%_)
                                    (let ((_%e8758387672%_
                                           (gx#syntax-e _%tl8757887669%_)))
                                      (let ((_%hd8758287676%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8758387672%_)))
                                            (_%tl8758187679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8758387672%_))))
                                        (if (gx#stx-pair? _%tl8758187679%_)
                                            (let ((_%e8758687682%_
                                                   (gx#syntax-e
                                                    _%tl8758187679%_)))
                                              (let ((_%hd8758587686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8758687682%_)))
                                                    (_%tl8758487689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8758687682%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8758487689%_)
                                                    (let ((_%e8758987692%_
                                                           (gx#syntax-e
                                                            _%tl8758487689%_)))
                                                      (let ((_%hd8758887696%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8758987692%_)))
                    (_%tl8758787699%_
                     (let () (declare (not safe)) (##cdr _%e8758987692%_))))
                (if (gx#stx-null? _%tl8758787699%_)
                    ((lambda (_%L87702%_
                              _%L87704%_
                              _%L87705%_
                              _%L87706%_
                              _%L87707%_
                              _%L87708%_
                              _%L87709%_
                              _%L87710%_
                              _%L87711%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L87711%_
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
                         (cons _%L87704%_
                               (cons _%L87702%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L87710%_
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
                                                       (cons _%L87704%_
                                                             (cons _%L87702%_
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
                                                     (cons (cons _%L87709%_
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
                         (cons (cons _%L87708%_
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
                                                           (cons (cons _%L87708%_
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
                           (cons _%L87704%_
                                 (cons _%L87702%_
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
                         (cons (cons _%L87707%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L87707%_
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
                                     (cons (cons _%L87706%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L87707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L87706%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L87707%_
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
                                       (cons _%L87704%_
                                             (cons _%L87702%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L87707%_
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
                                     (cons (cons _%L87705%_
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
                                             (cons _%L87704%_
                                                   (cons _%L87702%_
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
                     _%hd8758887696%_
                     _%hd8758587686%_
                     _%hd8758287676%_
                     _%hd8757987666%_
                     _%hd8757687656%_
                     _%hd8757387646%_
                     _%hd8757087636%_
                     _%hd8756787626%_
                     _%hd8756487616%_)
                    (_%g8754987595%_ _%g8755087599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8754987595%_
                                                     _%g8755087599%_))))
                                            (_%g8754987595%_
                                             _%g8755087599%_))))
                                    (_%g8754987595%_ _%g8755087599%_))))
                            (_%g8754987595%_ _%g8755087599%_))))
                    (_%g8754987595%_ _%g8755087599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8754987595%_
                                                     _%g8755087599%_))))
                                            (_%g8754987595%_
                                             _%g8755087599%_))))
                                    (_%g8754987595%_ _%g8755087599%_))))
                            (_%g8754987595%_ _%g8755087599%_))))
                    (_%g8754987595%_ _%g8755087599%_)))))
        (_%g8754887748%_ _%$stx87545%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx87752%_)
      (let* ((_%g8775687778%_
              (lambda (_%g8775787774%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8775787774%_)))
             (_%g8775587847%_
              (lambda (_%g8775787782%_)
                (if (gx#stx-pair? _%g8775787782%_)
                    (let ((_%e8776387785%_ (gx#syntax-e _%g8775787782%_)))
                      (let ((_%hd8776287789%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8776387785%_)))
                            (_%tl8776187792%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8776387785%_))))
                        (if (gx#stx-pair? _%tl8776187792%_)
                            (let ((_%e8776687795%_
                                   (gx#syntax-e _%tl8776187792%_)))
                              (let ((_%hd8776587799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8776687795%_)))
                                    (_%tl8776487802%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8776687795%_))))
                                (if (gx#stx-pair? _%tl8776487802%_)
                                    (let ((_%e8776987805%_
                                           (gx#syntax-e _%tl8776487802%_)))
                                      (let ((_%hd8776887809%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8776987805%_)))
                                            (_%tl8776787812%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8776987805%_))))
                                        (if (gx#stx-pair? _%tl8776787812%_)
                                            (let ((_%e8777287815%_
                                                   (gx#syntax-e
                                                    _%tl8776787812%_)))
                                              (let ((_%hd8777187819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8777287815%_)))
                                                    (_%tl8777087822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8777287815%_))))
                                                (if (gx#stx-null?
                                                     _%tl8777087822%_)
                                                    ((lambda (_%L87825%_
                                                              _%L87827%_
                                                              _%L87828%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L87828%_
                                                   (cons _%L87827%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L87827%_ (cons _%L87827%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L87825%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8777187819%_
                                                     _%hd8776887809%_
                                                     _%hd8776587799%_)
                                                    (_%g8775687778%_
                                                     _%g8775787782%_))))
                                            (_%g8775687778%_
                                             _%g8775787782%_))))
                                    (_%g8775687778%_ _%g8775787782%_))))
                            (_%g8775687778%_ _%g8775787782%_))))
                    (_%g8775687778%_ _%g8775787782%_)))))
        (_%g8775587847%_ _%$stx87752%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx87851%_)
      (let* ((_%g8785587889%_
              (lambda (_%g8785687885%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8785687885%_)))
             (_%g8785488000%_
              (lambda (_%g8785687893%_)
                (if (gx#stx-pair? _%g8785687893%_)
                    (let ((_%e8786587896%_ (gx#syntax-e _%g8785687893%_)))
                      (let ((_%hd8786487900%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8786587896%_)))
                            (_%tl8786387903%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8786587896%_))))
                        (if (gx#stx-pair? _%tl8786387903%_)
                            (let ((_%e8786887906%_
                                   (gx#syntax-e _%tl8786387903%_)))
                              (let ((_%hd8786787910%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8786887906%_)))
                                    (_%tl8786687913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8786887906%_))))
                                (if (gx#stx-pair? _%tl8786687913%_)
                                    (let ((_%e8787187916%_
                                           (gx#syntax-e _%tl8786687913%_)))
                                      (let ((_%hd8787087920%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8787187916%_)))
                                            (_%tl8786987923%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8787187916%_))))
                                        (if (gx#stx-pair? _%tl8786987923%_)
                                            (let ((_%e8787487926%_
                                                   (gx#syntax-e
                                                    _%tl8786987923%_)))
                                              (let ((_%hd8787387930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8787487926%_)))
                                                    (_%tl8787287933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8787487926%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8787287933%_)
                                                    (let ((_%e8787787936%_
                                                           (gx#syntax-e
                                                            _%tl8787287933%_)))
                                                      (let ((_%hd8787687940%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8787787936%_)))
                    (_%tl8787587943%_
                     (let () (declare (not safe)) (##cdr _%e8787787936%_))))
                (if (gx#stx-pair? _%tl8787587943%_)
                    (let ((_%e8788087946%_ (gx#syntax-e _%tl8787587943%_)))
                      (let ((_%hd8787987950%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8788087946%_)))
                            (_%tl8787887953%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8788087946%_))))
                        (if (gx#stx-pair? _%tl8787887953%_)
                            (let ((_%e8788387956%_
                                   (gx#syntax-e _%tl8787887953%_)))
                              (let ((_%hd8788287960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8788387956%_)))
                                    (_%tl8788187963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8788387956%_))))
                                (if (gx#stx-null? _%tl8788187963%_)
                                    ((lambda (_%L87966%_
                                              _%L87968%_
                                              _%L87969%_
                                              _%L87970%_
                                              _%L87971%_
                                              _%L87972%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L87970%_
                                               (cons _%L87968%_ '()))
                                         (cons _%L87971%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L87972%_ '()))
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
                               (cons _%L87972%_
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
                                     (cons _%L87966%_ '()))
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
                                     (cons (cons (cons _%L87969%_
                                                       (cons _%L87968%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L87972%_
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
                                     _%hd8788287960%_
                                     _%hd8787987950%_
                                     _%hd8787687940%_
                                     _%hd8787387930%_
                                     _%hd8787087920%_
                                     _%hd8786787910%_)
                                    (_%g8785587889%_ _%g8785687893%_))))
                            (_%g8785587889%_ _%g8785687893%_))))
                    (_%g8785587889%_ _%g8785687893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8785587889%_
                                                     _%g8785687893%_))))
                                            (_%g8785587889%_
                                             _%g8785687893%_))))
                                    (_%g8785587889%_ _%g8785687893%_))))
                            (_%g8785587889%_ _%g8785687893%_))))
                    (_%g8785587889%_ _%g8785687893%_)))))
        (_%g8785488000%_ _%$stx87851%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88004%_)
      (let* ((_%g8800888050%_
              (lambda (_%g8800988046%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8800988046%_)))
             (_%g8800788189%_
              (lambda (_%g8800988054%_)
                (if (gx#stx-pair? _%g8800988054%_)
                    (let ((_%e8802088057%_ (gx#syntax-e _%g8800988054%_)))
                      (let ((_%hd8801988061%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8802088057%_)))
                            (_%tl8801888064%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8802088057%_))))
                        (if (gx#stx-pair? _%tl8801888064%_)
                            (let ((_%e8802388067%_
                                   (gx#syntax-e _%tl8801888064%_)))
                              (let ((_%hd8802288071%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8802388067%_)))
                                    (_%tl8802188074%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8802388067%_))))
                                (if (gx#stx-pair? _%tl8802188074%_)
                                    (let ((_%e8802688077%_
                                           (gx#syntax-e _%tl8802188074%_)))
                                      (let ((_%hd8802588081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8802688077%_)))
                                            (_%tl8802488084%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8802688077%_))))
                                        (if (gx#stx-pair? _%tl8802488084%_)
                                            (let ((_%e8802988087%_
                                                   (gx#syntax-e
                                                    _%tl8802488084%_)))
                                              (let ((_%hd8802888091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8802988087%_)))
                                                    (_%tl8802788094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8802988087%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8802788094%_)
                                                    (let ((_%e8803288097%_
                                                           (gx#syntax-e
                                                            _%tl8802788094%_)))
                                                      (let ((_%hd8803188101%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8803288097%_)))
                    (_%tl8803088104%_
                     (let () (declare (not safe)) (##cdr _%e8803288097%_))))
                (if (gx#stx-pair? _%tl8803088104%_)
                    (let ((_%e8803588107%_ (gx#syntax-e _%tl8803088104%_)))
                      (let ((_%hd8803488111%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8803588107%_)))
                            (_%tl8803388114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8803588107%_))))
                        (if (gx#stx-pair? _%tl8803388114%_)
                            (let ((_%e8803888117%_
                                   (gx#syntax-e _%tl8803388114%_)))
                              (let ((_%hd8803788121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8803888117%_)))
                                    (_%tl8803688124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8803888117%_))))
                                (if (gx#stx-pair? _%tl8803688124%_)
                                    (let ((_%e8804188127%_
                                           (gx#syntax-e _%tl8803688124%_)))
                                      (let ((_%hd8804088131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8804188127%_)))
                                            (_%tl8803988134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8804188127%_))))
                                        (if (gx#stx-pair? _%tl8803988134%_)
                                            (let ((_%e8804488137%_
                                                   (gx#syntax-e
                                                    _%tl8803988134%_)))
                                              (let ((_%hd8804388141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8804488137%_)))
                                                    (_%tl8804288144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8804488137%_))))
                                                (if (gx#stx-null?
                                                     _%tl8804288144%_)
                                                    ((lambda (_%L88147%_
                                                              _%L88149%_
                                                              _%L88150%_
                                                              _%L88151%_
                                                              _%L88152%_
                                                              _%L88153%_
                                                              _%L88154%_
                                                              _%L88155%_)
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
                                                   (cons (cons _%L88153%_
                                                               (cons _%L88151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88154%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88155%_ '()))
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
                                               (cons _%L88155%_
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
                                                       (cons _%L88155%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88151%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88150%_ '()))))
               (cons (cons _%L88147%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88151%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88155%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88150%_ '()))))
                     (cons (cons _%L88149%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88151%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88155%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88151%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88155%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88150%_ '()))))
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
                                                     _%hd8804388141%_
                                                     _%hd8804088131%_
                                                     _%hd8803788121%_
                                                     _%hd8803488111%_
                                                     _%hd8803188101%_
                                                     _%hd8802888091%_
                                                     _%hd8802588081%_
                                                     _%hd8802288071%_)
                                                    (_%g8800888050%_
                                                     _%g8800988054%_))))
                                            (_%g8800888050%_
                                             _%g8800988054%_))))
                                    (_%g8800888050%_ _%g8800988054%_))))
                            (_%g8800888050%_ _%g8800988054%_))))
                    (_%g8800888050%_ _%g8800988054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8800888050%_
                                                     _%g8800988054%_))))
                                            (_%g8800888050%_
                                             _%g8800988054%_))))
                                    (_%g8800888050%_ _%g8800988054%_))))
                            (_%g8800888050%_ _%g8800988054%_))))
                    (_%g8800888050%_ _%g8800988054%_)))))
        (_%g8800788189%_ _%$stx88004%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88193%_)
      (let* ((_%g8819788243%_
              (lambda (_%g8819888239%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8819888239%_)))
             (_%g8819688396%_
              (lambda (_%g8819888247%_)
                (if (gx#stx-pair? _%g8819888247%_)
                    (let ((_%e8821088250%_ (gx#syntax-e _%g8819888247%_)))
                      (let ((_%hd8820988254%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8821088250%_)))
                            (_%tl8820888257%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8821088250%_))))
                        (if (gx#stx-pair? _%tl8820888257%_)
                            (let ((_%e8821388260%_
                                   (gx#syntax-e _%tl8820888257%_)))
                              (let ((_%hd8821288264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8821388260%_)))
                                    (_%tl8821188267%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8821388260%_))))
                                (if (gx#stx-pair? _%tl8821188267%_)
                                    (let ((_%e8821688270%_
                                           (gx#syntax-e _%tl8821188267%_)))
                                      (let ((_%hd8821588274%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8821688270%_)))
                                            (_%tl8821488277%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8821688270%_))))
                                        (if (gx#stx-pair? _%tl8821488277%_)
                                            (let ((_%e8821988280%_
                                                   (gx#syntax-e
                                                    _%tl8821488277%_)))
                                              (let ((_%hd8821888284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8821988280%_)))
                                                    (_%tl8821788287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8821988280%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8821788287%_)
                                                    (let ((_%e8822288290%_
                                                           (gx#syntax-e
                                                            _%tl8821788287%_)))
                                                      (let ((_%hd8822188294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8822288290%_)))
                    (_%tl8822088297%_
                     (let () (declare (not safe)) (##cdr _%e8822288290%_))))
                (if (gx#stx-pair? _%tl8822088297%_)
                    (let ((_%e8822588300%_ (gx#syntax-e _%tl8822088297%_)))
                      (let ((_%hd8822488304%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8822588300%_)))
                            (_%tl8822388307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8822588300%_))))
                        (if (gx#stx-pair? _%tl8822388307%_)
                            (let ((_%e8822888310%_
                                   (gx#syntax-e _%tl8822388307%_)))
                              (let ((_%hd8822788314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8822888310%_)))
                                    (_%tl8822688317%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8822888310%_))))
                                (if (gx#stx-pair? _%tl8822688317%_)
                                    (let ((_%e8823188320%_
                                           (gx#syntax-e _%tl8822688317%_)))
                                      (let ((_%hd8823088324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8823188320%_)))
                                            (_%tl8822988327%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8823188320%_))))
                                        (if (gx#stx-pair? _%tl8822988327%_)
                                            (let ((_%e8823488330%_
                                                   (gx#syntax-e
                                                    _%tl8822988327%_)))
                                              (let ((_%hd8823388334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8823488330%_)))
                                                    (_%tl8823288337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8823488330%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8823288337%_)
                                                    (let ((_%e8823788340%_
                                                           (gx#syntax-e
                                                            _%tl8823288337%_)))
                                                      (let ((_%hd8823688344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8823788340%_)))
                    (_%tl8823588347%_
                     (let () (declare (not safe)) (##cdr _%e8823788340%_))))
                (if (gx#stx-null? _%tl8823588347%_)
                    ((lambda (_%L88350%_
                              _%L88352%_
                              _%L88353%_
                              _%L88354%_
                              _%L88355%_
                              _%L88356%_
                              _%L88357%_
                              _%L88358%_
                              _%L88359%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88355%_ '()))
                         (cons _%L88358%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88359%_ '()))
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
                                                       (cons _%L88359%_
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
                                                               (cons _%L88359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88355%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88359%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88354%_
                                                     (cons _%L88353%_ '()))
                                               '()))))
                       (cons (cons _%L88350%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88359%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88355%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88359%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88354%_
                                                           (cons _%L88353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88352%_ '()) '()))))
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
                     (cons (cons (cons _%L88356%_
                                       (cons _%L88355%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88359%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88355%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88359%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88354%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88359%_
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
                     _%hd8823688344%_
                     _%hd8823388334%_
                     _%hd8823088324%_
                     _%hd8822788314%_
                     _%hd8822488304%_
                     _%hd8822188294%_
                     _%hd8821888284%_
                     _%hd8821588274%_
                     _%hd8821288264%_)
                    (_%g8819788243%_ _%g8819888247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8819788243%_
                                                     _%g8819888247%_))))
                                            (_%g8819788243%_
                                             _%g8819888247%_))))
                                    (_%g8819788243%_ _%g8819888247%_))))
                            (_%g8819788243%_ _%g8819888247%_))))
                    (_%g8819788243%_ _%g8819888247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8819788243%_
                                                     _%g8819888247%_))))
                                            (_%g8819788243%_
                                             _%g8819888247%_))))
                                    (_%g8819788243%_ _%g8819888247%_))))
                            (_%g8819788243%_ _%g8819888247%_))))
                    (_%g8819788243%_ _%g8819888247%_)))))
        (_%g8819688396%_ _%$stx88193%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88400%_)
      (let* ((_%g8840488438%_
              (lambda (_%g8840588434%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8840588434%_)))
             (_%g8840388549%_
              (lambda (_%g8840588442%_)
                (if (gx#stx-pair? _%g8840588442%_)
                    (let ((_%e8841488445%_ (gx#syntax-e _%g8840588442%_)))
                      (let ((_%hd8841388449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8841488445%_)))
                            (_%tl8841288452%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8841488445%_))))
                        (if (gx#stx-pair? _%tl8841288452%_)
                            (let ((_%e8841788455%_
                                   (gx#syntax-e _%tl8841288452%_)))
                              (let ((_%hd8841688459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8841788455%_)))
                                    (_%tl8841588462%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8841788455%_))))
                                (if (gx#stx-pair? _%tl8841588462%_)
                                    (let ((_%e8842088465%_
                                           (gx#syntax-e _%tl8841588462%_)))
                                      (let ((_%hd8841988469%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8842088465%_)))
                                            (_%tl8841888472%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8842088465%_))))
                                        (if (gx#stx-pair? _%tl8841888472%_)
                                            (let ((_%e8842388475%_
                                                   (gx#syntax-e
                                                    _%tl8841888472%_)))
                                              (let ((_%hd8842288479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8842388475%_)))
                                                    (_%tl8842188482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8842388475%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8842188482%_)
                                                    (let ((_%e8842688485%_
                                                           (gx#syntax-e
                                                            _%tl8842188482%_)))
                                                      (let ((_%hd8842588489%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8842688485%_)))
                    (_%tl8842488492%_
                     (let () (declare (not safe)) (##cdr _%e8842688485%_))))
                (if (gx#stx-pair? _%tl8842488492%_)
                    (let ((_%e8842988495%_ (gx#syntax-e _%tl8842488492%_)))
                      (let ((_%hd8842888499%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8842988495%_)))
                            (_%tl8842788502%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8842988495%_))))
                        (if (gx#stx-pair? _%tl8842788502%_)
                            (let ((_%e8843288505%_
                                   (gx#syntax-e _%tl8842788502%_)))
                              (let ((_%hd8843188509%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8843288505%_)))
                                    (_%tl8843088512%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8843288505%_))))
                                (if (gx#stx-null? _%tl8843088512%_)
                                    ((lambda (_%L88515%_
                                              _%L88517%_
                                              _%L88518%_
                                              _%L88519%_
                                              _%L88520%_
                                              _%L88521%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88519%_
                                               (cons _%L88517%_ '()))
                                         (cons _%L88520%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88521%_ '()))
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
                               (cons _%L88521%_
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
                                     (cons (cons (cons _%L88518%_
                                                       (cons _%L88517%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88521%_
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
                     (cons (cons _%L88515%_ '()) '()))))
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
                                     _%hd8843188509%_
                                     _%hd8842888499%_
                                     _%hd8842588489%_
                                     _%hd8842288479%_
                                     _%hd8841988469%_
                                     _%hd8841688459%_)
                                    (_%g8840488438%_ _%g8840588442%_))))
                            (_%g8840488438%_ _%g8840588442%_))))
                    (_%g8840488438%_ _%g8840588442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8840488438%_
                                                     _%g8840588442%_))))
                                            (_%g8840488438%_
                                             _%g8840588442%_))))
                                    (_%g8840488438%_ _%g8840588442%_))))
                            (_%g8840488438%_ _%g8840588442%_))))
                    (_%g8840488438%_ _%g8840588442%_)))))
        (_%g8840388549%_ _%$stx88400%_)))))

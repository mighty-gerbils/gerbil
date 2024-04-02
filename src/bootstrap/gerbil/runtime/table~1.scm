(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx87367%_)
      (let* ((_%g8737187385%_
              (lambda (_%g8737287381%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8737287381%_)))
             (_%g8737087427%_
              (lambda (_%g8737287389%_)
                (if (gx#stx-pair? _%g8737287389%_)
                    (let ((_%e8737687392%_ (gx#syntax-e _%g8737287389%_)))
                      (let ((_%hd8737587396%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8737687392%_)))
                            (_%tl8737487399%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8737687392%_))))
                        (if (gx#stx-pair? _%tl8737487399%_)
                            (let ((_%e8737987402%_
                                   (gx#syntax-e _%tl8737487399%_)))
                              (let ((_%hd8737887406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8737987402%_)))
                                    (_%tl8737787409%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8737987402%_))))
                                (if (gx#stx-null? _%tl8737787409%_)
                                    ((lambda (_%L87412%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L87412%_ '()))))
                                     _%hd8737887406%_)
                                    (_%g8737187385%_ _%g8737287389%_))))
                            (_%g8737187385%_ _%g8737287389%_))))
                    (_%g8737187385%_ _%g8737287389%_)))))
        (_%g8737087427%_ _%$stx87367%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx87431%_)
      (let* ((_%g8743587481%_
              (lambda (_%g8743687477%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8743687477%_)))
             (_%g8743487634%_
              (lambda (_%g8743687485%_)
                (if (gx#stx-pair? _%g8743687485%_)
                    (let ((_%e8744887488%_ (gx#syntax-e _%g8743687485%_)))
                      (let ((_%hd8744787492%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8744887488%_)))
                            (_%tl8744687495%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8744887488%_))))
                        (if (gx#stx-pair? _%tl8744687495%_)
                            (let ((_%e8745187498%_
                                   (gx#syntax-e _%tl8744687495%_)))
                              (let ((_%hd8745087502%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8745187498%_)))
                                    (_%tl8744987505%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8745187498%_))))
                                (if (gx#stx-pair? _%tl8744987505%_)
                                    (let ((_%e8745487508%_
                                           (gx#syntax-e _%tl8744987505%_)))
                                      (let ((_%hd8745387512%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8745487508%_)))
                                            (_%tl8745287515%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8745487508%_))))
                                        (if (gx#stx-pair? _%tl8745287515%_)
                                            (let ((_%e8745787518%_
                                                   (gx#syntax-e
                                                    _%tl8745287515%_)))
                                              (let ((_%hd8745687522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8745787518%_)))
                                                    (_%tl8745587525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8745787518%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8745587525%_)
                                                    (let ((_%e8746087528%_
                                                           (gx#syntax-e
                                                            _%tl8745587525%_)))
                                                      (let ((_%hd8745987532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8746087528%_)))
                    (_%tl8745887535%_
                     (let () (declare (not safe)) (##cdr _%e8746087528%_))))
                (if (gx#stx-pair? _%tl8745887535%_)
                    (let ((_%e8746387538%_ (gx#syntax-e _%tl8745887535%_)))
                      (let ((_%hd8746287542%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8746387538%_)))
                            (_%tl8746187545%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8746387538%_))))
                        (if (gx#stx-pair? _%tl8746187545%_)
                            (let ((_%e8746687548%_
                                   (gx#syntax-e _%tl8746187545%_)))
                              (let ((_%hd8746587552%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8746687548%_)))
                                    (_%tl8746487555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8746687548%_))))
                                (if (gx#stx-pair? _%tl8746487555%_)
                                    (let ((_%e8746987558%_
                                           (gx#syntax-e _%tl8746487555%_)))
                                      (let ((_%hd8746887562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8746987558%_)))
                                            (_%tl8746787565%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8746987558%_))))
                                        (if (gx#stx-pair? _%tl8746787565%_)
                                            (let ((_%e8747287568%_
                                                   (gx#syntax-e
                                                    _%tl8746787565%_)))
                                              (let ((_%hd8747187572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8747287568%_)))
                                                    (_%tl8747087575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8747287568%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8747087575%_)
                                                    (let ((_%e8747587578%_
                                                           (gx#syntax-e
                                                            _%tl8747087575%_)))
                                                      (let ((_%hd8747487582%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8747587578%_)))
                    (_%tl8747387585%_
                     (let () (declare (not safe)) (##cdr _%e8747587578%_))))
                (if (gx#stx-null? _%tl8747387585%_)
                    ((lambda (_%L87588%_
                              _%L87590%_
                              _%L87591%_
                              _%L87592%_
                              _%L87593%_
                              _%L87594%_
                              _%L87595%_
                              _%L87596%_
                              _%L87597%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L87597%_
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
                         (cons _%L87590%_
                               (cons _%L87588%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L87596%_
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
                                                       (cons _%L87590%_
                                                             (cons _%L87588%_
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
                                                     (cons (cons _%L87595%_
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
                         (cons (cons _%L87594%_
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
                                                           (cons (cons _%L87594%_
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
                           (cons _%L87590%_
                                 (cons _%L87588%_
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
                         (cons (cons _%L87593%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L87593%_
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
                                     (cons (cons _%L87592%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L87593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L87592%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L87593%_
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
                                       (cons _%L87590%_
                                             (cons _%L87588%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L87593%_
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
                                     (cons (cons _%L87591%_
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
                                             (cons _%L87590%_
                                                   (cons _%L87588%_
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
                     _%hd8747487582%_
                     _%hd8747187572%_
                     _%hd8746887562%_
                     _%hd8746587552%_
                     _%hd8746287542%_
                     _%hd8745987532%_
                     _%hd8745687522%_
                     _%hd8745387512%_
                     _%hd8745087502%_)
                    (_%g8743587481%_ _%g8743687485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8743587481%_
                                                     _%g8743687485%_))))
                                            (_%g8743587481%_
                                             _%g8743687485%_))))
                                    (_%g8743587481%_ _%g8743687485%_))))
                            (_%g8743587481%_ _%g8743687485%_))))
                    (_%g8743587481%_ _%g8743687485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8743587481%_
                                                     _%g8743687485%_))))
                                            (_%g8743587481%_
                                             _%g8743687485%_))))
                                    (_%g8743587481%_ _%g8743687485%_))))
                            (_%g8743587481%_ _%g8743687485%_))))
                    (_%g8743587481%_ _%g8743687485%_)))))
        (_%g8743487634%_ _%$stx87431%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx87638%_)
      (let* ((_%g8764287664%_
              (lambda (_%g8764387660%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8764387660%_)))
             (_%g8764187733%_
              (lambda (_%g8764387668%_)
                (if (gx#stx-pair? _%g8764387668%_)
                    (let ((_%e8764987671%_ (gx#syntax-e _%g8764387668%_)))
                      (let ((_%hd8764887675%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8764987671%_)))
                            (_%tl8764787678%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8764987671%_))))
                        (if (gx#stx-pair? _%tl8764787678%_)
                            (let ((_%e8765287681%_
                                   (gx#syntax-e _%tl8764787678%_)))
                              (let ((_%hd8765187685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8765287681%_)))
                                    (_%tl8765087688%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8765287681%_))))
                                (if (gx#stx-pair? _%tl8765087688%_)
                                    (let ((_%e8765587691%_
                                           (gx#syntax-e _%tl8765087688%_)))
                                      (let ((_%hd8765487695%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8765587691%_)))
                                            (_%tl8765387698%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8765587691%_))))
                                        (if (gx#stx-pair? _%tl8765387698%_)
                                            (let ((_%e8765887701%_
                                                   (gx#syntax-e
                                                    _%tl8765387698%_)))
                                              (let ((_%hd8765787705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8765887701%_)))
                                                    (_%tl8765687708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8765887701%_))))
                                                (if (gx#stx-null?
                                                     _%tl8765687708%_)
                                                    ((lambda (_%L87711%_
                                                              _%L87713%_
                                                              _%L87714%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L87714%_
                                                   (cons _%L87713%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L87713%_ (cons _%L87713%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L87711%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8765787705%_
                                                     _%hd8765487695%_
                                                     _%hd8765187685%_)
                                                    (_%g8764287664%_
                                                     _%g8764387668%_))))
                                            (_%g8764287664%_
                                             _%g8764387668%_))))
                                    (_%g8764287664%_ _%g8764387668%_))))
                            (_%g8764287664%_ _%g8764387668%_))))
                    (_%g8764287664%_ _%g8764387668%_)))))
        (_%g8764187733%_ _%$stx87638%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx87737%_)
      (let* ((_%g8774187775%_
              (lambda (_%g8774287771%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8774287771%_)))
             (_%g8774087886%_
              (lambda (_%g8774287779%_)
                (if (gx#stx-pair? _%g8774287779%_)
                    (let ((_%e8775187782%_ (gx#syntax-e _%g8774287779%_)))
                      (let ((_%hd8775087786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8775187782%_)))
                            (_%tl8774987789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8775187782%_))))
                        (if (gx#stx-pair? _%tl8774987789%_)
                            (let ((_%e8775487792%_
                                   (gx#syntax-e _%tl8774987789%_)))
                              (let ((_%hd8775387796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8775487792%_)))
                                    (_%tl8775287799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8775487792%_))))
                                (if (gx#stx-pair? _%tl8775287799%_)
                                    (let ((_%e8775787802%_
                                           (gx#syntax-e _%tl8775287799%_)))
                                      (let ((_%hd8775687806%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8775787802%_)))
                                            (_%tl8775587809%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8775787802%_))))
                                        (if (gx#stx-pair? _%tl8775587809%_)
                                            (let ((_%e8776087812%_
                                                   (gx#syntax-e
                                                    _%tl8775587809%_)))
                                              (let ((_%hd8775987816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8776087812%_)))
                                                    (_%tl8775887819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8776087812%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8775887819%_)
                                                    (let ((_%e8776387822%_
                                                           (gx#syntax-e
                                                            _%tl8775887819%_)))
                                                      (let ((_%hd8776287826%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8776387822%_)))
                    (_%tl8776187829%_
                     (let () (declare (not safe)) (##cdr _%e8776387822%_))))
                (if (gx#stx-pair? _%tl8776187829%_)
                    (let ((_%e8776687832%_ (gx#syntax-e _%tl8776187829%_)))
                      (let ((_%hd8776587836%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8776687832%_)))
                            (_%tl8776487839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8776687832%_))))
                        (if (gx#stx-pair? _%tl8776487839%_)
                            (let ((_%e8776987842%_
                                   (gx#syntax-e _%tl8776487839%_)))
                              (let ((_%hd8776887846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8776987842%_)))
                                    (_%tl8776787849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8776987842%_))))
                                (if (gx#stx-null? _%tl8776787849%_)
                                    ((lambda (_%L87852%_
                                              _%L87854%_
                                              _%L87855%_
                                              _%L87856%_
                                              _%L87857%_
                                              _%L87858%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L87856%_
                                               (cons _%L87854%_ '()))
                                         (cons _%L87857%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L87858%_ '()))
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
                               (cons _%L87858%_
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
                                     (cons _%L87852%_ '()))
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
                                     (cons (cons (cons _%L87855%_
                                                       (cons _%L87854%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L87858%_
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
                                     _%hd8776887846%_
                                     _%hd8776587836%_
                                     _%hd8776287826%_
                                     _%hd8775987816%_
                                     _%hd8775687806%_
                                     _%hd8775387796%_)
                                    (_%g8774187775%_ _%g8774287779%_))))
                            (_%g8774187775%_ _%g8774287779%_))))
                    (_%g8774187775%_ _%g8774287779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8774187775%_
                                                     _%g8774287779%_))))
                                            (_%g8774187775%_
                                             _%g8774287779%_))))
                                    (_%g8774187775%_ _%g8774287779%_))))
                            (_%g8774187775%_ _%g8774287779%_))))
                    (_%g8774187775%_ _%g8774287779%_)))))
        (_%g8774087886%_ _%$stx87737%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx87890%_)
      (let* ((_%g8789487936%_
              (lambda (_%g8789587932%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8789587932%_)))
             (_%g8789388075%_
              (lambda (_%g8789587940%_)
                (if (gx#stx-pair? _%g8789587940%_)
                    (let ((_%e8790687943%_ (gx#syntax-e _%g8789587940%_)))
                      (let ((_%hd8790587947%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8790687943%_)))
                            (_%tl8790487950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8790687943%_))))
                        (if (gx#stx-pair? _%tl8790487950%_)
                            (let ((_%e8790987953%_
                                   (gx#syntax-e _%tl8790487950%_)))
                              (let ((_%hd8790887957%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8790987953%_)))
                                    (_%tl8790787960%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8790987953%_))))
                                (if (gx#stx-pair? _%tl8790787960%_)
                                    (let ((_%e8791287963%_
                                           (gx#syntax-e _%tl8790787960%_)))
                                      (let ((_%hd8791187967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8791287963%_)))
                                            (_%tl8791087970%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8791287963%_))))
                                        (if (gx#stx-pair? _%tl8791087970%_)
                                            (let ((_%e8791587973%_
                                                   (gx#syntax-e
                                                    _%tl8791087970%_)))
                                              (let ((_%hd8791487977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8791587973%_)))
                                                    (_%tl8791387980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8791587973%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8791387980%_)
                                                    (let ((_%e8791887983%_
                                                           (gx#syntax-e
                                                            _%tl8791387980%_)))
                                                      (let ((_%hd8791787987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8791887983%_)))
                    (_%tl8791687990%_
                     (let () (declare (not safe)) (##cdr _%e8791887983%_))))
                (if (gx#stx-pair? _%tl8791687990%_)
                    (let ((_%e8792187993%_ (gx#syntax-e _%tl8791687990%_)))
                      (let ((_%hd8792087997%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8792187993%_)))
                            (_%tl8791988000%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8792187993%_))))
                        (if (gx#stx-pair? _%tl8791988000%_)
                            (let ((_%e8792488003%_
                                   (gx#syntax-e _%tl8791988000%_)))
                              (let ((_%hd8792388007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8792488003%_)))
                                    (_%tl8792288010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8792488003%_))))
                                (if (gx#stx-pair? _%tl8792288010%_)
                                    (let ((_%e8792788013%_
                                           (gx#syntax-e _%tl8792288010%_)))
                                      (let ((_%hd8792688017%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8792788013%_)))
                                            (_%tl8792588020%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8792788013%_))))
                                        (if (gx#stx-pair? _%tl8792588020%_)
                                            (let ((_%e8793088023%_
                                                   (gx#syntax-e
                                                    _%tl8792588020%_)))
                                              (let ((_%hd8792988027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8793088023%_)))
                                                    (_%tl8792888030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8793088023%_))))
                                                (if (gx#stx-null?
                                                     _%tl8792888030%_)
                                                    ((lambda (_%L88033%_
                                                              _%L88035%_
                                                              _%L88036%_
                                                              _%L88037%_
                                                              _%L88038%_
                                                              _%L88039%_
                                                              _%L88040%_
                                                              _%L88041%_)
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
                                                   (cons (cons _%L88039%_
                                                               (cons _%L88037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88040%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88041%_ '()))
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
                                               (cons _%L88041%_
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
                                                       (cons _%L88041%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88037%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88036%_ '()))))
               (cons (cons _%L88033%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88037%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88041%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88036%_ '()))))
                     (cons (cons _%L88035%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88037%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88041%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88037%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88041%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88036%_ '()))))
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
                                                     _%hd8792988027%_
                                                     _%hd8792688017%_
                                                     _%hd8792388007%_
                                                     _%hd8792087997%_
                                                     _%hd8791787987%_
                                                     _%hd8791487977%_
                                                     _%hd8791187967%_
                                                     _%hd8790887957%_)
                                                    (_%g8789487936%_
                                                     _%g8789587940%_))))
                                            (_%g8789487936%_
                                             _%g8789587940%_))))
                                    (_%g8789487936%_ _%g8789587940%_))))
                            (_%g8789487936%_ _%g8789587940%_))))
                    (_%g8789487936%_ _%g8789587940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8789487936%_
                                                     _%g8789587940%_))))
                                            (_%g8789487936%_
                                             _%g8789587940%_))))
                                    (_%g8789487936%_ _%g8789587940%_))))
                            (_%g8789487936%_ _%g8789587940%_))))
                    (_%g8789487936%_ _%g8789587940%_)))))
        (_%g8789388075%_ _%$stx87890%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88079%_)
      (let* ((_%g8808388129%_
              (lambda (_%g8808488125%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8808488125%_)))
             (_%g8808288282%_
              (lambda (_%g8808488133%_)
                (if (gx#stx-pair? _%g8808488133%_)
                    (let ((_%e8809688136%_ (gx#syntax-e _%g8808488133%_)))
                      (let ((_%hd8809588140%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8809688136%_)))
                            (_%tl8809488143%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8809688136%_))))
                        (if (gx#stx-pair? _%tl8809488143%_)
                            (let ((_%e8809988146%_
                                   (gx#syntax-e _%tl8809488143%_)))
                              (let ((_%hd8809888150%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8809988146%_)))
                                    (_%tl8809788153%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8809988146%_))))
                                (if (gx#stx-pair? _%tl8809788153%_)
                                    (let ((_%e8810288156%_
                                           (gx#syntax-e _%tl8809788153%_)))
                                      (let ((_%hd8810188160%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8810288156%_)))
                                            (_%tl8810088163%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8810288156%_))))
                                        (if (gx#stx-pair? _%tl8810088163%_)
                                            (let ((_%e8810588166%_
                                                   (gx#syntax-e
                                                    _%tl8810088163%_)))
                                              (let ((_%hd8810488170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8810588166%_)))
                                                    (_%tl8810388173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8810588166%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8810388173%_)
                                                    (let ((_%e8810888176%_
                                                           (gx#syntax-e
                                                            _%tl8810388173%_)))
                                                      (let ((_%hd8810788180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8810888176%_)))
                    (_%tl8810688183%_
                     (let () (declare (not safe)) (##cdr _%e8810888176%_))))
                (if (gx#stx-pair? _%tl8810688183%_)
                    (let ((_%e8811188186%_ (gx#syntax-e _%tl8810688183%_)))
                      (let ((_%hd8811088190%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8811188186%_)))
                            (_%tl8810988193%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8811188186%_))))
                        (if (gx#stx-pair? _%tl8810988193%_)
                            (let ((_%e8811488196%_
                                   (gx#syntax-e _%tl8810988193%_)))
                              (let ((_%hd8811388200%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8811488196%_)))
                                    (_%tl8811288203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8811488196%_))))
                                (if (gx#stx-pair? _%tl8811288203%_)
                                    (let ((_%e8811788206%_
                                           (gx#syntax-e _%tl8811288203%_)))
                                      (let ((_%hd8811688210%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8811788206%_)))
                                            (_%tl8811588213%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8811788206%_))))
                                        (if (gx#stx-pair? _%tl8811588213%_)
                                            (let ((_%e8812088216%_
                                                   (gx#syntax-e
                                                    _%tl8811588213%_)))
                                              (let ((_%hd8811988220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8812088216%_)))
                                                    (_%tl8811888223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8812088216%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8811888223%_)
                                                    (let ((_%e8812388226%_
                                                           (gx#syntax-e
                                                            _%tl8811888223%_)))
                                                      (let ((_%hd8812288230%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8812388226%_)))
                    (_%tl8812188233%_
                     (let () (declare (not safe)) (##cdr _%e8812388226%_))))
                (if (gx#stx-null? _%tl8812188233%_)
                    ((lambda (_%L88236%_
                              _%L88238%_
                              _%L88239%_
                              _%L88240%_
                              _%L88241%_
                              _%L88242%_
                              _%L88243%_
                              _%L88244%_
                              _%L88245%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88241%_ '()))
                         (cons _%L88244%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88245%_ '()))
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
                                                       (cons _%L88245%_
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
                                                               (cons _%L88245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88241%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88245%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88240%_
                                                     (cons _%L88239%_ '()))
                                               '()))))
                       (cons (cons _%L88236%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88245%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88241%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88245%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88240%_
                                                           (cons _%L88239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88238%_ '()) '()))))
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
                     (cons (cons (cons _%L88242%_
                                       (cons _%L88241%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88245%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88241%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88245%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88240%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88245%_
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
                     _%hd8812288230%_
                     _%hd8811988220%_
                     _%hd8811688210%_
                     _%hd8811388200%_
                     _%hd8811088190%_
                     _%hd8810788180%_
                     _%hd8810488170%_
                     _%hd8810188160%_
                     _%hd8809888150%_)
                    (_%g8808388129%_ _%g8808488133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8808388129%_
                                                     _%g8808488133%_))))
                                            (_%g8808388129%_
                                             _%g8808488133%_))))
                                    (_%g8808388129%_ _%g8808488133%_))))
                            (_%g8808388129%_ _%g8808488133%_))))
                    (_%g8808388129%_ _%g8808488133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8808388129%_
                                                     _%g8808488133%_))))
                                            (_%g8808388129%_
                                             _%g8808488133%_))))
                                    (_%g8808388129%_ _%g8808488133%_))))
                            (_%g8808388129%_ _%g8808488133%_))))
                    (_%g8808388129%_ _%g8808488133%_)))))
        (_%g8808288282%_ _%$stx88079%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88286%_)
      (let* ((_%g8829088324%_
              (lambda (_%g8829188320%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8829188320%_)))
             (_%g8828988435%_
              (lambda (_%g8829188328%_)
                (if (gx#stx-pair? _%g8829188328%_)
                    (let ((_%e8830088331%_ (gx#syntax-e _%g8829188328%_)))
                      (let ((_%hd8829988335%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8830088331%_)))
                            (_%tl8829888338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8830088331%_))))
                        (if (gx#stx-pair? _%tl8829888338%_)
                            (let ((_%e8830388341%_
                                   (gx#syntax-e _%tl8829888338%_)))
                              (let ((_%hd8830288345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8830388341%_)))
                                    (_%tl8830188348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8830388341%_))))
                                (if (gx#stx-pair? _%tl8830188348%_)
                                    (let ((_%e8830688351%_
                                           (gx#syntax-e _%tl8830188348%_)))
                                      (let ((_%hd8830588355%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8830688351%_)))
                                            (_%tl8830488358%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8830688351%_))))
                                        (if (gx#stx-pair? _%tl8830488358%_)
                                            (let ((_%e8830988361%_
                                                   (gx#syntax-e
                                                    _%tl8830488358%_)))
                                              (let ((_%hd8830888365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8830988361%_)))
                                                    (_%tl8830788368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8830988361%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8830788368%_)
                                                    (let ((_%e8831288371%_
                                                           (gx#syntax-e
                                                            _%tl8830788368%_)))
                                                      (let ((_%hd8831188375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8831288371%_)))
                    (_%tl8831088378%_
                     (let () (declare (not safe)) (##cdr _%e8831288371%_))))
                (if (gx#stx-pair? _%tl8831088378%_)
                    (let ((_%e8831588381%_ (gx#syntax-e _%tl8831088378%_)))
                      (let ((_%hd8831488385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8831588381%_)))
                            (_%tl8831388388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8831588381%_))))
                        (if (gx#stx-pair? _%tl8831388388%_)
                            (let ((_%e8831888391%_
                                   (gx#syntax-e _%tl8831388388%_)))
                              (let ((_%hd8831788395%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8831888391%_)))
                                    (_%tl8831688398%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8831888391%_))))
                                (if (gx#stx-null? _%tl8831688398%_)
                                    ((lambda (_%L88401%_
                                              _%L88403%_
                                              _%L88404%_
                                              _%L88405%_
                                              _%L88406%_
                                              _%L88407%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88405%_
                                               (cons _%L88403%_ '()))
                                         (cons _%L88406%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88407%_ '()))
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
                               (cons _%L88407%_
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
                                     (cons (cons (cons _%L88404%_
                                                       (cons _%L88403%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88407%_
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
                     (cons (cons _%L88401%_ '()) '()))))
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
                                     _%hd8831788395%_
                                     _%hd8831488385%_
                                     _%hd8831188375%_
                                     _%hd8830888365%_
                                     _%hd8830588355%_
                                     _%hd8830288345%_)
                                    (_%g8829088324%_ _%g8829188328%_))))
                            (_%g8829088324%_ _%g8829188328%_))))
                    (_%g8829088324%_ _%g8829188328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8829088324%_
                                                     _%g8829188328%_))))
                                            (_%g8829088324%_
                                             _%g8829188328%_))))
                                    (_%g8829088324%_ _%g8829188328%_))))
                            (_%g8829088324%_ _%g8829188328%_))))
                    (_%g8829088324%_ _%g8829188328%_)))))
        (_%g8828988435%_ _%$stx88286%_)))))

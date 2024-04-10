(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88851%_)
      (let* ((_%g8885588869%_
              (lambda (_%g8885688865%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8885688865%_)))
             (_%g8885488911%_
              (lambda (_%g8885688873%_)
                (if (gx#stx-pair? _%g8885688873%_)
                    (let ((_%e8885888876%_ (gx#syntax-e _%g8885688873%_)))
                      (let ((_%hd8885988880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8885888876%_)))
                            (_%tl8886088883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8885888876%_))))
                        (if (gx#stx-pair? _%tl8886088883%_)
                            (let ((_%e8886188886%_
                                   (gx#syntax-e _%tl8886088883%_)))
                              (let ((_%hd8886288890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8886188886%_)))
                                    (_%tl8886388893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8886188886%_))))
                                (if (gx#stx-null? _%tl8886388893%_)
                                    ((lambda (_%L88896%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88896%_ '()))))
                                     _%hd8886288890%_)
                                    (_%g8885588869%_ _%g8885688873%_))))
                            (_%g8885588869%_ _%g8885688873%_))))
                    (_%g8885588869%_ _%g8885688873%_)))))
        (_%g8885488911%_ _%$stx88851%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88915%_)
      (let* ((_%g8891988965%_
              (lambda (_%g8892088961%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8892088961%_)))
             (_%g8891889118%_
              (lambda (_%g8892088969%_)
                (if (gx#stx-pair? _%g8892088969%_)
                    (let ((_%e8893088972%_ (gx#syntax-e _%g8892088969%_)))
                      (let ((_%hd8893188976%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8893088972%_)))
                            (_%tl8893288979%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8893088972%_))))
                        (if (gx#stx-pair? _%tl8893288979%_)
                            (let ((_%e8893388982%_
                                   (gx#syntax-e _%tl8893288979%_)))
                              (let ((_%hd8893488986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8893388982%_)))
                                    (_%tl8893588989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8893388982%_))))
                                (if (gx#stx-pair? _%tl8893588989%_)
                                    (let ((_%e8893688992%_
                                           (gx#syntax-e _%tl8893588989%_)))
                                      (let ((_%hd8893788996%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8893688992%_)))
                                            (_%tl8893888999%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8893688992%_))))
                                        (if (gx#stx-pair? _%tl8893888999%_)
                                            (let ((_%e8893989002%_
                                                   (gx#syntax-e
                                                    _%tl8893888999%_)))
                                              (let ((_%hd8894089006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8893989002%_)))
                                                    (_%tl8894189009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8893989002%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8894189009%_)
                                                    (let ((_%e8894289012%_
                                                           (gx#syntax-e
                                                            _%tl8894189009%_)))
                                                      (let ((_%hd8894389016%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8894289012%_)))
                    (_%tl8894489019%_
                     (let () (declare (not safe)) (##cdr _%e8894289012%_))))
                (if (gx#stx-pair? _%tl8894489019%_)
                    (let ((_%e8894589022%_ (gx#syntax-e _%tl8894489019%_)))
                      (let ((_%hd8894689026%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8894589022%_)))
                            (_%tl8894789029%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8894589022%_))))
                        (if (gx#stx-pair? _%tl8894789029%_)
                            (let ((_%e8894889032%_
                                   (gx#syntax-e _%tl8894789029%_)))
                              (let ((_%hd8894989036%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8894889032%_)))
                                    (_%tl8895089039%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8894889032%_))))
                                (if (gx#stx-pair? _%tl8895089039%_)
                                    (let ((_%e8895189042%_
                                           (gx#syntax-e _%tl8895089039%_)))
                                      (let ((_%hd8895289046%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8895189042%_)))
                                            (_%tl8895389049%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8895189042%_))))
                                        (if (gx#stx-pair? _%tl8895389049%_)
                                            (let ((_%e8895489052%_
                                                   (gx#syntax-e
                                                    _%tl8895389049%_)))
                                              (let ((_%hd8895589056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8895489052%_)))
                                                    (_%tl8895689059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8895489052%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8895689059%_)
                                                    (let ((_%e8895789062%_
                                                           (gx#syntax-e
                                                            _%tl8895689059%_)))
                                                      (let ((_%hd8895889066%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8895789062%_)))
                    (_%tl8895989069%_
                     (let () (declare (not safe)) (##cdr _%e8895789062%_))))
                (if (gx#stx-null? _%tl8895989069%_)
                    ((lambda (_%L89072%_
                              _%L89074%_
                              _%L89075%_
                              _%L89076%_
                              _%L89077%_
                              _%L89078%_
                              _%L89079%_
                              _%L89080%_
                              _%L89081%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L89081%_
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
                         (cons _%L89074%_
                               (cons _%L89072%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L89080%_
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
                                                       (cons _%L89074%_
                                                             (cons _%L89072%_
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
                                                     (cons (cons _%L89079%_
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
                         (cons (cons _%L89078%_
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
                                                           (cons (cons _%L89078%_
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
                           (cons _%L89074%_
                                 (cons _%L89072%_
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
                         (cons (cons _%L89077%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L89077%_
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
                                     (cons (cons _%L89076%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L89077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L89076%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L89077%_
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
                                       (cons _%L89074%_
                                             (cons _%L89072%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L89077%_
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
                                     (cons (cons _%L89075%_
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
                                             (cons _%L89074%_
                                                   (cons _%L89072%_
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
                     _%hd8895889066%_
                     _%hd8895589056%_
                     _%hd8895289046%_
                     _%hd8894989036%_
                     _%hd8894689026%_
                     _%hd8894389016%_
                     _%hd8894089006%_
                     _%hd8893788996%_
                     _%hd8893488986%_)
                    (_%g8891988965%_ _%g8892088969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8891988965%_
                                                     _%g8892088969%_))))
                                            (_%g8891988965%_
                                             _%g8892088969%_))))
                                    (_%g8891988965%_ _%g8892088969%_))))
                            (_%g8891988965%_ _%g8892088969%_))))
                    (_%g8891988965%_ _%g8892088969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8891988965%_
                                                     _%g8892088969%_))))
                                            (_%g8891988965%_
                                             _%g8892088969%_))))
                                    (_%g8891988965%_ _%g8892088969%_))))
                            (_%g8891988965%_ _%g8892088969%_))))
                    (_%g8891988965%_ _%g8892088969%_)))))
        (_%g8891889118%_ _%$stx88915%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx89122%_)
      (let* ((_%g8912689148%_
              (lambda (_%g8912789144%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8912789144%_)))
             (_%g8912589217%_
              (lambda (_%g8912789152%_)
                (if (gx#stx-pair? _%g8912789152%_)
                    (let ((_%e8913189155%_ (gx#syntax-e _%g8912789152%_)))
                      (let ((_%hd8913289159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8913189155%_)))
                            (_%tl8913389162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8913189155%_))))
                        (if (gx#stx-pair? _%tl8913389162%_)
                            (let ((_%e8913489165%_
                                   (gx#syntax-e _%tl8913389162%_)))
                              (let ((_%hd8913589169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8913489165%_)))
                                    (_%tl8913689172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8913489165%_))))
                                (if (gx#stx-pair? _%tl8913689172%_)
                                    (let ((_%e8913789175%_
                                           (gx#syntax-e _%tl8913689172%_)))
                                      (let ((_%hd8913889179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8913789175%_)))
                                            (_%tl8913989182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8913789175%_))))
                                        (if (gx#stx-pair? _%tl8913989182%_)
                                            (let ((_%e8914089185%_
                                                   (gx#syntax-e
                                                    _%tl8913989182%_)))
                                              (let ((_%hd8914189189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8914089185%_)))
                                                    (_%tl8914289192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8914089185%_))))
                                                (if (gx#stx-null?
                                                     _%tl8914289192%_)
                                                    ((lambda (_%L89195%_
                                                              _%L89197%_
                                                              _%L89198%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L89198%_
                                                   (cons _%L89197%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L89197%_ (cons _%L89197%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L89195%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8914189189%_
                                                     _%hd8913889179%_
                                                     _%hd8913589169%_)
                                                    (_%g8912689148%_
                                                     _%g8912789152%_))))
                                            (_%g8912689148%_
                                             _%g8912789152%_))))
                                    (_%g8912689148%_ _%g8912789152%_))))
                            (_%g8912689148%_ _%g8912789152%_))))
                    (_%g8912689148%_ _%g8912789152%_)))))
        (_%g8912589217%_ _%$stx89122%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx89221%_)
      (let* ((_%g8922589259%_
              (lambda (_%g8922689255%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8922689255%_)))
             (_%g8922489370%_
              (lambda (_%g8922689263%_)
                (if (gx#stx-pair? _%g8922689263%_)
                    (let ((_%e8923389266%_ (gx#syntax-e _%g8922689263%_)))
                      (let ((_%hd8923489270%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8923389266%_)))
                            (_%tl8923589273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8923389266%_))))
                        (if (gx#stx-pair? _%tl8923589273%_)
                            (let ((_%e8923689276%_
                                   (gx#syntax-e _%tl8923589273%_)))
                              (let ((_%hd8923789280%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8923689276%_)))
                                    (_%tl8923889283%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8923689276%_))))
                                (if (gx#stx-pair? _%tl8923889283%_)
                                    (let ((_%e8923989286%_
                                           (gx#syntax-e _%tl8923889283%_)))
                                      (let ((_%hd8924089290%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8923989286%_)))
                                            (_%tl8924189293%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8923989286%_))))
                                        (if (gx#stx-pair? _%tl8924189293%_)
                                            (let ((_%e8924289296%_
                                                   (gx#syntax-e
                                                    _%tl8924189293%_)))
                                              (let ((_%hd8924389300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8924289296%_)))
                                                    (_%tl8924489303%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8924289296%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8924489303%_)
                                                    (let ((_%e8924589306%_
                                                           (gx#syntax-e
                                                            _%tl8924489303%_)))
                                                      (let ((_%hd8924689310%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8924589306%_)))
                    (_%tl8924789313%_
                     (let () (declare (not safe)) (##cdr _%e8924589306%_))))
                (if (gx#stx-pair? _%tl8924789313%_)
                    (let ((_%e8924889316%_ (gx#syntax-e _%tl8924789313%_)))
                      (let ((_%hd8924989320%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8924889316%_)))
                            (_%tl8925089323%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8924889316%_))))
                        (if (gx#stx-pair? _%tl8925089323%_)
                            (let ((_%e8925189326%_
                                   (gx#syntax-e _%tl8925089323%_)))
                              (let ((_%hd8925289330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8925189326%_)))
                                    (_%tl8925389333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8925189326%_))))
                                (if (gx#stx-null? _%tl8925389333%_)
                                    ((lambda (_%L89336%_
                                              _%L89338%_
                                              _%L89339%_
                                              _%L89340%_
                                              _%L89341%_
                                              _%L89342%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89340%_
                                               (cons _%L89338%_ '()))
                                         (cons _%L89341%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89342%_ '()))
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
                               (cons _%L89342%_
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
                                     (cons _%L89336%_ '()))
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
                                     (cons (cons (cons _%L89339%_
                                                       (cons _%L89338%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L89342%_
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
                                     _%hd8925289330%_
                                     _%hd8924989320%_
                                     _%hd8924689310%_
                                     _%hd8924389300%_
                                     _%hd8924089290%_
                                     _%hd8923789280%_)
                                    (_%g8922589259%_ _%g8922689263%_))))
                            (_%g8922589259%_ _%g8922689263%_))))
                    (_%g8922589259%_ _%g8922689263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8922589259%_
                                                     _%g8922689263%_))))
                                            (_%g8922589259%_
                                             _%g8922689263%_))))
                                    (_%g8922589259%_ _%g8922689263%_))))
                            (_%g8922589259%_ _%g8922689263%_))))
                    (_%g8922589259%_ _%g8922689263%_)))))
        (_%g8922489370%_ _%$stx89221%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx89374%_)
      (let* ((_%g8937889420%_
              (lambda (_%g8937989416%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8937989416%_)))
             (_%g8937789559%_
              (lambda (_%g8937989424%_)
                (if (gx#stx-pair? _%g8937989424%_)
                    (let ((_%e8938889427%_ (gx#syntax-e _%g8937989424%_)))
                      (let ((_%hd8938989431%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8938889427%_)))
                            (_%tl8939089434%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8938889427%_))))
                        (if (gx#stx-pair? _%tl8939089434%_)
                            (let ((_%e8939189437%_
                                   (gx#syntax-e _%tl8939089434%_)))
                              (let ((_%hd8939289441%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8939189437%_)))
                                    (_%tl8939389444%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8939189437%_))))
                                (if (gx#stx-pair? _%tl8939389444%_)
                                    (let ((_%e8939489447%_
                                           (gx#syntax-e _%tl8939389444%_)))
                                      (let ((_%hd8939589451%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8939489447%_)))
                                            (_%tl8939689454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8939489447%_))))
                                        (if (gx#stx-pair? _%tl8939689454%_)
                                            (let ((_%e8939789457%_
                                                   (gx#syntax-e
                                                    _%tl8939689454%_)))
                                              (let ((_%hd8939889461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8939789457%_)))
                                                    (_%tl8939989464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8939789457%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8939989464%_)
                                                    (let ((_%e8940089467%_
                                                           (gx#syntax-e
                                                            _%tl8939989464%_)))
                                                      (let ((_%hd8940189471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8940089467%_)))
                    (_%tl8940289474%_
                     (let () (declare (not safe)) (##cdr _%e8940089467%_))))
                (if (gx#stx-pair? _%tl8940289474%_)
                    (let ((_%e8940389477%_ (gx#syntax-e _%tl8940289474%_)))
                      (let ((_%hd8940489481%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8940389477%_)))
                            (_%tl8940589484%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8940389477%_))))
                        (if (gx#stx-pair? _%tl8940589484%_)
                            (let ((_%e8940689487%_
                                   (gx#syntax-e _%tl8940589484%_)))
                              (let ((_%hd8940789491%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8940689487%_)))
                                    (_%tl8940889494%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8940689487%_))))
                                (if (gx#stx-pair? _%tl8940889494%_)
                                    (let ((_%e8940989497%_
                                           (gx#syntax-e _%tl8940889494%_)))
                                      (let ((_%hd8941089501%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8940989497%_)))
                                            (_%tl8941189504%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8940989497%_))))
                                        (if (gx#stx-pair? _%tl8941189504%_)
                                            (let ((_%e8941289507%_
                                                   (gx#syntax-e
                                                    _%tl8941189504%_)))
                                              (let ((_%hd8941389511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8941289507%_)))
                                                    (_%tl8941489514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8941289507%_))))
                                                (if (gx#stx-null?
                                                     _%tl8941489514%_)
                                                    ((lambda (_%L89517%_
                                                              _%L89519%_
                                                              _%L89520%_
                                                              _%L89521%_
                                                              _%L89522%_
                                                              _%L89523%_
                                                              _%L89524%_
                                                              _%L89525%_)
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
                                                   (cons (cons _%L89523%_
                                                               (cons _%L89521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L89524%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L89525%_ '()))
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
                                               (cons _%L89525%_
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
                                                       (cons _%L89525%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L89521%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L89520%_ '()))))
               (cons (cons _%L89517%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L89521%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89525%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L89520%_ '()))))
                     (cons (cons _%L89519%_ '()) '()))))
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
                                                     (cons (cons (cons _%L89522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L89521%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L89525%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L89521%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L89525%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L89520%_ '()))))
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
                                                     _%hd8941389511%_
                                                     _%hd8941089501%_
                                                     _%hd8940789491%_
                                                     _%hd8940489481%_
                                                     _%hd8940189471%_
                                                     _%hd8939889461%_
                                                     _%hd8939589451%_
                                                     _%hd8939289441%_)
                                                    (_%g8937889420%_
                                                     _%g8937989424%_))))
                                            (_%g8937889420%_
                                             _%g8937989424%_))))
                                    (_%g8937889420%_ _%g8937989424%_))))
                            (_%g8937889420%_ _%g8937989424%_))))
                    (_%g8937889420%_ _%g8937989424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8937889420%_
                                                     _%g8937989424%_))))
                                            (_%g8937889420%_
                                             _%g8937989424%_))))
                                    (_%g8937889420%_ _%g8937989424%_))))
                            (_%g8937889420%_ _%g8937989424%_))))
                    (_%g8937889420%_ _%g8937989424%_)))))
        (_%g8937789559%_ _%$stx89374%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx89563%_)
      (let* ((_%g8956789613%_
              (lambda (_%g8956889609%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8956889609%_)))
             (_%g8956689766%_
              (lambda (_%g8956889617%_)
                (if (gx#stx-pair? _%g8956889617%_)
                    (let ((_%e8957889620%_ (gx#syntax-e _%g8956889617%_)))
                      (let ((_%hd8957989624%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8957889620%_)))
                            (_%tl8958089627%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8957889620%_))))
                        (if (gx#stx-pair? _%tl8958089627%_)
                            (let ((_%e8958189630%_
                                   (gx#syntax-e _%tl8958089627%_)))
                              (let ((_%hd8958289634%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8958189630%_)))
                                    (_%tl8958389637%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8958189630%_))))
                                (if (gx#stx-pair? _%tl8958389637%_)
                                    (let ((_%e8958489640%_
                                           (gx#syntax-e _%tl8958389637%_)))
                                      (let ((_%hd8958589644%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8958489640%_)))
                                            (_%tl8958689647%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8958489640%_))))
                                        (if (gx#stx-pair? _%tl8958689647%_)
                                            (let ((_%e8958789650%_
                                                   (gx#syntax-e
                                                    _%tl8958689647%_)))
                                              (let ((_%hd8958889654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8958789650%_)))
                                                    (_%tl8958989657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8958789650%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8958989657%_)
                                                    (let ((_%e8959089660%_
                                                           (gx#syntax-e
                                                            _%tl8958989657%_)))
                                                      (let ((_%hd8959189664%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8959089660%_)))
                    (_%tl8959289667%_
                     (let () (declare (not safe)) (##cdr _%e8959089660%_))))
                (if (gx#stx-pair? _%tl8959289667%_)
                    (let ((_%e8959389670%_ (gx#syntax-e _%tl8959289667%_)))
                      (let ((_%hd8959489674%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8959389670%_)))
                            (_%tl8959589677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8959389670%_))))
                        (if (gx#stx-pair? _%tl8959589677%_)
                            (let ((_%e8959689680%_
                                   (gx#syntax-e _%tl8959589677%_)))
                              (let ((_%hd8959789684%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8959689680%_)))
                                    (_%tl8959889687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8959689680%_))))
                                (if (gx#stx-pair? _%tl8959889687%_)
                                    (let ((_%e8959989690%_
                                           (gx#syntax-e _%tl8959889687%_)))
                                      (let ((_%hd8960089694%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8959989690%_)))
                                            (_%tl8960189697%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8959989690%_))))
                                        (if (gx#stx-pair? _%tl8960189697%_)
                                            (let ((_%e8960289700%_
                                                   (gx#syntax-e
                                                    _%tl8960189697%_)))
                                              (let ((_%hd8960389704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8960289700%_)))
                                                    (_%tl8960489707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8960289700%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8960489707%_)
                                                    (let ((_%e8960589710%_
                                                           (gx#syntax-e
                                                            _%tl8960489707%_)))
                                                      (let ((_%hd8960689714%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8960589710%_)))
                    (_%tl8960789717%_
                     (let () (declare (not safe)) (##cdr _%e8960589710%_))))
                (if (gx#stx-null? _%tl8960789717%_)
                    ((lambda (_%L89720%_
                              _%L89722%_
                              _%L89723%_
                              _%L89724%_
                              _%L89725%_
                              _%L89726%_
                              _%L89727%_
                              _%L89728%_
                              _%L89729%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L89727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L89725%_ '()))
                         (cons _%L89728%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L89729%_ '()))
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
                                                       (cons _%L89729%_
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
                                                               (cons _%L89729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L89725%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L89729%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L89724%_
                                                     (cons _%L89723%_ '()))
                                               '()))))
                       (cons (cons _%L89720%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L89729%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L89725%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L89729%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L89724%_
                                                           (cons _%L89723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L89722%_ '()) '()))))
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
                     (cons (cons (cons _%L89726%_
                                       (cons _%L89725%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L89729%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L89725%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L89729%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L89724%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L89729%_
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
                     _%hd8960689714%_
                     _%hd8960389704%_
                     _%hd8960089694%_
                     _%hd8959789684%_
                     _%hd8959489674%_
                     _%hd8959189664%_
                     _%hd8958889654%_
                     _%hd8958589644%_
                     _%hd8958289634%_)
                    (_%g8956789613%_ _%g8956889617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8956789613%_
                                                     _%g8956889617%_))))
                                            (_%g8956789613%_
                                             _%g8956889617%_))))
                                    (_%g8956789613%_ _%g8956889617%_))))
                            (_%g8956789613%_ _%g8956889617%_))))
                    (_%g8956789613%_ _%g8956889617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8956789613%_
                                                     _%g8956889617%_))))
                                            (_%g8956789613%_
                                             _%g8956889617%_))))
                                    (_%g8956789613%_ _%g8956889617%_))))
                            (_%g8956789613%_ _%g8956889617%_))))
                    (_%g8956789613%_ _%g8956889617%_)))))
        (_%g8956689766%_ _%$stx89563%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx89770%_)
      (let* ((_%g8977489808%_
              (lambda (_%g8977589804%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8977589804%_)))
             (_%g8977389919%_
              (lambda (_%g8977589812%_)
                (if (gx#stx-pair? _%g8977589812%_)
                    (let ((_%e8978289815%_ (gx#syntax-e _%g8977589812%_)))
                      (let ((_%hd8978389819%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8978289815%_)))
                            (_%tl8978489822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8978289815%_))))
                        (if (gx#stx-pair? _%tl8978489822%_)
                            (let ((_%e8978589825%_
                                   (gx#syntax-e _%tl8978489822%_)))
                              (let ((_%hd8978689829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8978589825%_)))
                                    (_%tl8978789832%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8978589825%_))))
                                (if (gx#stx-pair? _%tl8978789832%_)
                                    (let ((_%e8978889835%_
                                           (gx#syntax-e _%tl8978789832%_)))
                                      (let ((_%hd8978989839%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8978889835%_)))
                                            (_%tl8979089842%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8978889835%_))))
                                        (if (gx#stx-pair? _%tl8979089842%_)
                                            (let ((_%e8979189845%_
                                                   (gx#syntax-e
                                                    _%tl8979089842%_)))
                                              (let ((_%hd8979289849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8979189845%_)))
                                                    (_%tl8979389852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8979189845%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8979389852%_)
                                                    (let ((_%e8979489855%_
                                                           (gx#syntax-e
                                                            _%tl8979389852%_)))
                                                      (let ((_%hd8979589859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8979489855%_)))
                    (_%tl8979689862%_
                     (let () (declare (not safe)) (##cdr _%e8979489855%_))))
                (if (gx#stx-pair? _%tl8979689862%_)
                    (let ((_%e8979789865%_ (gx#syntax-e _%tl8979689862%_)))
                      (let ((_%hd8979889869%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8979789865%_)))
                            (_%tl8979989872%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8979789865%_))))
                        (if (gx#stx-pair? _%tl8979989872%_)
                            (let ((_%e8980089875%_
                                   (gx#syntax-e _%tl8979989872%_)))
                              (let ((_%hd8980189879%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8980089875%_)))
                                    (_%tl8980289882%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8980089875%_))))
                                (if (gx#stx-null? _%tl8980289882%_)
                                    ((lambda (_%L89885%_
                                              _%L89887%_
                                              _%L89888%_
                                              _%L89889%_
                                              _%L89890%_
                                              _%L89891%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89889%_
                                               (cons _%L89887%_ '()))
                                         (cons _%L89890%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89891%_ '()))
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
                               (cons _%L89891%_
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
                                     (cons (cons (cons _%L89888%_
                                                       (cons _%L89887%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89891%_
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
                     (cons (cons _%L89885%_ '()) '()))))
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
                                     _%hd8980189879%_
                                     _%hd8979889869%_
                                     _%hd8979589859%_
                                     _%hd8979289849%_
                                     _%hd8978989839%_
                                     _%hd8978689829%_)
                                    (_%g8977489808%_ _%g8977589812%_))))
                            (_%g8977489808%_ _%g8977589812%_))))
                    (_%g8977489808%_ _%g8977589812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8977489808%_
                                                     _%g8977589812%_))))
                                            (_%g8977489808%_
                                             _%g8977589812%_))))
                                    (_%g8977489808%_ _%g8977589812%_))))
                            (_%g8977489808%_ _%g8977589812%_))))
                    (_%g8977489808%_ _%g8977589812%_)))))
        (_%g8977389919%_ _%$stx89770%_)))))

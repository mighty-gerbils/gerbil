(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx92216%_)
      (let* ((_%g9222092234%_
              (lambda (_%g9222192230%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9222192230%_)))
             (_%g9221992276%_
              (lambda (_%g9222192238%_)
                (if (gx#stx-pair? _%g9222192238%_)
                    (let ((_%e9222392241%_ (gx#syntax-e _%g9222192238%_)))
                      (let ((_%hd9222492245%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9222392241%_)))
                            (_%tl9222592248%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9222392241%_))))
                        (if (gx#stx-pair? _%tl9222592248%_)
                            (let ((_%e9222692251%_
                                   (gx#syntax-e _%tl9222592248%_)))
                              (let ((_%hd9222792255%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9222692251%_)))
                                    (_%tl9222892258%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9222692251%_))))
                                (if (gx#stx-null? _%tl9222892258%_)
                                    ((lambda (_%L92261%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L92261%_ '()))))
                                     _%hd9222792255%_)
                                    (_%g9222092234%_ _%g9222192238%_))))
                            (_%g9222092234%_ _%g9222192238%_))))
                    (_%g9222092234%_ _%g9222192238%_)))))
        (_%g9221992276%_ _%$stx92216%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx92280%_)
      (let* ((_%g9228492330%_
              (lambda (_%g9228592326%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9228592326%_)))
             (_%g9228392483%_
              (lambda (_%g9228592334%_)
                (if (gx#stx-pair? _%g9228592334%_)
                    (let ((_%e9229592337%_ (gx#syntax-e _%g9228592334%_)))
                      (let ((_%hd9229692341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9229592337%_)))
                            (_%tl9229792344%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9229592337%_))))
                        (if (gx#stx-pair? _%tl9229792344%_)
                            (let ((_%e9229892347%_
                                   (gx#syntax-e _%tl9229792344%_)))
                              (let ((_%hd9229992351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9229892347%_)))
                                    (_%tl9230092354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9229892347%_))))
                                (if (gx#stx-pair? _%tl9230092354%_)
                                    (let ((_%e9230192357%_
                                           (gx#syntax-e _%tl9230092354%_)))
                                      (let ((_%hd9230292361%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9230192357%_)))
                                            (_%tl9230392364%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9230192357%_))))
                                        (if (gx#stx-pair? _%tl9230392364%_)
                                            (let ((_%e9230492367%_
                                                   (gx#syntax-e
                                                    _%tl9230392364%_)))
                                              (let ((_%hd9230592371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9230492367%_)))
                                                    (_%tl9230692374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9230492367%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9230692374%_)
                                                    (let ((_%e9230792377%_
                                                           (gx#syntax-e
                                                            _%tl9230692374%_)))
                                                      (let ((_%hd9230892381%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9230792377%_)))
                    (_%tl9230992384%_
                     (let () (declare (not safe)) (##cdr _%e9230792377%_))))
                (if (gx#stx-pair? _%tl9230992384%_)
                    (let ((_%e9231092387%_ (gx#syntax-e _%tl9230992384%_)))
                      (let ((_%hd9231192391%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9231092387%_)))
                            (_%tl9231292394%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9231092387%_))))
                        (if (gx#stx-pair? _%tl9231292394%_)
                            (let ((_%e9231392397%_
                                   (gx#syntax-e _%tl9231292394%_)))
                              (let ((_%hd9231492401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9231392397%_)))
                                    (_%tl9231592404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9231392397%_))))
                                (if (gx#stx-pair? _%tl9231592404%_)
                                    (let ((_%e9231692407%_
                                           (gx#syntax-e _%tl9231592404%_)))
                                      (let ((_%hd9231792411%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9231692407%_)))
                                            (_%tl9231892414%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9231692407%_))))
                                        (if (gx#stx-pair? _%tl9231892414%_)
                                            (let ((_%e9231992417%_
                                                   (gx#syntax-e
                                                    _%tl9231892414%_)))
                                              (let ((_%hd9232092421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9231992417%_)))
                                                    (_%tl9232192424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9231992417%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9232192424%_)
                                                    (let ((_%e9232292427%_
                                                           (gx#syntax-e
                                                            _%tl9232192424%_)))
                                                      (let ((_%hd9232392431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9232292427%_)))
                    (_%tl9232492434%_
                     (let () (declare (not safe)) (##cdr _%e9232292427%_))))
                (if (gx#stx-null? _%tl9232492434%_)
                    ((lambda (_%L92437%_
                              _%L92439%_
                              _%L92440%_
                              _%L92441%_
                              _%L92442%_
                              _%L92443%_
                              _%L92444%_
                              _%L92445%_
                              _%L92446%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L92446%_
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
                         (cons _%L92439%_
                               (cons _%L92437%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L92445%_
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
                                                       (cons _%L92439%_
                                                             (cons _%L92437%_
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
                                                     (cons (cons _%L92444%_
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
                         (cons (cons _%L92443%_
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
                                                           (cons (cons _%L92443%_
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
                           (cons _%L92439%_
                                 (cons _%L92437%_
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
                         (cons (cons _%L92442%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L92442%_
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
                                     (cons (cons _%L92441%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L92442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L92441%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L92442%_
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
                                       (cons _%L92439%_
                                             (cons _%L92437%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L92442%_
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
                                     (cons (cons _%L92440%_
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
                                             (cons _%L92439%_
                                                   (cons _%L92437%_
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
                     _%hd9232392431%_
                     _%hd9232092421%_
                     _%hd9231792411%_
                     _%hd9231492401%_
                     _%hd9231192391%_
                     _%hd9230892381%_
                     _%hd9230592371%_
                     _%hd9230292361%_
                     _%hd9229992351%_)
                    (_%g9228492330%_ _%g9228592334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9228492330%_
                                                     _%g9228592334%_))))
                                            (_%g9228492330%_
                                             _%g9228592334%_))))
                                    (_%g9228492330%_ _%g9228592334%_))))
                            (_%g9228492330%_ _%g9228592334%_))))
                    (_%g9228492330%_ _%g9228592334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9228492330%_
                                                     _%g9228592334%_))))
                                            (_%g9228492330%_
                                             _%g9228592334%_))))
                                    (_%g9228492330%_ _%g9228592334%_))))
                            (_%g9228492330%_ _%g9228592334%_))))
                    (_%g9228492330%_ _%g9228592334%_)))))
        (_%g9228392483%_ _%$stx92280%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx92487%_)
      (let* ((_%g9249192513%_
              (lambda (_%g9249292509%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9249292509%_)))
             (_%g9249092582%_
              (lambda (_%g9249292517%_)
                (if (gx#stx-pair? _%g9249292517%_)
                    (let ((_%e9249692520%_ (gx#syntax-e _%g9249292517%_)))
                      (let ((_%hd9249792524%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9249692520%_)))
                            (_%tl9249892527%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9249692520%_))))
                        (if (gx#stx-pair? _%tl9249892527%_)
                            (let ((_%e9249992530%_
                                   (gx#syntax-e _%tl9249892527%_)))
                              (let ((_%hd9250092534%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9249992530%_)))
                                    (_%tl9250192537%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9249992530%_))))
                                (if (gx#stx-pair? _%tl9250192537%_)
                                    (let ((_%e9250292540%_
                                           (gx#syntax-e _%tl9250192537%_)))
                                      (let ((_%hd9250392544%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9250292540%_)))
                                            (_%tl9250492547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9250292540%_))))
                                        (if (gx#stx-pair? _%tl9250492547%_)
                                            (let ((_%e9250592550%_
                                                   (gx#syntax-e
                                                    _%tl9250492547%_)))
                                              (let ((_%hd9250692554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9250592550%_)))
                                                    (_%tl9250792557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9250592550%_))))
                                                (if (gx#stx-null?
                                                     _%tl9250792557%_)
                                                    ((lambda (_%L92560%_
                                                              _%L92562%_
                                                              _%L92563%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L92563%_
                                                   (cons _%L92562%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L92562%_ (cons _%L92562%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L92560%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9250692554%_
                                                     _%hd9250392544%_
                                                     _%hd9250092534%_)
                                                    (_%g9249192513%_
                                                     _%g9249292517%_))))
                                            (_%g9249192513%_
                                             _%g9249292517%_))))
                                    (_%g9249192513%_ _%g9249292517%_))))
                            (_%g9249192513%_ _%g9249292517%_))))
                    (_%g9249192513%_ _%g9249292517%_)))))
        (_%g9249092582%_ _%$stx92487%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx92586%_)
      (let* ((_%g9259092624%_
              (lambda (_%g9259192620%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9259192620%_)))
             (_%g9258992735%_
              (lambda (_%g9259192628%_)
                (if (gx#stx-pair? _%g9259192628%_)
                    (let ((_%e9259892631%_ (gx#syntax-e _%g9259192628%_)))
                      (let ((_%hd9259992635%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9259892631%_)))
                            (_%tl9260092638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9259892631%_))))
                        (if (gx#stx-pair? _%tl9260092638%_)
                            (let ((_%e9260192641%_
                                   (gx#syntax-e _%tl9260092638%_)))
                              (let ((_%hd9260292645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9260192641%_)))
                                    (_%tl9260392648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9260192641%_))))
                                (if (gx#stx-pair? _%tl9260392648%_)
                                    (let ((_%e9260492651%_
                                           (gx#syntax-e _%tl9260392648%_)))
                                      (let ((_%hd9260592655%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9260492651%_)))
                                            (_%tl9260692658%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9260492651%_))))
                                        (if (gx#stx-pair? _%tl9260692658%_)
                                            (let ((_%e9260792661%_
                                                   (gx#syntax-e
                                                    _%tl9260692658%_)))
                                              (let ((_%hd9260892665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9260792661%_)))
                                                    (_%tl9260992668%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9260792661%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9260992668%_)
                                                    (let ((_%e9261092671%_
                                                           (gx#syntax-e
                                                            _%tl9260992668%_)))
                                                      (let ((_%hd9261192675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9261092671%_)))
                    (_%tl9261292678%_
                     (let () (declare (not safe)) (##cdr _%e9261092671%_))))
                (if (gx#stx-pair? _%tl9261292678%_)
                    (let ((_%e9261392681%_ (gx#syntax-e _%tl9261292678%_)))
                      (let ((_%hd9261492685%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9261392681%_)))
                            (_%tl9261592688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9261392681%_))))
                        (if (gx#stx-pair? _%tl9261592688%_)
                            (let ((_%e9261692691%_
                                   (gx#syntax-e _%tl9261592688%_)))
                              (let ((_%hd9261792695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9261692691%_)))
                                    (_%tl9261892698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9261692691%_))))
                                (if (gx#stx-null? _%tl9261892698%_)
                                    ((lambda (_%L92701%_
                                              _%L92703%_
                                              _%L92704%_
                                              _%L92705%_
                                              _%L92706%_
                                              _%L92707%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92705%_
                                               (cons _%L92703%_ '()))
                                         (cons _%L92706%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92707%_ '()))
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
                               (cons _%L92707%_
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
                                     (cons _%L92701%_ '()))
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
                                     (cons (cons (cons _%L92704%_
                                                       (cons _%L92703%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L92707%_
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
                                     _%hd9261792695%_
                                     _%hd9261492685%_
                                     _%hd9261192675%_
                                     _%hd9260892665%_
                                     _%hd9260592655%_
                                     _%hd9260292645%_)
                                    (_%g9259092624%_ _%g9259192628%_))))
                            (_%g9259092624%_ _%g9259192628%_))))
                    (_%g9259092624%_ _%g9259192628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9259092624%_
                                                     _%g9259192628%_))))
                                            (_%g9259092624%_
                                             _%g9259192628%_))))
                                    (_%g9259092624%_ _%g9259192628%_))))
                            (_%g9259092624%_ _%g9259192628%_))))
                    (_%g9259092624%_ _%g9259192628%_)))))
        (_%g9258992735%_ _%$stx92586%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx92739%_)
      (let* ((_%g9274392785%_
              (lambda (_%g9274492781%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9274492781%_)))
             (_%g9274292924%_
              (lambda (_%g9274492789%_)
                (if (gx#stx-pair? _%g9274492789%_)
                    (let ((_%e9275392792%_ (gx#syntax-e _%g9274492789%_)))
                      (let ((_%hd9275492796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9275392792%_)))
                            (_%tl9275592799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9275392792%_))))
                        (if (gx#stx-pair? _%tl9275592799%_)
                            (let ((_%e9275692802%_
                                   (gx#syntax-e _%tl9275592799%_)))
                              (let ((_%hd9275792806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9275692802%_)))
                                    (_%tl9275892809%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9275692802%_))))
                                (if (gx#stx-pair? _%tl9275892809%_)
                                    (let ((_%e9275992812%_
                                           (gx#syntax-e _%tl9275892809%_)))
                                      (let ((_%hd9276092816%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9275992812%_)))
                                            (_%tl9276192819%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9275992812%_))))
                                        (if (gx#stx-pair? _%tl9276192819%_)
                                            (let ((_%e9276292822%_
                                                   (gx#syntax-e
                                                    _%tl9276192819%_)))
                                              (let ((_%hd9276392826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9276292822%_)))
                                                    (_%tl9276492829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9276292822%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9276492829%_)
                                                    (let ((_%e9276592832%_
                                                           (gx#syntax-e
                                                            _%tl9276492829%_)))
                                                      (let ((_%hd9276692836%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9276592832%_)))
                    (_%tl9276792839%_
                     (let () (declare (not safe)) (##cdr _%e9276592832%_))))
                (if (gx#stx-pair? _%tl9276792839%_)
                    (let ((_%e9276892842%_ (gx#syntax-e _%tl9276792839%_)))
                      (let ((_%hd9276992846%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9276892842%_)))
                            (_%tl9277092849%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9276892842%_))))
                        (if (gx#stx-pair? _%tl9277092849%_)
                            (let ((_%e9277192852%_
                                   (gx#syntax-e _%tl9277092849%_)))
                              (let ((_%hd9277292856%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9277192852%_)))
                                    (_%tl9277392859%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9277192852%_))))
                                (if (gx#stx-pair? _%tl9277392859%_)
                                    (let ((_%e9277492862%_
                                           (gx#syntax-e _%tl9277392859%_)))
                                      (let ((_%hd9277592866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9277492862%_)))
                                            (_%tl9277692869%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9277492862%_))))
                                        (if (gx#stx-pair? _%tl9277692869%_)
                                            (let ((_%e9277792872%_
                                                   (gx#syntax-e
                                                    _%tl9277692869%_)))
                                              (let ((_%hd9277892876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9277792872%_)))
                                                    (_%tl9277992879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9277792872%_))))
                                                (if (gx#stx-null?
                                                     _%tl9277992879%_)
                                                    ((lambda (_%L92882%_
                                                              _%L92884%_
                                                              _%L92885%_
                                                              _%L92886%_
                                                              _%L92887%_
                                                              _%L92888%_
                                                              _%L92889%_
                                                              _%L92890%_)
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
                                                   (cons (cons _%L92888%_
                                                               (cons _%L92886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92889%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92890%_ '()))
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
                                               (cons _%L92890%_
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
                                                       (cons _%L92890%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92886%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92885%_ '()))))
               (cons (cons _%L92882%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92886%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92890%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92885%_ '()))))
                     (cons (cons _%L92884%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92886%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92890%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92886%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92890%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92885%_ '()))))
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
                                                     _%hd9277892876%_
                                                     _%hd9277592866%_
                                                     _%hd9277292856%_
                                                     _%hd9276992846%_
                                                     _%hd9276692836%_
                                                     _%hd9276392826%_
                                                     _%hd9276092816%_
                                                     _%hd9275792806%_)
                                                    (_%g9274392785%_
                                                     _%g9274492789%_))))
                                            (_%g9274392785%_
                                             _%g9274492789%_))))
                                    (_%g9274392785%_ _%g9274492789%_))))
                            (_%g9274392785%_ _%g9274492789%_))))
                    (_%g9274392785%_ _%g9274492789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9274392785%_
                                                     _%g9274492789%_))))
                                            (_%g9274392785%_
                                             _%g9274492789%_))))
                                    (_%g9274392785%_ _%g9274492789%_))))
                            (_%g9274392785%_ _%g9274492789%_))))
                    (_%g9274392785%_ _%g9274492789%_)))))
        (_%g9274292924%_ _%$stx92739%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92928%_)
      (let* ((_%g9293292978%_
              (lambda (_%g9293392974%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9293392974%_)))
             (_%g9293193131%_
              (lambda (_%g9293392982%_)
                (if (gx#stx-pair? _%g9293392982%_)
                    (let ((_%e9294392985%_ (gx#syntax-e _%g9293392982%_)))
                      (let ((_%hd9294492989%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9294392985%_)))
                            (_%tl9294592992%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9294392985%_))))
                        (if (gx#stx-pair? _%tl9294592992%_)
                            (let ((_%e9294692995%_
                                   (gx#syntax-e _%tl9294592992%_)))
                              (let ((_%hd9294792999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9294692995%_)))
                                    (_%tl9294893002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9294692995%_))))
                                (if (gx#stx-pair? _%tl9294893002%_)
                                    (let ((_%e9294993005%_
                                           (gx#syntax-e _%tl9294893002%_)))
                                      (let ((_%hd9295093009%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9294993005%_)))
                                            (_%tl9295193012%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9294993005%_))))
                                        (if (gx#stx-pair? _%tl9295193012%_)
                                            (let ((_%e9295293015%_
                                                   (gx#syntax-e
                                                    _%tl9295193012%_)))
                                              (let ((_%hd9295393019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9295293015%_)))
                                                    (_%tl9295493022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9295293015%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9295493022%_)
                                                    (let ((_%e9295593025%_
                                                           (gx#syntax-e
                                                            _%tl9295493022%_)))
                                                      (let ((_%hd9295693029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9295593025%_)))
                    (_%tl9295793032%_
                     (let () (declare (not safe)) (##cdr _%e9295593025%_))))
                (if (gx#stx-pair? _%tl9295793032%_)
                    (let ((_%e9295893035%_ (gx#syntax-e _%tl9295793032%_)))
                      (let ((_%hd9295993039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9295893035%_)))
                            (_%tl9296093042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9295893035%_))))
                        (if (gx#stx-pair? _%tl9296093042%_)
                            (let ((_%e9296193045%_
                                   (gx#syntax-e _%tl9296093042%_)))
                              (let ((_%hd9296293049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9296193045%_)))
                                    (_%tl9296393052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9296193045%_))))
                                (if (gx#stx-pair? _%tl9296393052%_)
                                    (let ((_%e9296493055%_
                                           (gx#syntax-e _%tl9296393052%_)))
                                      (let ((_%hd9296593059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9296493055%_)))
                                            (_%tl9296693062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9296493055%_))))
                                        (if (gx#stx-pair? _%tl9296693062%_)
                                            (let ((_%e9296793065%_
                                                   (gx#syntax-e
                                                    _%tl9296693062%_)))
                                              (let ((_%hd9296893069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9296793065%_)))
                                                    (_%tl9296993072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9296793065%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9296993072%_)
                                                    (let ((_%e9297093075%_
                                                           (gx#syntax-e
                                                            _%tl9296993072%_)))
                                                      (let ((_%hd9297193079%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9297093075%_)))
                    (_%tl9297293082%_
                     (let () (declare (not safe)) (##cdr _%e9297093075%_))))
                (if (gx#stx-null? _%tl9297293082%_)
                    ((lambda (_%L93085%_
                              _%L93087%_
                              _%L93088%_
                              _%L93089%_
                              _%L93090%_
                              _%L93091%_
                              _%L93092%_
                              _%L93093%_
                              _%L93094%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L93092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93090%_ '()))
                         (cons _%L93093%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L93094%_ '()))
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
                                                       (cons _%L93094%_
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
                                                               (cons _%L93094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L93090%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L93094%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L93089%_
                                                     (cons _%L93088%_ '()))
                                               '()))))
                       (cons (cons _%L93085%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L93094%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L93090%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L93094%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L93089%_
                                                           (cons _%L93088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L93087%_ '()) '()))))
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
                     (cons (cons (cons _%L93091%_
                                       (cons _%L93090%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L93094%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L93090%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L93094%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L93089%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L93094%_
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
                     _%hd9297193079%_
                     _%hd9296893069%_
                     _%hd9296593059%_
                     _%hd9296293049%_
                     _%hd9295993039%_
                     _%hd9295693029%_
                     _%hd9295393019%_
                     _%hd9295093009%_
                     _%hd9294792999%_)
                    (_%g9293292978%_ _%g9293392982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9293292978%_
                                                     _%g9293392982%_))))
                                            (_%g9293292978%_
                                             _%g9293392982%_))))
                                    (_%g9293292978%_ _%g9293392982%_))))
                            (_%g9293292978%_ _%g9293392982%_))))
                    (_%g9293292978%_ _%g9293392982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9293292978%_
                                                     _%g9293392982%_))))
                                            (_%g9293292978%_
                                             _%g9293392982%_))))
                                    (_%g9293292978%_ _%g9293392982%_))))
                            (_%g9293292978%_ _%g9293392982%_))))
                    (_%g9293292978%_ _%g9293392982%_)))))
        (_%g9293193131%_ _%$stx92928%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx93135%_)
      (let* ((_%g9313993173%_
              (lambda (_%g9314093169%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9314093169%_)))
             (_%g9313893284%_
              (lambda (_%g9314093177%_)
                (if (gx#stx-pair? _%g9314093177%_)
                    (let ((_%e9314793180%_ (gx#syntax-e _%g9314093177%_)))
                      (let ((_%hd9314893184%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9314793180%_)))
                            (_%tl9314993187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9314793180%_))))
                        (if (gx#stx-pair? _%tl9314993187%_)
                            (let ((_%e9315093190%_
                                   (gx#syntax-e _%tl9314993187%_)))
                              (let ((_%hd9315193194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9315093190%_)))
                                    (_%tl9315293197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9315093190%_))))
                                (if (gx#stx-pair? _%tl9315293197%_)
                                    (let ((_%e9315393200%_
                                           (gx#syntax-e _%tl9315293197%_)))
                                      (let ((_%hd9315493204%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9315393200%_)))
                                            (_%tl9315593207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9315393200%_))))
                                        (if (gx#stx-pair? _%tl9315593207%_)
                                            (let ((_%e9315693210%_
                                                   (gx#syntax-e
                                                    _%tl9315593207%_)))
                                              (let ((_%hd9315793214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9315693210%_)))
                                                    (_%tl9315893217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9315693210%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9315893217%_)
                                                    (let ((_%e9315993220%_
                                                           (gx#syntax-e
                                                            _%tl9315893217%_)))
                                                      (let ((_%hd9316093224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9315993220%_)))
                    (_%tl9316193227%_
                     (let () (declare (not safe)) (##cdr _%e9315993220%_))))
                (if (gx#stx-pair? _%tl9316193227%_)
                    (let ((_%e9316293230%_ (gx#syntax-e _%tl9316193227%_)))
                      (let ((_%hd9316393234%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9316293230%_)))
                            (_%tl9316493237%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9316293230%_))))
                        (if (gx#stx-pair? _%tl9316493237%_)
                            (let ((_%e9316593240%_
                                   (gx#syntax-e _%tl9316493237%_)))
                              (let ((_%hd9316693244%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9316593240%_)))
                                    (_%tl9316793247%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9316593240%_))))
                                (if (gx#stx-null? _%tl9316793247%_)
                                    ((lambda (_%L93250%_
                                              _%L93252%_
                                              _%L93253%_
                                              _%L93254%_
                                              _%L93255%_
                                              _%L93256%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L93254%_
                                               (cons _%L93252%_ '()))
                                         (cons _%L93255%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L93256%_ '()))
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
                               (cons _%L93256%_
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
                                     (cons (cons (cons _%L93253%_
                                                       (cons _%L93252%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L93256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L93256%_
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
                     (cons (cons _%L93250%_ '()) '()))))
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
                                     _%hd9316693244%_
                                     _%hd9316393234%_
                                     _%hd9316093224%_
                                     _%hd9315793214%_
                                     _%hd9315493204%_
                                     _%hd9315193194%_)
                                    (_%g9313993173%_ _%g9314093177%_))))
                            (_%g9313993173%_ _%g9314093177%_))))
                    (_%g9313993173%_ _%g9314093177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9313993173%_
                                                     _%g9314093177%_))))
                                            (_%g9313993173%_
                                             _%g9314093177%_))))
                                    (_%g9313993173%_ _%g9314093177%_))))
                            (_%g9313993173%_ _%g9314093177%_))))
                    (_%g9313993173%_ _%g9314093177%_)))))
        (_%g9313893284%_ _%$stx93135%_)))))

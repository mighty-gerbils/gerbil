(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88167%_)
      (let* ((_%g8817188185%_
              (lambda (_%g8817288181%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8817288181%_)))
             (_%g8817088227%_
              (lambda (_%g8817288189%_)
                (if (gx#stx-pair? _%g8817288189%_)
                    (let ((_%e8817488192%_ (gx#syntax-e _%g8817288189%_)))
                      (let ((_%hd8817588196%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8817488192%_)))
                            (_%tl8817688199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8817488192%_))))
                        (if (gx#stx-pair? _%tl8817688199%_)
                            (let ((_%e8817788202%_
                                   (gx#syntax-e _%tl8817688199%_)))
                              (let ((_%hd8817888206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8817788202%_)))
                                    (_%tl8817988209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8817788202%_))))
                                (if (gx#stx-null? _%tl8817988209%_)
                                    ((lambda (_%L88212%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88212%_ '()))))
                                     _%hd8817888206%_)
                                    (_%g8817188185%_ _%g8817288189%_))))
                            (_%g8817188185%_ _%g8817288189%_))))
                    (_%g8817188185%_ _%g8817288189%_)))))
        (_%g8817088227%_ _%$stx88167%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88231%_)
      (let* ((_%g8823588281%_
              (lambda (_%g8823688277%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8823688277%_)))
             (_%g8823488434%_
              (lambda (_%g8823688285%_)
                (if (gx#stx-pair? _%g8823688285%_)
                    (let ((_%e8824688288%_ (gx#syntax-e _%g8823688285%_)))
                      (let ((_%hd8824788292%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8824688288%_)))
                            (_%tl8824888295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8824688288%_))))
                        (if (gx#stx-pair? _%tl8824888295%_)
                            (let ((_%e8824988298%_
                                   (gx#syntax-e _%tl8824888295%_)))
                              (let ((_%hd8825088302%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8824988298%_)))
                                    (_%tl8825188305%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8824988298%_))))
                                (if (gx#stx-pair? _%tl8825188305%_)
                                    (let ((_%e8825288308%_
                                           (gx#syntax-e _%tl8825188305%_)))
                                      (let ((_%hd8825388312%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8825288308%_)))
                                            (_%tl8825488315%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8825288308%_))))
                                        (if (gx#stx-pair? _%tl8825488315%_)
                                            (let ((_%e8825588318%_
                                                   (gx#syntax-e
                                                    _%tl8825488315%_)))
                                              (let ((_%hd8825688322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8825588318%_)))
                                                    (_%tl8825788325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8825588318%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8825788325%_)
                                                    (let ((_%e8825888328%_
                                                           (gx#syntax-e
                                                            _%tl8825788325%_)))
                                                      (let ((_%hd8825988332%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8825888328%_)))
                    (_%tl8826088335%_
                     (let () (declare (not safe)) (##cdr _%e8825888328%_))))
                (if (gx#stx-pair? _%tl8826088335%_)
                    (let ((_%e8826188338%_ (gx#syntax-e _%tl8826088335%_)))
                      (let ((_%hd8826288342%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8826188338%_)))
                            (_%tl8826388345%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8826188338%_))))
                        (if (gx#stx-pair? _%tl8826388345%_)
                            (let ((_%e8826488348%_
                                   (gx#syntax-e _%tl8826388345%_)))
                              (let ((_%hd8826588352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8826488348%_)))
                                    (_%tl8826688355%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8826488348%_))))
                                (if (gx#stx-pair? _%tl8826688355%_)
                                    (let ((_%e8826788358%_
                                           (gx#syntax-e _%tl8826688355%_)))
                                      (let ((_%hd8826888362%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8826788358%_)))
                                            (_%tl8826988365%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8826788358%_))))
                                        (if (gx#stx-pair? _%tl8826988365%_)
                                            (let ((_%e8827088368%_
                                                   (gx#syntax-e
                                                    _%tl8826988365%_)))
                                              (let ((_%hd8827188372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8827088368%_)))
                                                    (_%tl8827288375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8827088368%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8827288375%_)
                                                    (let ((_%e8827388378%_
                                                           (gx#syntax-e
                                                            _%tl8827288375%_)))
                                                      (let ((_%hd8827488382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8827388378%_)))
                    (_%tl8827588385%_
                     (let () (declare (not safe)) (##cdr _%e8827388378%_))))
                (if (gx#stx-null? _%tl8827588385%_)
                    ((lambda (_%L88388%_
                              _%L88390%_
                              _%L88391%_
                              _%L88392%_
                              _%L88393%_
                              _%L88394%_
                              _%L88395%_
                              _%L88396%_
                              _%L88397%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L88397%_
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
                         (cons _%L88390%_
                               (cons _%L88388%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L88396%_
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
                                                       (cons _%L88390%_
                                                             (cons _%L88388%_
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
                                                     (cons (cons _%L88395%_
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
                         (cons (cons _%L88394%_
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
                                                           (cons (cons _%L88394%_
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
                           (cons _%L88390%_
                                 (cons _%L88388%_
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
                         (cons (cons _%L88393%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L88393%_
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
                                     (cons (cons _%L88392%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L88393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L88392%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L88393%_
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
                                       (cons _%L88390%_
                                             (cons _%L88388%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L88393%_
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
                                     (cons (cons _%L88391%_
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
                                             (cons _%L88390%_
                                                   (cons _%L88388%_
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
                     _%hd8827488382%_
                     _%hd8827188372%_
                     _%hd8826888362%_
                     _%hd8826588352%_
                     _%hd8826288342%_
                     _%hd8825988332%_
                     _%hd8825688322%_
                     _%hd8825388312%_
                     _%hd8825088302%_)
                    (_%g8823588281%_ _%g8823688285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8823588281%_
                                                     _%g8823688285%_))))
                                            (_%g8823588281%_
                                             _%g8823688285%_))))
                                    (_%g8823588281%_ _%g8823688285%_))))
                            (_%g8823588281%_ _%g8823688285%_))))
                    (_%g8823588281%_ _%g8823688285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8823588281%_
                                                     _%g8823688285%_))))
                                            (_%g8823588281%_
                                             _%g8823688285%_))))
                                    (_%g8823588281%_ _%g8823688285%_))))
                            (_%g8823588281%_ _%g8823688285%_))))
                    (_%g8823588281%_ _%g8823688285%_)))))
        (_%g8823488434%_ _%$stx88231%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx88438%_)
      (let* ((_%g8844288464%_
              (lambda (_%g8844388460%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8844388460%_)))
             (_%g8844188533%_
              (lambda (_%g8844388468%_)
                (if (gx#stx-pair? _%g8844388468%_)
                    (let ((_%e8844788471%_ (gx#syntax-e _%g8844388468%_)))
                      (let ((_%hd8844888475%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8844788471%_)))
                            (_%tl8844988478%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8844788471%_))))
                        (if (gx#stx-pair? _%tl8844988478%_)
                            (let ((_%e8845088481%_
                                   (gx#syntax-e _%tl8844988478%_)))
                              (let ((_%hd8845188485%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8845088481%_)))
                                    (_%tl8845288488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8845088481%_))))
                                (if (gx#stx-pair? _%tl8845288488%_)
                                    (let ((_%e8845388491%_
                                           (gx#syntax-e _%tl8845288488%_)))
                                      (let ((_%hd8845488495%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8845388491%_)))
                                            (_%tl8845588498%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8845388491%_))))
                                        (if (gx#stx-pair? _%tl8845588498%_)
                                            (let ((_%e8845688501%_
                                                   (gx#syntax-e
                                                    _%tl8845588498%_)))
                                              (let ((_%hd8845788505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8845688501%_)))
                                                    (_%tl8845888508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8845688501%_))))
                                                (if (gx#stx-null?
                                                     _%tl8845888508%_)
                                                    ((lambda (_%L88511%_
                                                              _%L88513%_
                                                              _%L88514%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88514%_
                                                   (cons _%L88513%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88513%_ (cons _%L88513%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88511%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8845788505%_
                                                     _%hd8845488495%_
                                                     _%hd8845188485%_)
                                                    (_%g8844288464%_
                                                     _%g8844388468%_))))
                                            (_%g8844288464%_
                                             _%g8844388468%_))))
                                    (_%g8844288464%_ _%g8844388468%_))))
                            (_%g8844288464%_ _%g8844388468%_))))
                    (_%g8844288464%_ _%g8844388468%_)))))
        (_%g8844188533%_ _%$stx88438%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88537%_)
      (let* ((_%g8854188575%_
              (lambda (_%g8854288571%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8854288571%_)))
             (_%g8854088686%_
              (lambda (_%g8854288579%_)
                (if (gx#stx-pair? _%g8854288579%_)
                    (let ((_%e8854988582%_ (gx#syntax-e _%g8854288579%_)))
                      (let ((_%hd8855088586%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8854988582%_)))
                            (_%tl8855188589%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8854988582%_))))
                        (if (gx#stx-pair? _%tl8855188589%_)
                            (let ((_%e8855288592%_
                                   (gx#syntax-e _%tl8855188589%_)))
                              (let ((_%hd8855388596%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8855288592%_)))
                                    (_%tl8855488599%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8855288592%_))))
                                (if (gx#stx-pair? _%tl8855488599%_)
                                    (let ((_%e8855588602%_
                                           (gx#syntax-e _%tl8855488599%_)))
                                      (let ((_%hd8855688606%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8855588602%_)))
                                            (_%tl8855788609%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8855588602%_))))
                                        (if (gx#stx-pair? _%tl8855788609%_)
                                            (let ((_%e8855888612%_
                                                   (gx#syntax-e
                                                    _%tl8855788609%_)))
                                              (let ((_%hd8855988616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8855888612%_)))
                                                    (_%tl8856088619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8855888612%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8856088619%_)
                                                    (let ((_%e8856188622%_
                                                           (gx#syntax-e
                                                            _%tl8856088619%_)))
                                                      (let ((_%hd8856288626%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8856188622%_)))
                    (_%tl8856388629%_
                     (let () (declare (not safe)) (##cdr _%e8856188622%_))))
                (if (gx#stx-pair? _%tl8856388629%_)
                    (let ((_%e8856488632%_ (gx#syntax-e _%tl8856388629%_)))
                      (let ((_%hd8856588636%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8856488632%_)))
                            (_%tl8856688639%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8856488632%_))))
                        (if (gx#stx-pair? _%tl8856688639%_)
                            (let ((_%e8856788642%_
                                   (gx#syntax-e _%tl8856688639%_)))
                              (let ((_%hd8856888646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8856788642%_)))
                                    (_%tl8856988649%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8856788642%_))))
                                (if (gx#stx-null? _%tl8856988649%_)
                                    ((lambda (_%L88652%_
                                              _%L88654%_
                                              _%L88655%_
                                              _%L88656%_
                                              _%L88657%_
                                              _%L88658%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88656%_
                                               (cons _%L88654%_ '()))
                                         (cons _%L88657%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88658%_ '()))
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
                               (cons _%L88658%_
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
                                     (cons _%L88652%_ '()))
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
                                     (cons (cons (cons _%L88655%_
                                                       (cons _%L88654%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88658%_
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
                                     _%hd8856888646%_
                                     _%hd8856588636%_
                                     _%hd8856288626%_
                                     _%hd8855988616%_
                                     _%hd8855688606%_
                                     _%hd8855388596%_)
                                    (_%g8854188575%_ _%g8854288579%_))))
                            (_%g8854188575%_ _%g8854288579%_))))
                    (_%g8854188575%_ _%g8854288579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8854188575%_
                                                     _%g8854288579%_))))
                                            (_%g8854188575%_
                                             _%g8854288579%_))))
                                    (_%g8854188575%_ _%g8854288579%_))))
                            (_%g8854188575%_ _%g8854288579%_))))
                    (_%g8854188575%_ _%g8854288579%_)))))
        (_%g8854088686%_ _%$stx88537%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88690%_)
      (let* ((_%g8869488736%_
              (lambda (_%g8869588732%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8869588732%_)))
             (_%g8869388875%_
              (lambda (_%g8869588740%_)
                (if (gx#stx-pair? _%g8869588740%_)
                    (let ((_%e8870488743%_ (gx#syntax-e _%g8869588740%_)))
                      (let ((_%hd8870588747%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8870488743%_)))
                            (_%tl8870688750%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8870488743%_))))
                        (if (gx#stx-pair? _%tl8870688750%_)
                            (let ((_%e8870788753%_
                                   (gx#syntax-e _%tl8870688750%_)))
                              (let ((_%hd8870888757%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8870788753%_)))
                                    (_%tl8870988760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8870788753%_))))
                                (if (gx#stx-pair? _%tl8870988760%_)
                                    (let ((_%e8871088763%_
                                           (gx#syntax-e _%tl8870988760%_)))
                                      (let ((_%hd8871188767%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8871088763%_)))
                                            (_%tl8871288770%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8871088763%_))))
                                        (if (gx#stx-pair? _%tl8871288770%_)
                                            (let ((_%e8871388773%_
                                                   (gx#syntax-e
                                                    _%tl8871288770%_)))
                                              (let ((_%hd8871488777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8871388773%_)))
                                                    (_%tl8871588780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8871388773%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8871588780%_)
                                                    (let ((_%e8871688783%_
                                                           (gx#syntax-e
                                                            _%tl8871588780%_)))
                                                      (let ((_%hd8871788787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8871688783%_)))
                    (_%tl8871888790%_
                     (let () (declare (not safe)) (##cdr _%e8871688783%_))))
                (if (gx#stx-pair? _%tl8871888790%_)
                    (let ((_%e8871988793%_ (gx#syntax-e _%tl8871888790%_)))
                      (let ((_%hd8872088797%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8871988793%_)))
                            (_%tl8872188800%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8871988793%_))))
                        (if (gx#stx-pair? _%tl8872188800%_)
                            (let ((_%e8872288803%_
                                   (gx#syntax-e _%tl8872188800%_)))
                              (let ((_%hd8872388807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8872288803%_)))
                                    (_%tl8872488810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8872288803%_))))
                                (if (gx#stx-pair? _%tl8872488810%_)
                                    (let ((_%e8872588813%_
                                           (gx#syntax-e _%tl8872488810%_)))
                                      (let ((_%hd8872688817%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8872588813%_)))
                                            (_%tl8872788820%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8872588813%_))))
                                        (if (gx#stx-pair? _%tl8872788820%_)
                                            (let ((_%e8872888823%_
                                                   (gx#syntax-e
                                                    _%tl8872788820%_)))
                                              (let ((_%hd8872988827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8872888823%_)))
                                                    (_%tl8873088830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8872888823%_))))
                                                (if (gx#stx-null?
                                                     _%tl8873088830%_)
                                                    ((lambda (_%L88833%_
                                                              _%L88835%_
                                                              _%L88836%_
                                                              _%L88837%_
                                                              _%L88838%_
                                                              _%L88839%_
                                                              _%L88840%_
                                                              _%L88841%_)
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
                                                   (cons (cons _%L88839%_
                                                               (cons _%L88837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88840%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88841%_ '()))
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
                                               (cons _%L88841%_
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
                                                       (cons _%L88841%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88837%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88836%_ '()))))
               (cons (cons _%L88833%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88837%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88841%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88836%_ '()))))
                     (cons (cons _%L88835%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88837%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88841%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88837%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88841%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88836%_ '()))))
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
                                                     _%hd8872988827%_
                                                     _%hd8872688817%_
                                                     _%hd8872388807%_
                                                     _%hd8872088797%_
                                                     _%hd8871788787%_
                                                     _%hd8871488777%_
                                                     _%hd8871188767%_
                                                     _%hd8870888757%_)
                                                    (_%g8869488736%_
                                                     _%g8869588740%_))))
                                            (_%g8869488736%_
                                             _%g8869588740%_))))
                                    (_%g8869488736%_ _%g8869588740%_))))
                            (_%g8869488736%_ _%g8869588740%_))))
                    (_%g8869488736%_ _%g8869588740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8869488736%_
                                                     _%g8869588740%_))))
                                            (_%g8869488736%_
                                             _%g8869588740%_))))
                                    (_%g8869488736%_ _%g8869588740%_))))
                            (_%g8869488736%_ _%g8869588740%_))))
                    (_%g8869488736%_ _%g8869588740%_)))))
        (_%g8869388875%_ _%$stx88690%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88879%_)
      (let* ((_%g8888388929%_
              (lambda (_%g8888488925%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8888488925%_)))
             (_%g8888289082%_
              (lambda (_%g8888488933%_)
                (if (gx#stx-pair? _%g8888488933%_)
                    (let ((_%e8889488936%_ (gx#syntax-e _%g8888488933%_)))
                      (let ((_%hd8889588940%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8889488936%_)))
                            (_%tl8889688943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8889488936%_))))
                        (if (gx#stx-pair? _%tl8889688943%_)
                            (let ((_%e8889788946%_
                                   (gx#syntax-e _%tl8889688943%_)))
                              (let ((_%hd8889888950%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8889788946%_)))
                                    (_%tl8889988953%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8889788946%_))))
                                (if (gx#stx-pair? _%tl8889988953%_)
                                    (let ((_%e8890088956%_
                                           (gx#syntax-e _%tl8889988953%_)))
                                      (let ((_%hd8890188960%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8890088956%_)))
                                            (_%tl8890288963%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8890088956%_))))
                                        (if (gx#stx-pair? _%tl8890288963%_)
                                            (let ((_%e8890388966%_
                                                   (gx#syntax-e
                                                    _%tl8890288963%_)))
                                              (let ((_%hd8890488970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8890388966%_)))
                                                    (_%tl8890588973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8890388966%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8890588973%_)
                                                    (let ((_%e8890688976%_
                                                           (gx#syntax-e
                                                            _%tl8890588973%_)))
                                                      (let ((_%hd8890788980%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8890688976%_)))
                    (_%tl8890888983%_
                     (let () (declare (not safe)) (##cdr _%e8890688976%_))))
                (if (gx#stx-pair? _%tl8890888983%_)
                    (let ((_%e8890988986%_ (gx#syntax-e _%tl8890888983%_)))
                      (let ((_%hd8891088990%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8890988986%_)))
                            (_%tl8891188993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8890988986%_))))
                        (if (gx#stx-pair? _%tl8891188993%_)
                            (let ((_%e8891288996%_
                                   (gx#syntax-e _%tl8891188993%_)))
                              (let ((_%hd8891389000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8891288996%_)))
                                    (_%tl8891489003%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8891288996%_))))
                                (if (gx#stx-pair? _%tl8891489003%_)
                                    (let ((_%e8891589006%_
                                           (gx#syntax-e _%tl8891489003%_)))
                                      (let ((_%hd8891689010%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8891589006%_)))
                                            (_%tl8891789013%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8891589006%_))))
                                        (if (gx#stx-pair? _%tl8891789013%_)
                                            (let ((_%e8891889016%_
                                                   (gx#syntax-e
                                                    _%tl8891789013%_)))
                                              (let ((_%hd8891989020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8891889016%_)))
                                                    (_%tl8892089023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8891889016%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8892089023%_)
                                                    (let ((_%e8892189026%_
                                                           (gx#syntax-e
                                                            _%tl8892089023%_)))
                                                      (let ((_%hd8892289030%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8892189026%_)))
                    (_%tl8892389033%_
                     (let () (declare (not safe)) (##cdr _%e8892189026%_))))
                (if (gx#stx-null? _%tl8892389033%_)
                    ((lambda (_%L89036%_
                              _%L89038%_
                              _%L89039%_
                              _%L89040%_
                              _%L89041%_
                              _%L89042%_
                              _%L89043%_
                              _%L89044%_
                              _%L89045%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L89043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L89041%_ '()))
                         (cons _%L89044%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L89045%_ '()))
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
                                                       (cons _%L89045%_
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
                                                               (cons _%L89045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L89041%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L89045%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L89040%_
                                                     (cons _%L89039%_ '()))
                                               '()))))
                       (cons (cons _%L89036%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L89045%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L89041%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L89045%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L89040%_
                                                           (cons _%L89039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L89038%_ '()) '()))))
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
                     (cons (cons (cons _%L89042%_
                                       (cons _%L89041%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L89045%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L89041%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L89045%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L89040%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L89045%_
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
                     _%hd8892289030%_
                     _%hd8891989020%_
                     _%hd8891689010%_
                     _%hd8891389000%_
                     _%hd8891088990%_
                     _%hd8890788980%_
                     _%hd8890488970%_
                     _%hd8890188960%_
                     _%hd8889888950%_)
                    (_%g8888388929%_ _%g8888488933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8888388929%_
                                                     _%g8888488933%_))))
                                            (_%g8888388929%_
                                             _%g8888488933%_))))
                                    (_%g8888388929%_ _%g8888488933%_))))
                            (_%g8888388929%_ _%g8888488933%_))))
                    (_%g8888388929%_ _%g8888488933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8888388929%_
                                                     _%g8888488933%_))))
                                            (_%g8888388929%_
                                             _%g8888488933%_))))
                                    (_%g8888388929%_ _%g8888488933%_))))
                            (_%g8888388929%_ _%g8888488933%_))))
                    (_%g8888388929%_ _%g8888488933%_)))))
        (_%g8888289082%_ _%$stx88879%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx89086%_)
      (let* ((_%g8909089124%_
              (lambda (_%g8909189120%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8909189120%_)))
             (_%g8908989235%_
              (lambda (_%g8909189128%_)
                (if (gx#stx-pair? _%g8909189128%_)
                    (let ((_%e8909889131%_ (gx#syntax-e _%g8909189128%_)))
                      (let ((_%hd8909989135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8909889131%_)))
                            (_%tl8910089138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8909889131%_))))
                        (if (gx#stx-pair? _%tl8910089138%_)
                            (let ((_%e8910189141%_
                                   (gx#syntax-e _%tl8910089138%_)))
                              (let ((_%hd8910289145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8910189141%_)))
                                    (_%tl8910389148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8910189141%_))))
                                (if (gx#stx-pair? _%tl8910389148%_)
                                    (let ((_%e8910489151%_
                                           (gx#syntax-e _%tl8910389148%_)))
                                      (let ((_%hd8910589155%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8910489151%_)))
                                            (_%tl8910689158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8910489151%_))))
                                        (if (gx#stx-pair? _%tl8910689158%_)
                                            (let ((_%e8910789161%_
                                                   (gx#syntax-e
                                                    _%tl8910689158%_)))
                                              (let ((_%hd8910889165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8910789161%_)))
                                                    (_%tl8910989168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8910789161%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8910989168%_)
                                                    (let ((_%e8911089171%_
                                                           (gx#syntax-e
                                                            _%tl8910989168%_)))
                                                      (let ((_%hd8911189175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8911089171%_)))
                    (_%tl8911289178%_
                     (let () (declare (not safe)) (##cdr _%e8911089171%_))))
                (if (gx#stx-pair? _%tl8911289178%_)
                    (let ((_%e8911389181%_ (gx#syntax-e _%tl8911289178%_)))
                      (let ((_%hd8911489185%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8911389181%_)))
                            (_%tl8911589188%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8911389181%_))))
                        (if (gx#stx-pair? _%tl8911589188%_)
                            (let ((_%e8911689191%_
                                   (gx#syntax-e _%tl8911589188%_)))
                              (let ((_%hd8911789195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8911689191%_)))
                                    (_%tl8911889198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8911689191%_))))
                                (if (gx#stx-null? _%tl8911889198%_)
                                    ((lambda (_%L89201%_
                                              _%L89203%_
                                              _%L89204%_
                                              _%L89205%_
                                              _%L89206%_
                                              _%L89207%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89205%_
                                               (cons _%L89203%_ '()))
                                         (cons _%L89206%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89207%_ '()))
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
                               (cons _%L89207%_
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
                                     (cons (cons (cons _%L89204%_
                                                       (cons _%L89203%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89207%_
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
                     (cons (cons _%L89201%_ '()) '()))))
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
                                     _%hd8911789195%_
                                     _%hd8911489185%_
                                     _%hd8911189175%_
                                     _%hd8910889165%_
                                     _%hd8910589155%_
                                     _%hd8910289145%_)
                                    (_%g8909089124%_ _%g8909189128%_))))
                            (_%g8909089124%_ _%g8909189128%_))))
                    (_%g8909089124%_ _%g8909189128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8909089124%_
                                                     _%g8909189128%_))))
                                            (_%g8909089124%_
                                             _%g8909189128%_))))
                                    (_%g8909089124%_ _%g8909189128%_))))
                            (_%g8909089124%_ _%g8909189128%_))))
                    (_%g8909089124%_ _%g8909189128%_)))))
        (_%g8908989235%_ _%$stx89086%_)))))

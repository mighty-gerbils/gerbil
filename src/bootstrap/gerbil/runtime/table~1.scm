(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx92210%_)
      (let* ((_%g9221492228%_
              (lambda (_%g9221592224%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9221592224%_)))
             (_%g9221392270%_
              (lambda (_%g9221592232%_)
                (if (gx#stx-pair? _%g9221592232%_)
                    (let ((_%e9221792235%_ (gx#syntax-e _%g9221592232%_)))
                      (let ((_%hd9221892239%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9221792235%_)))
                            (_%tl9221992242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9221792235%_))))
                        (if (gx#stx-pair? _%tl9221992242%_)
                            (let ((_%e9222092245%_
                                   (gx#syntax-e _%tl9221992242%_)))
                              (let ((_%hd9222192249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9222092245%_)))
                                    (_%tl9222292252%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9222092245%_))))
                                (if (gx#stx-null? _%tl9222292252%_)
                                    ((lambda (_%L92255%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L92255%_ '()))))
                                     _%hd9222192249%_)
                                    (_%g9221492228%_ _%g9221592232%_))))
                            (_%g9221492228%_ _%g9221592232%_))))
                    (_%g9221492228%_ _%g9221592232%_)))))
        (_%g9221392270%_ _%$stx92210%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx92274%_)
      (let* ((_%g9227892324%_
              (lambda (_%g9227992320%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9227992320%_)))
             (_%g9227792477%_
              (lambda (_%g9227992328%_)
                (if (gx#stx-pair? _%g9227992328%_)
                    (let ((_%e9228992331%_ (gx#syntax-e _%g9227992328%_)))
                      (let ((_%hd9229092335%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9228992331%_)))
                            (_%tl9229192338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9228992331%_))))
                        (if (gx#stx-pair? _%tl9229192338%_)
                            (let ((_%e9229292341%_
                                   (gx#syntax-e _%tl9229192338%_)))
                              (let ((_%hd9229392345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9229292341%_)))
                                    (_%tl9229492348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9229292341%_))))
                                (if (gx#stx-pair? _%tl9229492348%_)
                                    (let ((_%e9229592351%_
                                           (gx#syntax-e _%tl9229492348%_)))
                                      (let ((_%hd9229692355%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9229592351%_)))
                                            (_%tl9229792358%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9229592351%_))))
                                        (if (gx#stx-pair? _%tl9229792358%_)
                                            (let ((_%e9229892361%_
                                                   (gx#syntax-e
                                                    _%tl9229792358%_)))
                                              (let ((_%hd9229992365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9229892361%_)))
                                                    (_%tl9230092368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9229892361%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9230092368%_)
                                                    (let ((_%e9230192371%_
                                                           (gx#syntax-e
                                                            _%tl9230092368%_)))
                                                      (let ((_%hd9230292375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9230192371%_)))
                    (_%tl9230392378%_
                     (let () (declare (not safe)) (##cdr _%e9230192371%_))))
                (if (gx#stx-pair? _%tl9230392378%_)
                    (let ((_%e9230492381%_ (gx#syntax-e _%tl9230392378%_)))
                      (let ((_%hd9230592385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9230492381%_)))
                            (_%tl9230692388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9230492381%_))))
                        (if (gx#stx-pair? _%tl9230692388%_)
                            (let ((_%e9230792391%_
                                   (gx#syntax-e _%tl9230692388%_)))
                              (let ((_%hd9230892395%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9230792391%_)))
                                    (_%tl9230992398%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9230792391%_))))
                                (if (gx#stx-pair? _%tl9230992398%_)
                                    (let ((_%e9231092401%_
                                           (gx#syntax-e _%tl9230992398%_)))
                                      (let ((_%hd9231192405%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9231092401%_)))
                                            (_%tl9231292408%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9231092401%_))))
                                        (if (gx#stx-pair? _%tl9231292408%_)
                                            (let ((_%e9231392411%_
                                                   (gx#syntax-e
                                                    _%tl9231292408%_)))
                                              (let ((_%hd9231492415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9231392411%_)))
                                                    (_%tl9231592418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9231392411%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9231592418%_)
                                                    (let ((_%e9231692421%_
                                                           (gx#syntax-e
                                                            _%tl9231592418%_)))
                                                      (let ((_%hd9231792425%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9231692421%_)))
                    (_%tl9231892428%_
                     (let () (declare (not safe)) (##cdr _%e9231692421%_))))
                (if (gx#stx-null? _%tl9231892428%_)
                    ((lambda (_%L92431%_
                              _%L92433%_
                              _%L92434%_
                              _%L92435%_
                              _%L92436%_
                              _%L92437%_
                              _%L92438%_
                              _%L92439%_
                              _%L92440%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L92440%_
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
                         (cons _%L92433%_
                               (cons _%L92431%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L92439%_
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
                                                       (cons _%L92433%_
                                                             (cons _%L92431%_
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
                                                     (cons (cons _%L92438%_
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
                         (cons (cons _%L92437%_
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
                                                           (cons (cons _%L92437%_
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
                           (cons _%L92433%_
                                 (cons _%L92431%_
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
                         (cons (cons _%L92436%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L92436%_
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
                                     (cons (cons _%L92435%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L92436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L92435%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L92436%_
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
                                       (cons _%L92433%_
                                             (cons _%L92431%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L92436%_
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
                                     (cons (cons _%L92434%_
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
                                             (cons _%L92433%_
                                                   (cons _%L92431%_
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
                     _%hd9231792425%_
                     _%hd9231492415%_
                     _%hd9231192405%_
                     _%hd9230892395%_
                     _%hd9230592385%_
                     _%hd9230292375%_
                     _%hd9229992365%_
                     _%hd9229692355%_
                     _%hd9229392345%_)
                    (_%g9227892324%_ _%g9227992328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9227892324%_
                                                     _%g9227992328%_))))
                                            (_%g9227892324%_
                                             _%g9227992328%_))))
                                    (_%g9227892324%_ _%g9227992328%_))))
                            (_%g9227892324%_ _%g9227992328%_))))
                    (_%g9227892324%_ _%g9227992328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9227892324%_
                                                     _%g9227992328%_))))
                                            (_%g9227892324%_
                                             _%g9227992328%_))))
                                    (_%g9227892324%_ _%g9227992328%_))))
                            (_%g9227892324%_ _%g9227992328%_))))
                    (_%g9227892324%_ _%g9227992328%_)))))
        (_%g9227792477%_ _%$stx92274%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx92481%_)
      (let* ((_%g9248592507%_
              (lambda (_%g9248692503%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9248692503%_)))
             (_%g9248492576%_
              (lambda (_%g9248692511%_)
                (if (gx#stx-pair? _%g9248692511%_)
                    (let ((_%e9249092514%_ (gx#syntax-e _%g9248692511%_)))
                      (let ((_%hd9249192518%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9249092514%_)))
                            (_%tl9249292521%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9249092514%_))))
                        (if (gx#stx-pair? _%tl9249292521%_)
                            (let ((_%e9249392524%_
                                   (gx#syntax-e _%tl9249292521%_)))
                              (let ((_%hd9249492528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9249392524%_)))
                                    (_%tl9249592531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9249392524%_))))
                                (if (gx#stx-pair? _%tl9249592531%_)
                                    (let ((_%e9249692534%_
                                           (gx#syntax-e _%tl9249592531%_)))
                                      (let ((_%hd9249792538%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9249692534%_)))
                                            (_%tl9249892541%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9249692534%_))))
                                        (if (gx#stx-pair? _%tl9249892541%_)
                                            (let ((_%e9249992544%_
                                                   (gx#syntax-e
                                                    _%tl9249892541%_)))
                                              (let ((_%hd9250092548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9249992544%_)))
                                                    (_%tl9250192551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9249992544%_))))
                                                (if (gx#stx-null?
                                                     _%tl9250192551%_)
                                                    ((lambda (_%L92554%_
                                                              _%L92556%_
                                                              _%L92557%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L92557%_
                                                   (cons _%L92556%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L92556%_ (cons _%L92556%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L92554%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9250092548%_
                                                     _%hd9249792538%_
                                                     _%hd9249492528%_)
                                                    (_%g9248592507%_
                                                     _%g9248692511%_))))
                                            (_%g9248592507%_
                                             _%g9248692511%_))))
                                    (_%g9248592507%_ _%g9248692511%_))))
                            (_%g9248592507%_ _%g9248692511%_))))
                    (_%g9248592507%_ _%g9248692511%_)))))
        (_%g9248492576%_ _%$stx92481%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx92580%_)
      (let* ((_%g9258492618%_
              (lambda (_%g9258592614%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9258592614%_)))
             (_%g9258392729%_
              (lambda (_%g9258592622%_)
                (if (gx#stx-pair? _%g9258592622%_)
                    (let ((_%e9259292625%_ (gx#syntax-e _%g9258592622%_)))
                      (let ((_%hd9259392629%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9259292625%_)))
                            (_%tl9259492632%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9259292625%_))))
                        (if (gx#stx-pair? _%tl9259492632%_)
                            (let ((_%e9259592635%_
                                   (gx#syntax-e _%tl9259492632%_)))
                              (let ((_%hd9259692639%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9259592635%_)))
                                    (_%tl9259792642%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9259592635%_))))
                                (if (gx#stx-pair? _%tl9259792642%_)
                                    (let ((_%e9259892645%_
                                           (gx#syntax-e _%tl9259792642%_)))
                                      (let ((_%hd9259992649%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9259892645%_)))
                                            (_%tl9260092652%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9259892645%_))))
                                        (if (gx#stx-pair? _%tl9260092652%_)
                                            (let ((_%e9260192655%_
                                                   (gx#syntax-e
                                                    _%tl9260092652%_)))
                                              (let ((_%hd9260292659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9260192655%_)))
                                                    (_%tl9260392662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9260192655%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9260392662%_)
                                                    (let ((_%e9260492665%_
                                                           (gx#syntax-e
                                                            _%tl9260392662%_)))
                                                      (let ((_%hd9260592669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9260492665%_)))
                    (_%tl9260692672%_
                     (let () (declare (not safe)) (##cdr _%e9260492665%_))))
                (if (gx#stx-pair? _%tl9260692672%_)
                    (let ((_%e9260792675%_ (gx#syntax-e _%tl9260692672%_)))
                      (let ((_%hd9260892679%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9260792675%_)))
                            (_%tl9260992682%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9260792675%_))))
                        (if (gx#stx-pair? _%tl9260992682%_)
                            (let ((_%e9261092685%_
                                   (gx#syntax-e _%tl9260992682%_)))
                              (let ((_%hd9261192689%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9261092685%_)))
                                    (_%tl9261292692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9261092685%_))))
                                (if (gx#stx-null? _%tl9261292692%_)
                                    ((lambda (_%L92695%_
                                              _%L92697%_
                                              _%L92698%_
                                              _%L92699%_
                                              _%L92700%_
                                              _%L92701%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92699%_
                                               (cons _%L92697%_ '()))
                                         (cons _%L92700%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92701%_ '()))
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
                               (cons _%L92701%_
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
                                     (cons _%L92695%_ '()))
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
                                     (cons (cons (cons _%L92698%_
                                                       (cons _%L92697%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L92701%_
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
                                     _%hd9261192689%_
                                     _%hd9260892679%_
                                     _%hd9260592669%_
                                     _%hd9260292659%_
                                     _%hd9259992649%_
                                     _%hd9259692639%_)
                                    (_%g9258492618%_ _%g9258592622%_))))
                            (_%g9258492618%_ _%g9258592622%_))))
                    (_%g9258492618%_ _%g9258592622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9258492618%_
                                                     _%g9258592622%_))))
                                            (_%g9258492618%_
                                             _%g9258592622%_))))
                                    (_%g9258492618%_ _%g9258592622%_))))
                            (_%g9258492618%_ _%g9258592622%_))))
                    (_%g9258492618%_ _%g9258592622%_)))))
        (_%g9258392729%_ _%$stx92580%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx92733%_)
      (let* ((_%g9273792779%_
              (lambda (_%g9273892775%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9273892775%_)))
             (_%g9273692918%_
              (lambda (_%g9273892783%_)
                (if (gx#stx-pair? _%g9273892783%_)
                    (let ((_%e9274792786%_ (gx#syntax-e _%g9273892783%_)))
                      (let ((_%hd9274892790%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9274792786%_)))
                            (_%tl9274992793%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9274792786%_))))
                        (if (gx#stx-pair? _%tl9274992793%_)
                            (let ((_%e9275092796%_
                                   (gx#syntax-e _%tl9274992793%_)))
                              (let ((_%hd9275192800%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9275092796%_)))
                                    (_%tl9275292803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9275092796%_))))
                                (if (gx#stx-pair? _%tl9275292803%_)
                                    (let ((_%e9275392806%_
                                           (gx#syntax-e _%tl9275292803%_)))
                                      (let ((_%hd9275492810%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9275392806%_)))
                                            (_%tl9275592813%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9275392806%_))))
                                        (if (gx#stx-pair? _%tl9275592813%_)
                                            (let ((_%e9275692816%_
                                                   (gx#syntax-e
                                                    _%tl9275592813%_)))
                                              (let ((_%hd9275792820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9275692816%_)))
                                                    (_%tl9275892823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9275692816%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9275892823%_)
                                                    (let ((_%e9275992826%_
                                                           (gx#syntax-e
                                                            _%tl9275892823%_)))
                                                      (let ((_%hd9276092830%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9275992826%_)))
                    (_%tl9276192833%_
                     (let () (declare (not safe)) (##cdr _%e9275992826%_))))
                (if (gx#stx-pair? _%tl9276192833%_)
                    (let ((_%e9276292836%_ (gx#syntax-e _%tl9276192833%_)))
                      (let ((_%hd9276392840%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9276292836%_)))
                            (_%tl9276492843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9276292836%_))))
                        (if (gx#stx-pair? _%tl9276492843%_)
                            (let ((_%e9276592846%_
                                   (gx#syntax-e _%tl9276492843%_)))
                              (let ((_%hd9276692850%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9276592846%_)))
                                    (_%tl9276792853%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9276592846%_))))
                                (if (gx#stx-pair? _%tl9276792853%_)
                                    (let ((_%e9276892856%_
                                           (gx#syntax-e _%tl9276792853%_)))
                                      (let ((_%hd9276992860%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9276892856%_)))
                                            (_%tl9277092863%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9276892856%_))))
                                        (if (gx#stx-pair? _%tl9277092863%_)
                                            (let ((_%e9277192866%_
                                                   (gx#syntax-e
                                                    _%tl9277092863%_)))
                                              (let ((_%hd9277292870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9277192866%_)))
                                                    (_%tl9277392873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9277192866%_))))
                                                (if (gx#stx-null?
                                                     _%tl9277392873%_)
                                                    ((lambda (_%L92876%_
                                                              _%L92878%_
                                                              _%L92879%_
                                                              _%L92880%_
                                                              _%L92881%_
                                                              _%L92882%_
                                                              _%L92883%_
                                                              _%L92884%_)
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
                                                   (cons (cons _%L92882%_
                                                               (cons _%L92880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92883%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92884%_ '()))
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
                                               (cons _%L92884%_
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
                                                       (cons _%L92884%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92880%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92879%_ '()))))
               (cons (cons _%L92876%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92880%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92884%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92879%_ '()))))
                     (cons (cons _%L92878%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92880%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92884%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92880%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92884%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92879%_ '()))))
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
                                                     _%hd9277292870%_
                                                     _%hd9276992860%_
                                                     _%hd9276692850%_
                                                     _%hd9276392840%_
                                                     _%hd9276092830%_
                                                     _%hd9275792820%_
                                                     _%hd9275492810%_
                                                     _%hd9275192800%_)
                                                    (_%g9273792779%_
                                                     _%g9273892783%_))))
                                            (_%g9273792779%_
                                             _%g9273892783%_))))
                                    (_%g9273792779%_ _%g9273892783%_))))
                            (_%g9273792779%_ _%g9273892783%_))))
                    (_%g9273792779%_ _%g9273892783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9273792779%_
                                                     _%g9273892783%_))))
                                            (_%g9273792779%_
                                             _%g9273892783%_))))
                                    (_%g9273792779%_ _%g9273892783%_))))
                            (_%g9273792779%_ _%g9273892783%_))))
                    (_%g9273792779%_ _%g9273892783%_)))))
        (_%g9273692918%_ _%$stx92733%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92922%_)
      (let* ((_%g9292692972%_
              (lambda (_%g9292792968%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9292792968%_)))
             (_%g9292593125%_
              (lambda (_%g9292792976%_)
                (if (gx#stx-pair? _%g9292792976%_)
                    (let ((_%e9293792979%_ (gx#syntax-e _%g9292792976%_)))
                      (let ((_%hd9293892983%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9293792979%_)))
                            (_%tl9293992986%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9293792979%_))))
                        (if (gx#stx-pair? _%tl9293992986%_)
                            (let ((_%e9294092989%_
                                   (gx#syntax-e _%tl9293992986%_)))
                              (let ((_%hd9294192993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9294092989%_)))
                                    (_%tl9294292996%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9294092989%_))))
                                (if (gx#stx-pair? _%tl9294292996%_)
                                    (let ((_%e9294392999%_
                                           (gx#syntax-e _%tl9294292996%_)))
                                      (let ((_%hd9294493003%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9294392999%_)))
                                            (_%tl9294593006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9294392999%_))))
                                        (if (gx#stx-pair? _%tl9294593006%_)
                                            (let ((_%e9294693009%_
                                                   (gx#syntax-e
                                                    _%tl9294593006%_)))
                                              (let ((_%hd9294793013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9294693009%_)))
                                                    (_%tl9294893016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9294693009%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9294893016%_)
                                                    (let ((_%e9294993019%_
                                                           (gx#syntax-e
                                                            _%tl9294893016%_)))
                                                      (let ((_%hd9295093023%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9294993019%_)))
                    (_%tl9295193026%_
                     (let () (declare (not safe)) (##cdr _%e9294993019%_))))
                (if (gx#stx-pair? _%tl9295193026%_)
                    (let ((_%e9295293029%_ (gx#syntax-e _%tl9295193026%_)))
                      (let ((_%hd9295393033%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9295293029%_)))
                            (_%tl9295493036%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9295293029%_))))
                        (if (gx#stx-pair? _%tl9295493036%_)
                            (let ((_%e9295593039%_
                                   (gx#syntax-e _%tl9295493036%_)))
                              (let ((_%hd9295693043%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9295593039%_)))
                                    (_%tl9295793046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9295593039%_))))
                                (if (gx#stx-pair? _%tl9295793046%_)
                                    (let ((_%e9295893049%_
                                           (gx#syntax-e _%tl9295793046%_)))
                                      (let ((_%hd9295993053%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9295893049%_)))
                                            (_%tl9296093056%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9295893049%_))))
                                        (if (gx#stx-pair? _%tl9296093056%_)
                                            (let ((_%e9296193059%_
                                                   (gx#syntax-e
                                                    _%tl9296093056%_)))
                                              (let ((_%hd9296293063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9296193059%_)))
                                                    (_%tl9296393066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9296193059%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9296393066%_)
                                                    (let ((_%e9296493069%_
                                                           (gx#syntax-e
                                                            _%tl9296393066%_)))
                                                      (let ((_%hd9296593073%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9296493069%_)))
                    (_%tl9296693076%_
                     (let () (declare (not safe)) (##cdr _%e9296493069%_))))
                (if (gx#stx-null? _%tl9296693076%_)
                    ((lambda (_%L93079%_
                              _%L93081%_
                              _%L93082%_
                              _%L93083%_
                              _%L93084%_
                              _%L93085%_
                              _%L93086%_
                              _%L93087%_
                              _%L93088%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L93086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93084%_ '()))
                         (cons _%L93087%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L93088%_ '()))
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
                                                       (cons _%L93088%_
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
                                                               (cons _%L93088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L93084%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L93088%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L93083%_
                                                     (cons _%L93082%_ '()))
                                               '()))))
                       (cons (cons _%L93079%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L93088%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L93084%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L93088%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L93083%_
                                                           (cons _%L93082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L93081%_ '()) '()))))
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
                     (cons (cons (cons _%L93085%_
                                       (cons _%L93084%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L93088%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L93084%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L93088%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L93083%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L93088%_
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
                     _%hd9296593073%_
                     _%hd9296293063%_
                     _%hd9295993053%_
                     _%hd9295693043%_
                     _%hd9295393033%_
                     _%hd9295093023%_
                     _%hd9294793013%_
                     _%hd9294493003%_
                     _%hd9294192993%_)
                    (_%g9292692972%_ _%g9292792976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9292692972%_
                                                     _%g9292792976%_))))
                                            (_%g9292692972%_
                                             _%g9292792976%_))))
                                    (_%g9292692972%_ _%g9292792976%_))))
                            (_%g9292692972%_ _%g9292792976%_))))
                    (_%g9292692972%_ _%g9292792976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9292692972%_
                                                     _%g9292792976%_))))
                                            (_%g9292692972%_
                                             _%g9292792976%_))))
                                    (_%g9292692972%_ _%g9292792976%_))))
                            (_%g9292692972%_ _%g9292792976%_))))
                    (_%g9292692972%_ _%g9292792976%_)))))
        (_%g9292593125%_ _%$stx92922%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx93129%_)
      (let* ((_%g9313393167%_
              (lambda (_%g9313493163%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9313493163%_)))
             (_%g9313293278%_
              (lambda (_%g9313493171%_)
                (if (gx#stx-pair? _%g9313493171%_)
                    (let ((_%e9314193174%_ (gx#syntax-e _%g9313493171%_)))
                      (let ((_%hd9314293178%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9314193174%_)))
                            (_%tl9314393181%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9314193174%_))))
                        (if (gx#stx-pair? _%tl9314393181%_)
                            (let ((_%e9314493184%_
                                   (gx#syntax-e _%tl9314393181%_)))
                              (let ((_%hd9314593188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9314493184%_)))
                                    (_%tl9314693191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9314493184%_))))
                                (if (gx#stx-pair? _%tl9314693191%_)
                                    (let ((_%e9314793194%_
                                           (gx#syntax-e _%tl9314693191%_)))
                                      (let ((_%hd9314893198%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9314793194%_)))
                                            (_%tl9314993201%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9314793194%_))))
                                        (if (gx#stx-pair? _%tl9314993201%_)
                                            (let ((_%e9315093204%_
                                                   (gx#syntax-e
                                                    _%tl9314993201%_)))
                                              (let ((_%hd9315193208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9315093204%_)))
                                                    (_%tl9315293211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9315093204%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9315293211%_)
                                                    (let ((_%e9315393214%_
                                                           (gx#syntax-e
                                                            _%tl9315293211%_)))
                                                      (let ((_%hd9315493218%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9315393214%_)))
                    (_%tl9315593221%_
                     (let () (declare (not safe)) (##cdr _%e9315393214%_))))
                (if (gx#stx-pair? _%tl9315593221%_)
                    (let ((_%e9315693224%_ (gx#syntax-e _%tl9315593221%_)))
                      (let ((_%hd9315793228%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9315693224%_)))
                            (_%tl9315893231%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9315693224%_))))
                        (if (gx#stx-pair? _%tl9315893231%_)
                            (let ((_%e9315993234%_
                                   (gx#syntax-e _%tl9315893231%_)))
                              (let ((_%hd9316093238%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9315993234%_)))
                                    (_%tl9316193241%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9315993234%_))))
                                (if (gx#stx-null? _%tl9316193241%_)
                                    ((lambda (_%L93244%_
                                              _%L93246%_
                                              _%L93247%_
                                              _%L93248%_
                                              _%L93249%_
                                              _%L93250%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L93248%_
                                               (cons _%L93246%_ '()))
                                         (cons _%L93249%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L93250%_ '()))
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
                               (cons _%L93250%_
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
                                     (cons (cons (cons _%L93247%_
                                                       (cons _%L93246%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L93250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L93250%_
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
                     (cons (cons _%L93244%_ '()) '()))))
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
                                     _%hd9316093238%_
                                     _%hd9315793228%_
                                     _%hd9315493218%_
                                     _%hd9315193208%_
                                     _%hd9314893198%_
                                     _%hd9314593188%_)
                                    (_%g9313393167%_ _%g9313493171%_))))
                            (_%g9313393167%_ _%g9313493171%_))))
                    (_%g9313393167%_ _%g9313493171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9313393167%_
                                                     _%g9313493171%_))))
                                            (_%g9313393167%_
                                             _%g9313493171%_))))
                                    (_%g9313393167%_ _%g9313493171%_))))
                            (_%g9313393167%_ _%g9313493171%_))))
                    (_%g9313393167%_ _%g9313493171%_)))))
        (_%g9313293278%_ _%$stx93129%_)))))

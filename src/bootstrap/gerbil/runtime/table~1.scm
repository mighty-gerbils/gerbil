(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx87705%_)
      (let* ((_%g8770987723%_
              (lambda (_%g8771087719%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8771087719%_)))
             (_%g8770887765%_
              (lambda (_%g8771087727%_)
                (if (gx#stx-pair? _%g8771087727%_)
                    (let ((_%e8771487730%_ (gx#syntax-e _%g8771087727%_)))
                      (let ((_%hd8771387734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8771487730%_)))
                            (_%tl8771287737%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8771487730%_))))
                        (if (gx#stx-pair? _%tl8771287737%_)
                            (let ((_%e8771787740%_
                                   (gx#syntax-e _%tl8771287737%_)))
                              (let ((_%hd8771687744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8771787740%_)))
                                    (_%tl8771587747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8771787740%_))))
                                (if (gx#stx-null? _%tl8771587747%_)
                                    ((lambda (_%L87750%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L87750%_ '()))))
                                     _%hd8771687744%_)
                                    (_%g8770987723%_ _%g8771087727%_))))
                            (_%g8770987723%_ _%g8771087727%_))))
                    (_%g8770987723%_ _%g8771087727%_)))))
        (_%g8770887765%_ _%$stx87705%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx87769%_)
      (let* ((_%g8777387819%_
              (lambda (_%g8777487815%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8777487815%_)))
             (_%g8777287972%_
              (lambda (_%g8777487823%_)
                (if (gx#stx-pair? _%g8777487823%_)
                    (let ((_%e8778687826%_ (gx#syntax-e _%g8777487823%_)))
                      (let ((_%hd8778587830%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8778687826%_)))
                            (_%tl8778487833%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8778687826%_))))
                        (if (gx#stx-pair? _%tl8778487833%_)
                            (let ((_%e8778987836%_
                                   (gx#syntax-e _%tl8778487833%_)))
                              (let ((_%hd8778887840%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8778987836%_)))
                                    (_%tl8778787843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8778987836%_))))
                                (if (gx#stx-pair? _%tl8778787843%_)
                                    (let ((_%e8779287846%_
                                           (gx#syntax-e _%tl8778787843%_)))
                                      (let ((_%hd8779187850%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8779287846%_)))
                                            (_%tl8779087853%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8779287846%_))))
                                        (if (gx#stx-pair? _%tl8779087853%_)
                                            (let ((_%e8779587856%_
                                                   (gx#syntax-e
                                                    _%tl8779087853%_)))
                                              (let ((_%hd8779487860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8779587856%_)))
                                                    (_%tl8779387863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8779587856%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8779387863%_)
                                                    (let ((_%e8779887866%_
                                                           (gx#syntax-e
                                                            _%tl8779387863%_)))
                                                      (let ((_%hd8779787870%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8779887866%_)))
                    (_%tl8779687873%_
                     (let () (declare (not safe)) (##cdr _%e8779887866%_))))
                (if (gx#stx-pair? _%tl8779687873%_)
                    (let ((_%e8780187876%_ (gx#syntax-e _%tl8779687873%_)))
                      (let ((_%hd8780087880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8780187876%_)))
                            (_%tl8779987883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8780187876%_))))
                        (if (gx#stx-pair? _%tl8779987883%_)
                            (let ((_%e8780487886%_
                                   (gx#syntax-e _%tl8779987883%_)))
                              (let ((_%hd8780387890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8780487886%_)))
                                    (_%tl8780287893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8780487886%_))))
                                (if (gx#stx-pair? _%tl8780287893%_)
                                    (let ((_%e8780787896%_
                                           (gx#syntax-e _%tl8780287893%_)))
                                      (let ((_%hd8780687900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8780787896%_)))
                                            (_%tl8780587903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8780787896%_))))
                                        (if (gx#stx-pair? _%tl8780587903%_)
                                            (let ((_%e8781087906%_
                                                   (gx#syntax-e
                                                    _%tl8780587903%_)))
                                              (let ((_%hd8780987910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8781087906%_)))
                                                    (_%tl8780887913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8781087906%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8780887913%_)
                                                    (let ((_%e8781387916%_
                                                           (gx#syntax-e
                                                            _%tl8780887913%_)))
                                                      (let ((_%hd8781287920%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8781387916%_)))
                    (_%tl8781187923%_
                     (let () (declare (not safe)) (##cdr _%e8781387916%_))))
                (if (gx#stx-null? _%tl8781187923%_)
                    ((lambda (_%L87926%_
                              _%L87928%_
                              _%L87929%_
                              _%L87930%_
                              _%L87931%_
                              _%L87932%_
                              _%L87933%_
                              _%L87934%_
                              _%L87935%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L87935%_
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
                         (cons _%L87928%_
                               (cons _%L87926%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L87934%_
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
                                                       (cons _%L87928%_
                                                             (cons _%L87926%_
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
                                                     (cons (cons _%L87933%_
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
                         (cons (cons _%L87932%_
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
                                                           (cons (cons _%L87932%_
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
                           (cons _%L87928%_
                                 (cons _%L87926%_
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
                         (cons (cons _%L87931%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L87931%_
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
                                     (cons (cons _%L87930%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L87931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L87930%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L87931%_
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
                                       (cons _%L87928%_
                                             (cons _%L87926%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L87931%_
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
                                     (cons (cons _%L87929%_
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
                                             (cons _%L87928%_
                                                   (cons _%L87926%_
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
                     _%hd8781287920%_
                     _%hd8780987910%_
                     _%hd8780687900%_
                     _%hd8780387890%_
                     _%hd8780087880%_
                     _%hd8779787870%_
                     _%hd8779487860%_
                     _%hd8779187850%_
                     _%hd8778887840%_)
                    (_%g8777387819%_ _%g8777487823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8777387819%_
                                                     _%g8777487823%_))))
                                            (_%g8777387819%_
                                             _%g8777487823%_))))
                                    (_%g8777387819%_ _%g8777487823%_))))
                            (_%g8777387819%_ _%g8777487823%_))))
                    (_%g8777387819%_ _%g8777487823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8777387819%_
                                                     _%g8777487823%_))))
                                            (_%g8777387819%_
                                             _%g8777487823%_))))
                                    (_%g8777387819%_ _%g8777487823%_))))
                            (_%g8777387819%_ _%g8777487823%_))))
                    (_%g8777387819%_ _%g8777487823%_)))))
        (_%g8777287972%_ _%$stx87769%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx87976%_)
      (let* ((_%g8798088002%_
              (lambda (_%g8798187998%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8798187998%_)))
             (_%g8797988071%_
              (lambda (_%g8798188006%_)
                (if (gx#stx-pair? _%g8798188006%_)
                    (let ((_%e8798788009%_ (gx#syntax-e _%g8798188006%_)))
                      (let ((_%hd8798688013%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8798788009%_)))
                            (_%tl8798588016%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8798788009%_))))
                        (if (gx#stx-pair? _%tl8798588016%_)
                            (let ((_%e8799088019%_
                                   (gx#syntax-e _%tl8798588016%_)))
                              (let ((_%hd8798988023%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8799088019%_)))
                                    (_%tl8798888026%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8799088019%_))))
                                (if (gx#stx-pair? _%tl8798888026%_)
                                    (let ((_%e8799388029%_
                                           (gx#syntax-e _%tl8798888026%_)))
                                      (let ((_%hd8799288033%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8799388029%_)))
                                            (_%tl8799188036%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8799388029%_))))
                                        (if (gx#stx-pair? _%tl8799188036%_)
                                            (let ((_%e8799688039%_
                                                   (gx#syntax-e
                                                    _%tl8799188036%_)))
                                              (let ((_%hd8799588043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8799688039%_)))
                                                    (_%tl8799488046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8799688039%_))))
                                                (if (gx#stx-null?
                                                     _%tl8799488046%_)
                                                    ((lambda (_%L88049%_
                                                              _%L88051%_
                                                              _%L88052%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88052%_
                                                   (cons _%L88051%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88051%_ (cons _%L88051%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88049%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8799588043%_
                                                     _%hd8799288033%_
                                                     _%hd8798988023%_)
                                                    (_%g8798088002%_
                                                     _%g8798188006%_))))
                                            (_%g8798088002%_
                                             _%g8798188006%_))))
                                    (_%g8798088002%_ _%g8798188006%_))))
                            (_%g8798088002%_ _%g8798188006%_))))
                    (_%g8798088002%_ _%g8798188006%_)))))
        (_%g8797988071%_ _%$stx87976%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88075%_)
      (let* ((_%g8807988113%_
              (lambda (_%g8808088109%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8808088109%_)))
             (_%g8807888224%_
              (lambda (_%g8808088117%_)
                (if (gx#stx-pair? _%g8808088117%_)
                    (let ((_%e8808988120%_ (gx#syntax-e _%g8808088117%_)))
                      (let ((_%hd8808888124%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8808988120%_)))
                            (_%tl8808788127%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8808988120%_))))
                        (if (gx#stx-pair? _%tl8808788127%_)
                            (let ((_%e8809288130%_
                                   (gx#syntax-e _%tl8808788127%_)))
                              (let ((_%hd8809188134%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8809288130%_)))
                                    (_%tl8809088137%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8809288130%_))))
                                (if (gx#stx-pair? _%tl8809088137%_)
                                    (let ((_%e8809588140%_
                                           (gx#syntax-e _%tl8809088137%_)))
                                      (let ((_%hd8809488144%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8809588140%_)))
                                            (_%tl8809388147%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8809588140%_))))
                                        (if (gx#stx-pair? _%tl8809388147%_)
                                            (let ((_%e8809888150%_
                                                   (gx#syntax-e
                                                    _%tl8809388147%_)))
                                              (let ((_%hd8809788154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8809888150%_)))
                                                    (_%tl8809688157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8809888150%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8809688157%_)
                                                    (let ((_%e8810188160%_
                                                           (gx#syntax-e
                                                            _%tl8809688157%_)))
                                                      (let ((_%hd8810088164%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8810188160%_)))
                    (_%tl8809988167%_
                     (let () (declare (not safe)) (##cdr _%e8810188160%_))))
                (if (gx#stx-pair? _%tl8809988167%_)
                    (let ((_%e8810488170%_ (gx#syntax-e _%tl8809988167%_)))
                      (let ((_%hd8810388174%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8810488170%_)))
                            (_%tl8810288177%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8810488170%_))))
                        (if (gx#stx-pair? _%tl8810288177%_)
                            (let ((_%e8810788180%_
                                   (gx#syntax-e _%tl8810288177%_)))
                              (let ((_%hd8810688184%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8810788180%_)))
                                    (_%tl8810588187%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8810788180%_))))
                                (if (gx#stx-null? _%tl8810588187%_)
                                    ((lambda (_%L88190%_
                                              _%L88192%_
                                              _%L88193%_
                                              _%L88194%_
                                              _%L88195%_
                                              _%L88196%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88194%_
                                               (cons _%L88192%_ '()))
                                         (cons _%L88195%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88196%_ '()))
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
                               (cons _%L88196%_
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
                                     (cons _%L88190%_ '()))
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
                                     (cons (cons (cons _%L88193%_
                                                       (cons _%L88192%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88196%_
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
                                     _%hd8810688184%_
                                     _%hd8810388174%_
                                     _%hd8810088164%_
                                     _%hd8809788154%_
                                     _%hd8809488144%_
                                     _%hd8809188134%_)
                                    (_%g8807988113%_ _%g8808088117%_))))
                            (_%g8807988113%_ _%g8808088117%_))))
                    (_%g8807988113%_ _%g8808088117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8807988113%_
                                                     _%g8808088117%_))))
                                            (_%g8807988113%_
                                             _%g8808088117%_))))
                                    (_%g8807988113%_ _%g8808088117%_))))
                            (_%g8807988113%_ _%g8808088117%_))))
                    (_%g8807988113%_ _%g8808088117%_)))))
        (_%g8807888224%_ _%$stx88075%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88228%_)
      (let* ((_%g8823288274%_
              (lambda (_%g8823388270%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8823388270%_)))
             (_%g8823188413%_
              (lambda (_%g8823388278%_)
                (if (gx#stx-pair? _%g8823388278%_)
                    (let ((_%e8824488281%_ (gx#syntax-e _%g8823388278%_)))
                      (let ((_%hd8824388285%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8824488281%_)))
                            (_%tl8824288288%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8824488281%_))))
                        (if (gx#stx-pair? _%tl8824288288%_)
                            (let ((_%e8824788291%_
                                   (gx#syntax-e _%tl8824288288%_)))
                              (let ((_%hd8824688295%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8824788291%_)))
                                    (_%tl8824588298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8824788291%_))))
                                (if (gx#stx-pair? _%tl8824588298%_)
                                    (let ((_%e8825088301%_
                                           (gx#syntax-e _%tl8824588298%_)))
                                      (let ((_%hd8824988305%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8825088301%_)))
                                            (_%tl8824888308%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8825088301%_))))
                                        (if (gx#stx-pair? _%tl8824888308%_)
                                            (let ((_%e8825388311%_
                                                   (gx#syntax-e
                                                    _%tl8824888308%_)))
                                              (let ((_%hd8825288315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8825388311%_)))
                                                    (_%tl8825188318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8825388311%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8825188318%_)
                                                    (let ((_%e8825688321%_
                                                           (gx#syntax-e
                                                            _%tl8825188318%_)))
                                                      (let ((_%hd8825588325%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8825688321%_)))
                    (_%tl8825488328%_
                     (let () (declare (not safe)) (##cdr _%e8825688321%_))))
                (if (gx#stx-pair? _%tl8825488328%_)
                    (let ((_%e8825988331%_ (gx#syntax-e _%tl8825488328%_)))
                      (let ((_%hd8825888335%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8825988331%_)))
                            (_%tl8825788338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8825988331%_))))
                        (if (gx#stx-pair? _%tl8825788338%_)
                            (let ((_%e8826288341%_
                                   (gx#syntax-e _%tl8825788338%_)))
                              (let ((_%hd8826188345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8826288341%_)))
                                    (_%tl8826088348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8826288341%_))))
                                (if (gx#stx-pair? _%tl8826088348%_)
                                    (let ((_%e8826588351%_
                                           (gx#syntax-e _%tl8826088348%_)))
                                      (let ((_%hd8826488355%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8826588351%_)))
                                            (_%tl8826388358%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8826588351%_))))
                                        (if (gx#stx-pair? _%tl8826388358%_)
                                            (let ((_%e8826888361%_
                                                   (gx#syntax-e
                                                    _%tl8826388358%_)))
                                              (let ((_%hd8826788365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8826888361%_)))
                                                    (_%tl8826688368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8826888361%_))))
                                                (if (gx#stx-null?
                                                     _%tl8826688368%_)
                                                    ((lambda (_%L88371%_
                                                              _%L88373%_
                                                              _%L88374%_
                                                              _%L88375%_
                                                              _%L88376%_
                                                              _%L88377%_
                                                              _%L88378%_
                                                              _%L88379%_)
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
                                                   (cons (cons _%L88377%_
                                                               (cons _%L88375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88378%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88379%_ '()))
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
                                               (cons _%L88379%_
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
                                                       (cons _%L88379%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88375%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88374%_ '()))))
               (cons (cons _%L88371%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88375%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88379%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88374%_ '()))))
                     (cons (cons _%L88373%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88375%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88379%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88375%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88379%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88374%_ '()))))
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
                                                     _%hd8826788365%_
                                                     _%hd8826488355%_
                                                     _%hd8826188345%_
                                                     _%hd8825888335%_
                                                     _%hd8825588325%_
                                                     _%hd8825288315%_
                                                     _%hd8824988305%_
                                                     _%hd8824688295%_)
                                                    (_%g8823288274%_
                                                     _%g8823388278%_))))
                                            (_%g8823288274%_
                                             _%g8823388278%_))))
                                    (_%g8823288274%_ _%g8823388278%_))))
                            (_%g8823288274%_ _%g8823388278%_))))
                    (_%g8823288274%_ _%g8823388278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8823288274%_
                                                     _%g8823388278%_))))
                                            (_%g8823288274%_
                                             _%g8823388278%_))))
                                    (_%g8823288274%_ _%g8823388278%_))))
                            (_%g8823288274%_ _%g8823388278%_))))
                    (_%g8823288274%_ _%g8823388278%_)))))
        (_%g8823188413%_ _%$stx88228%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88417%_)
      (let* ((_%g8842188467%_
              (lambda (_%g8842288463%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8842288463%_)))
             (_%g8842088620%_
              (lambda (_%g8842288471%_)
                (if (gx#stx-pair? _%g8842288471%_)
                    (let ((_%e8843488474%_ (gx#syntax-e _%g8842288471%_)))
                      (let ((_%hd8843388478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8843488474%_)))
                            (_%tl8843288481%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8843488474%_))))
                        (if (gx#stx-pair? _%tl8843288481%_)
                            (let ((_%e8843788484%_
                                   (gx#syntax-e _%tl8843288481%_)))
                              (let ((_%hd8843688488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8843788484%_)))
                                    (_%tl8843588491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8843788484%_))))
                                (if (gx#stx-pair? _%tl8843588491%_)
                                    (let ((_%e8844088494%_
                                           (gx#syntax-e _%tl8843588491%_)))
                                      (let ((_%hd8843988498%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8844088494%_)))
                                            (_%tl8843888501%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8844088494%_))))
                                        (if (gx#stx-pair? _%tl8843888501%_)
                                            (let ((_%e8844388504%_
                                                   (gx#syntax-e
                                                    _%tl8843888501%_)))
                                              (let ((_%hd8844288508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8844388504%_)))
                                                    (_%tl8844188511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8844388504%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8844188511%_)
                                                    (let ((_%e8844688514%_
                                                           (gx#syntax-e
                                                            _%tl8844188511%_)))
                                                      (let ((_%hd8844588518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8844688514%_)))
                    (_%tl8844488521%_
                     (let () (declare (not safe)) (##cdr _%e8844688514%_))))
                (if (gx#stx-pair? _%tl8844488521%_)
                    (let ((_%e8844988524%_ (gx#syntax-e _%tl8844488521%_)))
                      (let ((_%hd8844888528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8844988524%_)))
                            (_%tl8844788531%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8844988524%_))))
                        (if (gx#stx-pair? _%tl8844788531%_)
                            (let ((_%e8845288534%_
                                   (gx#syntax-e _%tl8844788531%_)))
                              (let ((_%hd8845188538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8845288534%_)))
                                    (_%tl8845088541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8845288534%_))))
                                (if (gx#stx-pair? _%tl8845088541%_)
                                    (let ((_%e8845588544%_
                                           (gx#syntax-e _%tl8845088541%_)))
                                      (let ((_%hd8845488548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8845588544%_)))
                                            (_%tl8845388551%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8845588544%_))))
                                        (if (gx#stx-pair? _%tl8845388551%_)
                                            (let ((_%e8845888554%_
                                                   (gx#syntax-e
                                                    _%tl8845388551%_)))
                                              (let ((_%hd8845788558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8845888554%_)))
                                                    (_%tl8845688561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8845888554%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8845688561%_)
                                                    (let ((_%e8846188564%_
                                                           (gx#syntax-e
                                                            _%tl8845688561%_)))
                                                      (let ((_%hd8846088568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8846188564%_)))
                    (_%tl8845988571%_
                     (let () (declare (not safe)) (##cdr _%e8846188564%_))))
                (if (gx#stx-null? _%tl8845988571%_)
                    ((lambda (_%L88574%_
                              _%L88576%_
                              _%L88577%_
                              _%L88578%_
                              _%L88579%_
                              _%L88580%_
                              _%L88581%_
                              _%L88582%_
                              _%L88583%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88579%_ '()))
                         (cons _%L88582%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88583%_ '()))
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
                                                       (cons _%L88583%_
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
                                                               (cons _%L88583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88579%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88583%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88578%_
                                                     (cons _%L88577%_ '()))
                                               '()))))
                       (cons (cons _%L88574%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88583%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88579%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88583%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88578%_
                                                           (cons _%L88577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88576%_ '()) '()))))
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
                     (cons (cons (cons _%L88580%_
                                       (cons _%L88579%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88583%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88579%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88583%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88578%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88583%_
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
                     _%hd8846088568%_
                     _%hd8845788558%_
                     _%hd8845488548%_
                     _%hd8845188538%_
                     _%hd8844888528%_
                     _%hd8844588518%_
                     _%hd8844288508%_
                     _%hd8843988498%_
                     _%hd8843688488%_)
                    (_%g8842188467%_ _%g8842288471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8842188467%_
                                                     _%g8842288471%_))))
                                            (_%g8842188467%_
                                             _%g8842288471%_))))
                                    (_%g8842188467%_ _%g8842288471%_))))
                            (_%g8842188467%_ _%g8842288471%_))))
                    (_%g8842188467%_ _%g8842288471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8842188467%_
                                                     _%g8842288471%_))))
                                            (_%g8842188467%_
                                             _%g8842288471%_))))
                                    (_%g8842188467%_ _%g8842288471%_))))
                            (_%g8842188467%_ _%g8842288471%_))))
                    (_%g8842188467%_ _%g8842288471%_)))))
        (_%g8842088620%_ _%$stx88417%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88624%_)
      (let* ((_%g8862888662%_
              (lambda (_%g8862988658%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8862988658%_)))
             (_%g8862788773%_
              (lambda (_%g8862988666%_)
                (if (gx#stx-pair? _%g8862988666%_)
                    (let ((_%e8863888669%_ (gx#syntax-e _%g8862988666%_)))
                      (let ((_%hd8863788673%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8863888669%_)))
                            (_%tl8863688676%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8863888669%_))))
                        (if (gx#stx-pair? _%tl8863688676%_)
                            (let ((_%e8864188679%_
                                   (gx#syntax-e _%tl8863688676%_)))
                              (let ((_%hd8864088683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8864188679%_)))
                                    (_%tl8863988686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8864188679%_))))
                                (if (gx#stx-pair? _%tl8863988686%_)
                                    (let ((_%e8864488689%_
                                           (gx#syntax-e _%tl8863988686%_)))
                                      (let ((_%hd8864388693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8864488689%_)))
                                            (_%tl8864288696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8864488689%_))))
                                        (if (gx#stx-pair? _%tl8864288696%_)
                                            (let ((_%e8864788699%_
                                                   (gx#syntax-e
                                                    _%tl8864288696%_)))
                                              (let ((_%hd8864688703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8864788699%_)))
                                                    (_%tl8864588706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8864788699%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8864588706%_)
                                                    (let ((_%e8865088709%_
                                                           (gx#syntax-e
                                                            _%tl8864588706%_)))
                                                      (let ((_%hd8864988713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8865088709%_)))
                    (_%tl8864888716%_
                     (let () (declare (not safe)) (##cdr _%e8865088709%_))))
                (if (gx#stx-pair? _%tl8864888716%_)
                    (let ((_%e8865388719%_ (gx#syntax-e _%tl8864888716%_)))
                      (let ((_%hd8865288723%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8865388719%_)))
                            (_%tl8865188726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8865388719%_))))
                        (if (gx#stx-pair? _%tl8865188726%_)
                            (let ((_%e8865688729%_
                                   (gx#syntax-e _%tl8865188726%_)))
                              (let ((_%hd8865588733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8865688729%_)))
                                    (_%tl8865488736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8865688729%_))))
                                (if (gx#stx-null? _%tl8865488736%_)
                                    ((lambda (_%L88739%_
                                              _%L88741%_
                                              _%L88742%_
                                              _%L88743%_
                                              _%L88744%_
                                              _%L88745%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88743%_
                                               (cons _%L88741%_ '()))
                                         (cons _%L88744%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88745%_ '()))
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
                               (cons _%L88745%_
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
                                     (cons (cons (cons _%L88742%_
                                                       (cons _%L88741%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88745%_
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
                     (cons (cons _%L88739%_ '()) '()))))
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
                                     _%hd8865588733%_
                                     _%hd8865288723%_
                                     _%hd8864988713%_
                                     _%hd8864688703%_
                                     _%hd8864388693%_
                                     _%hd8864088683%_)
                                    (_%g8862888662%_ _%g8862988666%_))))
                            (_%g8862888662%_ _%g8862988666%_))))
                    (_%g8862888662%_ _%g8862988666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8862888662%_
                                                     _%g8862988666%_))))
                                            (_%g8862888662%_
                                             _%g8862988666%_))))
                                    (_%g8862888662%_ _%g8862988666%_))))
                            (_%g8862888662%_ _%g8862988666%_))))
                    (_%g8862888662%_ _%g8862988666%_)))))
        (_%g8862788773%_ _%$stx88624%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88094%_)
      (let* ((_%g8809888112%_
              (lambda (_%g8809988108%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8809988108%_)))
             (_%g8809788154%_
              (lambda (_%g8809988116%_)
                (if (gx#stx-pair? _%g8809988116%_)
                    (let ((_%e8810388119%_ (gx#syntax-e _%g8809988116%_)))
                      (let ((_%hd8810288123%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8810388119%_)))
                            (_%tl8810188126%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8810388119%_))))
                        (if (gx#stx-pair? _%tl8810188126%_)
                            (let ((_%e8810688129%_
                                   (gx#syntax-e _%tl8810188126%_)))
                              (let ((_%hd8810588133%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8810688129%_)))
                                    (_%tl8810488136%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8810688129%_))))
                                (if (gx#stx-null? _%tl8810488136%_)
                                    ((lambda (_%L88139%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88139%_ '()))))
                                     _%hd8810588133%_)
                                    (_%g8809888112%_ _%g8809988116%_))))
                            (_%g8809888112%_ _%g8809988116%_))))
                    (_%g8809888112%_ _%g8809988116%_)))))
        (_%g8809788154%_ _%$stx88094%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88158%_)
      (let* ((_%g8816288208%_
              (lambda (_%g8816388204%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8816388204%_)))
             (_%g8816188361%_
              (lambda (_%g8816388212%_)
                (if (gx#stx-pair? _%g8816388212%_)
                    (let ((_%e8817588215%_ (gx#syntax-e _%g8816388212%_)))
                      (let ((_%hd8817488219%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8817588215%_)))
                            (_%tl8817388222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8817588215%_))))
                        (if (gx#stx-pair? _%tl8817388222%_)
                            (let ((_%e8817888225%_
                                   (gx#syntax-e _%tl8817388222%_)))
                              (let ((_%hd8817788229%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8817888225%_)))
                                    (_%tl8817688232%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8817888225%_))))
                                (if (gx#stx-pair? _%tl8817688232%_)
                                    (let ((_%e8818188235%_
                                           (gx#syntax-e _%tl8817688232%_)))
                                      (let ((_%hd8818088239%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8818188235%_)))
                                            (_%tl8817988242%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8818188235%_))))
                                        (if (gx#stx-pair? _%tl8817988242%_)
                                            (let ((_%e8818488245%_
                                                   (gx#syntax-e
                                                    _%tl8817988242%_)))
                                              (let ((_%hd8818388249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8818488245%_)))
                                                    (_%tl8818288252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8818488245%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8818288252%_)
                                                    (let ((_%e8818788255%_
                                                           (gx#syntax-e
                                                            _%tl8818288252%_)))
                                                      (let ((_%hd8818688259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8818788255%_)))
                    (_%tl8818588262%_
                     (let () (declare (not safe)) (##cdr _%e8818788255%_))))
                (if (gx#stx-pair? _%tl8818588262%_)
                    (let ((_%e8819088265%_ (gx#syntax-e _%tl8818588262%_)))
                      (let ((_%hd8818988269%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8819088265%_)))
                            (_%tl8818888272%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8819088265%_))))
                        (if (gx#stx-pair? _%tl8818888272%_)
                            (let ((_%e8819388275%_
                                   (gx#syntax-e _%tl8818888272%_)))
                              (let ((_%hd8819288279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8819388275%_)))
                                    (_%tl8819188282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8819388275%_))))
                                (if (gx#stx-pair? _%tl8819188282%_)
                                    (let ((_%e8819688285%_
                                           (gx#syntax-e _%tl8819188282%_)))
                                      (let ((_%hd8819588289%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8819688285%_)))
                                            (_%tl8819488292%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8819688285%_))))
                                        (if (gx#stx-pair? _%tl8819488292%_)
                                            (let ((_%e8819988295%_
                                                   (gx#syntax-e
                                                    _%tl8819488292%_)))
                                              (let ((_%hd8819888299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8819988295%_)))
                                                    (_%tl8819788302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8819988295%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8819788302%_)
                                                    (let ((_%e8820288305%_
                                                           (gx#syntax-e
                                                            _%tl8819788302%_)))
                                                      (let ((_%hd8820188309%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8820288305%_)))
                    (_%tl8820088312%_
                     (let () (declare (not safe)) (##cdr _%e8820288305%_))))
                (if (gx#stx-null? _%tl8820088312%_)
                    ((lambda (_%L88315%_
                              _%L88317%_
                              _%L88318%_
                              _%L88319%_
                              _%L88320%_
                              _%L88321%_
                              _%L88322%_
                              _%L88323%_
                              _%L88324%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L88324%_
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
                         (cons _%L88317%_
                               (cons _%L88315%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L88323%_
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
                                                       (cons _%L88317%_
                                                             (cons _%L88315%_
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
                                                     (cons (cons _%L88322%_
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
                         (cons (cons _%L88321%_
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
                                                           (cons (cons _%L88321%_
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
                           (cons _%L88317%_
                                 (cons _%L88315%_
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
                         (cons (cons _%L88320%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L88320%_
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
                                     (cons (cons _%L88319%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L88320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L88319%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L88320%_
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
                                       (cons _%L88317%_
                                             (cons _%L88315%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L88320%_
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
                                     (cons (cons _%L88318%_
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
                                             (cons _%L88317%_
                                                   (cons _%L88315%_
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
                     _%hd8820188309%_
                     _%hd8819888299%_
                     _%hd8819588289%_
                     _%hd8819288279%_
                     _%hd8818988269%_
                     _%hd8818688259%_
                     _%hd8818388249%_
                     _%hd8818088239%_
                     _%hd8817788229%_)
                    (_%g8816288208%_ _%g8816388212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8816288208%_
                                                     _%g8816388212%_))))
                                            (_%g8816288208%_
                                             _%g8816388212%_))))
                                    (_%g8816288208%_ _%g8816388212%_))))
                            (_%g8816288208%_ _%g8816388212%_))))
                    (_%g8816288208%_ _%g8816388212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8816288208%_
                                                     _%g8816388212%_))))
                                            (_%g8816288208%_
                                             _%g8816388212%_))))
                                    (_%g8816288208%_ _%g8816388212%_))))
                            (_%g8816288208%_ _%g8816388212%_))))
                    (_%g8816288208%_ _%g8816388212%_)))))
        (_%g8816188361%_ _%$stx88158%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx88365%_)
      (let* ((_%g8836988391%_
              (lambda (_%g8837088387%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8837088387%_)))
             (_%g8836888460%_
              (lambda (_%g8837088395%_)
                (if (gx#stx-pair? _%g8837088395%_)
                    (let ((_%e8837688398%_ (gx#syntax-e _%g8837088395%_)))
                      (let ((_%hd8837588402%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8837688398%_)))
                            (_%tl8837488405%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8837688398%_))))
                        (if (gx#stx-pair? _%tl8837488405%_)
                            (let ((_%e8837988408%_
                                   (gx#syntax-e _%tl8837488405%_)))
                              (let ((_%hd8837888412%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8837988408%_)))
                                    (_%tl8837788415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8837988408%_))))
                                (if (gx#stx-pair? _%tl8837788415%_)
                                    (let ((_%e8838288418%_
                                           (gx#syntax-e _%tl8837788415%_)))
                                      (let ((_%hd8838188422%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8838288418%_)))
                                            (_%tl8838088425%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8838288418%_))))
                                        (if (gx#stx-pair? _%tl8838088425%_)
                                            (let ((_%e8838588428%_
                                                   (gx#syntax-e
                                                    _%tl8838088425%_)))
                                              (let ((_%hd8838488432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8838588428%_)))
                                                    (_%tl8838388435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8838588428%_))))
                                                (if (gx#stx-null?
                                                     _%tl8838388435%_)
                                                    ((lambda (_%L88438%_
                                                              _%L88440%_
                                                              _%L88441%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88441%_
                                                   (cons _%L88440%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88440%_ (cons _%L88440%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88438%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8838488432%_
                                                     _%hd8838188422%_
                                                     _%hd8837888412%_)
                                                    (_%g8836988391%_
                                                     _%g8837088395%_))))
                                            (_%g8836988391%_
                                             _%g8837088395%_))))
                                    (_%g8836988391%_ _%g8837088395%_))))
                            (_%g8836988391%_ _%g8837088395%_))))
                    (_%g8836988391%_ _%g8837088395%_)))))
        (_%g8836888460%_ _%$stx88365%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88464%_)
      (let* ((_%g8846888502%_
              (lambda (_%g8846988498%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8846988498%_)))
             (_%g8846788613%_
              (lambda (_%g8846988506%_)
                (if (gx#stx-pair? _%g8846988506%_)
                    (let ((_%e8847888509%_ (gx#syntax-e _%g8846988506%_)))
                      (let ((_%hd8847788513%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8847888509%_)))
                            (_%tl8847688516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8847888509%_))))
                        (if (gx#stx-pair? _%tl8847688516%_)
                            (let ((_%e8848188519%_
                                   (gx#syntax-e _%tl8847688516%_)))
                              (let ((_%hd8848088523%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8848188519%_)))
                                    (_%tl8847988526%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8848188519%_))))
                                (if (gx#stx-pair? _%tl8847988526%_)
                                    (let ((_%e8848488529%_
                                           (gx#syntax-e _%tl8847988526%_)))
                                      (let ((_%hd8848388533%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8848488529%_)))
                                            (_%tl8848288536%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8848488529%_))))
                                        (if (gx#stx-pair? _%tl8848288536%_)
                                            (let ((_%e8848788539%_
                                                   (gx#syntax-e
                                                    _%tl8848288536%_)))
                                              (let ((_%hd8848688543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8848788539%_)))
                                                    (_%tl8848588546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8848788539%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8848588546%_)
                                                    (let ((_%e8849088549%_
                                                           (gx#syntax-e
                                                            _%tl8848588546%_)))
                                                      (let ((_%hd8848988553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8849088549%_)))
                    (_%tl8848888556%_
                     (let () (declare (not safe)) (##cdr _%e8849088549%_))))
                (if (gx#stx-pair? _%tl8848888556%_)
                    (let ((_%e8849388559%_ (gx#syntax-e _%tl8848888556%_)))
                      (let ((_%hd8849288563%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8849388559%_)))
                            (_%tl8849188566%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8849388559%_))))
                        (if (gx#stx-pair? _%tl8849188566%_)
                            (let ((_%e8849688569%_
                                   (gx#syntax-e _%tl8849188566%_)))
                              (let ((_%hd8849588573%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8849688569%_)))
                                    (_%tl8849488576%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8849688569%_))))
                                (if (gx#stx-null? _%tl8849488576%_)
                                    ((lambda (_%L88579%_
                                              _%L88581%_
                                              _%L88582%_
                                              _%L88583%_
                                              _%L88584%_
                                              _%L88585%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88583%_
                                               (cons _%L88581%_ '()))
                                         (cons _%L88584%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88585%_ '()))
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
                               (cons _%L88585%_
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
                                     (cons _%L88579%_ '()))
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
                                     (cons (cons (cons _%L88582%_
                                                       (cons _%L88581%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88585%_
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
                                     _%hd8849588573%_
                                     _%hd8849288563%_
                                     _%hd8848988553%_
                                     _%hd8848688543%_
                                     _%hd8848388533%_
                                     _%hd8848088523%_)
                                    (_%g8846888502%_ _%g8846988506%_))))
                            (_%g8846888502%_ _%g8846988506%_))))
                    (_%g8846888502%_ _%g8846988506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8846888502%_
                                                     _%g8846988506%_))))
                                            (_%g8846888502%_
                                             _%g8846988506%_))))
                                    (_%g8846888502%_ _%g8846988506%_))))
                            (_%g8846888502%_ _%g8846988506%_))))
                    (_%g8846888502%_ _%g8846988506%_)))))
        (_%g8846788613%_ _%$stx88464%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88617%_)
      (let* ((_%g8862188663%_
              (lambda (_%g8862288659%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8862288659%_)))
             (_%g8862088802%_
              (lambda (_%g8862288667%_)
                (if (gx#stx-pair? _%g8862288667%_)
                    (let ((_%e8863388670%_ (gx#syntax-e _%g8862288667%_)))
                      (let ((_%hd8863288674%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8863388670%_)))
                            (_%tl8863188677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8863388670%_))))
                        (if (gx#stx-pair? _%tl8863188677%_)
                            (let ((_%e8863688680%_
                                   (gx#syntax-e _%tl8863188677%_)))
                              (let ((_%hd8863588684%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8863688680%_)))
                                    (_%tl8863488687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8863688680%_))))
                                (if (gx#stx-pair? _%tl8863488687%_)
                                    (let ((_%e8863988690%_
                                           (gx#syntax-e _%tl8863488687%_)))
                                      (let ((_%hd8863888694%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8863988690%_)))
                                            (_%tl8863788697%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8863988690%_))))
                                        (if (gx#stx-pair? _%tl8863788697%_)
                                            (let ((_%e8864288700%_
                                                   (gx#syntax-e
                                                    _%tl8863788697%_)))
                                              (let ((_%hd8864188704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8864288700%_)))
                                                    (_%tl8864088707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8864288700%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8864088707%_)
                                                    (let ((_%e8864588710%_
                                                           (gx#syntax-e
                                                            _%tl8864088707%_)))
                                                      (let ((_%hd8864488714%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8864588710%_)))
                    (_%tl8864388717%_
                     (let () (declare (not safe)) (##cdr _%e8864588710%_))))
                (if (gx#stx-pair? _%tl8864388717%_)
                    (let ((_%e8864888720%_ (gx#syntax-e _%tl8864388717%_)))
                      (let ((_%hd8864788724%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8864888720%_)))
                            (_%tl8864688727%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8864888720%_))))
                        (if (gx#stx-pair? _%tl8864688727%_)
                            (let ((_%e8865188730%_
                                   (gx#syntax-e _%tl8864688727%_)))
                              (let ((_%hd8865088734%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8865188730%_)))
                                    (_%tl8864988737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8865188730%_))))
                                (if (gx#stx-pair? _%tl8864988737%_)
                                    (let ((_%e8865488740%_
                                           (gx#syntax-e _%tl8864988737%_)))
                                      (let ((_%hd8865388744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8865488740%_)))
                                            (_%tl8865288747%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8865488740%_))))
                                        (if (gx#stx-pair? _%tl8865288747%_)
                                            (let ((_%e8865788750%_
                                                   (gx#syntax-e
                                                    _%tl8865288747%_)))
                                              (let ((_%hd8865688754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8865788750%_)))
                                                    (_%tl8865588757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8865788750%_))))
                                                (if (gx#stx-null?
                                                     _%tl8865588757%_)
                                                    ((lambda (_%L88760%_
                                                              _%L88762%_
                                                              _%L88763%_
                                                              _%L88764%_
                                                              _%L88765%_
                                                              _%L88766%_
                                                              _%L88767%_
                                                              _%L88768%_)
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
                                                   (cons (cons _%L88766%_
                                                               (cons _%L88764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88767%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88768%_ '()))
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
                                               (cons _%L88768%_
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
                                                       (cons _%L88768%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88764%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88763%_ '()))))
               (cons (cons _%L88760%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88764%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88768%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88763%_ '()))))
                     (cons (cons _%L88762%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88764%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88768%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88764%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88768%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88763%_ '()))))
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
                                                     _%hd8865688754%_
                                                     _%hd8865388744%_
                                                     _%hd8865088734%_
                                                     _%hd8864788724%_
                                                     _%hd8864488714%_
                                                     _%hd8864188704%_
                                                     _%hd8863888694%_
                                                     _%hd8863588684%_)
                                                    (_%g8862188663%_
                                                     _%g8862288667%_))))
                                            (_%g8862188663%_
                                             _%g8862288667%_))))
                                    (_%g8862188663%_ _%g8862288667%_))))
                            (_%g8862188663%_ _%g8862288667%_))))
                    (_%g8862188663%_ _%g8862288667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8862188663%_
                                                     _%g8862288667%_))))
                                            (_%g8862188663%_
                                             _%g8862288667%_))))
                                    (_%g8862188663%_ _%g8862288667%_))))
                            (_%g8862188663%_ _%g8862288667%_))))
                    (_%g8862188663%_ _%g8862288667%_)))))
        (_%g8862088802%_ _%$stx88617%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88806%_)
      (let* ((_%g8881088856%_
              (lambda (_%g8881188852%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8881188852%_)))
             (_%g8880989009%_
              (lambda (_%g8881188860%_)
                (if (gx#stx-pair? _%g8881188860%_)
                    (let ((_%e8882388863%_ (gx#syntax-e _%g8881188860%_)))
                      (let ((_%hd8882288867%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8882388863%_)))
                            (_%tl8882188870%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8882388863%_))))
                        (if (gx#stx-pair? _%tl8882188870%_)
                            (let ((_%e8882688873%_
                                   (gx#syntax-e _%tl8882188870%_)))
                              (let ((_%hd8882588877%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8882688873%_)))
                                    (_%tl8882488880%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8882688873%_))))
                                (if (gx#stx-pair? _%tl8882488880%_)
                                    (let ((_%e8882988883%_
                                           (gx#syntax-e _%tl8882488880%_)))
                                      (let ((_%hd8882888887%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8882988883%_)))
                                            (_%tl8882788890%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8882988883%_))))
                                        (if (gx#stx-pair? _%tl8882788890%_)
                                            (let ((_%e8883288893%_
                                                   (gx#syntax-e
                                                    _%tl8882788890%_)))
                                              (let ((_%hd8883188897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8883288893%_)))
                                                    (_%tl8883088900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8883288893%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8883088900%_)
                                                    (let ((_%e8883588903%_
                                                           (gx#syntax-e
                                                            _%tl8883088900%_)))
                                                      (let ((_%hd8883488907%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8883588903%_)))
                    (_%tl8883388910%_
                     (let () (declare (not safe)) (##cdr _%e8883588903%_))))
                (if (gx#stx-pair? _%tl8883388910%_)
                    (let ((_%e8883888913%_ (gx#syntax-e _%tl8883388910%_)))
                      (let ((_%hd8883788917%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8883888913%_)))
                            (_%tl8883688920%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8883888913%_))))
                        (if (gx#stx-pair? _%tl8883688920%_)
                            (let ((_%e8884188923%_
                                   (gx#syntax-e _%tl8883688920%_)))
                              (let ((_%hd8884088927%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8884188923%_)))
                                    (_%tl8883988930%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8884188923%_))))
                                (if (gx#stx-pair? _%tl8883988930%_)
                                    (let ((_%e8884488933%_
                                           (gx#syntax-e _%tl8883988930%_)))
                                      (let ((_%hd8884388937%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8884488933%_)))
                                            (_%tl8884288940%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8884488933%_))))
                                        (if (gx#stx-pair? _%tl8884288940%_)
                                            (let ((_%e8884788943%_
                                                   (gx#syntax-e
                                                    _%tl8884288940%_)))
                                              (let ((_%hd8884688947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8884788943%_)))
                                                    (_%tl8884588950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8884788943%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8884588950%_)
                                                    (let ((_%e8885088953%_
                                                           (gx#syntax-e
                                                            _%tl8884588950%_)))
                                                      (let ((_%hd8884988957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8885088953%_)))
                    (_%tl8884888960%_
                     (let () (declare (not safe)) (##cdr _%e8885088953%_))))
                (if (gx#stx-null? _%tl8884888960%_)
                    ((lambda (_%L88963%_
                              _%L88965%_
                              _%L88966%_
                              _%L88967%_
                              _%L88968%_
                              _%L88969%_
                              _%L88970%_
                              _%L88971%_
                              _%L88972%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88968%_ '()))
                         (cons _%L88971%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88972%_ '()))
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
                                                       (cons _%L88972%_
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
                                                               (cons _%L88972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88968%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88972%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88967%_
                                                     (cons _%L88966%_ '()))
                                               '()))))
                       (cons (cons _%L88963%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88972%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88968%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88972%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88967%_
                                                           (cons _%L88966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88965%_ '()) '()))))
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
                     (cons (cons (cons _%L88969%_
                                       (cons _%L88968%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88972%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88968%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88972%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88967%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88972%_
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
                     _%hd8884988957%_
                     _%hd8884688947%_
                     _%hd8884388937%_
                     _%hd8884088927%_
                     _%hd8883788917%_
                     _%hd8883488907%_
                     _%hd8883188897%_
                     _%hd8882888887%_
                     _%hd8882588877%_)
                    (_%g8881088856%_ _%g8881188860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8881088856%_
                                                     _%g8881188860%_))))
                                            (_%g8881088856%_
                                             _%g8881188860%_))))
                                    (_%g8881088856%_ _%g8881188860%_))))
                            (_%g8881088856%_ _%g8881188860%_))))
                    (_%g8881088856%_ _%g8881188860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8881088856%_
                                                     _%g8881188860%_))))
                                            (_%g8881088856%_
                                             _%g8881188860%_))))
                                    (_%g8881088856%_ _%g8881188860%_))))
                            (_%g8881088856%_ _%g8881188860%_))))
                    (_%g8881088856%_ _%g8881188860%_)))))
        (_%g8880989009%_ _%$stx88806%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx89013%_)
      (let* ((_%g8901789051%_
              (lambda (_%g8901889047%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8901889047%_)))
             (_%g8901689162%_
              (lambda (_%g8901889055%_)
                (if (gx#stx-pair? _%g8901889055%_)
                    (let ((_%e8902789058%_ (gx#syntax-e _%g8901889055%_)))
                      (let ((_%hd8902689062%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8902789058%_)))
                            (_%tl8902589065%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8902789058%_))))
                        (if (gx#stx-pair? _%tl8902589065%_)
                            (let ((_%e8903089068%_
                                   (gx#syntax-e _%tl8902589065%_)))
                              (let ((_%hd8902989072%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8903089068%_)))
                                    (_%tl8902889075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8903089068%_))))
                                (if (gx#stx-pair? _%tl8902889075%_)
                                    (let ((_%e8903389078%_
                                           (gx#syntax-e _%tl8902889075%_)))
                                      (let ((_%hd8903289082%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8903389078%_)))
                                            (_%tl8903189085%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8903389078%_))))
                                        (if (gx#stx-pair? _%tl8903189085%_)
                                            (let ((_%e8903689088%_
                                                   (gx#syntax-e
                                                    _%tl8903189085%_)))
                                              (let ((_%hd8903589092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8903689088%_)))
                                                    (_%tl8903489095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8903689088%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8903489095%_)
                                                    (let ((_%e8903989098%_
                                                           (gx#syntax-e
                                                            _%tl8903489095%_)))
                                                      (let ((_%hd8903889102%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8903989098%_)))
                    (_%tl8903789105%_
                     (let () (declare (not safe)) (##cdr _%e8903989098%_))))
                (if (gx#stx-pair? _%tl8903789105%_)
                    (let ((_%e8904289108%_ (gx#syntax-e _%tl8903789105%_)))
                      (let ((_%hd8904189112%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8904289108%_)))
                            (_%tl8904089115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8904289108%_))))
                        (if (gx#stx-pair? _%tl8904089115%_)
                            (let ((_%e8904589118%_
                                   (gx#syntax-e _%tl8904089115%_)))
                              (let ((_%hd8904489122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8904589118%_)))
                                    (_%tl8904389125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8904589118%_))))
                                (if (gx#stx-null? _%tl8904389125%_)
                                    ((lambda (_%L89128%_
                                              _%L89130%_
                                              _%L89131%_
                                              _%L89132%_
                                              _%L89133%_
                                              _%L89134%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89132%_
                                               (cons _%L89130%_ '()))
                                         (cons _%L89133%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89134%_ '()))
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
                               (cons _%L89134%_
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
                                     (cons (cons (cons _%L89131%_
                                                       (cons _%L89130%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89134%_
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
                     (cons (cons _%L89128%_ '()) '()))))
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
                                     _%hd8904489122%_
                                     _%hd8904189112%_
                                     _%hd8903889102%_
                                     _%hd8903589092%_
                                     _%hd8903289082%_
                                     _%hd8902989072%_)
                                    (_%g8901789051%_ _%g8901889055%_))))
                            (_%g8901789051%_ _%g8901889055%_))))
                    (_%g8901789051%_ _%g8901889055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8901789051%_
                                                     _%g8901889055%_))))
                                            (_%g8901789051%_
                                             _%g8901889055%_))))
                                    (_%g8901789051%_ _%g8901889055%_))))
                            (_%g8901789051%_ _%g8901889055%_))))
                    (_%g8901789051%_ _%g8901889055%_)))))
        (_%g8901689162%_ _%$stx89013%_)))))

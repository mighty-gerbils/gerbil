(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88063%_)
      (let* ((_%g8806788081%_
              (lambda (_%g8806888077%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8806888077%_)))
             (_%g8806688123%_
              (lambda (_%g8806888085%_)
                (if (gx#stx-pair? _%g8806888085%_)
                    (let ((_%e8807288088%_ (gx#syntax-e _%g8806888085%_)))
                      (let ((_%hd8807188092%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8807288088%_)))
                            (_%tl8807088095%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8807288088%_))))
                        (if (gx#stx-pair? _%tl8807088095%_)
                            (let ((_%e8807588098%_
                                   (gx#syntax-e _%tl8807088095%_)))
                              (let ((_%hd8807488102%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8807588098%_)))
                                    (_%tl8807388105%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8807588098%_))))
                                (if (gx#stx-null? _%tl8807388105%_)
                                    ((lambda (_%L88108%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88108%_ '()))))
                                     _%hd8807488102%_)
                                    (_%g8806788081%_ _%g8806888085%_))))
                            (_%g8806788081%_ _%g8806888085%_))))
                    (_%g8806788081%_ _%g8806888085%_)))))
        (_%g8806688123%_ _%$stx88063%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88127%_)
      (let* ((_%g8813188177%_
              (lambda (_%g8813288173%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8813288173%_)))
             (_%g8813088330%_
              (lambda (_%g8813288181%_)
                (if (gx#stx-pair? _%g8813288181%_)
                    (let ((_%e8814488184%_ (gx#syntax-e _%g8813288181%_)))
                      (let ((_%hd8814388188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8814488184%_)))
                            (_%tl8814288191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8814488184%_))))
                        (if (gx#stx-pair? _%tl8814288191%_)
                            (let ((_%e8814788194%_
                                   (gx#syntax-e _%tl8814288191%_)))
                              (let ((_%hd8814688198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8814788194%_)))
                                    (_%tl8814588201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8814788194%_))))
                                (if (gx#stx-pair? _%tl8814588201%_)
                                    (let ((_%e8815088204%_
                                           (gx#syntax-e _%tl8814588201%_)))
                                      (let ((_%hd8814988208%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8815088204%_)))
                                            (_%tl8814888211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8815088204%_))))
                                        (if (gx#stx-pair? _%tl8814888211%_)
                                            (let ((_%e8815388214%_
                                                   (gx#syntax-e
                                                    _%tl8814888211%_)))
                                              (let ((_%hd8815288218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8815388214%_)))
                                                    (_%tl8815188221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8815388214%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8815188221%_)
                                                    (let ((_%e8815688224%_
                                                           (gx#syntax-e
                                                            _%tl8815188221%_)))
                                                      (let ((_%hd8815588228%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8815688224%_)))
                    (_%tl8815488231%_
                     (let () (declare (not safe)) (##cdr _%e8815688224%_))))
                (if (gx#stx-pair? _%tl8815488231%_)
                    (let ((_%e8815988234%_ (gx#syntax-e _%tl8815488231%_)))
                      (let ((_%hd8815888238%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8815988234%_)))
                            (_%tl8815788241%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8815988234%_))))
                        (if (gx#stx-pair? _%tl8815788241%_)
                            (let ((_%e8816288244%_
                                   (gx#syntax-e _%tl8815788241%_)))
                              (let ((_%hd8816188248%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8816288244%_)))
                                    (_%tl8816088251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8816288244%_))))
                                (if (gx#stx-pair? _%tl8816088251%_)
                                    (let ((_%e8816588254%_
                                           (gx#syntax-e _%tl8816088251%_)))
                                      (let ((_%hd8816488258%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8816588254%_)))
                                            (_%tl8816388261%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8816588254%_))))
                                        (if (gx#stx-pair? _%tl8816388261%_)
                                            (let ((_%e8816888264%_
                                                   (gx#syntax-e
                                                    _%tl8816388261%_)))
                                              (let ((_%hd8816788268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8816888264%_)))
                                                    (_%tl8816688271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8816888264%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8816688271%_)
                                                    (let ((_%e8817188274%_
                                                           (gx#syntax-e
                                                            _%tl8816688271%_)))
                                                      (let ((_%hd8817088278%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8817188274%_)))
                    (_%tl8816988281%_
                     (let () (declare (not safe)) (##cdr _%e8817188274%_))))
                (if (gx#stx-null? _%tl8816988281%_)
                    ((lambda (_%L88284%_
                              _%L88286%_
                              _%L88287%_
                              _%L88288%_
                              _%L88289%_
                              _%L88290%_
                              _%L88291%_
                              _%L88292%_
                              _%L88293%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L88293%_
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
                         (cons _%L88286%_
                               (cons _%L88284%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L88292%_
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
                                                       (cons _%L88286%_
                                                             (cons _%L88284%_
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
                                                     (cons (cons _%L88291%_
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
                         (cons (cons _%L88290%_
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
                                                           (cons (cons _%L88290%_
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
                           (cons _%L88286%_
                                 (cons _%L88284%_
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
                         (cons (cons _%L88289%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L88289%_
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
                                     (cons (cons _%L88288%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L88289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L88288%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L88289%_
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
                                       (cons _%L88286%_
                                             (cons _%L88284%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L88289%_
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
                                     (cons (cons _%L88287%_
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
                                             (cons _%L88286%_
                                                   (cons _%L88284%_
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
                     _%hd8817088278%_
                     _%hd8816788268%_
                     _%hd8816488258%_
                     _%hd8816188248%_
                     _%hd8815888238%_
                     _%hd8815588228%_
                     _%hd8815288218%_
                     _%hd8814988208%_
                     _%hd8814688198%_)
                    (_%g8813188177%_ _%g8813288181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8813188177%_
                                                     _%g8813288181%_))))
                                            (_%g8813188177%_
                                             _%g8813288181%_))))
                                    (_%g8813188177%_ _%g8813288181%_))))
                            (_%g8813188177%_ _%g8813288181%_))))
                    (_%g8813188177%_ _%g8813288181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8813188177%_
                                                     _%g8813288181%_))))
                                            (_%g8813188177%_
                                             _%g8813288181%_))))
                                    (_%g8813188177%_ _%g8813288181%_))))
                            (_%g8813188177%_ _%g8813288181%_))))
                    (_%g8813188177%_ _%g8813288181%_)))))
        (_%g8813088330%_ _%$stx88127%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx88334%_)
      (let* ((_%g8833888360%_
              (lambda (_%g8833988356%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8833988356%_)))
             (_%g8833788429%_
              (lambda (_%g8833988364%_)
                (if (gx#stx-pair? _%g8833988364%_)
                    (let ((_%e8834588367%_ (gx#syntax-e _%g8833988364%_)))
                      (let ((_%hd8834488371%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8834588367%_)))
                            (_%tl8834388374%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8834588367%_))))
                        (if (gx#stx-pair? _%tl8834388374%_)
                            (let ((_%e8834888377%_
                                   (gx#syntax-e _%tl8834388374%_)))
                              (let ((_%hd8834788381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8834888377%_)))
                                    (_%tl8834688384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8834888377%_))))
                                (if (gx#stx-pair? _%tl8834688384%_)
                                    (let ((_%e8835188387%_
                                           (gx#syntax-e _%tl8834688384%_)))
                                      (let ((_%hd8835088391%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8835188387%_)))
                                            (_%tl8834988394%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8835188387%_))))
                                        (if (gx#stx-pair? _%tl8834988394%_)
                                            (let ((_%e8835488397%_
                                                   (gx#syntax-e
                                                    _%tl8834988394%_)))
                                              (let ((_%hd8835388401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8835488397%_)))
                                                    (_%tl8835288404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8835488397%_))))
                                                (if (gx#stx-null?
                                                     _%tl8835288404%_)
                                                    ((lambda (_%L88407%_
                                                              _%L88409%_
                                                              _%L88410%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88410%_
                                                   (cons _%L88409%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88409%_ (cons _%L88409%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88407%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8835388401%_
                                                     _%hd8835088391%_
                                                     _%hd8834788381%_)
                                                    (_%g8833888360%_
                                                     _%g8833988364%_))))
                                            (_%g8833888360%_
                                             _%g8833988364%_))))
                                    (_%g8833888360%_ _%g8833988364%_))))
                            (_%g8833888360%_ _%g8833988364%_))))
                    (_%g8833888360%_ _%g8833988364%_)))))
        (_%g8833788429%_ _%$stx88334%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88433%_)
      (let* ((_%g8843788471%_
              (lambda (_%g8843888467%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8843888467%_)))
             (_%g8843688582%_
              (lambda (_%g8843888475%_)
                (if (gx#stx-pair? _%g8843888475%_)
                    (let ((_%e8844788478%_ (gx#syntax-e _%g8843888475%_)))
                      (let ((_%hd8844688482%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8844788478%_)))
                            (_%tl8844588485%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8844788478%_))))
                        (if (gx#stx-pair? _%tl8844588485%_)
                            (let ((_%e8845088488%_
                                   (gx#syntax-e _%tl8844588485%_)))
                              (let ((_%hd8844988492%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8845088488%_)))
                                    (_%tl8844888495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8845088488%_))))
                                (if (gx#stx-pair? _%tl8844888495%_)
                                    (let ((_%e8845388498%_
                                           (gx#syntax-e _%tl8844888495%_)))
                                      (let ((_%hd8845288502%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8845388498%_)))
                                            (_%tl8845188505%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8845388498%_))))
                                        (if (gx#stx-pair? _%tl8845188505%_)
                                            (let ((_%e8845688508%_
                                                   (gx#syntax-e
                                                    _%tl8845188505%_)))
                                              (let ((_%hd8845588512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8845688508%_)))
                                                    (_%tl8845488515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8845688508%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8845488515%_)
                                                    (let ((_%e8845988518%_
                                                           (gx#syntax-e
                                                            _%tl8845488515%_)))
                                                      (let ((_%hd8845888522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8845988518%_)))
                    (_%tl8845788525%_
                     (let () (declare (not safe)) (##cdr _%e8845988518%_))))
                (if (gx#stx-pair? _%tl8845788525%_)
                    (let ((_%e8846288528%_ (gx#syntax-e _%tl8845788525%_)))
                      (let ((_%hd8846188532%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8846288528%_)))
                            (_%tl8846088535%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8846288528%_))))
                        (if (gx#stx-pair? _%tl8846088535%_)
                            (let ((_%e8846588538%_
                                   (gx#syntax-e _%tl8846088535%_)))
                              (let ((_%hd8846488542%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8846588538%_)))
                                    (_%tl8846388545%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8846588538%_))))
                                (if (gx#stx-null? _%tl8846388545%_)
                                    ((lambda (_%L88548%_
                                              _%L88550%_
                                              _%L88551%_
                                              _%L88552%_
                                              _%L88553%_
                                              _%L88554%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88552%_
                                               (cons _%L88550%_ '()))
                                         (cons _%L88553%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88554%_ '()))
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
                               (cons _%L88554%_
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
                                     (cons _%L88548%_ '()))
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
                                     (cons (cons (cons _%L88551%_
                                                       (cons _%L88550%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88554%_
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
                                     _%hd8846488542%_
                                     _%hd8846188532%_
                                     _%hd8845888522%_
                                     _%hd8845588512%_
                                     _%hd8845288502%_
                                     _%hd8844988492%_)
                                    (_%g8843788471%_ _%g8843888475%_))))
                            (_%g8843788471%_ _%g8843888475%_))))
                    (_%g8843788471%_ _%g8843888475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8843788471%_
                                                     _%g8843888475%_))))
                                            (_%g8843788471%_
                                             _%g8843888475%_))))
                                    (_%g8843788471%_ _%g8843888475%_))))
                            (_%g8843788471%_ _%g8843888475%_))))
                    (_%g8843788471%_ _%g8843888475%_)))))
        (_%g8843688582%_ _%$stx88433%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88586%_)
      (let* ((_%g8859088632%_
              (lambda (_%g8859188628%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8859188628%_)))
             (_%g8858988771%_
              (lambda (_%g8859188636%_)
                (if (gx#stx-pair? _%g8859188636%_)
                    (let ((_%e8860288639%_ (gx#syntax-e _%g8859188636%_)))
                      (let ((_%hd8860188643%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8860288639%_)))
                            (_%tl8860088646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8860288639%_))))
                        (if (gx#stx-pair? _%tl8860088646%_)
                            (let ((_%e8860588649%_
                                   (gx#syntax-e _%tl8860088646%_)))
                              (let ((_%hd8860488653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8860588649%_)))
                                    (_%tl8860388656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8860588649%_))))
                                (if (gx#stx-pair? _%tl8860388656%_)
                                    (let ((_%e8860888659%_
                                           (gx#syntax-e _%tl8860388656%_)))
                                      (let ((_%hd8860788663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8860888659%_)))
                                            (_%tl8860688666%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8860888659%_))))
                                        (if (gx#stx-pair? _%tl8860688666%_)
                                            (let ((_%e8861188669%_
                                                   (gx#syntax-e
                                                    _%tl8860688666%_)))
                                              (let ((_%hd8861088673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8861188669%_)))
                                                    (_%tl8860988676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8861188669%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8860988676%_)
                                                    (let ((_%e8861488679%_
                                                           (gx#syntax-e
                                                            _%tl8860988676%_)))
                                                      (let ((_%hd8861388683%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8861488679%_)))
                    (_%tl8861288686%_
                     (let () (declare (not safe)) (##cdr _%e8861488679%_))))
                (if (gx#stx-pair? _%tl8861288686%_)
                    (let ((_%e8861788689%_ (gx#syntax-e _%tl8861288686%_)))
                      (let ((_%hd8861688693%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8861788689%_)))
                            (_%tl8861588696%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8861788689%_))))
                        (if (gx#stx-pair? _%tl8861588696%_)
                            (let ((_%e8862088699%_
                                   (gx#syntax-e _%tl8861588696%_)))
                              (let ((_%hd8861988703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8862088699%_)))
                                    (_%tl8861888706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8862088699%_))))
                                (if (gx#stx-pair? _%tl8861888706%_)
                                    (let ((_%e8862388709%_
                                           (gx#syntax-e _%tl8861888706%_)))
                                      (let ((_%hd8862288713%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8862388709%_)))
                                            (_%tl8862188716%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8862388709%_))))
                                        (if (gx#stx-pair? _%tl8862188716%_)
                                            (let ((_%e8862688719%_
                                                   (gx#syntax-e
                                                    _%tl8862188716%_)))
                                              (let ((_%hd8862588723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8862688719%_)))
                                                    (_%tl8862488726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8862688719%_))))
                                                (if (gx#stx-null?
                                                     _%tl8862488726%_)
                                                    ((lambda (_%L88729%_
                                                              _%L88731%_
                                                              _%L88732%_
                                                              _%L88733%_
                                                              _%L88734%_
                                                              _%L88735%_
                                                              _%L88736%_
                                                              _%L88737%_)
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
                                                   (cons (cons _%L88735%_
                                                               (cons _%L88733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88736%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88737%_ '()))
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
                                               (cons _%L88737%_
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
                                                       (cons _%L88737%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88733%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88732%_ '()))))
               (cons (cons _%L88729%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88733%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88737%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88732%_ '()))))
                     (cons (cons _%L88731%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88733%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88737%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88733%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88737%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88732%_ '()))))
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
                                                     _%hd8862588723%_
                                                     _%hd8862288713%_
                                                     _%hd8861988703%_
                                                     _%hd8861688693%_
                                                     _%hd8861388683%_
                                                     _%hd8861088673%_
                                                     _%hd8860788663%_
                                                     _%hd8860488653%_)
                                                    (_%g8859088632%_
                                                     _%g8859188636%_))))
                                            (_%g8859088632%_
                                             _%g8859188636%_))))
                                    (_%g8859088632%_ _%g8859188636%_))))
                            (_%g8859088632%_ _%g8859188636%_))))
                    (_%g8859088632%_ _%g8859188636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8859088632%_
                                                     _%g8859188636%_))))
                                            (_%g8859088632%_
                                             _%g8859188636%_))))
                                    (_%g8859088632%_ _%g8859188636%_))))
                            (_%g8859088632%_ _%g8859188636%_))))
                    (_%g8859088632%_ _%g8859188636%_)))))
        (_%g8858988771%_ _%$stx88586%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88775%_)
      (let* ((_%g8877988825%_
              (lambda (_%g8878088821%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8878088821%_)))
             (_%g8877888978%_
              (lambda (_%g8878088829%_)
                (if (gx#stx-pair? _%g8878088829%_)
                    (let ((_%e8879288832%_ (gx#syntax-e _%g8878088829%_)))
                      (let ((_%hd8879188836%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8879288832%_)))
                            (_%tl8879088839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8879288832%_))))
                        (if (gx#stx-pair? _%tl8879088839%_)
                            (let ((_%e8879588842%_
                                   (gx#syntax-e _%tl8879088839%_)))
                              (let ((_%hd8879488846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8879588842%_)))
                                    (_%tl8879388849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8879588842%_))))
                                (if (gx#stx-pair? _%tl8879388849%_)
                                    (let ((_%e8879888852%_
                                           (gx#syntax-e _%tl8879388849%_)))
                                      (let ((_%hd8879788856%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8879888852%_)))
                                            (_%tl8879688859%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8879888852%_))))
                                        (if (gx#stx-pair? _%tl8879688859%_)
                                            (let ((_%e8880188862%_
                                                   (gx#syntax-e
                                                    _%tl8879688859%_)))
                                              (let ((_%hd8880088866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8880188862%_)))
                                                    (_%tl8879988869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8880188862%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8879988869%_)
                                                    (let ((_%e8880488872%_
                                                           (gx#syntax-e
                                                            _%tl8879988869%_)))
                                                      (let ((_%hd8880388876%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8880488872%_)))
                    (_%tl8880288879%_
                     (let () (declare (not safe)) (##cdr _%e8880488872%_))))
                (if (gx#stx-pair? _%tl8880288879%_)
                    (let ((_%e8880788882%_ (gx#syntax-e _%tl8880288879%_)))
                      (let ((_%hd8880688886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8880788882%_)))
                            (_%tl8880588889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8880788882%_))))
                        (if (gx#stx-pair? _%tl8880588889%_)
                            (let ((_%e8881088892%_
                                   (gx#syntax-e _%tl8880588889%_)))
                              (let ((_%hd8880988896%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8881088892%_)))
                                    (_%tl8880888899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8881088892%_))))
                                (if (gx#stx-pair? _%tl8880888899%_)
                                    (let ((_%e8881388902%_
                                           (gx#syntax-e _%tl8880888899%_)))
                                      (let ((_%hd8881288906%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8881388902%_)))
                                            (_%tl8881188909%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8881388902%_))))
                                        (if (gx#stx-pair? _%tl8881188909%_)
                                            (let ((_%e8881688912%_
                                                   (gx#syntax-e
                                                    _%tl8881188909%_)))
                                              (let ((_%hd8881588916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8881688912%_)))
                                                    (_%tl8881488919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8881688912%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8881488919%_)
                                                    (let ((_%e8881988922%_
                                                           (gx#syntax-e
                                                            _%tl8881488919%_)))
                                                      (let ((_%hd8881888926%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8881988922%_)))
                    (_%tl8881788929%_
                     (let () (declare (not safe)) (##cdr _%e8881988922%_))))
                (if (gx#stx-null? _%tl8881788929%_)
                    ((lambda (_%L88932%_
                              _%L88934%_
                              _%L88935%_
                              _%L88936%_
                              _%L88937%_
                              _%L88938%_
                              _%L88939%_
                              _%L88940%_
                              _%L88941%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88937%_ '()))
                         (cons _%L88940%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88941%_ '()))
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
                                                       (cons _%L88941%_
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
                                                               (cons _%L88941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88937%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88941%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88936%_
                                                     (cons _%L88935%_ '()))
                                               '()))))
                       (cons (cons _%L88932%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88941%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88937%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88941%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88936%_
                                                           (cons _%L88935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88934%_ '()) '()))))
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
                     (cons (cons (cons _%L88938%_
                                       (cons _%L88937%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88941%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88937%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88941%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88936%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88941%_
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
                     _%hd8881888926%_
                     _%hd8881588916%_
                     _%hd8881288906%_
                     _%hd8880988896%_
                     _%hd8880688886%_
                     _%hd8880388876%_
                     _%hd8880088866%_
                     _%hd8879788856%_
                     _%hd8879488846%_)
                    (_%g8877988825%_ _%g8878088829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8877988825%_
                                                     _%g8878088829%_))))
                                            (_%g8877988825%_
                                             _%g8878088829%_))))
                                    (_%g8877988825%_ _%g8878088829%_))))
                            (_%g8877988825%_ _%g8878088829%_))))
                    (_%g8877988825%_ _%g8878088829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8877988825%_
                                                     _%g8878088829%_))))
                                            (_%g8877988825%_
                                             _%g8878088829%_))))
                                    (_%g8877988825%_ _%g8878088829%_))))
                            (_%g8877988825%_ _%g8878088829%_))))
                    (_%g8877988825%_ _%g8878088829%_)))))
        (_%g8877888978%_ _%$stx88775%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88982%_)
      (let* ((_%g8898689020%_
              (lambda (_%g8898789016%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8898789016%_)))
             (_%g8898589131%_
              (lambda (_%g8898789024%_)
                (if (gx#stx-pair? _%g8898789024%_)
                    (let ((_%e8899689027%_ (gx#syntax-e _%g8898789024%_)))
                      (let ((_%hd8899589031%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8899689027%_)))
                            (_%tl8899489034%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8899689027%_))))
                        (if (gx#stx-pair? _%tl8899489034%_)
                            (let ((_%e8899989037%_
                                   (gx#syntax-e _%tl8899489034%_)))
                              (let ((_%hd8899889041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8899989037%_)))
                                    (_%tl8899789044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8899989037%_))))
                                (if (gx#stx-pair? _%tl8899789044%_)
                                    (let ((_%e8900289047%_
                                           (gx#syntax-e _%tl8899789044%_)))
                                      (let ((_%hd8900189051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8900289047%_)))
                                            (_%tl8900089054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8900289047%_))))
                                        (if (gx#stx-pair? _%tl8900089054%_)
                                            (let ((_%e8900589057%_
                                                   (gx#syntax-e
                                                    _%tl8900089054%_)))
                                              (let ((_%hd8900489061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8900589057%_)))
                                                    (_%tl8900389064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8900589057%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8900389064%_)
                                                    (let ((_%e8900889067%_
                                                           (gx#syntax-e
                                                            _%tl8900389064%_)))
                                                      (let ((_%hd8900789071%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8900889067%_)))
                    (_%tl8900689074%_
                     (let () (declare (not safe)) (##cdr _%e8900889067%_))))
                (if (gx#stx-pair? _%tl8900689074%_)
                    (let ((_%e8901189077%_ (gx#syntax-e _%tl8900689074%_)))
                      (let ((_%hd8901089081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8901189077%_)))
                            (_%tl8900989084%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8901189077%_))))
                        (if (gx#stx-pair? _%tl8900989084%_)
                            (let ((_%e8901489087%_
                                   (gx#syntax-e _%tl8900989084%_)))
                              (let ((_%hd8901389091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8901489087%_)))
                                    (_%tl8901289094%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8901489087%_))))
                                (if (gx#stx-null? _%tl8901289094%_)
                                    ((lambda (_%L89097%_
                                              _%L89099%_
                                              _%L89100%_
                                              _%L89101%_
                                              _%L89102%_
                                              _%L89103%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89101%_
                                               (cons _%L89099%_ '()))
                                         (cons _%L89102%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89103%_ '()))
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
                               (cons _%L89103%_
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
                                     (cons (cons (cons _%L89100%_
                                                       (cons _%L89099%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89103%_
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
                     (cons (cons _%L89097%_ '()) '()))))
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
                                     _%hd8901389091%_
                                     _%hd8901089081%_
                                     _%hd8900789071%_
                                     _%hd8900489061%_
                                     _%hd8900189051%_
                                     _%hd8899889041%_)
                                    (_%g8898689020%_ _%g8898789024%_))))
                            (_%g8898689020%_ _%g8898789024%_))))
                    (_%g8898689020%_ _%g8898789024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8898689020%_
                                                     _%g8898789024%_))))
                                            (_%g8898689020%_
                                             _%g8898789024%_))))
                                    (_%g8898689020%_ _%g8898789024%_))))
                            (_%g8898689020%_ _%g8898789024%_))))
                    (_%g8898689020%_ _%g8898789024%_)))))
        (_%g8898589131%_ _%$stx88982%_)))))

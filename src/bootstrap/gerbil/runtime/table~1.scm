(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88071%_)
      (let* ((_%g8807588089%_
              (lambda (_%g8807688085%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8807688085%_)))
             (_%g8807488131%_
              (lambda (_%g8807688093%_)
                (if (gx#stx-pair? _%g8807688093%_)
                    (let ((_%e8808088096%_ (gx#syntax-e _%g8807688093%_)))
                      (let ((_%hd8807988100%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8808088096%_)))
                            (_%tl8807888103%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8808088096%_))))
                        (if (gx#stx-pair? _%tl8807888103%_)
                            (let ((_%e8808388106%_
                                   (gx#syntax-e _%tl8807888103%_)))
                              (let ((_%hd8808288110%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8808388106%_)))
                                    (_%tl8808188113%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8808388106%_))))
                                (if (gx#stx-null? _%tl8808188113%_)
                                    ((lambda (_%L88116%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88116%_ '()))))
                                     _%hd8808288110%_)
                                    (_%g8807588089%_ _%g8807688093%_))))
                            (_%g8807588089%_ _%g8807688093%_))))
                    (_%g8807588089%_ _%g8807688093%_)))))
        (_%g8807488131%_ _%$stx88071%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88135%_)
      (let* ((_%g8813988185%_
              (lambda (_%g8814088181%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8814088181%_)))
             (_%g8813888338%_
              (lambda (_%g8814088189%_)
                (if (gx#stx-pair? _%g8814088189%_)
                    (let ((_%e8815288192%_ (gx#syntax-e _%g8814088189%_)))
                      (let ((_%hd8815188196%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8815288192%_)))
                            (_%tl8815088199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8815288192%_))))
                        (if (gx#stx-pair? _%tl8815088199%_)
                            (let ((_%e8815588202%_
                                   (gx#syntax-e _%tl8815088199%_)))
                              (let ((_%hd8815488206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8815588202%_)))
                                    (_%tl8815388209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8815588202%_))))
                                (if (gx#stx-pair? _%tl8815388209%_)
                                    (let ((_%e8815888212%_
                                           (gx#syntax-e _%tl8815388209%_)))
                                      (let ((_%hd8815788216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8815888212%_)))
                                            (_%tl8815688219%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8815888212%_))))
                                        (if (gx#stx-pair? _%tl8815688219%_)
                                            (let ((_%e8816188222%_
                                                   (gx#syntax-e
                                                    _%tl8815688219%_)))
                                              (let ((_%hd8816088226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8816188222%_)))
                                                    (_%tl8815988229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8816188222%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8815988229%_)
                                                    (let ((_%e8816488232%_
                                                           (gx#syntax-e
                                                            _%tl8815988229%_)))
                                                      (let ((_%hd8816388236%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8816488232%_)))
                    (_%tl8816288239%_
                     (let () (declare (not safe)) (##cdr _%e8816488232%_))))
                (if (gx#stx-pair? _%tl8816288239%_)
                    (let ((_%e8816788242%_ (gx#syntax-e _%tl8816288239%_)))
                      (let ((_%hd8816688246%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8816788242%_)))
                            (_%tl8816588249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8816788242%_))))
                        (if (gx#stx-pair? _%tl8816588249%_)
                            (let ((_%e8817088252%_
                                   (gx#syntax-e _%tl8816588249%_)))
                              (let ((_%hd8816988256%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8817088252%_)))
                                    (_%tl8816888259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8817088252%_))))
                                (if (gx#stx-pair? _%tl8816888259%_)
                                    (let ((_%e8817388262%_
                                           (gx#syntax-e _%tl8816888259%_)))
                                      (let ((_%hd8817288266%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8817388262%_)))
                                            (_%tl8817188269%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8817388262%_))))
                                        (if (gx#stx-pair? _%tl8817188269%_)
                                            (let ((_%e8817688272%_
                                                   (gx#syntax-e
                                                    _%tl8817188269%_)))
                                              (let ((_%hd8817588276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8817688272%_)))
                                                    (_%tl8817488279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8817688272%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8817488279%_)
                                                    (let ((_%e8817988282%_
                                                           (gx#syntax-e
                                                            _%tl8817488279%_)))
                                                      (let ((_%hd8817888286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8817988282%_)))
                    (_%tl8817788289%_
                     (let () (declare (not safe)) (##cdr _%e8817988282%_))))
                (if (gx#stx-null? _%tl8817788289%_)
                    ((lambda (_%L88292%_
                              _%L88294%_
                              _%L88295%_
                              _%L88296%_
                              _%L88297%_
                              _%L88298%_
                              _%L88299%_
                              _%L88300%_
                              _%L88301%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L88301%_
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
                         (cons _%L88294%_
                               (cons _%L88292%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L88300%_
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
                                                       (cons _%L88294%_
                                                             (cons _%L88292%_
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
                                                     (cons (cons _%L88299%_
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
                         (cons (cons _%L88298%_
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
                                                           (cons (cons _%L88298%_
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
                           (cons _%L88294%_
                                 (cons _%L88292%_
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
                         (cons (cons _%L88297%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L88297%_
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
                                     (cons (cons _%L88296%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L88297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L88296%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L88297%_
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
                                       (cons _%L88294%_
                                             (cons _%L88292%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L88297%_
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
                                     (cons (cons _%L88295%_
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
                                             (cons _%L88294%_
                                                   (cons _%L88292%_
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
                     _%hd8817888286%_
                     _%hd8817588276%_
                     _%hd8817288266%_
                     _%hd8816988256%_
                     _%hd8816688246%_
                     _%hd8816388236%_
                     _%hd8816088226%_
                     _%hd8815788216%_
                     _%hd8815488206%_)
                    (_%g8813988185%_ _%g8814088189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8813988185%_
                                                     _%g8814088189%_))))
                                            (_%g8813988185%_
                                             _%g8814088189%_))))
                                    (_%g8813988185%_ _%g8814088189%_))))
                            (_%g8813988185%_ _%g8814088189%_))))
                    (_%g8813988185%_ _%g8814088189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8813988185%_
                                                     _%g8814088189%_))))
                                            (_%g8813988185%_
                                             _%g8814088189%_))))
                                    (_%g8813988185%_ _%g8814088189%_))))
                            (_%g8813988185%_ _%g8814088189%_))))
                    (_%g8813988185%_ _%g8814088189%_)))))
        (_%g8813888338%_ _%$stx88135%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx88342%_)
      (let* ((_%g8834688368%_
              (lambda (_%g8834788364%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8834788364%_)))
             (_%g8834588437%_
              (lambda (_%g8834788372%_)
                (if (gx#stx-pair? _%g8834788372%_)
                    (let ((_%e8835388375%_ (gx#syntax-e _%g8834788372%_)))
                      (let ((_%hd8835288379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8835388375%_)))
                            (_%tl8835188382%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8835388375%_))))
                        (if (gx#stx-pair? _%tl8835188382%_)
                            (let ((_%e8835688385%_
                                   (gx#syntax-e _%tl8835188382%_)))
                              (let ((_%hd8835588389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8835688385%_)))
                                    (_%tl8835488392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8835688385%_))))
                                (if (gx#stx-pair? _%tl8835488392%_)
                                    (let ((_%e8835988395%_
                                           (gx#syntax-e _%tl8835488392%_)))
                                      (let ((_%hd8835888399%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8835988395%_)))
                                            (_%tl8835788402%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8835988395%_))))
                                        (if (gx#stx-pair? _%tl8835788402%_)
                                            (let ((_%e8836288405%_
                                                   (gx#syntax-e
                                                    _%tl8835788402%_)))
                                              (let ((_%hd8836188409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8836288405%_)))
                                                    (_%tl8836088412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8836288405%_))))
                                                (if (gx#stx-null?
                                                     _%tl8836088412%_)
                                                    ((lambda (_%L88415%_
                                                              _%L88417%_
                                                              _%L88418%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88418%_
                                                   (cons _%L88417%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88417%_ (cons _%L88417%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88415%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8836188409%_
                                                     _%hd8835888399%_
                                                     _%hd8835588389%_)
                                                    (_%g8834688368%_
                                                     _%g8834788372%_))))
                                            (_%g8834688368%_
                                             _%g8834788372%_))))
                                    (_%g8834688368%_ _%g8834788372%_))))
                            (_%g8834688368%_ _%g8834788372%_))))
                    (_%g8834688368%_ _%g8834788372%_)))))
        (_%g8834588437%_ _%$stx88342%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88441%_)
      (let* ((_%g8844588479%_
              (lambda (_%g8844688475%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8844688475%_)))
             (_%g8844488590%_
              (lambda (_%g8844688483%_)
                (if (gx#stx-pair? _%g8844688483%_)
                    (let ((_%e8845588486%_ (gx#syntax-e _%g8844688483%_)))
                      (let ((_%hd8845488490%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8845588486%_)))
                            (_%tl8845388493%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8845588486%_))))
                        (if (gx#stx-pair? _%tl8845388493%_)
                            (let ((_%e8845888496%_
                                   (gx#syntax-e _%tl8845388493%_)))
                              (let ((_%hd8845788500%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8845888496%_)))
                                    (_%tl8845688503%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8845888496%_))))
                                (if (gx#stx-pair? _%tl8845688503%_)
                                    (let ((_%e8846188506%_
                                           (gx#syntax-e _%tl8845688503%_)))
                                      (let ((_%hd8846088510%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8846188506%_)))
                                            (_%tl8845988513%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8846188506%_))))
                                        (if (gx#stx-pair? _%tl8845988513%_)
                                            (let ((_%e8846488516%_
                                                   (gx#syntax-e
                                                    _%tl8845988513%_)))
                                              (let ((_%hd8846388520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8846488516%_)))
                                                    (_%tl8846288523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8846488516%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8846288523%_)
                                                    (let ((_%e8846788526%_
                                                           (gx#syntax-e
                                                            _%tl8846288523%_)))
                                                      (let ((_%hd8846688530%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8846788526%_)))
                    (_%tl8846588533%_
                     (let () (declare (not safe)) (##cdr _%e8846788526%_))))
                (if (gx#stx-pair? _%tl8846588533%_)
                    (let ((_%e8847088536%_ (gx#syntax-e _%tl8846588533%_)))
                      (let ((_%hd8846988540%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8847088536%_)))
                            (_%tl8846888543%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8847088536%_))))
                        (if (gx#stx-pair? _%tl8846888543%_)
                            (let ((_%e8847388546%_
                                   (gx#syntax-e _%tl8846888543%_)))
                              (let ((_%hd8847288550%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8847388546%_)))
                                    (_%tl8847188553%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8847388546%_))))
                                (if (gx#stx-null? _%tl8847188553%_)
                                    ((lambda (_%L88556%_
                                              _%L88558%_
                                              _%L88559%_
                                              _%L88560%_
                                              _%L88561%_
                                              _%L88562%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88560%_
                                               (cons _%L88558%_ '()))
                                         (cons _%L88561%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88562%_ '()))
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
                               (cons _%L88562%_
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
                                     (cons _%L88556%_ '()))
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
                                     (cons (cons (cons _%L88559%_
                                                       (cons _%L88558%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88562%_
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
                                     _%hd8847288550%_
                                     _%hd8846988540%_
                                     _%hd8846688530%_
                                     _%hd8846388520%_
                                     _%hd8846088510%_
                                     _%hd8845788500%_)
                                    (_%g8844588479%_ _%g8844688483%_))))
                            (_%g8844588479%_ _%g8844688483%_))))
                    (_%g8844588479%_ _%g8844688483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8844588479%_
                                                     _%g8844688483%_))))
                                            (_%g8844588479%_
                                             _%g8844688483%_))))
                                    (_%g8844588479%_ _%g8844688483%_))))
                            (_%g8844588479%_ _%g8844688483%_))))
                    (_%g8844588479%_ _%g8844688483%_)))))
        (_%g8844488590%_ _%$stx88441%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88594%_)
      (let* ((_%g8859888640%_
              (lambda (_%g8859988636%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8859988636%_)))
             (_%g8859788779%_
              (lambda (_%g8859988644%_)
                (if (gx#stx-pair? _%g8859988644%_)
                    (let ((_%e8861088647%_ (gx#syntax-e _%g8859988644%_)))
                      (let ((_%hd8860988651%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8861088647%_)))
                            (_%tl8860888654%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8861088647%_))))
                        (if (gx#stx-pair? _%tl8860888654%_)
                            (let ((_%e8861388657%_
                                   (gx#syntax-e _%tl8860888654%_)))
                              (let ((_%hd8861288661%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8861388657%_)))
                                    (_%tl8861188664%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8861388657%_))))
                                (if (gx#stx-pair? _%tl8861188664%_)
                                    (let ((_%e8861688667%_
                                           (gx#syntax-e _%tl8861188664%_)))
                                      (let ((_%hd8861588671%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8861688667%_)))
                                            (_%tl8861488674%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8861688667%_))))
                                        (if (gx#stx-pair? _%tl8861488674%_)
                                            (let ((_%e8861988677%_
                                                   (gx#syntax-e
                                                    _%tl8861488674%_)))
                                              (let ((_%hd8861888681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8861988677%_)))
                                                    (_%tl8861788684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8861988677%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8861788684%_)
                                                    (let ((_%e8862288687%_
                                                           (gx#syntax-e
                                                            _%tl8861788684%_)))
                                                      (let ((_%hd8862188691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8862288687%_)))
                    (_%tl8862088694%_
                     (let () (declare (not safe)) (##cdr _%e8862288687%_))))
                (if (gx#stx-pair? _%tl8862088694%_)
                    (let ((_%e8862588697%_ (gx#syntax-e _%tl8862088694%_)))
                      (let ((_%hd8862488701%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8862588697%_)))
                            (_%tl8862388704%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8862588697%_))))
                        (if (gx#stx-pair? _%tl8862388704%_)
                            (let ((_%e8862888707%_
                                   (gx#syntax-e _%tl8862388704%_)))
                              (let ((_%hd8862788711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8862888707%_)))
                                    (_%tl8862688714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8862888707%_))))
                                (if (gx#stx-pair? _%tl8862688714%_)
                                    (let ((_%e8863188717%_
                                           (gx#syntax-e _%tl8862688714%_)))
                                      (let ((_%hd8863088721%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8863188717%_)))
                                            (_%tl8862988724%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8863188717%_))))
                                        (if (gx#stx-pair? _%tl8862988724%_)
                                            (let ((_%e8863488727%_
                                                   (gx#syntax-e
                                                    _%tl8862988724%_)))
                                              (let ((_%hd8863388731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8863488727%_)))
                                                    (_%tl8863288734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8863488727%_))))
                                                (if (gx#stx-null?
                                                     _%tl8863288734%_)
                                                    ((lambda (_%L88737%_
                                                              _%L88739%_
                                                              _%L88740%_
                                                              _%L88741%_
                                                              _%L88742%_
                                                              _%L88743%_
                                                              _%L88744%_
                                                              _%L88745%_)
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
                                                   (cons (cons _%L88743%_
                                                               (cons _%L88741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L88744%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L88745%_ '()))
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
                                               (cons _%L88745%_
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
                                                       (cons _%L88745%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L88741%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L88740%_ '()))))
               (cons (cons _%L88737%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L88745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L88741%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L88745%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L88740%_ '()))))
                     (cons (cons _%L88739%_ '()) '()))))
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
                                                     (cons (cons (cons _%L88742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88741%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L88745%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L88741%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L88745%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L88740%_ '()))))
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
                                                     _%hd8863388731%_
                                                     _%hd8863088721%_
                                                     _%hd8862788711%_
                                                     _%hd8862488701%_
                                                     _%hd8862188691%_
                                                     _%hd8861888681%_
                                                     _%hd8861588671%_
                                                     _%hd8861288661%_)
                                                    (_%g8859888640%_
                                                     _%g8859988644%_))))
                                            (_%g8859888640%_
                                             _%g8859988644%_))))
                                    (_%g8859888640%_ _%g8859988644%_))))
                            (_%g8859888640%_ _%g8859988644%_))))
                    (_%g8859888640%_ _%g8859988644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8859888640%_
                                                     _%g8859988644%_))))
                                            (_%g8859888640%_
                                             _%g8859988644%_))))
                                    (_%g8859888640%_ _%g8859988644%_))))
                            (_%g8859888640%_ _%g8859988644%_))))
                    (_%g8859888640%_ _%g8859988644%_)))))
        (_%g8859788779%_ _%$stx88594%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx88783%_)
      (let* ((_%g8878788833%_
              (lambda (_%g8878888829%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8878888829%_)))
             (_%g8878688986%_
              (lambda (_%g8878888837%_)
                (if (gx#stx-pair? _%g8878888837%_)
                    (let ((_%e8880088840%_ (gx#syntax-e _%g8878888837%_)))
                      (let ((_%hd8879988844%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8880088840%_)))
                            (_%tl8879888847%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8880088840%_))))
                        (if (gx#stx-pair? _%tl8879888847%_)
                            (let ((_%e8880388850%_
                                   (gx#syntax-e _%tl8879888847%_)))
                              (let ((_%hd8880288854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8880388850%_)))
                                    (_%tl8880188857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8880388850%_))))
                                (if (gx#stx-pair? _%tl8880188857%_)
                                    (let ((_%e8880688860%_
                                           (gx#syntax-e _%tl8880188857%_)))
                                      (let ((_%hd8880588864%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8880688860%_)))
                                            (_%tl8880488867%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8880688860%_))))
                                        (if (gx#stx-pair? _%tl8880488867%_)
                                            (let ((_%e8880988870%_
                                                   (gx#syntax-e
                                                    _%tl8880488867%_)))
                                              (let ((_%hd8880888874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8880988870%_)))
                                                    (_%tl8880788877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8880988870%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8880788877%_)
                                                    (let ((_%e8881288880%_
                                                           (gx#syntax-e
                                                            _%tl8880788877%_)))
                                                      (let ((_%hd8881188884%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8881288880%_)))
                    (_%tl8881088887%_
                     (let () (declare (not safe)) (##cdr _%e8881288880%_))))
                (if (gx#stx-pair? _%tl8881088887%_)
                    (let ((_%e8881588890%_ (gx#syntax-e _%tl8881088887%_)))
                      (let ((_%hd8881488894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8881588890%_)))
                            (_%tl8881388897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8881588890%_))))
                        (if (gx#stx-pair? _%tl8881388897%_)
                            (let ((_%e8881888900%_
                                   (gx#syntax-e _%tl8881388897%_)))
                              (let ((_%hd8881788904%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8881888900%_)))
                                    (_%tl8881688907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8881888900%_))))
                                (if (gx#stx-pair? _%tl8881688907%_)
                                    (let ((_%e8882188910%_
                                           (gx#syntax-e _%tl8881688907%_)))
                                      (let ((_%hd8882088914%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8882188910%_)))
                                            (_%tl8881988917%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8882188910%_))))
                                        (if (gx#stx-pair? _%tl8881988917%_)
                                            (let ((_%e8882488920%_
                                                   (gx#syntax-e
                                                    _%tl8881988917%_)))
                                              (let ((_%hd8882388924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8882488920%_)))
                                                    (_%tl8882288927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8882488920%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8882288927%_)
                                                    (let ((_%e8882788930%_
                                                           (gx#syntax-e
                                                            _%tl8882288927%_)))
                                                      (let ((_%hd8882688934%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8882788930%_)))
                    (_%tl8882588937%_
                     (let () (declare (not safe)) (##cdr _%e8882788930%_))))
                (if (gx#stx-null? _%tl8882588937%_)
                    ((lambda (_%L88940%_
                              _%L88942%_
                              _%L88943%_
                              _%L88944%_
                              _%L88945%_
                              _%L88946%_
                              _%L88947%_
                              _%L88948%_
                              _%L88949%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L88947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L88945%_ '()))
                         (cons _%L88948%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L88949%_ '()))
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
                                                       (cons _%L88949%_
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
                                                               (cons _%L88949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L88945%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L88949%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L88944%_
                                                     (cons _%L88943%_ '()))
                                               '()))))
                       (cons (cons _%L88940%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L88949%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L88945%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L88949%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L88944%_
                                                           (cons _%L88943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L88942%_ '()) '()))))
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
                     (cons (cons (cons _%L88946%_
                                       (cons _%L88945%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L88949%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L88945%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L88949%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L88944%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L88949%_
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
                     _%hd8882688934%_
                     _%hd8882388924%_
                     _%hd8882088914%_
                     _%hd8881788904%_
                     _%hd8881488894%_
                     _%hd8881188884%_
                     _%hd8880888874%_
                     _%hd8880588864%_
                     _%hd8880288854%_)
                    (_%g8878788833%_ _%g8878888837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8878788833%_
                                                     _%g8878888837%_))))
                                            (_%g8878788833%_
                                             _%g8878888837%_))))
                                    (_%g8878788833%_ _%g8878888837%_))))
                            (_%g8878788833%_ _%g8878888837%_))))
                    (_%g8878788833%_ _%g8878888837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8878788833%_
                                                     _%g8878888837%_))))
                                            (_%g8878788833%_
                                             _%g8878888837%_))))
                                    (_%g8878788833%_ _%g8878888837%_))))
                            (_%g8878788833%_ _%g8878888837%_))))
                    (_%g8878788833%_ _%g8878888837%_)))))
        (_%g8878688986%_ _%$stx88783%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx88990%_)
      (let* ((_%g8899489028%_
              (lambda (_%g8899589024%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8899589024%_)))
             (_%g8899389139%_
              (lambda (_%g8899589032%_)
                (if (gx#stx-pair? _%g8899589032%_)
                    (let ((_%e8900489035%_ (gx#syntax-e _%g8899589032%_)))
                      (let ((_%hd8900389039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8900489035%_)))
                            (_%tl8900289042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8900489035%_))))
                        (if (gx#stx-pair? _%tl8900289042%_)
                            (let ((_%e8900789045%_
                                   (gx#syntax-e _%tl8900289042%_)))
                              (let ((_%hd8900689049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8900789045%_)))
                                    (_%tl8900589052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8900789045%_))))
                                (if (gx#stx-pair? _%tl8900589052%_)
                                    (let ((_%e8901089055%_
                                           (gx#syntax-e _%tl8900589052%_)))
                                      (let ((_%hd8900989059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8901089055%_)))
                                            (_%tl8900889062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8901089055%_))))
                                        (if (gx#stx-pair? _%tl8900889062%_)
                                            (let ((_%e8901389065%_
                                                   (gx#syntax-e
                                                    _%tl8900889062%_)))
                                              (let ((_%hd8901289069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8901389065%_)))
                                                    (_%tl8901189072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8901389065%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8901189072%_)
                                                    (let ((_%e8901689075%_
                                                           (gx#syntax-e
                                                            _%tl8901189072%_)))
                                                      (let ((_%hd8901589079%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8901689075%_)))
                    (_%tl8901489082%_
                     (let () (declare (not safe)) (##cdr _%e8901689075%_))))
                (if (gx#stx-pair? _%tl8901489082%_)
                    (let ((_%e8901989085%_ (gx#syntax-e _%tl8901489082%_)))
                      (let ((_%hd8901889089%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8901989085%_)))
                            (_%tl8901789092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8901989085%_))))
                        (if (gx#stx-pair? _%tl8901789092%_)
                            (let ((_%e8902289095%_
                                   (gx#syntax-e _%tl8901789092%_)))
                              (let ((_%hd8902189099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8902289095%_)))
                                    (_%tl8902089102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8902289095%_))))
                                (if (gx#stx-null? _%tl8902089102%_)
                                    ((lambda (_%L89105%_
                                              _%L89107%_
                                              _%L89108%_
                                              _%L89109%_
                                              _%L89110%_
                                              _%L89111%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89109%_
                                               (cons _%L89107%_ '()))
                                         (cons _%L89110%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89111%_ '()))
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
                               (cons _%L89111%_
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
                                     (cons (cons (cons _%L89108%_
                                                       (cons _%L89107%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89111%_
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
                     (cons (cons _%L89105%_ '()) '()))))
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
                                     _%hd8902189099%_
                                     _%hd8901889089%_
                                     _%hd8901589079%_
                                     _%hd8901289069%_
                                     _%hd8900989059%_
                                     _%hd8900689049%_)
                                    (_%g8899489028%_ _%g8899589032%_))))
                            (_%g8899489028%_ _%g8899589032%_))))
                    (_%g8899489028%_ _%g8899589032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8899489028%_
                                                     _%g8899589032%_))))
                                            (_%g8899489028%_
                                             _%g8899589032%_))))
                                    (_%g8899489028%_ _%g8899589032%_))))
                            (_%g8899489028%_ _%g8899589032%_))))
                    (_%g8899489028%_ _%g8899589032%_)))))
        (_%g8899389139%_ _%$stx88990%_)))))

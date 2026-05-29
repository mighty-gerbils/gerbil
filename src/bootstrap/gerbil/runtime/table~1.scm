(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx115888%_)
      (let* ((_%g115892115910%_
              (lambda (_%g115893115906%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115893115906%_)))
             (_%g115891115966%_
              (lambda (_%g115893115914%_)
                (if (gx#stx-pair? _%g115893115914%_)
                    (let ((_%e115896115917%_ (gx#syntax-e _%g115893115914%_)))
                      (let ((_%hd115897115921%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115896115917%_)))
                            (_%tl115898115924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115896115917%_))))
                        (if (gx#stx-pair? _%tl115898115924%_)
                            (let ((_%e115899115927%_
                                   (gx#syntax-e _%tl115898115924%_)))
                              (let ((_%hd115900115931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115899115927%_)))
                                    (_%tl115901115934%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115899115927%_))))
                                (if (gx#stx-pair? _%tl115901115934%_)
                                    (let ((_%e115902115937%_
                                           (gx#syntax-e _%tl115901115934%_)))
                                      (let ((_%hd115903115941%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115902115937%_)))
                                            (_%tl115904115944%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115902115937%_))))
                                        (if (gx#stx-null? _%tl115904115944%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%hd115900115931%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%hd115903115941%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g115892115910%_
                                             _%g115893115914%_))))
                                    (_%g115892115910%_ _%g115893115914%_))))
                            (_%g115892115910%_ _%g115893115914%_))))
                    (_%g115892115910%_ _%g115893115914%_)))))
        (_%g115891115966%_ _%$stx115888%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx115970%_)
      (let* ((_%g115973115995%_
              (lambda (_%g115974115991%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115974115991%_)))
             (_%g115972116308%_
              (lambda (_%g115974115999%_)
                (if (gx#stx-pair? _%g115974115999%_)
                    (let ((_%e115978116002%_ (gx#syntax-e _%g115974115999%_)))
                      (let ((_%hd115979116006%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115978116002%_)))
                            (_%tl115980116009%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115978116002%_))))
                        (if (gx#stx-pair? _%tl115980116009%_)
                            (let ((_%e115981116012%_
                                   (gx#syntax-e _%tl115980116009%_)))
                              (let ((_%hd115982116016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115981116012%_)))
                                    (_%tl115983116019%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115981116012%_))))
                                (if (gx#stx-pair? _%tl115983116019%_)
                                    (let ((_%e115984116022%_
                                           (gx#syntax-e _%tl115983116019%_)))
                                      (let ((_%hd115985116026%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115984116022%_)))
                                            (_%tl115986116029%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115984116022%_))))
                                        (if (gx#stx-pair? _%tl115986116029%_)
                                            (let ((_%e115987116032%_
                                                   (gx#syntax-e
                                                    _%tl115986116029%_)))
                                              (let ((_%hd115988116036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115987116032%_)))
                                                    (_%tl115989116039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115987116032%_))))
                                                (if (gx#stx-null?
                                                     _%tl115989116039%_)
                                                    (let* ((_%g116064116119%_
                                                            (lambda (_%g116065116115%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g116065116115%_)))
                                                           (_%g116063116304%_
                                                            (lambda (_%g116065116123%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g116065116123%_)
                          (let ((_%e116078116126%_
                                 (gx#syntax-e _%g116065116123%_)))
                            (let ((_%hd116079116130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e116078116126%_)))
                                  (_%tl116080116133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e116078116126%_))))
                              (if (gx#stx-pair? _%tl116080116133%_)
                                  (let ((_%e116081116136%_
                                         (gx#syntax-e _%tl116080116133%_)))
                                    (let ((_%hd116082116140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e116081116136%_)))
                                          (_%tl116083116143%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e116081116136%_))))
                                      (if (gx#stx-pair? _%tl116083116143%_)
                                          (let ((_%e116084116146%_
                                                 (gx#syntax-e
                                                  _%tl116083116143%_)))
                                            (let ((_%hd116085116150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116084116146%_)))
                                                  (_%tl116086116153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116084116146%_))))
                                              (if (gx#stx-pair?
                                                   _%tl116086116153%_)
                                                  (let ((_%e116087116156%_
                                                         (gx#syntax-e
                                                          _%tl116086116153%_)))
                                                    (let ((_%hd116088116160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e116087116156%_)))
                                                          (_%tl116089116163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e116087116156%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl116089116163%_)
                                                          (let ((_%e116090116166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl116089116163%_)))
                    (let ((_%hd116091116170%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116090116166%_)))
                          (_%tl116092116173%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116090116166%_))))
                      (if (gx#stx-pair? _%tl116092116173%_)
                          (let ((_%e116093116176%_
                                 (gx#syntax-e _%tl116092116173%_)))
                            (let ((_%hd116094116180%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e116093116176%_)))
                                  (_%tl116095116183%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e116093116176%_))))
                              (if (gx#stx-pair? _%tl116095116183%_)
                                  (let ((_%e116096116186%_
                                         (gx#syntax-e _%tl116095116183%_)))
                                    (let ((_%hd116097116190%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e116096116186%_)))
                                          (_%tl116098116193%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e116096116186%_))))
                                      (if (gx#stx-pair? _%tl116098116193%_)
                                          (let ((_%e116099116196%_
                                                 (gx#syntax-e
                                                  _%tl116098116193%_)))
                                            (let ((_%hd116100116200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116099116196%_)))
                                                  (_%tl116101116203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116099116196%_))))
                                              (if (gx#stx-pair?
                                                   _%tl116101116203%_)
                                                  (let ((_%e116102116206%_
                                                         (gx#syntax-e
                                                          _%tl116101116203%_)))
                                                    (let ((_%hd116103116210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e116102116206%_)))
                                                          (_%tl116104116213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e116102116206%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl116104116213%_)
                                                          (let ((_%e116105116216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl116104116213%_)))
                    (let ((_%hd116106116220%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116105116216%_)))
                          (_%tl116107116223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116105116216%_))))
                      (if (gx#stx-pair? _%tl116107116223%_)
                          (let ((_%e116108116226%_
                                 (gx#syntax-e _%tl116107116223%_)))
                            (let ((_%hd116109116230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e116108116226%_)))
                                  (_%tl116110116233%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e116108116226%_))))
                              (if (gx#stx-pair? _%tl116110116233%_)
                                  (let ((_%e116111116236%_
                                         (gx#syntax-e _%tl116110116233%_)))
                                    (let ((_%hd116112116240%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e116111116236%_)))
                                          (_%tl116113116243%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e116111116236%_))))
                                      (if (gx#stx-null? _%tl116113116243%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%hd116079116130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%hd115985116026%_
                                                  (cons _%hd115988116036%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%hd116082116140%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons '#f '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'seed)
                                                        (cons '0 '()))
                                                  '())))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-raw-table/lock)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons _%hd115985116026%_
                                                        (cons _%hd115988116036%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%hd116085116150%_
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'key)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'default)
                                                              '()))))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'table)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         '&raw-table-table)
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
                (cons (cons (gx#datum->syntax '#f '__table-ref)
                            (cons (gx#datum->syntax '#f 'table)
                                  (cons (gx#datum->syntax '#f 'seed)
                                        (cons _%hd115985116026%_
                                              (cons _%hd115988116036%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'default)
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%hd116088116160%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tab)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'key)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'default)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'do-raw-table-lock)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (cons _%hd116085116150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'default)
                                                    '()))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%hd116091116170%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'key)
                            (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f '__table-set!)
                                        (cons (gx#datum->syntax '#f 'table)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'seed)
                                                    (cons _%hd115985116026%_
                                                          (cons _%hd115988116036%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'key)
                              (cons (gx#datum->syntax '#f 'value)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons '()
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'set!)
                          (cons (cons (gx#datum->syntax '#f '&raw-table-free)
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
                    (cons (cons (gx#datum->syntax '#f 'set!)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '&raw-table-count)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons '()
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'set!)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '&raw-table-count)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _%hd116094116180%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            (cons (gx#datum->syntax '#f 'key)
                                  (cons (gx#datum->syntax '#f 'value) '()))))
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '__raw-table-rehash!)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        '())))
                      (cons (cons _%hd116091116170%_
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
                                                        (cons (cons _%hd116097116190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%hd116094116180%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons (cons _%hd116100116200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%hd116103116210%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'default)
                                                          '())))))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'seed)
                        (cons (cons (gx#datum->syntax '#f '&raw-table-seed)
                                    (cons (gx#datum->syntax '#f 'tab) '()))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '__table-update!)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'table)
                        (cons (gx#datum->syntax '#f 'seed)
                              (cons _%hd115985116026%_
                                    (cons _%hd115988116036%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%hd116103116210%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons '()
                                      (cons (cons (gx#datum->syntax '#f 'set!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-free)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons (cons (gx#datum->syntax '#f 'fx-)
                            (cons (cons (gx#datum->syntax '#f '&raw-table-free)
                                        (cons (gx#datum->syntax '#f 'tab) '()))
                                  (cons '1 '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons (cons _%hd116103116210%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%hd116103116210%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'default)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'tab)
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '4 '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__raw-table-rehash!)
                        (cons (gx#datum->syntax '#f 'tab) '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%hd116100116200%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%hd116103116210%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%hd116106116220%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%hd116103116210%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'default)
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'do-raw-table-lock)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (cons _%hd116103116210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%hd116103116210%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%hd116109116230%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
                                                             '#f
                                                             'tab)
                                                            '()))
                                                '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f '__table-del!)
                                    (cons (gx#datum->syntax '#f 'table)
                                          (cons (gx#datum->syntax '#f 'seed)
                                                (cons _%hd115985116026%_
                                                      (cons _%hd115988116036%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'key)
                          (cons (cons (gx#datum->syntax '#f 'lambda)
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
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%hd116112116240%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'do-raw-table-lock)
                        (cons (gx#datum->syntax '#f 'tab)
                              (cons (cons _%hd116109116230%_
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      '())))
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g116064116119%_
                                           _%g116065116123%_))))
                                  (_%g116064116119%_ _%g116065116123%_))))
                          (_%g116064116119%_ _%g116065116123%_))))
                  (_%g116064116119%_ _%g116065116123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g116064116119%_
                                                   _%g116065116123%_))))
                                          (_%g116064116119%_
                                           _%g116065116123%_))))
                                  (_%g116064116119%_ _%g116065116123%_))))
                          (_%g116064116119%_ _%g116065116123%_))))
                  (_%g116064116119%_ _%g116065116123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g116064116119%_
                                                   _%g116065116123%_))))
                                          (_%g116064116119%_
                                           _%g116065116123%_))))
                                  (_%g116064116119%_ _%g116065116123%_))))
                          (_%g116064116119%_ _%g116065116123%_)))))
              (_%g116063116304%_
               (list (gx#stx-identifier
                      _%hd115982116016%_
                      '"make-"
                      _%hd115982116016%_)
                     (gx#stx-identifier
                      _%hd115982116016%_
                      '"make-"
                      _%hd115982116016%_
                      '"/lock")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-ref")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      '"__"
                      _%hd115982116016%_
                      '"-set!")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-set!")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      '"__"
                      _%hd115982116016%_
                      '"-update!")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-update!")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%hd115982116016%_
                      _%hd115982116016%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115973115995%_
                                                     _%g115974115999%_))))
                                            (_%g115973115995%_
                                             _%g115974115999%_))))
                                    (_%g115973115995%_ _%g115974115999%_))))
                            (_%g115973115995%_ _%g115974115999%_))))
                    (_%g115973115995%_ _%g115974115999%_)))))
        (_%g115972116308%_ _%stx115970%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx116312%_)
      (let* ((_%g116316116338%_
              (lambda (_%g116317116334%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116317116334%_)))
             (_%g116315116407%_
              (lambda (_%g116317116342%_)
                (if (gx#stx-pair? _%g116317116342%_)
                    (let ((_%e116321116345%_ (gx#syntax-e _%g116317116342%_)))
                      (let ((_%hd116322116349%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116321116345%_)))
                            (_%tl116323116352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116321116345%_))))
                        (if (gx#stx-pair? _%tl116323116352%_)
                            (let ((_%e116324116355%_
                                   (gx#syntax-e _%tl116323116352%_)))
                              (let ((_%hd116325116359%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116324116355%_)))
                                    (_%tl116326116362%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116324116355%_))))
                                (if (gx#stx-pair? _%tl116326116362%_)
                                    (let ((_%e116327116365%_
                                           (gx#syntax-e _%tl116326116362%_)))
                                      (let ((_%hd116328116369%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116327116365%_)))
                                            (_%tl116329116372%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116327116365%_))))
                                        (if (gx#stx-pair? _%tl116329116372%_)
                                            (let ((_%e116330116375%_
                                                   (gx#syntax-e
                                                    _%tl116329116372%_)))
                                              (let ((_%hd116331116379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116330116375%_)))
                                                    (_%tl116332116382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116330116375%_))))
                                                (if (gx#stx-null?
                                                     _%tl116332116382%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%hd116325116359%_
                                                (cons _%hd116328116369%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%hd116328116369%_
                                (cons _%hd116328116369%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%hd116331116379%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116316116338%_
                                                     _%g116317116342%_))))
                                            (_%g116316116338%_
                                             _%g116317116342%_))))
                                    (_%g116316116338%_ _%g116317116342%_))))
                            (_%g116316116338%_ _%g116317116342%_))))
                    (_%g116316116338%_ _%g116317116342%_)))))
        (_%g116315116407%_ _%$stx116312%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx116411%_)
      (let* ((_%g116415116449%_
              (lambda (_%g116416116445%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116416116445%_)))
             (_%g116414116560%_
              (lambda (_%g116416116453%_)
                (if (gx#stx-pair? _%g116416116453%_)
                    (let ((_%e116423116456%_ (gx#syntax-e _%g116416116453%_)))
                      (let ((_%hd116424116460%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116423116456%_)))
                            (_%tl116425116463%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116423116456%_))))
                        (if (gx#stx-pair? _%tl116425116463%_)
                            (let ((_%e116426116466%_
                                   (gx#syntax-e _%tl116425116463%_)))
                              (let ((_%hd116427116470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116426116466%_)))
                                    (_%tl116428116473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116426116466%_))))
                                (if (gx#stx-pair? _%tl116428116473%_)
                                    (let ((_%e116429116476%_
                                           (gx#syntax-e _%tl116428116473%_)))
                                      (let ((_%hd116430116480%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116429116476%_)))
                                            (_%tl116431116483%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116429116476%_))))
                                        (if (gx#stx-pair? _%tl116431116483%_)
                                            (let ((_%e116432116486%_
                                                   (gx#syntax-e
                                                    _%tl116431116483%_)))
                                              (let ((_%hd116433116490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116432116486%_)))
                                                    (_%tl116434116493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116432116486%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116434116493%_)
                                                    (let ((_%e116435116496%_
                                                           (gx#syntax-e
                                                            _%tl116434116493%_)))
                                                      (let ((_%hd116436116500%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116435116496%_)))
                    (_%tl116437116503%_
                     (let () (declare (not safe)) (##cdr _%e116435116496%_))))
                (if (gx#stx-pair? _%tl116437116503%_)
                    (let ((_%e116438116506%_ (gx#syntax-e _%tl116437116503%_)))
                      (let ((_%hd116439116510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116438116506%_)))
                            (_%tl116440116513%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116438116506%_))))
                        (if (gx#stx-pair? _%tl116440116513%_)
                            (let ((_%e116441116516%_
                                   (gx#syntax-e _%tl116440116513%_)))
                              (let ((_%hd116442116520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116441116516%_)))
                                    (_%tl116443116523%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116441116516%_))))
                                (if (gx#stx-null? _%tl116443116523%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%hd116433116490%_
                                            (cons _%hd116439116510%_ '()))
                                      (cons _%hd116430116480%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%hd116427116470%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'entries)
                                (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                            (cons (gx#datum->syntax '#f 'size)
                                                  (cons '2 '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'start)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'fxarithmetic-shift-left)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fxmodulo)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
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
                                            (cons (gx#datum->syntax '#f 'start)
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
                            (cons _%hd116427116470%_
                                  (cons (gx#datum->syntax '#f 'probe) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'cond)
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
                                  (cons _%hd116442116520%_ '()))
                            (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                              (cons (gx#datum->syntax '#f 'k)
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
                                    (cons (gx#datum->syntax '#f 'size) '()))))
                  (cons (cons (gx#datum->syntax '#f 'fx+)
                              (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                        (cons (cons (gx#datum->syntax '#f 'or)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                '())))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (cons _%hd116436116500%_
                                                    (cons _%hd116439116510%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%hd116427116470%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'probe)
                                          (cons '1 '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
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
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%g116415116449%_ _%g116416116453%_))))
                            (_%g116415116449%_ _%g116416116453%_))))
                    (_%g116415116449%_ _%g116416116453%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116415116449%_
                                                     _%g116416116453%_))))
                                            (_%g116415116449%_
                                             _%g116416116453%_))))
                                    (_%g116415116449%_ _%g116416116453%_))))
                            (_%g116415116449%_ _%g116416116453%_))))
                    (_%g116415116449%_ _%g116416116453%_)))))
        (_%g116414116560%_ _%$stx116411%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx116564%_)
      (let* ((_%g116568116610%_
              (lambda (_%g116569116606%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116569116606%_)))
             (_%g116567116749%_
              (lambda (_%g116569116614%_)
                (if (gx#stx-pair? _%g116569116614%_)
                    (let ((_%e116578116617%_ (gx#syntax-e _%g116569116614%_)))
                      (let ((_%hd116579116621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116578116617%_)))
                            (_%tl116580116624%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116578116617%_))))
                        (if (gx#stx-pair? _%tl116580116624%_)
                            (let ((_%e116581116627%_
                                   (gx#syntax-e _%tl116580116624%_)))
                              (let ((_%hd116582116631%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116581116627%_)))
                                    (_%tl116583116634%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116581116627%_))))
                                (if (gx#stx-pair? _%tl116583116634%_)
                                    (let ((_%e116584116637%_
                                           (gx#syntax-e _%tl116583116634%_)))
                                      (let ((_%hd116585116641%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116584116637%_)))
                                            (_%tl116586116644%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116584116637%_))))
                                        (if (gx#stx-pair? _%tl116586116644%_)
                                            (let ((_%e116587116647%_
                                                   (gx#syntax-e
                                                    _%tl116586116644%_)))
                                              (let ((_%hd116588116651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116587116647%_)))
                                                    (_%tl116589116654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116587116647%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116589116654%_)
                                                    (let ((_%e116590116657%_
                                                           (gx#syntax-e
                                                            _%tl116589116654%_)))
                                                      (let ((_%hd116591116661%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116590116657%_)))
                    (_%tl116592116664%_
                     (let () (declare (not safe)) (##cdr _%e116590116657%_))))
                (if (gx#stx-pair? _%tl116592116664%_)
                    (let ((_%e116593116667%_ (gx#syntax-e _%tl116592116664%_)))
                      (let ((_%hd116594116671%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116593116667%_)))
                            (_%tl116595116674%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116593116667%_))))
                        (if (gx#stx-pair? _%tl116595116674%_)
                            (let ((_%e116596116677%_
                                   (gx#syntax-e _%tl116595116674%_)))
                              (let ((_%hd116597116681%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116596116677%_)))
                                    (_%tl116598116684%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116596116677%_))))
                                (if (gx#stx-pair? _%tl116598116684%_)
                                    (let ((_%e116599116687%_
                                           (gx#syntax-e _%tl116598116684%_)))
                                      (let ((_%hd116600116691%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116599116687%_)))
                                            (_%tl116601116694%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116599116687%_))))
                                        (if (gx#stx-pair? _%tl116601116694%_)
                                            (let ((_%e116602116697%_
                                                   (gx#syntax-e
                                                    _%tl116601116694%_)))
                                              (let ((_%hd116603116701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116602116697%_)))
                                                    (_%tl116604116704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116602116697%_))))
                                                (if (gx#stx-null?
                                                     _%tl116604116704%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%hd116588116651%_
                                                            (cons _%hd116594116671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%hd116585116641%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%hd116582116631%_
                                                            '()))
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'entries)
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
                    (cons (cons (gx#datum->syntax '#f 'deleted) (cons '#f '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'k)
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%hd116582116631%_
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
                                                               '#f
                                                               'k)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'macro-unused-obj)
                                  '())
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'deleted)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'vector-set!)
                                                    (cons _%hd116582116631%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%hd116594116671%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%hd116582116631%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%hd116597116681%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%hd116603116701%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%hd116582116631%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%hd116594116671%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%hd116582116631%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%hd116597116681%_ '()))))
                  (cons (cons _%hd116600116691%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'eq?)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'k)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'macro-deleted-obj)
                                        '())
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'loop)
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
                                        (cons (cons (gx#datum->syntax '#f 'or)
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
                                                  (cons (cons (cons _%hd116591116661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd116594116671%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%hd116582116631%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%hd116594116671%_ '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%hd116582116631%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%hd116597116681%_
                                                          '()))))
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'deleted)
                                                          '()))))
                                  '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116568116610%_
                                                     _%g116569116614%_))))
                                            (_%g116568116610%_
                                             _%g116569116614%_))))
                                    (_%g116568116610%_ _%g116569116614%_))))
                            (_%g116568116610%_ _%g116569116614%_))))
                    (_%g116568116610%_ _%g116569116614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116568116610%_
                                                     _%g116569116614%_))))
                                            (_%g116568116610%_
                                             _%g116569116614%_))))
                                    (_%g116568116610%_ _%g116569116614%_))))
                            (_%g116568116610%_ _%g116569116614%_))))
                    (_%g116568116610%_ _%g116569116614%_)))))
        (_%g116567116749%_ _%$stx116564%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx116753%_)
      (let* ((_%g116757116803%_
              (lambda (_%g116758116799%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116758116799%_)))
             (_%g116756116956%_
              (lambda (_%g116758116807%_)
                (if (gx#stx-pair? _%g116758116807%_)
                    (let ((_%e116768116810%_ (gx#syntax-e _%g116758116807%_)))
                      (let ((_%hd116769116814%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116768116810%_)))
                            (_%tl116770116817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116768116810%_))))
                        (if (gx#stx-pair? _%tl116770116817%_)
                            (let ((_%e116771116820%_
                                   (gx#syntax-e _%tl116770116817%_)))
                              (let ((_%hd116772116824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116771116820%_)))
                                    (_%tl116773116827%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116771116820%_))))
                                (if (gx#stx-pair? _%tl116773116827%_)
                                    (let ((_%e116774116830%_
                                           (gx#syntax-e _%tl116773116827%_)))
                                      (let ((_%hd116775116834%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116774116830%_)))
                                            (_%tl116776116837%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116774116830%_))))
                                        (if (gx#stx-pair? _%tl116776116837%_)
                                            (let ((_%e116777116840%_
                                                   (gx#syntax-e
                                                    _%tl116776116837%_)))
                                              (let ((_%hd116778116844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116777116840%_)))
                                                    (_%tl116779116847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116777116840%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116779116847%_)
                                                    (let ((_%e116780116850%_
                                                           (gx#syntax-e
                                                            _%tl116779116847%_)))
                                                      (let ((_%hd116781116854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116780116850%_)))
                    (_%tl116782116857%_
                     (let () (declare (not safe)) (##cdr _%e116780116850%_))))
                (if (gx#stx-pair? _%tl116782116857%_)
                    (let ((_%e116783116860%_ (gx#syntax-e _%tl116782116857%_)))
                      (let ((_%hd116784116864%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116783116860%_)))
                            (_%tl116785116867%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116783116860%_))))
                        (if (gx#stx-pair? _%tl116785116867%_)
                            (let ((_%e116786116870%_
                                   (gx#syntax-e _%tl116785116867%_)))
                              (let ((_%hd116787116874%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116786116870%_)))
                                    (_%tl116788116877%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116786116870%_))))
                                (if (gx#stx-pair? _%tl116788116877%_)
                                    (let ((_%e116789116880%_
                                           (gx#syntax-e _%tl116788116877%_)))
                                      (let ((_%hd116790116884%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116789116880%_)))
                                            (_%tl116791116887%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116789116880%_))))
                                        (if (gx#stx-pair? _%tl116791116887%_)
                                            (let ((_%e116792116890%_
                                                   (gx#syntax-e
                                                    _%tl116791116887%_)))
                                              (let ((_%hd116793116894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116792116890%_)))
                                                    (_%tl116794116897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116792116890%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116794116897%_)
                                                    (let ((_%e116795116900%_
                                                           (gx#syntax-e
                                                            _%tl116794116897%_)))
                                                      (let ((_%hd116796116904%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116795116900%_)))
                    (_%tl116797116907%_
                     (let () (declare (not safe)) (##cdr _%e116795116900%_))))
                (if (gx#stx-null? _%tl116797116907%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%hd116778116844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd116784116864%_ '()))
                      (cons _%hd116775116834%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%hd116772116824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'entries)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'fxquotient)
                            (cons (gx#datum->syntax '#f 'size) (cons '2 '())))
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
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (gx#datum->syntax '#f 'loop)
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
                                                    (cons _%hd116772116824%_
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
                                    (cons (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'vector-set!)
                                                            (cons _%hd116772116824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%hd116784116864%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%hd116772116824%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%hd116787116874%_
                                                  (cons _%hd116790116884%_
                                                        '()))
                                            '()))))
                    (cons (cons _%hd116796116904%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%hd116772116824%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%hd116784116864%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%hd116772116824%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%hd116787116874%_
                                                        (cons _%hd116790116884%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%hd116793116894%_ '()) '()))))
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
                  (cons (cons (cons _%hd116781116854%_
                                    (cons _%hd116784116864%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%hd116772116824%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%hd116784116864%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%hd116772116824%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%hd116787116874%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%hd116772116824%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fx+)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'probe)
                            (cons '1 '())))
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
                                      '())))
                    (_%g116757116803%_ _%g116758116807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116757116803%_
                                                     _%g116758116807%_))))
                                            (_%g116757116803%_
                                             _%g116758116807%_))))
                                    (_%g116757116803%_ _%g116758116807%_))))
                            (_%g116757116803%_ _%g116758116807%_))))
                    (_%g116757116803%_ _%g116758116807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116757116803%_
                                                     _%g116758116807%_))))
                                            (_%g116757116803%_
                                             _%g116758116807%_))))
                                    (_%g116757116803%_ _%g116758116807%_))))
                            (_%g116757116803%_ _%g116758116807%_))))
                    (_%g116757116803%_ _%g116758116807%_)))))
        (_%g116756116956%_ _%$stx116753%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx116960%_)
      (let* ((_%g116964116998%_
              (lambda (_%g116965116994%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116965116994%_)))
             (_%g116963117109%_
              (lambda (_%g116965117002%_)
                (if (gx#stx-pair? _%g116965117002%_)
                    (let ((_%e116972117005%_ (gx#syntax-e _%g116965117002%_)))
                      (let ((_%hd116973117009%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116972117005%_)))
                            (_%tl116974117012%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116972117005%_))))
                        (if (gx#stx-pair? _%tl116974117012%_)
                            (let ((_%e116975117015%_
                                   (gx#syntax-e _%tl116974117012%_)))
                              (let ((_%hd116976117019%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116975117015%_)))
                                    (_%tl116977117022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116975117015%_))))
                                (if (gx#stx-pair? _%tl116977117022%_)
                                    (let ((_%e116978117025%_
                                           (gx#syntax-e _%tl116977117022%_)))
                                      (let ((_%hd116979117029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116978117025%_)))
                                            (_%tl116980117032%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116978117025%_))))
                                        (if (gx#stx-pair? _%tl116980117032%_)
                                            (let ((_%e116981117035%_
                                                   (gx#syntax-e
                                                    _%tl116980117032%_)))
                                              (let ((_%hd116982117039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116981117035%_)))
                                                    (_%tl116983117042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116981117035%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116983117042%_)
                                                    (let ((_%e116984117045%_
                                                           (gx#syntax-e
                                                            _%tl116983117042%_)))
                                                      (let ((_%hd116985117049%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116984117045%_)))
                    (_%tl116986117052%_
                     (let () (declare (not safe)) (##cdr _%e116984117045%_))))
                (if (gx#stx-pair? _%tl116986117052%_)
                    (let ((_%e116987117055%_ (gx#syntax-e _%tl116986117052%_)))
                      (let ((_%hd116988117059%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116987117055%_)))
                            (_%tl116989117062%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116987117055%_))))
                        (if (gx#stx-pair? _%tl116989117062%_)
                            (let ((_%e116990117065%_
                                   (gx#syntax-e _%tl116989117062%_)))
                              (let ((_%hd116991117069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116990117065%_)))
                                    (_%tl116992117072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116990117065%_))))
                                (if (gx#stx-null? _%tl116992117072%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%hd116982117039%_
                                            (cons _%hd116988117059%_ '()))
                                      (cons _%hd116979117029%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%hd116976117019%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'entries)
                                (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                            (cons (gx#datum->syntax '#f 'size)
                                                  (cons '2 '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'start)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'fxarithmetic-shift-left)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fxmodulo)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
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
                                            (cons (gx#datum->syntax '#f 'start)
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
                            (cons _%hd116976117019%_
                                  (cons (gx#datum->syntax '#f 'probe) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'cond)
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
                                  (cons (cons (gx#datum->syntax '#f 'void) '())
                                        '()))
                            (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                              (cons (gx#datum->syntax '#f 'k)
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
                                    (cons (gx#datum->syntax '#f 'size) '()))))
                  (cons (cons (gx#datum->syntax '#f 'fx+)
                              (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (cons _%hd116985117049%_
                                                    (cons _%hd116988117059%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%hd116976117019%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'macro-deleted-obj)
                                          '())
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%hd116976117019%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%hd116991117069%_ '()) '()))))
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
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%g116964116998%_ _%g116965117002%_))))
                            (_%g116964116998%_ _%g116965117002%_))))
                    (_%g116964116998%_ _%g116965117002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116964116998%_
                                                     _%g116965117002%_))))
                                            (_%g116964116998%_
                                             _%g116965117002%_))))
                                    (_%g116964116998%_ _%g116965117002%_))))
                            (_%g116964116998%_ _%g116965117002%_))))
                    (_%g116964116998%_ _%g116965117002%_)))))
        (_%g116963117109%_ _%$stx116960%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx117113%_)
      (let* ((_%g117117117135%_
              (lambda (_%g117118117131%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g117118117131%_)))
             (_%g117116117190%_
              (lambda (_%g117118117139%_)
                (if (gx#stx-pair? _%g117118117139%_)
                    (let ((_%e117121117142%_ (gx#syntax-e _%g117118117139%_)))
                      (let ((_%hd117122117146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117121117142%_)))
                            (_%tl117123117149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117121117142%_))))
                        (if (gx#stx-pair? _%tl117123117149%_)
                            (let ((_%e117124117152%_
                                   (gx#syntax-e _%tl117123117149%_)))
                              (let ((_%hd117125117156%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e117124117152%_)))
                                    (_%tl117126117159%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e117124117152%_))))
                                (if (gx#stx-pair? _%tl117126117159%_)
                                    (let ((_%e117127117162%_
                                           (gx#syntax-e _%tl117126117159%_)))
                                      (let ((_%hd117128117166%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e117127117162%_)))
                                            (_%tl117129117169%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e117127117162%_))))
                                        (if (gx#stx-null? _%tl117129117169%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%hd117125117156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%hd117128117166%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g117117117135%_
                                             _%g117118117139%_))))
                                    (_%g117117117135%_ _%g117118117139%_))))
                            (_%g117117117135%_ _%g117118117139%_))))
                    (_%g117117117135%_ _%g117118117139%_)))))
        (_%g117116117190%_ _%$stx117113%_)))))

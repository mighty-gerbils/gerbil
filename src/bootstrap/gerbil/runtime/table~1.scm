(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx112272%_)
      (let* ((_%g112276112294%_
              (lambda (_%g112277112290%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112277112290%_)))
             (_%g112275112350%_
              (lambda (_%g112277112298%_)
                (if (gx#stx-pair? _%g112277112298%_)
                    (let ((_%e112280112301%_ (gx#syntax-e _%g112277112298%_)))
                      (let ((_%hd112281112305%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112280112301%_)))
                            (_%tl112282112308%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112280112301%_))))
                        (if (gx#stx-pair? _%tl112282112308%_)
                            (let ((_%e112283112311%_
                                   (gx#syntax-e _%tl112282112308%_)))
                              (let ((_%hd112284112315%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112283112311%_)))
                                    (_%tl112285112318%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112283112311%_))))
                                (if (gx#stx-pair? _%tl112285112318%_)
                                    (let ((_%e112286112321%_
                                           (gx#syntax-e _%tl112285112318%_)))
                                      (let ((_%hd112287112325%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112286112321%_)))
                                            (_%tl112288112328%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112286112321%_))))
                                        (if (gx#stx-null? _%tl112288112328%_)
                                            ((lambda (_%g112278112331%_
                                                      _%g112279112333%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g112279112333%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g112278112331%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd112287112325%_
                                             _%hd112284112315%_)
                                            (_%g112276112294%_
                                             _%g112277112298%_))))
                                    (_%g112276112294%_ _%g112277112298%_))))
                            (_%g112276112294%_ _%g112277112298%_))))
                    (_%g112276112294%_ _%g112277112298%_)))))
        (_%g112275112350%_ _%$stx112272%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx112354%_)
      (let* ((_%g112357112379%_
              (lambda (_%g112358112375%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112358112375%_)))
             (_%g112356112692%_
              (lambda (_%g112358112383%_)
                (if (gx#stx-pair? _%g112358112383%_)
                    (let ((_%e112362112386%_ (gx#syntax-e _%g112358112383%_)))
                      (let ((_%hd112363112390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112362112386%_)))
                            (_%tl112364112393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112362112386%_))))
                        (if (gx#stx-pair? _%tl112364112393%_)
                            (let ((_%e112365112396%_
                                   (gx#syntax-e _%tl112364112393%_)))
                              (let ((_%hd112366112400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112365112396%_)))
                                    (_%tl112367112403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112365112396%_))))
                                (if (gx#stx-pair? _%tl112367112403%_)
                                    (let ((_%e112368112406%_
                                           (gx#syntax-e _%tl112367112403%_)))
                                      (let ((_%hd112369112410%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112368112406%_)))
                                            (_%tl112370112413%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112368112406%_))))
                                        (if (gx#stx-pair? _%tl112370112413%_)
                                            (let ((_%e112371112416%_
                                                   (gx#syntax-e
                                                    _%tl112370112413%_)))
                                              (let ((_%hd112372112420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112371112416%_)))
                                                    (_%tl112373112423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112371112416%_))))
                                                (if (gx#stx-null?
                                                     _%tl112373112423%_)
                                                    ((lambda (_%g112359112426%_
                                                              _%g112360112428%_
                                                              _%g112361112429%_)
                                                       (let* ((_%g112448112503%_
                                                               (lambda (_%g112449112499%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112449112499%_)))
                      (_%g112447112688%_
                       (lambda (_%g112449112507%_)
                         (if (gx#stx-pair? _%g112449112507%_)
                             (let ((_%e112462112510%_
                                    (gx#syntax-e _%g112449112507%_)))
                               (let ((_%hd112463112514%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112462112510%_)))
                                     (_%tl112464112517%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112462112510%_))))
                                 (if (gx#stx-pair? _%tl112464112517%_)
                                     (let ((_%e112465112520%_
                                            (gx#syntax-e _%tl112464112517%_)))
                                       (let ((_%hd112466112524%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112465112520%_)))
                                             (_%tl112467112527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112465112520%_))))
                                         (if (gx#stx-pair? _%tl112467112527%_)
                                             (let ((_%e112468112530%_
                                                    (gx#syntax-e
                                                     _%tl112467112527%_)))
                                               (let ((_%hd112469112534%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112468112530%_)))
                                                     (_%tl112470112537%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112468112530%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112470112537%_)
                                                     (let ((_%e112471112540%_
                                                            (gx#syntax-e
                                                             _%tl112470112537%_)))
                                                       (let ((_%hd112472112544%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112471112540%_)))
                     (_%tl112473112547%_
                      (let () (declare (not safe)) (##cdr _%e112471112540%_))))
                 (if (gx#stx-pair? _%tl112473112547%_)
                     (let ((_%e112474112550%_
                            (gx#syntax-e _%tl112473112547%_)))
                       (let ((_%hd112475112554%_
                              (let ()
                                (declare (not safe))
                                (##car _%e112474112550%_)))
                             (_%tl112476112557%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e112474112550%_))))
                         (if (gx#stx-pair? _%tl112476112557%_)
                             (let ((_%e112477112560%_
                                    (gx#syntax-e _%tl112476112557%_)))
                               (let ((_%hd112478112564%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112477112560%_)))
                                     (_%tl112479112567%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112477112560%_))))
                                 (if (gx#stx-pair? _%tl112479112567%_)
                                     (let ((_%e112480112570%_
                                            (gx#syntax-e _%tl112479112567%_)))
                                       (let ((_%hd112481112574%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112480112570%_)))
                                             (_%tl112482112577%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112480112570%_))))
                                         (if (gx#stx-pair? _%tl112482112577%_)
                                             (let ((_%e112483112580%_
                                                    (gx#syntax-e
                                                     _%tl112482112577%_)))
                                               (let ((_%hd112484112584%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112483112580%_)))
                                                     (_%tl112485112587%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112483112580%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112485112587%_)
                                                     (let ((_%e112486112590%_
                                                            (gx#syntax-e
                                                             _%tl112485112587%_)))
                                                       (let ((_%hd112487112594%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112486112590%_)))
                     (_%tl112488112597%_
                      (let () (declare (not safe)) (##cdr _%e112486112590%_))))
                 (if (gx#stx-pair? _%tl112488112597%_)
                     (let ((_%e112489112600%_
                            (gx#syntax-e _%tl112488112597%_)))
                       (let ((_%hd112490112604%_
                              (let ()
                                (declare (not safe))
                                (##car _%e112489112600%_)))
                             (_%tl112491112607%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e112489112600%_))))
                         (if (gx#stx-pair? _%tl112491112607%_)
                             (let ((_%e112492112610%_
                                    (gx#syntax-e _%tl112491112607%_)))
                               (let ((_%hd112493112614%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112492112610%_)))
                                     (_%tl112494112617%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112492112610%_))))
                                 (if (gx#stx-pair? _%tl112494112617%_)
                                     (let ((_%e112495112620%_
                                            (gx#syntax-e _%tl112494112617%_)))
                                       (let ((_%hd112496112624%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112495112620%_)))
                                             (_%tl112497112627%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112495112620%_))))
                                         (if (gx#stx-null? _%tl112497112627%_)
                                             ((lambda (_%g112450112630%_
                                                       _%g112451112632%_
                                                       _%g112452112633%_
                                                       _%g112453112634%_
                                                       _%g112454112635%_
                                                       _%g112455112636%_
                                                       _%g112456112637%_
                                                       _%g112457112638%_
                                                       _%g112458112639%_
                                                       _%g112459112640%_
                                                       _%g112460112641%_
                                                       _%g112461112642%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g112461112642%_
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
                                             'make-raw-table)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons _%g112360112428%_
                                                        (cons _%g112359112426%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g112460112641%_
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
                                                        (cons _%g112360112428%_
                                                              (cons _%g112359112426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g112459112640%_
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
                      (cons (cons (gx#datum->syntax '#f '__table-ref)
                                  (cons (gx#datum->syntax '#f 'table)
                                        (cons (gx#datum->syntax '#f 'seed)
                                              (cons _%g112360112428%_
                                                    (cons _%g112359112426%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons (gx#datum->syntax '#f 'default) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%g112458112639%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'key)
                            (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'do-raw-table-lock)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            (cons (cons _%g112459112640%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'default)
                                                          '()))))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _%g112457112638%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            (cons (gx#datum->syntax '#f 'key)
                                  (cons (gx#datum->syntax '#f 'value) '()))))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons (gx#datum->syntax '#f 'table)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-table)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'seed)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&raw-table-seed)
                        (cons (gx#datum->syntax '#f 'tab) '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '__table-set!)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'table)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'seed)
                                                          (cons _%g112360112428%_
                                                                (cons _%g112359112426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'key)
                                    (cons (gx#datum->syntax '#f 'value)
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
                                             '&raw-table-free)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx-)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-free)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'set!)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '&raw-table-count)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tab)
                                                        '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fx+)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'set!)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '&raw-table-count)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tab)
                                                        '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fx+)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%g112456112637%_
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fxquotient)
                        (cons (cons (gx#datum->syntax '#f 'vector-length)
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
                                                           '#f
                                                           'tab)
                                                          '()))
                                              '())))
                            (cons (cons _%g112457112638%_
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
                                                              (cons (cons _%g112455112636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'value)
                                                    '()))))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'do-raw-table-lock)
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (cons _%g112456112637%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons (cons _%g112454112635%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g112453112634%_
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__table-update!)
                        (cons (gx#datum->syntax '#f 'table)
                              (cons (gx#datum->syntax '#f 'seed)
                                    (cons _%g112360112428%_
                                          (cons _%g112359112426%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g112453112634%_
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
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
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
                                  (cons (cons _%g112453112634%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g112453112634%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'default)
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'when)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fx<)
                        (cons (cons (gx#datum->syntax '#f '&raw-table-free)
                                    (cons (gx#datum->syntax '#f 'tab) '()))
                              (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '&raw-table-table)
                          (cons (gx#datum->syntax '#f 'tab) '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons '4 '())))
                                    '())))
                  (cons (cons (gx#datum->syntax '#f '__raw-table-rehash!)
                              (cons (gx#datum->syntax '#f 'tab) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _%g112454112635%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g112453112634%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g112452112633%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g112453112634%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g112453112634%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g112453112634%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g112451112632%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key) '())))
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
                              (cons (cons (gx#datum->syntax '#f '__table-del!)
                                          (cons (gx#datum->syntax '#f 'table)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'seed)
                                                      (cons _%g112360112428%_
                                                            (cons _%g112359112426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'key)
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
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          '()))
                                              (cons '1 '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons (cons _%g112450112630%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g112451112632%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'tab)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'key)
                                                            '())))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%hd112496112624%_
                                              _%hd112493112614%_
                                              _%hd112490112604%_
                                              _%hd112487112594%_
                                              _%hd112484112584%_
                                              _%hd112481112574%_
                                              _%hd112478112564%_
                                              _%hd112475112554%_
                                              _%hd112472112544%_
                                              _%hd112469112534%_
                                              _%hd112466112524%_
                                              _%hd112463112514%_)
                                             (_%g112448112503%_
                                              _%g112449112507%_))))
                                     (_%g112448112503%_ _%g112449112507%_))))
                             (_%g112448112503%_ _%g112449112507%_))))
                     (_%g112448112503%_ _%g112449112507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112448112503%_
                                                      _%g112449112507%_))))
                                             (_%g112448112503%_
                                              _%g112449112507%_))))
                                     (_%g112448112503%_ _%g112449112507%_))))
                             (_%g112448112503%_ _%g112449112507%_))))
                     (_%g112448112503%_ _%g112449112507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112448112503%_
                                                      _%g112449112507%_))))
                                             (_%g112448112503%_
                                              _%g112449112507%_))))
                                     (_%g112448112503%_ _%g112449112507%_))))
                             (_%g112448112503%_ _%g112449112507%_)))))
                 (_%g112447112688%_
                  (list (gx#stx-identifier
                         _%g112361112429%_
                         '"make-"
                         _%g112361112429%_)
                        (gx#stx-identifier
                         _%g112361112429%_
                         '"make-"
                         _%g112361112429%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g112361112429%_
                         '"__"
                         _%g112361112429%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g112361112429%_
                         '"__"
                         _%g112361112429%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g112361112429%_
                         _%g112361112429%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd112372112420%_
                                                     _%hd112369112410%_
                                                     _%hd112366112400%_)
                                                    (_%g112357112379%_
                                                     _%g112358112383%_))))
                                            (_%g112357112379%_
                                             _%g112358112383%_))))
                                    (_%g112357112379%_ _%g112358112383%_))))
                            (_%g112357112379%_ _%g112358112383%_))))
                    (_%g112357112379%_ _%g112358112383%_)))))
        (_%g112356112692%_ _%stx112354%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx112696%_)
      (let* ((_%g112700112722%_
              (lambda (_%g112701112718%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112701112718%_)))
             (_%g112699112791%_
              (lambda (_%g112701112726%_)
                (if (gx#stx-pair? _%g112701112726%_)
                    (let ((_%e112705112729%_ (gx#syntax-e _%g112701112726%_)))
                      (let ((_%hd112706112733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112705112729%_)))
                            (_%tl112707112736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112705112729%_))))
                        (if (gx#stx-pair? _%tl112707112736%_)
                            (let ((_%e112708112739%_
                                   (gx#syntax-e _%tl112707112736%_)))
                              (let ((_%hd112709112743%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112708112739%_)))
                                    (_%tl112710112746%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112708112739%_))))
                                (if (gx#stx-pair? _%tl112710112746%_)
                                    (let ((_%e112711112749%_
                                           (gx#syntax-e _%tl112710112746%_)))
                                      (let ((_%hd112712112753%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112711112749%_)))
                                            (_%tl112713112756%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112711112749%_))))
                                        (if (gx#stx-pair? _%tl112713112756%_)
                                            (let ((_%e112714112759%_
                                                   (gx#syntax-e
                                                    _%tl112713112756%_)))
                                              (let ((_%hd112715112763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112714112759%_)))
                                                    (_%tl112716112766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112714112759%_))))
                                                (if (gx#stx-null?
                                                     _%tl112716112766%_)
                                                    ((lambda (_%g112702112769%_
                                                              _%g112703112771%_
                                                              _%g112704112772%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g112704112772%_
                                                   (cons _%g112703112771%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g112703112771%_
                                   (cons _%g112703112771%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g112702112769%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd112715112763%_
                                                     _%hd112712112753%_
                                                     _%hd112709112743%_)
                                                    (_%g112700112722%_
                                                     _%g112701112726%_))))
                                            (_%g112700112722%_
                                             _%g112701112726%_))))
                                    (_%g112700112722%_ _%g112701112726%_))))
                            (_%g112700112722%_ _%g112701112726%_))))
                    (_%g112700112722%_ _%g112701112726%_)))))
        (_%g112699112791%_ _%$stx112696%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx112795%_)
      (let* ((_%g112799112833%_
              (lambda (_%g112800112829%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112800112829%_)))
             (_%g112798112944%_
              (lambda (_%g112800112837%_)
                (if (gx#stx-pair? _%g112800112837%_)
                    (let ((_%e112807112840%_ (gx#syntax-e _%g112800112837%_)))
                      (let ((_%hd112808112844%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112807112840%_)))
                            (_%tl112809112847%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112807112840%_))))
                        (if (gx#stx-pair? _%tl112809112847%_)
                            (let ((_%e112810112850%_
                                   (gx#syntax-e _%tl112809112847%_)))
                              (let ((_%hd112811112854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112810112850%_)))
                                    (_%tl112812112857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112810112850%_))))
                                (if (gx#stx-pair? _%tl112812112857%_)
                                    (let ((_%e112813112860%_
                                           (gx#syntax-e _%tl112812112857%_)))
                                      (let ((_%hd112814112864%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112813112860%_)))
                                            (_%tl112815112867%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112813112860%_))))
                                        (if (gx#stx-pair? _%tl112815112867%_)
                                            (let ((_%e112816112870%_
                                                   (gx#syntax-e
                                                    _%tl112815112867%_)))
                                              (let ((_%hd112817112874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112816112870%_)))
                                                    (_%tl112818112877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112816112870%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112818112877%_)
                                                    (let ((_%e112819112880%_
                                                           (gx#syntax-e
                                                            _%tl112818112877%_)))
                                                      (let ((_%hd112820112884%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112819112880%_)))
                    (_%tl112821112887%_
                     (let () (declare (not safe)) (##cdr _%e112819112880%_))))
                (if (gx#stx-pair? _%tl112821112887%_)
                    (let ((_%e112822112890%_ (gx#syntax-e _%tl112821112887%_)))
                      (let ((_%hd112823112894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112822112890%_)))
                            (_%tl112824112897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112822112890%_))))
                        (if (gx#stx-pair? _%tl112824112897%_)
                            (let ((_%e112825112900%_
                                   (gx#syntax-e _%tl112824112897%_)))
                              (let ((_%hd112826112904%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112825112900%_)))
                                    (_%tl112827112907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112825112900%_))))
                                (if (gx#stx-null? _%tl112827112907%_)
                                    ((lambda (_%g112801112910%_
                                              _%g112802112912%_
                                              _%g112803112913%_
                                              _%g112804112914%_
                                              _%g112805112915%_
                                              _%g112806112916%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g112804112914%_
                                               (cons _%g112802112912%_ '()))
                                         (cons _%g112805112915%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g112806112916%_ '()))
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
                               (cons _%g112806112916%_
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
                                     (cons _%g112801112910%_ '()))
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
                                     (cons (cons (cons _%g112803112913%_
                                                       (cons _%g112802112912%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g112806112916%_
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
                                     _%hd112826112904%_
                                     _%hd112823112894%_
                                     _%hd112820112884%_
                                     _%hd112817112874%_
                                     _%hd112814112864%_
                                     _%hd112811112854%_)
                                    (_%g112799112833%_ _%g112800112837%_))))
                            (_%g112799112833%_ _%g112800112837%_))))
                    (_%g112799112833%_ _%g112800112837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112799112833%_
                                                     _%g112800112837%_))))
                                            (_%g112799112833%_
                                             _%g112800112837%_))))
                                    (_%g112799112833%_ _%g112800112837%_))))
                            (_%g112799112833%_ _%g112800112837%_))))
                    (_%g112799112833%_ _%g112800112837%_)))))
        (_%g112798112944%_ _%$stx112795%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx112948%_)
      (let* ((_%g112952112994%_
              (lambda (_%g112953112990%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112953112990%_)))
             (_%g112951113133%_
              (lambda (_%g112953112998%_)
                (if (gx#stx-pair? _%g112953112998%_)
                    (let ((_%e112962113001%_ (gx#syntax-e _%g112953112998%_)))
                      (let ((_%hd112963113005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112962113001%_)))
                            (_%tl112964113008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112962113001%_))))
                        (if (gx#stx-pair? _%tl112964113008%_)
                            (let ((_%e112965113011%_
                                   (gx#syntax-e _%tl112964113008%_)))
                              (let ((_%hd112966113015%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112965113011%_)))
                                    (_%tl112967113018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112965113011%_))))
                                (if (gx#stx-pair? _%tl112967113018%_)
                                    (let ((_%e112968113021%_
                                           (gx#syntax-e _%tl112967113018%_)))
                                      (let ((_%hd112969113025%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112968113021%_)))
                                            (_%tl112970113028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112968113021%_))))
                                        (if (gx#stx-pair? _%tl112970113028%_)
                                            (let ((_%e112971113031%_
                                                   (gx#syntax-e
                                                    _%tl112970113028%_)))
                                              (let ((_%hd112972113035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112971113031%_)))
                                                    (_%tl112973113038%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112971113031%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112973113038%_)
                                                    (let ((_%e112974113041%_
                                                           (gx#syntax-e
                                                            _%tl112973113038%_)))
                                                      (let ((_%hd112975113045%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112974113041%_)))
                    (_%tl112976113048%_
                     (let () (declare (not safe)) (##cdr _%e112974113041%_))))
                (if (gx#stx-pair? _%tl112976113048%_)
                    (let ((_%e112977113051%_ (gx#syntax-e _%tl112976113048%_)))
                      (let ((_%hd112978113055%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112977113051%_)))
                            (_%tl112979113058%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112977113051%_))))
                        (if (gx#stx-pair? _%tl112979113058%_)
                            (let ((_%e112980113061%_
                                   (gx#syntax-e _%tl112979113058%_)))
                              (let ((_%hd112981113065%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112980113061%_)))
                                    (_%tl112982113068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112980113061%_))))
                                (if (gx#stx-pair? _%tl112982113068%_)
                                    (let ((_%e112983113071%_
                                           (gx#syntax-e _%tl112982113068%_)))
                                      (let ((_%hd112984113075%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112983113071%_)))
                                            (_%tl112985113078%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112983113071%_))))
                                        (if (gx#stx-pair? _%tl112985113078%_)
                                            (let ((_%e112986113081%_
                                                   (gx#syntax-e
                                                    _%tl112985113078%_)))
                                              (let ((_%hd112987113085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112986113081%_)))
                                                    (_%tl112988113088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112986113081%_))))
                                                (if (gx#stx-null?
                                                     _%tl112988113088%_)
                                                    ((lambda (_%g112954113091%_
                                                              _%g112955113093%_
                                                              _%g112956113094%_
                                                              _%g112957113095%_
                                                              _%g112958113096%_
                                                              _%g112959113097%_
                                                              _%g112960113098%_
                                                              _%g112961113099%_)
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
                                                   (cons (cons _%g112959113097%_
                                                               (cons _%g112957113095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g112960113098%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g112961113099%_
                                                               '()))
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
                                               (cons _%g112961113099%_
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
                                                       (cons _%g112961113099%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g112957113095%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g112961113099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g112956113094%_ '()))))
               (cons (cons _%g112954113091%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g112961113099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g112957113095%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g112961113099%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g112956113094%_ '()))))
                     (cons (cons _%g112955113093%_ '()) '()))))
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
                                                     (cons (cons (cons _%g112958113096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g112957113095%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g112961113099%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g112957113095%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g112961113099%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g112956113094%_ '()))))
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
                                                     _%hd112987113085%_
                                                     _%hd112984113075%_
                                                     _%hd112981113065%_
                                                     _%hd112978113055%_
                                                     _%hd112975113045%_
                                                     _%hd112972113035%_
                                                     _%hd112969113025%_
                                                     _%hd112966113015%_)
                                                    (_%g112952112994%_
                                                     _%g112953112998%_))))
                                            (_%g112952112994%_
                                             _%g112953112998%_))))
                                    (_%g112952112994%_ _%g112953112998%_))))
                            (_%g112952112994%_ _%g112953112998%_))))
                    (_%g112952112994%_ _%g112953112998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112952112994%_
                                                     _%g112953112998%_))))
                                            (_%g112952112994%_
                                             _%g112953112998%_))))
                                    (_%g112952112994%_ _%g112953112998%_))))
                            (_%g112952112994%_ _%g112953112998%_))))
                    (_%g112952112994%_ _%g112953112998%_)))))
        (_%g112951113133%_ _%$stx112948%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx113137%_)
      (let* ((_%g113141113187%_
              (lambda (_%g113142113183%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113142113183%_)))
             (_%g113140113340%_
              (lambda (_%g113142113191%_)
                (if (gx#stx-pair? _%g113142113191%_)
                    (let ((_%e113152113194%_ (gx#syntax-e _%g113142113191%_)))
                      (let ((_%hd113153113198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113152113194%_)))
                            (_%tl113154113201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113152113194%_))))
                        (if (gx#stx-pair? _%tl113154113201%_)
                            (let ((_%e113155113204%_
                                   (gx#syntax-e _%tl113154113201%_)))
                              (let ((_%hd113156113208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113155113204%_)))
                                    (_%tl113157113211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113155113204%_))))
                                (if (gx#stx-pair? _%tl113157113211%_)
                                    (let ((_%e113158113214%_
                                           (gx#syntax-e _%tl113157113211%_)))
                                      (let ((_%hd113159113218%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113158113214%_)))
                                            (_%tl113160113221%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113158113214%_))))
                                        (if (gx#stx-pair? _%tl113160113221%_)
                                            (let ((_%e113161113224%_
                                                   (gx#syntax-e
                                                    _%tl113160113221%_)))
                                              (let ((_%hd113162113228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113161113224%_)))
                                                    (_%tl113163113231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113161113224%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113163113231%_)
                                                    (let ((_%e113164113234%_
                                                           (gx#syntax-e
                                                            _%tl113163113231%_)))
                                                      (let ((_%hd113165113238%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113164113234%_)))
                    (_%tl113166113241%_
                     (let () (declare (not safe)) (##cdr _%e113164113234%_))))
                (if (gx#stx-pair? _%tl113166113241%_)
                    (let ((_%e113167113244%_ (gx#syntax-e _%tl113166113241%_)))
                      (let ((_%hd113168113248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113167113244%_)))
                            (_%tl113169113251%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113167113244%_))))
                        (if (gx#stx-pair? _%tl113169113251%_)
                            (let ((_%e113170113254%_
                                   (gx#syntax-e _%tl113169113251%_)))
                              (let ((_%hd113171113258%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113170113254%_)))
                                    (_%tl113172113261%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113170113254%_))))
                                (if (gx#stx-pair? _%tl113172113261%_)
                                    (let ((_%e113173113264%_
                                           (gx#syntax-e _%tl113172113261%_)))
                                      (let ((_%hd113174113268%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113173113264%_)))
                                            (_%tl113175113271%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113173113264%_))))
                                        (if (gx#stx-pair? _%tl113175113271%_)
                                            (let ((_%e113176113274%_
                                                   (gx#syntax-e
                                                    _%tl113175113271%_)))
                                              (let ((_%hd113177113278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113176113274%_)))
                                                    (_%tl113178113281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113176113274%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113178113281%_)
                                                    (let ((_%e113179113284%_
                                                           (gx#syntax-e
                                                            _%tl113178113281%_)))
                                                      (let ((_%hd113180113288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113179113284%_)))
                    (_%tl113181113291%_
                     (let () (declare (not safe)) (##cdr _%e113179113284%_))))
                (if (gx#stx-null? _%tl113181113291%_)
                    ((lambda (_%g113143113294%_
                              _%g113144113296%_
                              _%g113145113297%_
                              _%g113146113298%_
                              _%g113147113299%_
                              _%g113148113300%_
                              _%g113149113301%_
                              _%g113150113302%_
                              _%g113151113303%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g113149113301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g113147113299%_ '()))
                         (cons _%g113150113302%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g113151113303%_ '()))
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
                                                       (cons _%g113151113303%_
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
                                                               (cons _%g113151113303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g113147113299%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g113151113303%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g113146113298%_
                                                     (cons _%g113145113297%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g113143113294%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g113151113303%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g113147113299%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g113151113303%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g113146113298%_
                                                           (cons _%g113145113297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g113144113296%_ '()) '()))))
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
                     (cons (cons (cons _%g113148113300%_
                                       (cons _%g113147113299%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g113151113303%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g113147113299%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g113151113303%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g113146113298%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g113151113303%_
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
                     _%hd113180113288%_
                     _%hd113177113278%_
                     _%hd113174113268%_
                     _%hd113171113258%_
                     _%hd113168113248%_
                     _%hd113165113238%_
                     _%hd113162113228%_
                     _%hd113159113218%_
                     _%hd113156113208%_)
                    (_%g113141113187%_ _%g113142113191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113141113187%_
                                                     _%g113142113191%_))))
                                            (_%g113141113187%_
                                             _%g113142113191%_))))
                                    (_%g113141113187%_ _%g113142113191%_))))
                            (_%g113141113187%_ _%g113142113191%_))))
                    (_%g113141113187%_ _%g113142113191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113141113187%_
                                                     _%g113142113191%_))))
                                            (_%g113141113187%_
                                             _%g113142113191%_))))
                                    (_%g113141113187%_ _%g113142113191%_))))
                            (_%g113141113187%_ _%g113142113191%_))))
                    (_%g113141113187%_ _%g113142113191%_)))))
        (_%g113140113340%_ _%$stx113137%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx113344%_)
      (let* ((_%g113348113382%_
              (lambda (_%g113349113378%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113349113378%_)))
             (_%g113347113493%_
              (lambda (_%g113349113386%_)
                (if (gx#stx-pair? _%g113349113386%_)
                    (let ((_%e113356113389%_ (gx#syntax-e _%g113349113386%_)))
                      (let ((_%hd113357113393%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113356113389%_)))
                            (_%tl113358113396%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113356113389%_))))
                        (if (gx#stx-pair? _%tl113358113396%_)
                            (let ((_%e113359113399%_
                                   (gx#syntax-e _%tl113358113396%_)))
                              (let ((_%hd113360113403%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113359113399%_)))
                                    (_%tl113361113406%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113359113399%_))))
                                (if (gx#stx-pair? _%tl113361113406%_)
                                    (let ((_%e113362113409%_
                                           (gx#syntax-e _%tl113361113406%_)))
                                      (let ((_%hd113363113413%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113362113409%_)))
                                            (_%tl113364113416%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113362113409%_))))
                                        (if (gx#stx-pair? _%tl113364113416%_)
                                            (let ((_%e113365113419%_
                                                   (gx#syntax-e
                                                    _%tl113364113416%_)))
                                              (let ((_%hd113366113423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113365113419%_)))
                                                    (_%tl113367113426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113365113419%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113367113426%_)
                                                    (let ((_%e113368113429%_
                                                           (gx#syntax-e
                                                            _%tl113367113426%_)))
                                                      (let ((_%hd113369113433%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113368113429%_)))
                    (_%tl113370113436%_
                     (let () (declare (not safe)) (##cdr _%e113368113429%_))))
                (if (gx#stx-pair? _%tl113370113436%_)
                    (let ((_%e113371113439%_ (gx#syntax-e _%tl113370113436%_)))
                      (let ((_%hd113372113443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113371113439%_)))
                            (_%tl113373113446%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113371113439%_))))
                        (if (gx#stx-pair? _%tl113373113446%_)
                            (let ((_%e113374113449%_
                                   (gx#syntax-e _%tl113373113446%_)))
                              (let ((_%hd113375113453%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113374113449%_)))
                                    (_%tl113376113456%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113374113449%_))))
                                (if (gx#stx-null? _%tl113376113456%_)
                                    ((lambda (_%g113350113459%_
                                              _%g113351113461%_
                                              _%g113352113462%_
                                              _%g113353113463%_
                                              _%g113354113464%_
                                              _%g113355113465%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g113353113463%_
                                               (cons _%g113351113461%_ '()))
                                         (cons _%g113354113464%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g113355113465%_ '()))
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
                               (cons _%g113355113465%_
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
                                     (cons (cons (cons _%g113352113462%_
                                                       (cons _%g113351113461%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g113355113465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g113355113465%_
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
                     (cons (cons _%g113350113459%_ '()) '()))))
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
                                     _%hd113375113453%_
                                     _%hd113372113443%_
                                     _%hd113369113433%_
                                     _%hd113366113423%_
                                     _%hd113363113413%_
                                     _%hd113360113403%_)
                                    (_%g113348113382%_ _%g113349113386%_))))
                            (_%g113348113382%_ _%g113349113386%_))))
                    (_%g113348113382%_ _%g113349113386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113348113382%_
                                                     _%g113349113386%_))))
                                            (_%g113348113382%_
                                             _%g113349113386%_))))
                                    (_%g113348113382%_ _%g113349113386%_))))
                            (_%g113348113382%_ _%g113349113386%_))))
                    (_%g113348113382%_ _%g113349113386%_)))))
        (_%g113347113493%_ _%$stx113344%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx113497%_)
      (let* ((_%g113501113519%_
              (lambda (_%g113502113515%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113502113515%_)))
             (_%g113500113574%_
              (lambda (_%g113502113523%_)
                (if (gx#stx-pair? _%g113502113523%_)
                    (let ((_%e113505113526%_ (gx#syntax-e _%g113502113523%_)))
                      (let ((_%hd113506113530%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113505113526%_)))
                            (_%tl113507113533%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113505113526%_))))
                        (if (gx#stx-pair? _%tl113507113533%_)
                            (let ((_%e113508113536%_
                                   (gx#syntax-e _%tl113507113533%_)))
                              (let ((_%hd113509113540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113508113536%_)))
                                    (_%tl113510113543%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113508113536%_))))
                                (if (gx#stx-pair? _%tl113510113543%_)
                                    (let ((_%e113511113546%_
                                           (gx#syntax-e _%tl113510113543%_)))
                                      (let ((_%hd113512113550%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113511113546%_)))
                                            (_%tl113513113553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113511113546%_))))
                                        (if (gx#stx-null? _%tl113513113553%_)
                                            ((lambda (_%g113503113556%_
                                                      _%g113504113558%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g113504113558%_ '()))
                   (cons _%g113503113556%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd113512113550%_
                                             _%hd113509113540%_)
                                            (_%g113501113519%_
                                             _%g113502113523%_))))
                                    (_%g113501113519%_ _%g113502113523%_))))
                            (_%g113501113519%_ _%g113502113523%_))))
                    (_%g113501113519%_ _%g113502113523%_)))))
        (_%g113500113574%_ _%$stx113497%_)))))

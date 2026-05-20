(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx115394%_)
      (let* ((_%g115398115416%_
              (lambda (_%g115399115412%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115399115412%_)))
             (_%g115397115472%_
              (lambda (_%g115399115420%_)
                (if (gx#stx-pair? _%g115399115420%_)
                    (let ((_%e115402115423%_ (gx#syntax-e _%g115399115420%_)))
                      (let ((_%hd115403115427%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115402115423%_)))
                            (_%tl115404115430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115402115423%_))))
                        (if (gx#stx-pair? _%tl115404115430%_)
                            (let ((_%e115405115433%_
                                   (gx#syntax-e _%tl115404115430%_)))
                              (let ((_%hd115406115437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115405115433%_)))
                                    (_%tl115407115440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115405115433%_))))
                                (if (gx#stx-pair? _%tl115407115440%_)
                                    (let ((_%e115408115443%_
                                           (gx#syntax-e _%tl115407115440%_)))
                                      (let ((_%hd115409115447%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115408115443%_)))
                                            (_%tl115410115450%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115408115443%_))))
                                        (if (gx#stx-null? _%tl115410115450%_)
                                            ((lambda (_%g115400115453%_
                                                      _%g115401115455%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g115401115455%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g115400115453%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd115409115447%_
                                             _%hd115406115437%_)
                                            (_%g115398115416%_
                                             _%g115399115420%_))))
                                    (_%g115398115416%_ _%g115399115420%_))))
                            (_%g115398115416%_ _%g115399115420%_))))
                    (_%g115398115416%_ _%g115399115420%_)))))
        (_%g115397115472%_ _%$stx115394%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx115476%_)
      (let* ((_%g115479115501%_
              (lambda (_%g115480115497%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115480115497%_)))
             (_%g115478115814%_
              (lambda (_%g115480115505%_)
                (if (gx#stx-pair? _%g115480115505%_)
                    (let ((_%e115484115508%_ (gx#syntax-e _%g115480115505%_)))
                      (let ((_%hd115485115512%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115484115508%_)))
                            (_%tl115486115515%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115484115508%_))))
                        (if (gx#stx-pair? _%tl115486115515%_)
                            (let ((_%e115487115518%_
                                   (gx#syntax-e _%tl115486115515%_)))
                              (let ((_%hd115488115522%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115487115518%_)))
                                    (_%tl115489115525%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115487115518%_))))
                                (if (gx#stx-pair? _%tl115489115525%_)
                                    (let ((_%e115490115528%_
                                           (gx#syntax-e _%tl115489115525%_)))
                                      (let ((_%hd115491115532%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115490115528%_)))
                                            (_%tl115492115535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115490115528%_))))
                                        (if (gx#stx-pair? _%tl115492115535%_)
                                            (let ((_%e115493115538%_
                                                   (gx#syntax-e
                                                    _%tl115492115535%_)))
                                              (let ((_%hd115494115542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115493115538%_)))
                                                    (_%tl115495115545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115493115538%_))))
                                                (if (gx#stx-null?
                                                     _%tl115495115545%_)
                                                    ((lambda (_%g115481115548%_
                                                              _%g115482115550%_
                                                              _%g115483115551%_)
                                                       (let* ((_%g115570115625%_
                                                               (lambda (_%g115571115621%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g115571115621%_)))
                      (_%g115569115810%_
                       (lambda (_%g115571115629%_)
                         (if (gx#stx-pair? _%g115571115629%_)
                             (let ((_%e115584115632%_
                                    (gx#syntax-e _%g115571115629%_)))
                               (let ((_%hd115585115636%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115584115632%_)))
                                     (_%tl115586115639%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115584115632%_))))
                                 (if (gx#stx-pair? _%tl115586115639%_)
                                     (let ((_%e115587115642%_
                                            (gx#syntax-e _%tl115586115639%_)))
                                       (let ((_%hd115588115646%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115587115642%_)))
                                             (_%tl115589115649%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115587115642%_))))
                                         (if (gx#stx-pair? _%tl115589115649%_)
                                             (let ((_%e115590115652%_
                                                    (gx#syntax-e
                                                     _%tl115589115649%_)))
                                               (let ((_%hd115591115656%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e115590115652%_)))
                                                     (_%tl115592115659%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e115590115652%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl115592115659%_)
                                                     (let ((_%e115593115662%_
                                                            (gx#syntax-e
                                                             _%tl115592115659%_)))
                                                       (let ((_%hd115594115666%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e115593115662%_)))
                     (_%tl115595115669%_
                      (let () (declare (not safe)) (##cdr _%e115593115662%_))))
                 (if (gx#stx-pair? _%tl115595115669%_)
                     (let ((_%e115596115672%_
                            (gx#syntax-e _%tl115595115669%_)))
                       (let ((_%hd115597115676%_
                              (let ()
                                (declare (not safe))
                                (##car _%e115596115672%_)))
                             (_%tl115598115679%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e115596115672%_))))
                         (if (gx#stx-pair? _%tl115598115679%_)
                             (let ((_%e115599115682%_
                                    (gx#syntax-e _%tl115598115679%_)))
                               (let ((_%hd115600115686%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115599115682%_)))
                                     (_%tl115601115689%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115599115682%_))))
                                 (if (gx#stx-pair? _%tl115601115689%_)
                                     (let ((_%e115602115692%_
                                            (gx#syntax-e _%tl115601115689%_)))
                                       (let ((_%hd115603115696%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115602115692%_)))
                                             (_%tl115604115699%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115602115692%_))))
                                         (if (gx#stx-pair? _%tl115604115699%_)
                                             (let ((_%e115605115702%_
                                                    (gx#syntax-e
                                                     _%tl115604115699%_)))
                                               (let ((_%hd115606115706%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e115605115702%_)))
                                                     (_%tl115607115709%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e115605115702%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl115607115709%_)
                                                     (let ((_%e115608115712%_
                                                            (gx#syntax-e
                                                             _%tl115607115709%_)))
                                                       (let ((_%hd115609115716%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e115608115712%_)))
                     (_%tl115610115719%_
                      (let () (declare (not safe)) (##cdr _%e115608115712%_))))
                 (if (gx#stx-pair? _%tl115610115719%_)
                     (let ((_%e115611115722%_
                            (gx#syntax-e _%tl115610115719%_)))
                       (let ((_%hd115612115726%_
                              (let ()
                                (declare (not safe))
                                (##car _%e115611115722%_)))
                             (_%tl115613115729%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e115611115722%_))))
                         (if (gx#stx-pair? _%tl115613115729%_)
                             (let ((_%e115614115732%_
                                    (gx#syntax-e _%tl115613115729%_)))
                               (let ((_%hd115615115736%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115614115732%_)))
                                     (_%tl115616115739%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115614115732%_))))
                                 (if (gx#stx-pair? _%tl115616115739%_)
                                     (let ((_%e115617115742%_
                                            (gx#syntax-e _%tl115616115739%_)))
                                       (let ((_%hd115618115746%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115617115742%_)))
                                             (_%tl115619115749%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115617115742%_))))
                                         (if (gx#stx-null? _%tl115619115749%_)
                                             ((lambda (_%g115572115752%_
                                                       _%g115573115754%_
                                                       _%g115574115755%_
                                                       _%g115575115756%_
                                                       _%g115576115757%_
                                                       _%g115577115758%_
                                                       _%g115578115759%_
                                                       _%g115579115760%_
                                                       _%g115580115761%_
                                                       _%g115581115762%_
                                                       _%g115582115763%_
                                                       _%g115583115764%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g115583115764%_
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
                                                  (cons _%g115482115550%_
                                                        (cons _%g115481115548%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g115582115763%_
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
                                                        (cons _%g115482115550%_
                                                              (cons _%g115481115548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g115581115762%_
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
                                              (cons _%g115482115550%_
                                                    (cons _%g115481115548%_
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
                                            (cons (cons _%g115580115761%_
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
                            (cons (cons _%g115581115762%_
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
                                                  (cons (cons _%g115579115760%_
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
                                                          (cons _%g115482115550%_
                                                                (cons _%g115481115548%_
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
                                                        (cons (cons _%g115578115759%_
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
                            (cons (cons _%g115579115760%_
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
                                                              (cons (cons _%g115577115758%_
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
                                              (cons (cons _%g115578115759%_
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
                            (cons (cons _%g115576115757%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g115575115756%_
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
                                    (cons _%g115482115550%_
                                          (cons _%g115481115548%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g115575115756%_
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
                                  (cons (cons _%g115575115756%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g115575115756%_
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
                                              (cons (cons _%g115576115757%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g115575115756%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g115574115755%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g115575115756%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g115575115756%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g115575115756%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g115573115754%_
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
                                                      (cons _%g115482115550%_
                                                            (cons _%g115481115548%_
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
                                                    (cons (cons _%g115572115752%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g115573115754%_
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
                                              _%hd115618115746%_
                                              _%hd115615115736%_
                                              _%hd115612115726%_
                                              _%hd115609115716%_
                                              _%hd115606115706%_
                                              _%hd115603115696%_
                                              _%hd115600115686%_
                                              _%hd115597115676%_
                                              _%hd115594115666%_
                                              _%hd115591115656%_
                                              _%hd115588115646%_
                                              _%hd115585115636%_)
                                             (_%g115570115625%_
                                              _%g115571115629%_))))
                                     (_%g115570115625%_ _%g115571115629%_))))
                             (_%g115570115625%_ _%g115571115629%_))))
                     (_%g115570115625%_ _%g115571115629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115570115625%_
                                                      _%g115571115629%_))))
                                             (_%g115570115625%_
                                              _%g115571115629%_))))
                                     (_%g115570115625%_ _%g115571115629%_))))
                             (_%g115570115625%_ _%g115571115629%_))))
                     (_%g115570115625%_ _%g115571115629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115570115625%_
                                                      _%g115571115629%_))))
                                             (_%g115570115625%_
                                              _%g115571115629%_))))
                                     (_%g115570115625%_ _%g115571115629%_))))
                             (_%g115570115625%_ _%g115571115629%_)))))
                 (_%g115569115810%_
                  (list (gx#stx-identifier
                         _%g115483115551%_
                         '"make-"
                         _%g115483115551%_)
                        (gx#stx-identifier
                         _%g115483115551%_
                         '"make-"
                         _%g115483115551%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g115483115551%_
                         '"__"
                         _%g115483115551%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g115483115551%_
                         '"__"
                         _%g115483115551%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g115483115551%_
                         _%g115483115551%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd115494115542%_
                                                     _%hd115491115532%_
                                                     _%hd115488115522%_)
                                                    (_%g115479115501%_
                                                     _%g115480115505%_))))
                                            (_%g115479115501%_
                                             _%g115480115505%_))))
                                    (_%g115479115501%_ _%g115480115505%_))))
                            (_%g115479115501%_ _%g115480115505%_))))
                    (_%g115479115501%_ _%g115480115505%_)))))
        (_%g115478115814%_ _%stx115476%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx115818%_)
      (let* ((_%g115822115844%_
              (lambda (_%g115823115840%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115823115840%_)))
             (_%g115821115913%_
              (lambda (_%g115823115848%_)
                (if (gx#stx-pair? _%g115823115848%_)
                    (let ((_%e115827115851%_ (gx#syntax-e _%g115823115848%_)))
                      (let ((_%hd115828115855%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115827115851%_)))
                            (_%tl115829115858%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115827115851%_))))
                        (if (gx#stx-pair? _%tl115829115858%_)
                            (let ((_%e115830115861%_
                                   (gx#syntax-e _%tl115829115858%_)))
                              (let ((_%hd115831115865%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115830115861%_)))
                                    (_%tl115832115868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115830115861%_))))
                                (if (gx#stx-pair? _%tl115832115868%_)
                                    (let ((_%e115833115871%_
                                           (gx#syntax-e _%tl115832115868%_)))
                                      (let ((_%hd115834115875%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115833115871%_)))
                                            (_%tl115835115878%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115833115871%_))))
                                        (if (gx#stx-pair? _%tl115835115878%_)
                                            (let ((_%e115836115881%_
                                                   (gx#syntax-e
                                                    _%tl115835115878%_)))
                                              (let ((_%hd115837115885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115836115881%_)))
                                                    (_%tl115838115888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115836115881%_))))
                                                (if (gx#stx-null?
                                                     _%tl115838115888%_)
                                                    ((lambda (_%g115824115891%_
                                                              _%g115825115893%_
                                                              _%g115826115894%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g115826115894%_
                                                   (cons _%g115825115893%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g115825115893%_
                                   (cons _%g115825115893%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g115824115891%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd115837115885%_
                                                     _%hd115834115875%_
                                                     _%hd115831115865%_)
                                                    (_%g115822115844%_
                                                     _%g115823115848%_))))
                                            (_%g115822115844%_
                                             _%g115823115848%_))))
                                    (_%g115822115844%_ _%g115823115848%_))))
                            (_%g115822115844%_ _%g115823115848%_))))
                    (_%g115822115844%_ _%g115823115848%_)))))
        (_%g115821115913%_ _%$stx115818%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx115917%_)
      (let* ((_%g115921115955%_
              (lambda (_%g115922115951%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115922115951%_)))
             (_%g115920116066%_
              (lambda (_%g115922115959%_)
                (if (gx#stx-pair? _%g115922115959%_)
                    (let ((_%e115929115962%_ (gx#syntax-e _%g115922115959%_)))
                      (let ((_%hd115930115966%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115929115962%_)))
                            (_%tl115931115969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115929115962%_))))
                        (if (gx#stx-pair? _%tl115931115969%_)
                            (let ((_%e115932115972%_
                                   (gx#syntax-e _%tl115931115969%_)))
                              (let ((_%hd115933115976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115932115972%_)))
                                    (_%tl115934115979%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115932115972%_))))
                                (if (gx#stx-pair? _%tl115934115979%_)
                                    (let ((_%e115935115982%_
                                           (gx#syntax-e _%tl115934115979%_)))
                                      (let ((_%hd115936115986%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115935115982%_)))
                                            (_%tl115937115989%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115935115982%_))))
                                        (if (gx#stx-pair? _%tl115937115989%_)
                                            (let ((_%e115938115992%_
                                                   (gx#syntax-e
                                                    _%tl115937115989%_)))
                                              (let ((_%hd115939115996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115938115992%_)))
                                                    (_%tl115940115999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115938115992%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115940115999%_)
                                                    (let ((_%e115941116002%_
                                                           (gx#syntax-e
                                                            _%tl115940115999%_)))
                                                      (let ((_%hd115942116006%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115941116002%_)))
                    (_%tl115943116009%_
                     (let () (declare (not safe)) (##cdr _%e115941116002%_))))
                (if (gx#stx-pair? _%tl115943116009%_)
                    (let ((_%e115944116012%_ (gx#syntax-e _%tl115943116009%_)))
                      (let ((_%hd115945116016%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115944116012%_)))
                            (_%tl115946116019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115944116012%_))))
                        (if (gx#stx-pair? _%tl115946116019%_)
                            (let ((_%e115947116022%_
                                   (gx#syntax-e _%tl115946116019%_)))
                              (let ((_%hd115948116026%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115947116022%_)))
                                    (_%tl115949116029%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115947116022%_))))
                                (if (gx#stx-null? _%tl115949116029%_)
                                    ((lambda (_%g115923116032%_
                                              _%g115924116034%_
                                              _%g115925116035%_
                                              _%g115926116036%_
                                              _%g115927116037%_
                                              _%g115928116038%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115926116036%_
                                               (cons _%g115924116034%_ '()))
                                         (cons _%g115927116037%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115928116038%_ '()))
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
                               (cons _%g115928116038%_
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
                                     (cons _%g115923116032%_ '()))
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
                                     (cons (cons (cons _%g115925116035%_
                                                       (cons _%g115924116034%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g115928116038%_
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
                                     _%hd115948116026%_
                                     _%hd115945116016%_
                                     _%hd115942116006%_
                                     _%hd115939115996%_
                                     _%hd115936115986%_
                                     _%hd115933115976%_)
                                    (_%g115921115955%_ _%g115922115959%_))))
                            (_%g115921115955%_ _%g115922115959%_))))
                    (_%g115921115955%_ _%g115922115959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115921115955%_
                                                     _%g115922115959%_))))
                                            (_%g115921115955%_
                                             _%g115922115959%_))))
                                    (_%g115921115955%_ _%g115922115959%_))))
                            (_%g115921115955%_ _%g115922115959%_))))
                    (_%g115921115955%_ _%g115922115959%_)))))
        (_%g115920116066%_ _%$stx115917%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx116070%_)
      (let* ((_%g116074116116%_
              (lambda (_%g116075116112%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116075116112%_)))
             (_%g116073116255%_
              (lambda (_%g116075116120%_)
                (if (gx#stx-pair? _%g116075116120%_)
                    (let ((_%e116084116123%_ (gx#syntax-e _%g116075116120%_)))
                      (let ((_%hd116085116127%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116084116123%_)))
                            (_%tl116086116130%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116084116123%_))))
                        (if (gx#stx-pair? _%tl116086116130%_)
                            (let ((_%e116087116133%_
                                   (gx#syntax-e _%tl116086116130%_)))
                              (let ((_%hd116088116137%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116087116133%_)))
                                    (_%tl116089116140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116087116133%_))))
                                (if (gx#stx-pair? _%tl116089116140%_)
                                    (let ((_%e116090116143%_
                                           (gx#syntax-e _%tl116089116140%_)))
                                      (let ((_%hd116091116147%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116090116143%_)))
                                            (_%tl116092116150%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116090116143%_))))
                                        (if (gx#stx-pair? _%tl116092116150%_)
                                            (let ((_%e116093116153%_
                                                   (gx#syntax-e
                                                    _%tl116092116150%_)))
                                              (let ((_%hd116094116157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116093116153%_)))
                                                    (_%tl116095116160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116093116153%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116095116160%_)
                                                    (let ((_%e116096116163%_
                                                           (gx#syntax-e
                                                            _%tl116095116160%_)))
                                                      (let ((_%hd116097116167%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116096116163%_)))
                    (_%tl116098116170%_
                     (let () (declare (not safe)) (##cdr _%e116096116163%_))))
                (if (gx#stx-pair? _%tl116098116170%_)
                    (let ((_%e116099116173%_ (gx#syntax-e _%tl116098116170%_)))
                      (let ((_%hd116100116177%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116099116173%_)))
                            (_%tl116101116180%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116099116173%_))))
                        (if (gx#stx-pair? _%tl116101116180%_)
                            (let ((_%e116102116183%_
                                   (gx#syntax-e _%tl116101116180%_)))
                              (let ((_%hd116103116187%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116102116183%_)))
                                    (_%tl116104116190%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116102116183%_))))
                                (if (gx#stx-pair? _%tl116104116190%_)
                                    (let ((_%e116105116193%_
                                           (gx#syntax-e _%tl116104116190%_)))
                                      (let ((_%hd116106116197%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116105116193%_)))
                                            (_%tl116107116200%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116105116193%_))))
                                        (if (gx#stx-pair? _%tl116107116200%_)
                                            (let ((_%e116108116203%_
                                                   (gx#syntax-e
                                                    _%tl116107116200%_)))
                                              (let ((_%hd116109116207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116108116203%_)))
                                                    (_%tl116110116210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116108116203%_))))
                                                (if (gx#stx-null?
                                                     _%tl116110116210%_)
                                                    ((lambda (_%g116076116213%_
                                                              _%g116077116215%_
                                                              _%g116078116216%_
                                                              _%g116079116217%_
                                                              _%g116080116218%_
                                                              _%g116081116219%_
                                                              _%g116082116220%_
                                                              _%g116083116221%_)
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
                                                   (cons (cons _%g116081116219%_
                                                               (cons _%g116079116217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g116082116220%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g116083116221%_
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
                                               (cons _%g116083116221%_
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
                                                       (cons _%g116083116221%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g116079116217%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g116083116221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g116078116216%_ '()))))
               (cons (cons _%g116076116213%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g116083116221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g116079116217%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g116083116221%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g116078116216%_ '()))))
                     (cons (cons _%g116077116215%_ '()) '()))))
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
                                                     (cons (cons (cons _%g116080116218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g116079116217%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g116083116221%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g116079116217%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g116083116221%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g116078116216%_ '()))))
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
                                                     _%hd116109116207%_
                                                     _%hd116106116197%_
                                                     _%hd116103116187%_
                                                     _%hd116100116177%_
                                                     _%hd116097116167%_
                                                     _%hd116094116157%_
                                                     _%hd116091116147%_
                                                     _%hd116088116137%_)
                                                    (_%g116074116116%_
                                                     _%g116075116120%_))))
                                            (_%g116074116116%_
                                             _%g116075116120%_))))
                                    (_%g116074116116%_ _%g116075116120%_))))
                            (_%g116074116116%_ _%g116075116120%_))))
                    (_%g116074116116%_ _%g116075116120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116074116116%_
                                                     _%g116075116120%_))))
                                            (_%g116074116116%_
                                             _%g116075116120%_))))
                                    (_%g116074116116%_ _%g116075116120%_))))
                            (_%g116074116116%_ _%g116075116120%_))))
                    (_%g116074116116%_ _%g116075116120%_)))))
        (_%g116073116255%_ _%$stx116070%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx116259%_)
      (let* ((_%g116263116309%_
              (lambda (_%g116264116305%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116264116305%_)))
             (_%g116262116462%_
              (lambda (_%g116264116313%_)
                (if (gx#stx-pair? _%g116264116313%_)
                    (let ((_%e116274116316%_ (gx#syntax-e _%g116264116313%_)))
                      (let ((_%hd116275116320%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116274116316%_)))
                            (_%tl116276116323%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116274116316%_))))
                        (if (gx#stx-pair? _%tl116276116323%_)
                            (let ((_%e116277116326%_
                                   (gx#syntax-e _%tl116276116323%_)))
                              (let ((_%hd116278116330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116277116326%_)))
                                    (_%tl116279116333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116277116326%_))))
                                (if (gx#stx-pair? _%tl116279116333%_)
                                    (let ((_%e116280116336%_
                                           (gx#syntax-e _%tl116279116333%_)))
                                      (let ((_%hd116281116340%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116280116336%_)))
                                            (_%tl116282116343%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116280116336%_))))
                                        (if (gx#stx-pair? _%tl116282116343%_)
                                            (let ((_%e116283116346%_
                                                   (gx#syntax-e
                                                    _%tl116282116343%_)))
                                              (let ((_%hd116284116350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116283116346%_)))
                                                    (_%tl116285116353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116283116346%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116285116353%_)
                                                    (let ((_%e116286116356%_
                                                           (gx#syntax-e
                                                            _%tl116285116353%_)))
                                                      (let ((_%hd116287116360%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116286116356%_)))
                    (_%tl116288116363%_
                     (let () (declare (not safe)) (##cdr _%e116286116356%_))))
                (if (gx#stx-pair? _%tl116288116363%_)
                    (let ((_%e116289116366%_ (gx#syntax-e _%tl116288116363%_)))
                      (let ((_%hd116290116370%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116289116366%_)))
                            (_%tl116291116373%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116289116366%_))))
                        (if (gx#stx-pair? _%tl116291116373%_)
                            (let ((_%e116292116376%_
                                   (gx#syntax-e _%tl116291116373%_)))
                              (let ((_%hd116293116380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116292116376%_)))
                                    (_%tl116294116383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116292116376%_))))
                                (if (gx#stx-pair? _%tl116294116383%_)
                                    (let ((_%e116295116386%_
                                           (gx#syntax-e _%tl116294116383%_)))
                                      (let ((_%hd116296116390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116295116386%_)))
                                            (_%tl116297116393%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116295116386%_))))
                                        (if (gx#stx-pair? _%tl116297116393%_)
                                            (let ((_%e116298116396%_
                                                   (gx#syntax-e
                                                    _%tl116297116393%_)))
                                              (let ((_%hd116299116400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116298116396%_)))
                                                    (_%tl116300116403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116298116396%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116300116403%_)
                                                    (let ((_%e116301116406%_
                                                           (gx#syntax-e
                                                            _%tl116300116403%_)))
                                                      (let ((_%hd116302116410%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116301116406%_)))
                    (_%tl116303116413%_
                     (let () (declare (not safe)) (##cdr _%e116301116406%_))))
                (if (gx#stx-null? _%tl116303116413%_)
                    ((lambda (_%g116265116416%_
                              _%g116266116418%_
                              _%g116267116419%_
                              _%g116268116420%_
                              _%g116269116421%_
                              _%g116270116422%_
                              _%g116271116423%_
                              _%g116272116424%_
                              _%g116273116425%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g116271116423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g116269116421%_ '()))
                         (cons _%g116272116424%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g116273116425%_ '()))
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
                                                       (cons _%g116273116425%_
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
                                                               (cons _%g116273116425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g116269116421%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g116273116425%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g116268116420%_
                                                     (cons _%g116267116419%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g116265116416%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g116273116425%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g116269116421%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g116273116425%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g116268116420%_
                                                           (cons _%g116267116419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g116266116418%_ '()) '()))))
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
                     (cons (cons (cons _%g116270116422%_
                                       (cons _%g116269116421%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g116273116425%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g116269116421%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g116273116425%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g116268116420%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g116273116425%_
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
                     _%hd116302116410%_
                     _%hd116299116400%_
                     _%hd116296116390%_
                     _%hd116293116380%_
                     _%hd116290116370%_
                     _%hd116287116360%_
                     _%hd116284116350%_
                     _%hd116281116340%_
                     _%hd116278116330%_)
                    (_%g116263116309%_ _%g116264116313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116263116309%_
                                                     _%g116264116313%_))))
                                            (_%g116263116309%_
                                             _%g116264116313%_))))
                                    (_%g116263116309%_ _%g116264116313%_))))
                            (_%g116263116309%_ _%g116264116313%_))))
                    (_%g116263116309%_ _%g116264116313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116263116309%_
                                                     _%g116264116313%_))))
                                            (_%g116263116309%_
                                             _%g116264116313%_))))
                                    (_%g116263116309%_ _%g116264116313%_))))
                            (_%g116263116309%_ _%g116264116313%_))))
                    (_%g116263116309%_ _%g116264116313%_)))))
        (_%g116262116462%_ _%$stx116259%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx116466%_)
      (let* ((_%g116470116504%_
              (lambda (_%g116471116500%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116471116500%_)))
             (_%g116469116615%_
              (lambda (_%g116471116508%_)
                (if (gx#stx-pair? _%g116471116508%_)
                    (let ((_%e116478116511%_ (gx#syntax-e _%g116471116508%_)))
                      (let ((_%hd116479116515%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116478116511%_)))
                            (_%tl116480116518%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116478116511%_))))
                        (if (gx#stx-pair? _%tl116480116518%_)
                            (let ((_%e116481116521%_
                                   (gx#syntax-e _%tl116480116518%_)))
                              (let ((_%hd116482116525%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116481116521%_)))
                                    (_%tl116483116528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116481116521%_))))
                                (if (gx#stx-pair? _%tl116483116528%_)
                                    (let ((_%e116484116531%_
                                           (gx#syntax-e _%tl116483116528%_)))
                                      (let ((_%hd116485116535%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116484116531%_)))
                                            (_%tl116486116538%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116484116531%_))))
                                        (if (gx#stx-pair? _%tl116486116538%_)
                                            (let ((_%e116487116541%_
                                                   (gx#syntax-e
                                                    _%tl116486116538%_)))
                                              (let ((_%hd116488116545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116487116541%_)))
                                                    (_%tl116489116548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116487116541%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116489116548%_)
                                                    (let ((_%e116490116551%_
                                                           (gx#syntax-e
                                                            _%tl116489116548%_)))
                                                      (let ((_%hd116491116555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116490116551%_)))
                    (_%tl116492116558%_
                     (let () (declare (not safe)) (##cdr _%e116490116551%_))))
                (if (gx#stx-pair? _%tl116492116558%_)
                    (let ((_%e116493116561%_ (gx#syntax-e _%tl116492116558%_)))
                      (let ((_%hd116494116565%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116493116561%_)))
                            (_%tl116495116568%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116493116561%_))))
                        (if (gx#stx-pair? _%tl116495116568%_)
                            (let ((_%e116496116571%_
                                   (gx#syntax-e _%tl116495116568%_)))
                              (let ((_%hd116497116575%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116496116571%_)))
                                    (_%tl116498116578%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116496116571%_))))
                                (if (gx#stx-null? _%tl116498116578%_)
                                    ((lambda (_%g116472116581%_
                                              _%g116473116583%_
                                              _%g116474116584%_
                                              _%g116475116585%_
                                              _%g116476116586%_
                                              _%g116477116587%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g116475116585%_
                                               (cons _%g116473116583%_ '()))
                                         (cons _%g116476116586%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g116477116587%_ '()))
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
                               (cons _%g116477116587%_
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
                                     (cons (cons (cons _%g116474116584%_
                                                       (cons _%g116473116583%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g116477116587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g116477116587%_
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
                     (cons (cons _%g116472116581%_ '()) '()))))
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
                                     _%hd116497116575%_
                                     _%hd116494116565%_
                                     _%hd116491116555%_
                                     _%hd116488116545%_
                                     _%hd116485116535%_
                                     _%hd116482116525%_)
                                    (_%g116470116504%_ _%g116471116508%_))))
                            (_%g116470116504%_ _%g116471116508%_))))
                    (_%g116470116504%_ _%g116471116508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116470116504%_
                                                     _%g116471116508%_))))
                                            (_%g116470116504%_
                                             _%g116471116508%_))))
                                    (_%g116470116504%_ _%g116471116508%_))))
                            (_%g116470116504%_ _%g116471116508%_))))
                    (_%g116470116504%_ _%g116471116508%_)))))
        (_%g116469116615%_ _%$stx116466%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx116619%_)
      (let* ((_%g116623116641%_
              (lambda (_%g116624116637%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116624116637%_)))
             (_%g116622116696%_
              (lambda (_%g116624116645%_)
                (if (gx#stx-pair? _%g116624116645%_)
                    (let ((_%e116627116648%_ (gx#syntax-e _%g116624116645%_)))
                      (let ((_%hd116628116652%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116627116648%_)))
                            (_%tl116629116655%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116627116648%_))))
                        (if (gx#stx-pair? _%tl116629116655%_)
                            (let ((_%e116630116658%_
                                   (gx#syntax-e _%tl116629116655%_)))
                              (let ((_%hd116631116662%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116630116658%_)))
                                    (_%tl116632116665%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116630116658%_))))
                                (if (gx#stx-pair? _%tl116632116665%_)
                                    (let ((_%e116633116668%_
                                           (gx#syntax-e _%tl116632116665%_)))
                                      (let ((_%hd116634116672%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116633116668%_)))
                                            (_%tl116635116675%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116633116668%_))))
                                        (if (gx#stx-null? _%tl116635116675%_)
                                            ((lambda (_%g116625116678%_
                                                      _%g116626116680%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g116626116680%_ '()))
                   (cons _%g116625116678%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd116634116672%_
                                             _%hd116631116662%_)
                                            (_%g116623116641%_
                                             _%g116624116645%_))))
                                    (_%g116623116641%_ _%g116624116645%_))))
                            (_%g116623116641%_ _%g116624116645%_))))
                    (_%g116623116641%_ _%g116624116645%_)))))
        (_%g116622116696%_ _%$stx116619%_)))))

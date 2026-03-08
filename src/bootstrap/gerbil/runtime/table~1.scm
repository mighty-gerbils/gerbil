(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx115384%_)
      (let* ((_%g115388115406%_
              (lambda (_%g115389115402%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115389115402%_)))
             (_%g115387115462%_
              (lambda (_%g115389115410%_)
                (if (gx#stx-pair? _%g115389115410%_)
                    (let ((_%e115392115413%_ (gx#syntax-e _%g115389115410%_)))
                      (let ((_%hd115393115417%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115392115413%_)))
                            (_%tl115394115420%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115392115413%_))))
                        (if (gx#stx-pair? _%tl115394115420%_)
                            (let ((_%e115395115423%_
                                   (gx#syntax-e _%tl115394115420%_)))
                              (let ((_%hd115396115427%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115395115423%_)))
                                    (_%tl115397115430%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115395115423%_))))
                                (if (gx#stx-pair? _%tl115397115430%_)
                                    (let ((_%e115398115433%_
                                           (gx#syntax-e _%tl115397115430%_)))
                                      (let ((_%hd115399115437%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115398115433%_)))
                                            (_%tl115400115440%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115398115433%_))))
                                        (if (gx#stx-null? _%tl115400115440%_)
                                            ((lambda (_%g115390115443%_
                                                      _%g115391115445%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g115391115445%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g115390115443%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd115399115437%_
                                             _%hd115396115427%_)
                                            (_%g115388115406%_
                                             _%g115389115410%_))))
                                    (_%g115388115406%_ _%g115389115410%_))))
                            (_%g115388115406%_ _%g115389115410%_))))
                    (_%g115388115406%_ _%g115389115410%_)))))
        (_%g115387115462%_ _%$stx115384%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx115466%_)
      (let* ((_%g115469115491%_
              (lambda (_%g115470115487%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115470115487%_)))
             (_%g115468115804%_
              (lambda (_%g115470115495%_)
                (if (gx#stx-pair? _%g115470115495%_)
                    (let ((_%e115474115498%_ (gx#syntax-e _%g115470115495%_)))
                      (let ((_%hd115475115502%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115474115498%_)))
                            (_%tl115476115505%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115474115498%_))))
                        (if (gx#stx-pair? _%tl115476115505%_)
                            (let ((_%e115477115508%_
                                   (gx#syntax-e _%tl115476115505%_)))
                              (let ((_%hd115478115512%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115477115508%_)))
                                    (_%tl115479115515%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115477115508%_))))
                                (if (gx#stx-pair? _%tl115479115515%_)
                                    (let ((_%e115480115518%_
                                           (gx#syntax-e _%tl115479115515%_)))
                                      (let ((_%hd115481115522%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115480115518%_)))
                                            (_%tl115482115525%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115480115518%_))))
                                        (if (gx#stx-pair? _%tl115482115525%_)
                                            (let ((_%e115483115528%_
                                                   (gx#syntax-e
                                                    _%tl115482115525%_)))
                                              (let ((_%hd115484115532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115483115528%_)))
                                                    (_%tl115485115535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115483115528%_))))
                                                (if (gx#stx-null?
                                                     _%tl115485115535%_)
                                                    ((lambda (_%g115471115538%_
                                                              _%g115472115540%_
                                                              _%g115473115541%_)
                                                       (let* ((_%g115560115615%_
                                                               (lambda (_%g115561115611%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g115561115611%_)))
                      (_%g115559115800%_
                       (lambda (_%g115561115619%_)
                         (if (gx#stx-pair? _%g115561115619%_)
                             (let ((_%e115574115622%_
                                    (gx#syntax-e _%g115561115619%_)))
                               (let ((_%hd115575115626%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115574115622%_)))
                                     (_%tl115576115629%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115574115622%_))))
                                 (if (gx#stx-pair? _%tl115576115629%_)
                                     (let ((_%e115577115632%_
                                            (gx#syntax-e _%tl115576115629%_)))
                                       (let ((_%hd115578115636%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115577115632%_)))
                                             (_%tl115579115639%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115577115632%_))))
                                         (if (gx#stx-pair? _%tl115579115639%_)
                                             (let ((_%e115580115642%_
                                                    (gx#syntax-e
                                                     _%tl115579115639%_)))
                                               (let ((_%hd115581115646%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e115580115642%_)))
                                                     (_%tl115582115649%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e115580115642%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl115582115649%_)
                                                     (let ((_%e115583115652%_
                                                            (gx#syntax-e
                                                             _%tl115582115649%_)))
                                                       (let ((_%hd115584115656%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e115583115652%_)))
                     (_%tl115585115659%_
                      (let () (declare (not safe)) (##cdr _%e115583115652%_))))
                 (if (gx#stx-pair? _%tl115585115659%_)
                     (let ((_%e115586115662%_
                            (gx#syntax-e _%tl115585115659%_)))
                       (let ((_%hd115587115666%_
                              (let ()
                                (declare (not safe))
                                (##car _%e115586115662%_)))
                             (_%tl115588115669%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e115586115662%_))))
                         (if (gx#stx-pair? _%tl115588115669%_)
                             (let ((_%e115589115672%_
                                    (gx#syntax-e _%tl115588115669%_)))
                               (let ((_%hd115590115676%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115589115672%_)))
                                     (_%tl115591115679%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115589115672%_))))
                                 (if (gx#stx-pair? _%tl115591115679%_)
                                     (let ((_%e115592115682%_
                                            (gx#syntax-e _%tl115591115679%_)))
                                       (let ((_%hd115593115686%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115592115682%_)))
                                             (_%tl115594115689%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115592115682%_))))
                                         (if (gx#stx-pair? _%tl115594115689%_)
                                             (let ((_%e115595115692%_
                                                    (gx#syntax-e
                                                     _%tl115594115689%_)))
                                               (let ((_%hd115596115696%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e115595115692%_)))
                                                     (_%tl115597115699%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e115595115692%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl115597115699%_)
                                                     (let ((_%e115598115702%_
                                                            (gx#syntax-e
                                                             _%tl115597115699%_)))
                                                       (let ((_%hd115599115706%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e115598115702%_)))
                     (_%tl115600115709%_
                      (let () (declare (not safe)) (##cdr _%e115598115702%_))))
                 (if (gx#stx-pair? _%tl115600115709%_)
                     (let ((_%e115601115712%_
                            (gx#syntax-e _%tl115600115709%_)))
                       (let ((_%hd115602115716%_
                              (let ()
                                (declare (not safe))
                                (##car _%e115601115712%_)))
                             (_%tl115603115719%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e115601115712%_))))
                         (if (gx#stx-pair? _%tl115603115719%_)
                             (let ((_%e115604115722%_
                                    (gx#syntax-e _%tl115603115719%_)))
                               (let ((_%hd115605115726%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115604115722%_)))
                                     (_%tl115606115729%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115604115722%_))))
                                 (if (gx#stx-pair? _%tl115606115729%_)
                                     (let ((_%e115607115732%_
                                            (gx#syntax-e _%tl115606115729%_)))
                                       (let ((_%hd115608115736%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115607115732%_)))
                                             (_%tl115609115739%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115607115732%_))))
                                         (if (gx#stx-null? _%tl115609115739%_)
                                             ((lambda (_%g115562115742%_
                                                       _%g115563115744%_
                                                       _%g115564115745%_
                                                       _%g115565115746%_
                                                       _%g115566115747%_
                                                       _%g115567115748%_
                                                       _%g115568115749%_
                                                       _%g115569115750%_
                                                       _%g115570115751%_
                                                       _%g115571115752%_
                                                       _%g115572115753%_
                                                       _%g115573115754%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g115573115754%_
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
                                                  (cons _%g115472115540%_
                                                        (cons _%g115471115538%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g115572115753%_
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
                                                        (cons _%g115472115540%_
                                                              (cons _%g115471115538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g115571115752%_
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
                                              (cons _%g115472115540%_
                                                    (cons _%g115471115538%_
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
                                            (cons (cons _%g115570115751%_
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
                            (cons (cons _%g115571115752%_
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
                                                  (cons (cons _%g115569115750%_
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
                                                          (cons _%g115472115540%_
                                                                (cons _%g115471115538%_
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
                                                        (cons (cons _%g115568115749%_
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
                            (cons (cons _%g115569115750%_
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
                                                              (cons (cons _%g115567115748%_
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
                                              (cons (cons _%g115568115749%_
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
                            (cons (cons _%g115566115747%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g115565115746%_
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
                                    (cons _%g115472115540%_
                                          (cons _%g115471115538%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g115565115746%_
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
                                  (cons (cons _%g115565115746%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g115565115746%_
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
                                              (cons (cons _%g115566115747%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g115565115746%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g115564115745%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g115565115746%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g115565115746%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g115565115746%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g115563115744%_
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
                                                      (cons _%g115472115540%_
                                                            (cons _%g115471115538%_
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
                                                    (cons (cons _%g115562115742%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g115563115744%_
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
                                              _%hd115608115736%_
                                              _%hd115605115726%_
                                              _%hd115602115716%_
                                              _%hd115599115706%_
                                              _%hd115596115696%_
                                              _%hd115593115686%_
                                              _%hd115590115676%_
                                              _%hd115587115666%_
                                              _%hd115584115656%_
                                              _%hd115581115646%_
                                              _%hd115578115636%_
                                              _%hd115575115626%_)
                                             (_%g115560115615%_
                                              _%g115561115619%_))))
                                     (_%g115560115615%_ _%g115561115619%_))))
                             (_%g115560115615%_ _%g115561115619%_))))
                     (_%g115560115615%_ _%g115561115619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115560115615%_
                                                      _%g115561115619%_))))
                                             (_%g115560115615%_
                                              _%g115561115619%_))))
                                     (_%g115560115615%_ _%g115561115619%_))))
                             (_%g115560115615%_ _%g115561115619%_))))
                     (_%g115560115615%_ _%g115561115619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115560115615%_
                                                      _%g115561115619%_))))
                                             (_%g115560115615%_
                                              _%g115561115619%_))))
                                     (_%g115560115615%_ _%g115561115619%_))))
                             (_%g115560115615%_ _%g115561115619%_)))))
                 (_%g115559115800%_
                  (list (gx#stx-identifier
                         _%g115473115541%_
                         '"make-"
                         _%g115473115541%_)
                        (gx#stx-identifier
                         _%g115473115541%_
                         '"make-"
                         _%g115473115541%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g115473115541%_
                         '"__"
                         _%g115473115541%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g115473115541%_
                         '"__"
                         _%g115473115541%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g115473115541%_
                         _%g115473115541%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd115484115532%_
                                                     _%hd115481115522%_
                                                     _%hd115478115512%_)
                                                    (_%g115469115491%_
                                                     _%g115470115495%_))))
                                            (_%g115469115491%_
                                             _%g115470115495%_))))
                                    (_%g115469115491%_ _%g115470115495%_))))
                            (_%g115469115491%_ _%g115470115495%_))))
                    (_%g115469115491%_ _%g115470115495%_)))))
        (_%g115468115804%_ _%stx115466%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx115808%_)
      (let* ((_%g115812115834%_
              (lambda (_%g115813115830%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115813115830%_)))
             (_%g115811115903%_
              (lambda (_%g115813115838%_)
                (if (gx#stx-pair? _%g115813115838%_)
                    (let ((_%e115817115841%_ (gx#syntax-e _%g115813115838%_)))
                      (let ((_%hd115818115845%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115817115841%_)))
                            (_%tl115819115848%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115817115841%_))))
                        (if (gx#stx-pair? _%tl115819115848%_)
                            (let ((_%e115820115851%_
                                   (gx#syntax-e _%tl115819115848%_)))
                              (let ((_%hd115821115855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115820115851%_)))
                                    (_%tl115822115858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115820115851%_))))
                                (if (gx#stx-pair? _%tl115822115858%_)
                                    (let ((_%e115823115861%_
                                           (gx#syntax-e _%tl115822115858%_)))
                                      (let ((_%hd115824115865%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115823115861%_)))
                                            (_%tl115825115868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115823115861%_))))
                                        (if (gx#stx-pair? _%tl115825115868%_)
                                            (let ((_%e115826115871%_
                                                   (gx#syntax-e
                                                    _%tl115825115868%_)))
                                              (let ((_%hd115827115875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115826115871%_)))
                                                    (_%tl115828115878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115826115871%_))))
                                                (if (gx#stx-null?
                                                     _%tl115828115878%_)
                                                    ((lambda (_%g115814115881%_
                                                              _%g115815115883%_
                                                              _%g115816115884%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g115816115884%_
                                                   (cons _%g115815115883%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g115815115883%_
                                   (cons _%g115815115883%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g115814115881%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd115827115875%_
                                                     _%hd115824115865%_
                                                     _%hd115821115855%_)
                                                    (_%g115812115834%_
                                                     _%g115813115838%_))))
                                            (_%g115812115834%_
                                             _%g115813115838%_))))
                                    (_%g115812115834%_ _%g115813115838%_))))
                            (_%g115812115834%_ _%g115813115838%_))))
                    (_%g115812115834%_ _%g115813115838%_)))))
        (_%g115811115903%_ _%$stx115808%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx115907%_)
      (let* ((_%g115911115945%_
              (lambda (_%g115912115941%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115912115941%_)))
             (_%g115910116056%_
              (lambda (_%g115912115949%_)
                (if (gx#stx-pair? _%g115912115949%_)
                    (let ((_%e115919115952%_ (gx#syntax-e _%g115912115949%_)))
                      (let ((_%hd115920115956%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115919115952%_)))
                            (_%tl115921115959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115919115952%_))))
                        (if (gx#stx-pair? _%tl115921115959%_)
                            (let ((_%e115922115962%_
                                   (gx#syntax-e _%tl115921115959%_)))
                              (let ((_%hd115923115966%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115922115962%_)))
                                    (_%tl115924115969%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115922115962%_))))
                                (if (gx#stx-pair? _%tl115924115969%_)
                                    (let ((_%e115925115972%_
                                           (gx#syntax-e _%tl115924115969%_)))
                                      (let ((_%hd115926115976%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115925115972%_)))
                                            (_%tl115927115979%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115925115972%_))))
                                        (if (gx#stx-pair? _%tl115927115979%_)
                                            (let ((_%e115928115982%_
                                                   (gx#syntax-e
                                                    _%tl115927115979%_)))
                                              (let ((_%hd115929115986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115928115982%_)))
                                                    (_%tl115930115989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115928115982%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115930115989%_)
                                                    (let ((_%e115931115992%_
                                                           (gx#syntax-e
                                                            _%tl115930115989%_)))
                                                      (let ((_%hd115932115996%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115931115992%_)))
                    (_%tl115933115999%_
                     (let () (declare (not safe)) (##cdr _%e115931115992%_))))
                (if (gx#stx-pair? _%tl115933115999%_)
                    (let ((_%e115934116002%_ (gx#syntax-e _%tl115933115999%_)))
                      (let ((_%hd115935116006%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115934116002%_)))
                            (_%tl115936116009%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115934116002%_))))
                        (if (gx#stx-pair? _%tl115936116009%_)
                            (let ((_%e115937116012%_
                                   (gx#syntax-e _%tl115936116009%_)))
                              (let ((_%hd115938116016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115937116012%_)))
                                    (_%tl115939116019%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115937116012%_))))
                                (if (gx#stx-null? _%tl115939116019%_)
                                    ((lambda (_%g115913116022%_
                                              _%g115914116024%_
                                              _%g115915116025%_
                                              _%g115916116026%_
                                              _%g115917116027%_
                                              _%g115918116028%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115916116026%_
                                               (cons _%g115914116024%_ '()))
                                         (cons _%g115917116027%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115918116028%_ '()))
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
                               (cons _%g115918116028%_
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
                                     (cons _%g115913116022%_ '()))
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
                                     (cons (cons (cons _%g115915116025%_
                                                       (cons _%g115914116024%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g115918116028%_
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
                                     _%hd115938116016%_
                                     _%hd115935116006%_
                                     _%hd115932115996%_
                                     _%hd115929115986%_
                                     _%hd115926115976%_
                                     _%hd115923115966%_)
                                    (_%g115911115945%_ _%g115912115949%_))))
                            (_%g115911115945%_ _%g115912115949%_))))
                    (_%g115911115945%_ _%g115912115949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115911115945%_
                                                     _%g115912115949%_))))
                                            (_%g115911115945%_
                                             _%g115912115949%_))))
                                    (_%g115911115945%_ _%g115912115949%_))))
                            (_%g115911115945%_ _%g115912115949%_))))
                    (_%g115911115945%_ _%g115912115949%_)))))
        (_%g115910116056%_ _%$stx115907%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx116060%_)
      (let* ((_%g116064116106%_
              (lambda (_%g116065116102%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116065116102%_)))
             (_%g116063116245%_
              (lambda (_%g116065116110%_)
                (if (gx#stx-pair? _%g116065116110%_)
                    (let ((_%e116074116113%_ (gx#syntax-e _%g116065116110%_)))
                      (let ((_%hd116075116117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116074116113%_)))
                            (_%tl116076116120%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116074116113%_))))
                        (if (gx#stx-pair? _%tl116076116120%_)
                            (let ((_%e116077116123%_
                                   (gx#syntax-e _%tl116076116120%_)))
                              (let ((_%hd116078116127%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116077116123%_)))
                                    (_%tl116079116130%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116077116123%_))))
                                (if (gx#stx-pair? _%tl116079116130%_)
                                    (let ((_%e116080116133%_
                                           (gx#syntax-e _%tl116079116130%_)))
                                      (let ((_%hd116081116137%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116080116133%_)))
                                            (_%tl116082116140%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116080116133%_))))
                                        (if (gx#stx-pair? _%tl116082116140%_)
                                            (let ((_%e116083116143%_
                                                   (gx#syntax-e
                                                    _%tl116082116140%_)))
                                              (let ((_%hd116084116147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116083116143%_)))
                                                    (_%tl116085116150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116083116143%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116085116150%_)
                                                    (let ((_%e116086116153%_
                                                           (gx#syntax-e
                                                            _%tl116085116150%_)))
                                                      (let ((_%hd116087116157%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116086116153%_)))
                    (_%tl116088116160%_
                     (let () (declare (not safe)) (##cdr _%e116086116153%_))))
                (if (gx#stx-pair? _%tl116088116160%_)
                    (let ((_%e116089116163%_ (gx#syntax-e _%tl116088116160%_)))
                      (let ((_%hd116090116167%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116089116163%_)))
                            (_%tl116091116170%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116089116163%_))))
                        (if (gx#stx-pair? _%tl116091116170%_)
                            (let ((_%e116092116173%_
                                   (gx#syntax-e _%tl116091116170%_)))
                              (let ((_%hd116093116177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116092116173%_)))
                                    (_%tl116094116180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116092116173%_))))
                                (if (gx#stx-pair? _%tl116094116180%_)
                                    (let ((_%e116095116183%_
                                           (gx#syntax-e _%tl116094116180%_)))
                                      (let ((_%hd116096116187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116095116183%_)))
                                            (_%tl116097116190%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116095116183%_))))
                                        (if (gx#stx-pair? _%tl116097116190%_)
                                            (let ((_%e116098116193%_
                                                   (gx#syntax-e
                                                    _%tl116097116190%_)))
                                              (let ((_%hd116099116197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116098116193%_)))
                                                    (_%tl116100116200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116098116193%_))))
                                                (if (gx#stx-null?
                                                     _%tl116100116200%_)
                                                    ((lambda (_%g116066116203%_
                                                              _%g116067116205%_
                                                              _%g116068116206%_
                                                              _%g116069116207%_
                                                              _%g116070116208%_
                                                              _%g116071116209%_
                                                              _%g116072116210%_
                                                              _%g116073116211%_)
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
                                                   (cons (cons _%g116071116209%_
                                                               (cons _%g116069116207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g116072116210%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g116073116211%_
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
                                               (cons _%g116073116211%_
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
                                                       (cons _%g116073116211%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g116069116207%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g116073116211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g116068116206%_ '()))))
               (cons (cons _%g116066116203%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g116073116211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g116069116207%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g116073116211%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g116068116206%_ '()))))
                     (cons (cons _%g116067116205%_ '()) '()))))
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
                                                     (cons (cons (cons _%g116070116208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g116069116207%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g116073116211%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g116069116207%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g116073116211%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g116068116206%_ '()))))
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
                                                     _%hd116099116197%_
                                                     _%hd116096116187%_
                                                     _%hd116093116177%_
                                                     _%hd116090116167%_
                                                     _%hd116087116157%_
                                                     _%hd116084116147%_
                                                     _%hd116081116137%_
                                                     _%hd116078116127%_)
                                                    (_%g116064116106%_
                                                     _%g116065116110%_))))
                                            (_%g116064116106%_
                                             _%g116065116110%_))))
                                    (_%g116064116106%_ _%g116065116110%_))))
                            (_%g116064116106%_ _%g116065116110%_))))
                    (_%g116064116106%_ _%g116065116110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116064116106%_
                                                     _%g116065116110%_))))
                                            (_%g116064116106%_
                                             _%g116065116110%_))))
                                    (_%g116064116106%_ _%g116065116110%_))))
                            (_%g116064116106%_ _%g116065116110%_))))
                    (_%g116064116106%_ _%g116065116110%_)))))
        (_%g116063116245%_ _%$stx116060%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx116249%_)
      (let* ((_%g116253116299%_
              (lambda (_%g116254116295%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116254116295%_)))
             (_%g116252116452%_
              (lambda (_%g116254116303%_)
                (if (gx#stx-pair? _%g116254116303%_)
                    (let ((_%e116264116306%_ (gx#syntax-e _%g116254116303%_)))
                      (let ((_%hd116265116310%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116264116306%_)))
                            (_%tl116266116313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116264116306%_))))
                        (if (gx#stx-pair? _%tl116266116313%_)
                            (let ((_%e116267116316%_
                                   (gx#syntax-e _%tl116266116313%_)))
                              (let ((_%hd116268116320%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116267116316%_)))
                                    (_%tl116269116323%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116267116316%_))))
                                (if (gx#stx-pair? _%tl116269116323%_)
                                    (let ((_%e116270116326%_
                                           (gx#syntax-e _%tl116269116323%_)))
                                      (let ((_%hd116271116330%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116270116326%_)))
                                            (_%tl116272116333%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116270116326%_))))
                                        (if (gx#stx-pair? _%tl116272116333%_)
                                            (let ((_%e116273116336%_
                                                   (gx#syntax-e
                                                    _%tl116272116333%_)))
                                              (let ((_%hd116274116340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116273116336%_)))
                                                    (_%tl116275116343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116273116336%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116275116343%_)
                                                    (let ((_%e116276116346%_
                                                           (gx#syntax-e
                                                            _%tl116275116343%_)))
                                                      (let ((_%hd116277116350%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116276116346%_)))
                    (_%tl116278116353%_
                     (let () (declare (not safe)) (##cdr _%e116276116346%_))))
                (if (gx#stx-pair? _%tl116278116353%_)
                    (let ((_%e116279116356%_ (gx#syntax-e _%tl116278116353%_)))
                      (let ((_%hd116280116360%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116279116356%_)))
                            (_%tl116281116363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116279116356%_))))
                        (if (gx#stx-pair? _%tl116281116363%_)
                            (let ((_%e116282116366%_
                                   (gx#syntax-e _%tl116281116363%_)))
                              (let ((_%hd116283116370%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116282116366%_)))
                                    (_%tl116284116373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116282116366%_))))
                                (if (gx#stx-pair? _%tl116284116373%_)
                                    (let ((_%e116285116376%_
                                           (gx#syntax-e _%tl116284116373%_)))
                                      (let ((_%hd116286116380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116285116376%_)))
                                            (_%tl116287116383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116285116376%_))))
                                        (if (gx#stx-pair? _%tl116287116383%_)
                                            (let ((_%e116288116386%_
                                                   (gx#syntax-e
                                                    _%tl116287116383%_)))
                                              (let ((_%hd116289116390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116288116386%_)))
                                                    (_%tl116290116393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116288116386%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116290116393%_)
                                                    (let ((_%e116291116396%_
                                                           (gx#syntax-e
                                                            _%tl116290116393%_)))
                                                      (let ((_%hd116292116400%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116291116396%_)))
                    (_%tl116293116403%_
                     (let () (declare (not safe)) (##cdr _%e116291116396%_))))
                (if (gx#stx-null? _%tl116293116403%_)
                    ((lambda (_%g116255116406%_
                              _%g116256116408%_
                              _%g116257116409%_
                              _%g116258116410%_
                              _%g116259116411%_
                              _%g116260116412%_
                              _%g116261116413%_
                              _%g116262116414%_
                              _%g116263116415%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g116261116413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g116259116411%_ '()))
                         (cons _%g116262116414%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g116263116415%_ '()))
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
                                                       (cons _%g116263116415%_
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
                                                               (cons _%g116263116415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g116259116411%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g116263116415%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g116258116410%_
                                                     (cons _%g116257116409%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g116255116406%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g116263116415%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g116259116411%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g116263116415%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g116258116410%_
                                                           (cons _%g116257116409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g116256116408%_ '()) '()))))
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
                     (cons (cons (cons _%g116260116412%_
                                       (cons _%g116259116411%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g116263116415%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g116259116411%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g116263116415%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g116258116410%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g116263116415%_
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
                     _%hd116292116400%_
                     _%hd116289116390%_
                     _%hd116286116380%_
                     _%hd116283116370%_
                     _%hd116280116360%_
                     _%hd116277116350%_
                     _%hd116274116340%_
                     _%hd116271116330%_
                     _%hd116268116320%_)
                    (_%g116253116299%_ _%g116254116303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116253116299%_
                                                     _%g116254116303%_))))
                                            (_%g116253116299%_
                                             _%g116254116303%_))))
                                    (_%g116253116299%_ _%g116254116303%_))))
                            (_%g116253116299%_ _%g116254116303%_))))
                    (_%g116253116299%_ _%g116254116303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116253116299%_
                                                     _%g116254116303%_))))
                                            (_%g116253116299%_
                                             _%g116254116303%_))))
                                    (_%g116253116299%_ _%g116254116303%_))))
                            (_%g116253116299%_ _%g116254116303%_))))
                    (_%g116253116299%_ _%g116254116303%_)))))
        (_%g116252116452%_ _%$stx116249%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx116456%_)
      (let* ((_%g116460116494%_
              (lambda (_%g116461116490%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116461116490%_)))
             (_%g116459116605%_
              (lambda (_%g116461116498%_)
                (if (gx#stx-pair? _%g116461116498%_)
                    (let ((_%e116468116501%_ (gx#syntax-e _%g116461116498%_)))
                      (let ((_%hd116469116505%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116468116501%_)))
                            (_%tl116470116508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116468116501%_))))
                        (if (gx#stx-pair? _%tl116470116508%_)
                            (let ((_%e116471116511%_
                                   (gx#syntax-e _%tl116470116508%_)))
                              (let ((_%hd116472116515%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116471116511%_)))
                                    (_%tl116473116518%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116471116511%_))))
                                (if (gx#stx-pair? _%tl116473116518%_)
                                    (let ((_%e116474116521%_
                                           (gx#syntax-e _%tl116473116518%_)))
                                      (let ((_%hd116475116525%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116474116521%_)))
                                            (_%tl116476116528%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116474116521%_))))
                                        (if (gx#stx-pair? _%tl116476116528%_)
                                            (let ((_%e116477116531%_
                                                   (gx#syntax-e
                                                    _%tl116476116528%_)))
                                              (let ((_%hd116478116535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116477116531%_)))
                                                    (_%tl116479116538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116477116531%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116479116538%_)
                                                    (let ((_%e116480116541%_
                                                           (gx#syntax-e
                                                            _%tl116479116538%_)))
                                                      (let ((_%hd116481116545%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116480116541%_)))
                    (_%tl116482116548%_
                     (let () (declare (not safe)) (##cdr _%e116480116541%_))))
                (if (gx#stx-pair? _%tl116482116548%_)
                    (let ((_%e116483116551%_ (gx#syntax-e _%tl116482116548%_)))
                      (let ((_%hd116484116555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116483116551%_)))
                            (_%tl116485116558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116483116551%_))))
                        (if (gx#stx-pair? _%tl116485116558%_)
                            (let ((_%e116486116561%_
                                   (gx#syntax-e _%tl116485116558%_)))
                              (let ((_%hd116487116565%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116486116561%_)))
                                    (_%tl116488116568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116486116561%_))))
                                (if (gx#stx-null? _%tl116488116568%_)
                                    ((lambda (_%g116462116571%_
                                              _%g116463116573%_
                                              _%g116464116574%_
                                              _%g116465116575%_
                                              _%g116466116576%_
                                              _%g116467116577%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g116465116575%_
                                               (cons _%g116463116573%_ '()))
                                         (cons _%g116466116576%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g116467116577%_ '()))
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
                               (cons _%g116467116577%_
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
                                     (cons (cons (cons _%g116464116574%_
                                                       (cons _%g116463116573%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g116467116577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g116467116577%_
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
                     (cons (cons _%g116462116571%_ '()) '()))))
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
                                     _%hd116487116565%_
                                     _%hd116484116555%_
                                     _%hd116481116545%_
                                     _%hd116478116535%_
                                     _%hd116475116525%_
                                     _%hd116472116515%_)
                                    (_%g116460116494%_ _%g116461116498%_))))
                            (_%g116460116494%_ _%g116461116498%_))))
                    (_%g116460116494%_ _%g116461116498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116460116494%_
                                                     _%g116461116498%_))))
                                            (_%g116460116494%_
                                             _%g116461116498%_))))
                                    (_%g116460116494%_ _%g116461116498%_))))
                            (_%g116460116494%_ _%g116461116498%_))))
                    (_%g116460116494%_ _%g116461116498%_)))))
        (_%g116459116605%_ _%$stx116456%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx116609%_)
      (let* ((_%g116613116631%_
              (lambda (_%g116614116627%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116614116627%_)))
             (_%g116612116686%_
              (lambda (_%g116614116635%_)
                (if (gx#stx-pair? _%g116614116635%_)
                    (let ((_%e116617116638%_ (gx#syntax-e _%g116614116635%_)))
                      (let ((_%hd116618116642%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116617116638%_)))
                            (_%tl116619116645%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116617116638%_))))
                        (if (gx#stx-pair? _%tl116619116645%_)
                            (let ((_%e116620116648%_
                                   (gx#syntax-e _%tl116619116645%_)))
                              (let ((_%hd116621116652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116620116648%_)))
                                    (_%tl116622116655%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116620116648%_))))
                                (if (gx#stx-pair? _%tl116622116655%_)
                                    (let ((_%e116623116658%_
                                           (gx#syntax-e _%tl116622116655%_)))
                                      (let ((_%hd116624116662%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116623116658%_)))
                                            (_%tl116625116665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116623116658%_))))
                                        (if (gx#stx-null? _%tl116625116665%_)
                                            ((lambda (_%g116615116668%_
                                                      _%g116616116670%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g116616116670%_ '()))
                   (cons _%g116615116668%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd116624116662%_
                                             _%hd116621116652%_)
                                            (_%g116613116631%_
                                             _%g116614116635%_))))
                                    (_%g116613116631%_ _%g116614116635%_))))
                            (_%g116613116631%_ _%g116614116635%_))))
                    (_%g116613116631%_ _%g116614116635%_)))))
        (_%g116612116686%_ _%$stx116609%_)))))

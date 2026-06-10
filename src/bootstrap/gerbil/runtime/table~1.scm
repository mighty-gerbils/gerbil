(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx99578%_)
      (let* ((_%$%g9958299600%_
              (lambda (_%$%g9958399596%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g9958399596%_)))
             (_%$%g9958199656%_
              (lambda (_%$%g9958399604%_)
                (if (gx#stx-pair? _%$%g9958399604%_)
                    (let ((_%$%e9958699607%_ (gx#syntax-e _%$%g9958399604%_)))
                      (let ((_%$%hd9958799611%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e9958699607%_)))
                            (_%$%tl9958899614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e9958699607%_))))
                        (if (gx#stx-pair? _%$%tl9958899614%_)
                            (let ((_%$%e9958999617%_
                                   (gx#syntax-e _%$%tl9958899614%_)))
                              (let ((_%$%hd9959099621%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e9958999617%_)))
                                    (_%$%tl9959199624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e9958999617%_))))
                                (if (gx#stx-pair? _%$%tl9959199624%_)
                                    (let ((_%$%e9959299627%_
                                           (gx#syntax-e _%$%tl9959199624%_)))
                                      (let ((_%$%hd9959399631%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e9959299627%_)))
                                            (_%$%tl9959499634%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e9959299627%_))))
                                        (if (gx#stx-null? _%$%tl9959499634%_)
                                            ((lambda (_%$%g9958499637%_
                                                      _%$%g9958599639%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%$%g9958599639%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%$%g9958499637%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%hd9959399631%_
                                             _%$%hd9959099621%_)
                                            (_%$%g9958299600%_
                                             _%$%g9958399604%_))))
                                    (_%$%g9958299600%_ _%$%g9958399604%_))))
                            (_%$%g9958299600%_ _%$%g9958399604%_))))
                    (_%$%g9958299600%_ _%$%g9958399604%_)))))
        (_%$%g9958199656%_ _%$stx99578%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx99660%_)
      (let* ((_%$%g9966399685%_
              (lambda (_%$%g9966499681%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g9966499681%_)))
             (_%$%g9966299998%_
              (lambda (_%$%g9966499689%_)
                (if (gx#stx-pair? _%$%g9966499689%_)
                    (let ((_%$%e9966899692%_ (gx#syntax-e _%$%g9966499689%_)))
                      (let ((_%$%hd9966999696%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e9966899692%_)))
                            (_%$%tl9967099699%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e9966899692%_))))
                        (if (gx#stx-pair? _%$%tl9967099699%_)
                            (let ((_%$%e9967199702%_
                                   (gx#syntax-e _%$%tl9967099699%_)))
                              (let ((_%$%hd9967299706%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e9967199702%_)))
                                    (_%$%tl9967399709%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e9967199702%_))))
                                (if (gx#stx-pair? _%$%tl9967399709%_)
                                    (let ((_%$%e9967499712%_
                                           (gx#syntax-e _%$%tl9967399709%_)))
                                      (let ((_%$%hd9967599716%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e9967499712%_)))
                                            (_%$%tl9967699719%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e9967499712%_))))
                                        (if (gx#stx-pair? _%$%tl9967699719%_)
                                            (let ((_%$%e9967799722%_
                                                   (gx#syntax-e
                                                    _%$%tl9967699719%_)))
                                              (let ((_%$%hd9967899726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e9967799722%_)))
                                                    (_%$%tl9967999729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e9967799722%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl9967999729%_)
                                                    ((lambda (_%$%g9966599732%_
                                                              _%$%g9966699734%_
                                                              _%$%g9966799735%_)
                                                       (let* ((_%$%g9975499809%_
                                                               (lambda (_%$%g9975599805%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g9975599805%_)))
                      (_%$%g9975399994%_
                       (lambda (_%$%g9975599813%_)
                         (if (gx#stx-pair? _%$%g9975599813%_)
                             (let ((_%$%e9976899816%_
                                    (gx#syntax-e _%$%g9975599813%_)))
                               (let ((_%$%hd9976999820%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e9976899816%_)))
                                     (_%$%tl9977099823%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e9976899816%_))))
                                 (if (gx#stx-pair? _%$%tl9977099823%_)
                                     (let ((_%$%e9977199826%_
                                            (gx#syntax-e _%$%tl9977099823%_)))
                                       (let ((_%$%hd9977299830%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e9977199826%_)))
                                             (_%$%tl9977399833%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e9977199826%_))))
                                         (if (gx#stx-pair? _%$%tl9977399833%_)
                                             (let ((_%$%e9977499836%_
                                                    (gx#syntax-e
                                                     _%$%tl9977399833%_)))
                                               (let ((_%$%hd9977599840%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e9977499836%_)))
                                                     (_%$%tl9977699843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e9977499836%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl9977699843%_)
                                                     (let ((_%$%e9977799846%_
                                                            (gx#syntax-e
                                                             _%$%tl9977699843%_)))
                                                       (let ((_%$%hd9977899850%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e9977799846%_)))
                     (_%$%tl9977999853%_
                      (let () (declare (not safe)) (##cdr _%$%e9977799846%_))))
                 (if (gx#stx-pair? _%$%tl9977999853%_)
                     (let ((_%$%e9978099856%_
                            (gx#syntax-e _%$%tl9977999853%_)))
                       (let ((_%$%hd9978199860%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e9978099856%_)))
                             (_%$%tl9978299863%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e9978099856%_))))
                         (if (gx#stx-pair? _%$%tl9978299863%_)
                             (let ((_%$%e9978399866%_
                                    (gx#syntax-e _%$%tl9978299863%_)))
                               (let ((_%$%hd9978499870%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e9978399866%_)))
                                     (_%$%tl9978599873%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e9978399866%_))))
                                 (if (gx#stx-pair? _%$%tl9978599873%_)
                                     (let ((_%$%e9978699876%_
                                            (gx#syntax-e _%$%tl9978599873%_)))
                                       (let ((_%$%hd9978799880%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e9978699876%_)))
                                             (_%$%tl9978899883%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e9978699876%_))))
                                         (if (gx#stx-pair? _%$%tl9978899883%_)
                                             (let ((_%$%e9978999886%_
                                                    (gx#syntax-e
                                                     _%$%tl9978899883%_)))
                                               (let ((_%$%hd9979099890%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e9978999886%_)))
                                                     (_%$%tl9979199893%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e9978999886%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl9979199893%_)
                                                     (let ((_%$%e9979299896%_
                                                            (gx#syntax-e
                                                             _%$%tl9979199893%_)))
                                                       (let ((_%$%hd9979399900%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e9979299896%_)))
                     (_%$%tl9979499903%_
                      (let () (declare (not safe)) (##cdr _%$%e9979299896%_))))
                 (if (gx#stx-pair? _%$%tl9979499903%_)
                     (let ((_%$%e9979599906%_
                            (gx#syntax-e _%$%tl9979499903%_)))
                       (let ((_%$%hd9979699910%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e9979599906%_)))
                             (_%$%tl9979799913%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e9979599906%_))))
                         (if (gx#stx-pair? _%$%tl9979799913%_)
                             (let ((_%$%e9979899916%_
                                    (gx#syntax-e _%$%tl9979799913%_)))
                               (let ((_%$%hd9979999920%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e9979899916%_)))
                                     (_%$%tl9980099923%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e9979899916%_))))
                                 (if (gx#stx-pair? _%$%tl9980099923%_)
                                     (let ((_%$%e9980199926%_
                                            (gx#syntax-e _%$%tl9980099923%_)))
                                       (let ((_%$%hd9980299930%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e9980199926%_)))
                                             (_%$%tl9980399933%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e9980199926%_))))
                                         (if (gx#stx-null? _%$%tl9980399933%_)
                                             ((lambda (_%$%g9975699936%_
                                                       _%$%g9975799938%_
                                                       _%$%g9975899939%_
                                                       _%$%g9975999940%_
                                                       _%$%g9976099941%_
                                                       _%$%g9976199942%_
                                                       _%$%g9976299943%_
                                                       _%$%g9976399944%_
                                                       _%$%g9976499945%_
                                                       _%$%g9976599946%_
                                                       _%$%g9976699947%_
                                                       _%$%g9976799948%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%$%g9976799948%_
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
                                                  (cons _%$%g9966699734%_
                                                        (cons _%$%g9966599732%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%g9976699947%_
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
                                                        (cons _%$%g9966699734%_
                                                              (cons _%$%g9966599732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%$%g9976599946%_
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
                                              (cons _%$%g9966699734%_
                                                    (cons _%$%g9966599732%_
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
                                            (cons (cons _%$%g9976499945%_
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
                            (cons (cons _%$%g9976599946%_
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
                                                  (cons (cons _%$%g9976399944%_
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
                                                          (cons _%$%g9966699734%_
                                                                (cons _%$%g9966599732%_
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
                                                        (cons (cons _%$%g9976299943%_
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
                            (cons (cons _%$%g9976399944%_
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
                                                              (cons (cons _%$%g9976199942%_
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
                                              (cons (cons _%$%g9976299943%_
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
                            (cons (cons _%$%g9976099941%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%g9975999940%_
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
                                    (cons _%$%g9966699734%_
                                          (cons _%$%g9966599732%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%$%g9975999940%_
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
                                  (cons (cons _%$%g9975999940%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%g9975999940%_
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
                                              (cons (cons _%$%g9976099941%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%$%g9975999940%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%g9975899939%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%g9975999940%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%$%g9975999940%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%g9975999940%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%$%g9975799938%_
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
                                                      (cons _%$%g9966699734%_
                                                            (cons _%$%g9966599732%_
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
                                                    (cons (cons _%$%g9975699936%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%$%g9975799938%_
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
                                              _%$%hd9980299930%_
                                              _%$%hd9979999920%_
                                              _%$%hd9979699910%_
                                              _%$%hd9979399900%_
                                              _%$%hd9979099890%_
                                              _%$%hd9978799880%_
                                              _%$%hd9978499870%_
                                              _%$%hd9978199860%_
                                              _%$%hd9977899850%_
                                              _%$%hd9977599840%_
                                              _%$%hd9977299830%_
                                              _%$%hd9976999820%_)
                                             (_%$%g9975499809%_
                                              _%$%g9975599813%_))))
                                     (_%$%g9975499809%_ _%$%g9975599813%_))))
                             (_%$%g9975499809%_ _%$%g9975599813%_))))
                     (_%$%g9975499809%_ _%$%g9975599813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g9975499809%_
                                                      _%$%g9975599813%_))))
                                             (_%$%g9975499809%_
                                              _%$%g9975599813%_))))
                                     (_%$%g9975499809%_ _%$%g9975599813%_))))
                             (_%$%g9975499809%_ _%$%g9975599813%_))))
                     (_%$%g9975499809%_ _%$%g9975599813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g9975499809%_
                                                      _%$%g9975599813%_))))
                                             (_%$%g9975499809%_
                                              _%$%g9975599813%_))))
                                     (_%$%g9975499809%_ _%$%g9975599813%_))))
                             (_%$%g9975499809%_ _%$%g9975599813%_)))))
                 (_%$%g9975399994%_
                  (list (gx#stx-identifier
                         _%$%g9966799735%_
                         '"make-"
                         _%$%g9966799735%_)
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         '"make-"
                         _%$%g9966799735%_
                         '"/lock")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-ref")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         '"__"
                         _%$%g9966799735%_
                         '"-set!")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-set!")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         '"__"
                         _%$%g9966799735%_
                         '"-update!")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-update!")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%$%g9966799735%_
                         _%$%g9966799735%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%hd9967899726%_
                                                     _%$%hd9967599716%_
                                                     _%$%hd9967299706%_)
                                                    (_%$%g9966399685%_
                                                     _%$%g9966499689%_))))
                                            (_%$%g9966399685%_
                                             _%$%g9966499689%_))))
                                    (_%$%g9966399685%_ _%$%g9966499689%_))))
                            (_%$%g9966399685%_ _%$%g9966499689%_))))
                    (_%$%g9966399685%_ _%$%g9966499689%_)))))
        (_%$%g9966299998%_ _%stx99660%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx100002%_)
      (let* ((_%$%g100006100028%_
              (lambda (_%$%g100007100024%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g100007100024%_)))
             (_%$%g100005100097%_
              (lambda (_%$%g100007100032%_)
                (if (gx#stx-pair? _%$%g100007100032%_)
                    (let ((_%$%e100011100035%_
                           (gx#syntax-e _%$%g100007100032%_)))
                      (let ((_%$%hd100012100039%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100011100035%_)))
                            (_%$%tl100013100042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100011100035%_))))
                        (if (gx#stx-pair? _%$%tl100013100042%_)
                            (let ((_%$%e100014100045%_
                                   (gx#syntax-e _%$%tl100013100042%_)))
                              (let ((_%$%hd100015100049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100014100045%_)))
                                    (_%$%tl100016100052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100014100045%_))))
                                (if (gx#stx-pair? _%$%tl100016100052%_)
                                    (let ((_%$%e100017100055%_
                                           (gx#syntax-e _%$%tl100016100052%_)))
                                      (let ((_%$%hd100018100059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100017100055%_)))
                                            (_%$%tl100019100062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100017100055%_))))
                                        (if (gx#stx-pair? _%$%tl100019100062%_)
                                            (let ((_%$%e100020100065%_
                                                   (gx#syntax-e
                                                    _%$%tl100019100062%_)))
                                              (let ((_%$%hd100021100069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100020100065%_)))
                                                    (_%$%tl100022100072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100020100065%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl100022100072%_)
                                                    ((lambda (_%$%g100008100075%_
                                                              _%$%g100009100077%_
                                                              _%$%g100010100078%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%$%g100010100078%_
                                                   (cons _%$%g100009100077%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%$%g100009100077%_
                                   (cons _%$%g100009100077%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%$%g100008100075%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%hd100021100069%_
                                                     _%$%hd100018100059%_
                                                     _%$%hd100015100049%_)
                                                    (_%$%g100006100028%_
                                                     _%$%g100007100032%_))))
                                            (_%$%g100006100028%_
                                             _%$%g100007100032%_))))
                                    (_%$%g100006100028%_
                                     _%$%g100007100032%_))))
                            (_%$%g100006100028%_ _%$%g100007100032%_))))
                    (_%$%g100006100028%_ _%$%g100007100032%_)))))
        (_%$%g100005100097%_ _%$stx100002%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx100101%_)
      (let* ((_%$%g100105100139%_
              (lambda (_%$%g100106100135%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g100106100135%_)))
             (_%$%g100104100250%_
              (lambda (_%$%g100106100143%_)
                (if (gx#stx-pair? _%$%g100106100143%_)
                    (let ((_%$%e100113100146%_
                           (gx#syntax-e _%$%g100106100143%_)))
                      (let ((_%$%hd100114100150%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100113100146%_)))
                            (_%$%tl100115100153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100113100146%_))))
                        (if (gx#stx-pair? _%$%tl100115100153%_)
                            (let ((_%$%e100116100156%_
                                   (gx#syntax-e _%$%tl100115100153%_)))
                              (let ((_%$%hd100117100160%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100116100156%_)))
                                    (_%$%tl100118100163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100116100156%_))))
                                (if (gx#stx-pair? _%$%tl100118100163%_)
                                    (let ((_%$%e100119100166%_
                                           (gx#syntax-e _%$%tl100118100163%_)))
                                      (let ((_%$%hd100120100170%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100119100166%_)))
                                            (_%$%tl100121100173%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100119100166%_))))
                                        (if (gx#stx-pair? _%$%tl100121100173%_)
                                            (let ((_%$%e100122100176%_
                                                   (gx#syntax-e
                                                    _%$%tl100121100173%_)))
                                              (let ((_%$%hd100123100180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100122100176%_)))
                                                    (_%$%tl100124100183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100122100176%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl100124100183%_)
                                                    (let ((_%$%e100125100186%_
                                                           (gx#syntax-e
                                                            _%$%tl100124100183%_)))
                                                      (let ((_%$%hd100126100190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e100125100186%_)))
                    (_%$%tl100127100193%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e100125100186%_))))
                (if (gx#stx-pair? _%$%tl100127100193%_)
                    (let ((_%$%e100128100196%_
                           (gx#syntax-e _%$%tl100127100193%_)))
                      (let ((_%$%hd100129100200%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100128100196%_)))
                            (_%$%tl100130100203%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100128100196%_))))
                        (if (gx#stx-pair? _%$%tl100130100203%_)
                            (let ((_%$%e100131100206%_
                                   (gx#syntax-e _%$%tl100130100203%_)))
                              (let ((_%$%hd100132100210%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100131100206%_)))
                                    (_%$%tl100133100213%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100131100206%_))))
                                (if (gx#stx-null? _%$%tl100133100213%_)
                                    ((lambda (_%$%g100107100216%_
                                              _%$%g100108100218%_
                                              _%$%g100109100219%_
                                              _%$%g100110100220%_
                                              _%$%g100111100221%_
                                              _%$%g100112100222%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%$%g100110100220%_
                                               (cons _%$%g100108100218%_ '()))
                                         (cons _%$%g100111100221%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%$%g100112100222%_ '()))
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
                               (cons _%$%g100112100222%_
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
                                     (cons _%$%g100107100216%_ '()))
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
                                     (cons (cons (cons _%$%g100109100219%_
                                                       (cons _%$%g100108100218%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%$%g100112100222%_
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
                                     _%$%hd100132100210%_
                                     _%$%hd100129100200%_
                                     _%$%hd100126100190%_
                                     _%$%hd100123100180%_
                                     _%$%hd100120100170%_
                                     _%$%hd100117100160%_)
                                    (_%$%g100105100139%_
                                     _%$%g100106100143%_))))
                            (_%$%g100105100139%_ _%$%g100106100143%_))))
                    (_%$%g100105100139%_ _%$%g100106100143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g100105100139%_
                                                     _%$%g100106100143%_))))
                                            (_%$%g100105100139%_
                                             _%$%g100106100143%_))))
                                    (_%$%g100105100139%_
                                     _%$%g100106100143%_))))
                            (_%$%g100105100139%_ _%$%g100106100143%_))))
                    (_%$%g100105100139%_ _%$%g100106100143%_)))))
        (_%$%g100104100250%_ _%$stx100101%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx100254%_)
      (let* ((_%$%g100258100300%_
              (lambda (_%$%g100259100296%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g100259100296%_)))
             (_%$%g100257100439%_
              (lambda (_%$%g100259100304%_)
                (if (gx#stx-pair? _%$%g100259100304%_)
                    (let ((_%$%e100268100307%_
                           (gx#syntax-e _%$%g100259100304%_)))
                      (let ((_%$%hd100269100311%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100268100307%_)))
                            (_%$%tl100270100314%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100268100307%_))))
                        (if (gx#stx-pair? _%$%tl100270100314%_)
                            (let ((_%$%e100271100317%_
                                   (gx#syntax-e _%$%tl100270100314%_)))
                              (let ((_%$%hd100272100321%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100271100317%_)))
                                    (_%$%tl100273100324%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100271100317%_))))
                                (if (gx#stx-pair? _%$%tl100273100324%_)
                                    (let ((_%$%e100274100327%_
                                           (gx#syntax-e _%$%tl100273100324%_)))
                                      (let ((_%$%hd100275100331%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100274100327%_)))
                                            (_%$%tl100276100334%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100274100327%_))))
                                        (if (gx#stx-pair? _%$%tl100276100334%_)
                                            (let ((_%$%e100277100337%_
                                                   (gx#syntax-e
                                                    _%$%tl100276100334%_)))
                                              (let ((_%$%hd100278100341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100277100337%_)))
                                                    (_%$%tl100279100344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100277100337%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl100279100344%_)
                                                    (let ((_%$%e100280100347%_
                                                           (gx#syntax-e
                                                            _%$%tl100279100344%_)))
                                                      (let ((_%$%hd100281100351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e100280100347%_)))
                    (_%$%tl100282100354%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e100280100347%_))))
                (if (gx#stx-pair? _%$%tl100282100354%_)
                    (let ((_%$%e100283100357%_
                           (gx#syntax-e _%$%tl100282100354%_)))
                      (let ((_%$%hd100284100361%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100283100357%_)))
                            (_%$%tl100285100364%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100283100357%_))))
                        (if (gx#stx-pair? _%$%tl100285100364%_)
                            (let ((_%$%e100286100367%_
                                   (gx#syntax-e _%$%tl100285100364%_)))
                              (let ((_%$%hd100287100371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100286100367%_)))
                                    (_%$%tl100288100374%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100286100367%_))))
                                (if (gx#stx-pair? _%$%tl100288100374%_)
                                    (let ((_%$%e100289100377%_
                                           (gx#syntax-e _%$%tl100288100374%_)))
                                      (let ((_%$%hd100290100381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100289100377%_)))
                                            (_%$%tl100291100384%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100289100377%_))))
                                        (if (gx#stx-pair? _%$%tl100291100384%_)
                                            (let ((_%$%e100292100387%_
                                                   (gx#syntax-e
                                                    _%$%tl100291100384%_)))
                                              (let ((_%$%hd100293100391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100292100387%_)))
                                                    (_%$%tl100294100394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100292100387%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl100294100394%_)
                                                    ((lambda (_%$%g100260100397%_
                                                              _%$%g100261100399%_
                                                              _%$%g100262100400%_
                                                              _%$%g100263100401%_
                                                              _%$%g100264100402%_
                                                              _%$%g100265100403%_
                                                              _%$%g100266100404%_
                                                              _%$%g100267100405%_)
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
                                                   (cons (cons _%$%g100265100403%_
                                                               (cons _%$%g100263100401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%$%g100266100404%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%$%g100267100405%_
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
                                               (cons _%$%g100267100405%_
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
                                                       (cons _%$%g100267100405%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%$%g100263100401%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%$%g100267100405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%$%g100262100400%_ '()))))
               (cons (cons _%$%g100260100397%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%$%g100267100405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%$%g100263100401%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%$%g100267100405%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%$%g100262100400%_ '()))))
                     (cons (cons _%$%g100261100399%_ '()) '()))))
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
                                                     (cons (cons (cons _%$%g100264100402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%g100263100401%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%$%g100267100405%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%$%g100263100401%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%$%g100267100405%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%$%g100262100400%_ '()))))
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
                                                     _%$%hd100293100391%_
                                                     _%$%hd100290100381%_
                                                     _%$%hd100287100371%_
                                                     _%$%hd100284100361%_
                                                     _%$%hd100281100351%_
                                                     _%$%hd100278100341%_
                                                     _%$%hd100275100331%_
                                                     _%$%hd100272100321%_)
                                                    (_%$%g100258100300%_
                                                     _%$%g100259100304%_))))
                                            (_%$%g100258100300%_
                                             _%$%g100259100304%_))))
                                    (_%$%g100258100300%_
                                     _%$%g100259100304%_))))
                            (_%$%g100258100300%_ _%$%g100259100304%_))))
                    (_%$%g100258100300%_ _%$%g100259100304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g100258100300%_
                                                     _%$%g100259100304%_))))
                                            (_%$%g100258100300%_
                                             _%$%g100259100304%_))))
                                    (_%$%g100258100300%_
                                     _%$%g100259100304%_))))
                            (_%$%g100258100300%_ _%$%g100259100304%_))))
                    (_%$%g100258100300%_ _%$%g100259100304%_)))))
        (_%$%g100257100439%_ _%$stx100254%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx100443%_)
      (let* ((_%$%g100447100493%_
              (lambda (_%$%g100448100489%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g100448100489%_)))
             (_%$%g100446100646%_
              (lambda (_%$%g100448100497%_)
                (if (gx#stx-pair? _%$%g100448100497%_)
                    (let ((_%$%e100458100500%_
                           (gx#syntax-e _%$%g100448100497%_)))
                      (let ((_%$%hd100459100504%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100458100500%_)))
                            (_%$%tl100460100507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100458100500%_))))
                        (if (gx#stx-pair? _%$%tl100460100507%_)
                            (let ((_%$%e100461100510%_
                                   (gx#syntax-e _%$%tl100460100507%_)))
                              (let ((_%$%hd100462100514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100461100510%_)))
                                    (_%$%tl100463100517%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100461100510%_))))
                                (if (gx#stx-pair? _%$%tl100463100517%_)
                                    (let ((_%$%e100464100520%_
                                           (gx#syntax-e _%$%tl100463100517%_)))
                                      (let ((_%$%hd100465100524%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100464100520%_)))
                                            (_%$%tl100466100527%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100464100520%_))))
                                        (if (gx#stx-pair? _%$%tl100466100527%_)
                                            (let ((_%$%e100467100530%_
                                                   (gx#syntax-e
                                                    _%$%tl100466100527%_)))
                                              (let ((_%$%hd100468100534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100467100530%_)))
                                                    (_%$%tl100469100537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100467100530%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl100469100537%_)
                                                    (let ((_%$%e100470100540%_
                                                           (gx#syntax-e
                                                            _%$%tl100469100537%_)))
                                                      (let ((_%$%hd100471100544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e100470100540%_)))
                    (_%$%tl100472100547%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e100470100540%_))))
                (if (gx#stx-pair? _%$%tl100472100547%_)
                    (let ((_%$%e100473100550%_
                           (gx#syntax-e _%$%tl100472100547%_)))
                      (let ((_%$%hd100474100554%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100473100550%_)))
                            (_%$%tl100475100557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100473100550%_))))
                        (if (gx#stx-pair? _%$%tl100475100557%_)
                            (let ((_%$%e100476100560%_
                                   (gx#syntax-e _%$%tl100475100557%_)))
                              (let ((_%$%hd100477100564%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100476100560%_)))
                                    (_%$%tl100478100567%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100476100560%_))))
                                (if (gx#stx-pair? _%$%tl100478100567%_)
                                    (let ((_%$%e100479100570%_
                                           (gx#syntax-e _%$%tl100478100567%_)))
                                      (let ((_%$%hd100480100574%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100479100570%_)))
                                            (_%$%tl100481100577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100479100570%_))))
                                        (if (gx#stx-pair? _%$%tl100481100577%_)
                                            (let ((_%$%e100482100580%_
                                                   (gx#syntax-e
                                                    _%$%tl100481100577%_)))
                                              (let ((_%$%hd100483100584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100482100580%_)))
                                                    (_%$%tl100484100587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100482100580%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl100484100587%_)
                                                    (let ((_%$%e100485100590%_
                                                           (gx#syntax-e
                                                            _%$%tl100484100587%_)))
                                                      (let ((_%$%hd100486100594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e100485100590%_)))
                    (_%$%tl100487100597%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e100485100590%_))))
                (if (gx#stx-null? _%$%tl100487100597%_)
                    ((lambda (_%$%g100449100600%_
                              _%$%g100450100602%_
                              _%$%g100451100603%_
                              _%$%g100452100604%_
                              _%$%g100453100605%_
                              _%$%g100454100606%_
                              _%$%g100455100607%_
                              _%$%g100456100608%_
                              _%$%g100457100609%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%$%g100455100607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%g100453100605%_ '()))
                         (cons _%$%g100456100608%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%$%g100457100609%_ '()))
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
                                                       (cons _%$%g100457100609%_
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
                                                               (cons _%$%g100457100609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%$%g100453100605%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%$%g100457100609%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%$%g100452100604%_
                                                     (cons _%$%g100451100603%_
                                                           '()))
                                               '()))))
                       (cons (cons _%$%g100449100600%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%$%g100457100609%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%$%g100453100605%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%$%g100457100609%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%$%g100452100604%_
                                                           (cons _%$%g100451100603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%$%g100450100602%_ '()) '()))))
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
                     (cons (cons (cons _%$%g100454100606%_
                                       (cons _%$%g100453100605%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%$%g100457100609%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%$%g100453100605%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%$%g100457100609%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%$%g100452100604%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%$%g100457100609%_
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
                     _%$%hd100486100594%_
                     _%$%hd100483100584%_
                     _%$%hd100480100574%_
                     _%$%hd100477100564%_
                     _%$%hd100474100554%_
                     _%$%hd100471100544%_
                     _%$%hd100468100534%_
                     _%$%hd100465100524%_
                     _%$%hd100462100514%_)
                    (_%$%g100447100493%_ _%$%g100448100497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g100447100493%_
                                                     _%$%g100448100497%_))))
                                            (_%$%g100447100493%_
                                             _%$%g100448100497%_))))
                                    (_%$%g100447100493%_
                                     _%$%g100448100497%_))))
                            (_%$%g100447100493%_ _%$%g100448100497%_))))
                    (_%$%g100447100493%_ _%$%g100448100497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g100447100493%_
                                                     _%$%g100448100497%_))))
                                            (_%$%g100447100493%_
                                             _%$%g100448100497%_))))
                                    (_%$%g100447100493%_
                                     _%$%g100448100497%_))))
                            (_%$%g100447100493%_ _%$%g100448100497%_))))
                    (_%$%g100447100493%_ _%$%g100448100497%_)))))
        (_%$%g100446100646%_ _%$stx100443%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx100650%_)
      (let* ((_%$%g100654100688%_
              (lambda (_%$%g100655100684%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g100655100684%_)))
             (_%$%g100653100799%_
              (lambda (_%$%g100655100692%_)
                (if (gx#stx-pair? _%$%g100655100692%_)
                    (let ((_%$%e100662100695%_
                           (gx#syntax-e _%$%g100655100692%_)))
                      (let ((_%$%hd100663100699%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100662100695%_)))
                            (_%$%tl100664100702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100662100695%_))))
                        (if (gx#stx-pair? _%$%tl100664100702%_)
                            (let ((_%$%e100665100705%_
                                   (gx#syntax-e _%$%tl100664100702%_)))
                              (let ((_%$%hd100666100709%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100665100705%_)))
                                    (_%$%tl100667100712%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100665100705%_))))
                                (if (gx#stx-pair? _%$%tl100667100712%_)
                                    (let ((_%$%e100668100715%_
                                           (gx#syntax-e _%$%tl100667100712%_)))
                                      (let ((_%$%hd100669100719%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100668100715%_)))
                                            (_%$%tl100670100722%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100668100715%_))))
                                        (if (gx#stx-pair? _%$%tl100670100722%_)
                                            (let ((_%$%e100671100725%_
                                                   (gx#syntax-e
                                                    _%$%tl100670100722%_)))
                                              (let ((_%$%hd100672100729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e100671100725%_)))
                                                    (_%$%tl100673100732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e100671100725%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl100673100732%_)
                                                    (let ((_%$%e100674100735%_
                                                           (gx#syntax-e
                                                            _%$%tl100673100732%_)))
                                                      (let ((_%$%hd100675100739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e100674100735%_)))
                    (_%$%tl100676100742%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e100674100735%_))))
                (if (gx#stx-pair? _%$%tl100676100742%_)
                    (let ((_%$%e100677100745%_
                           (gx#syntax-e _%$%tl100676100742%_)))
                      (let ((_%$%hd100678100749%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100677100745%_)))
                            (_%$%tl100679100752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100677100745%_))))
                        (if (gx#stx-pair? _%$%tl100679100752%_)
                            (let ((_%$%e100680100755%_
                                   (gx#syntax-e _%$%tl100679100752%_)))
                              (let ((_%$%hd100681100759%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100680100755%_)))
                                    (_%$%tl100682100762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100680100755%_))))
                                (if (gx#stx-null? _%$%tl100682100762%_)
                                    ((lambda (_%$%g100656100765%_
                                              _%$%g100657100767%_
                                              _%$%g100658100768%_
                                              _%$%g100659100769%_
                                              _%$%g100660100770%_
                                              _%$%g100661100771%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%$%g100659100769%_
                                               (cons _%$%g100657100767%_ '()))
                                         (cons _%$%g100660100770%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%$%g100661100771%_ '()))
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
                               (cons _%$%g100661100771%_
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
                                     (cons (cons (cons _%$%g100658100768%_
                                                       (cons _%$%g100657100767%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%$%g100661100771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%$%g100661100771%_
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
                     (cons (cons _%$%g100656100765%_ '()) '()))))
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
                                     _%$%hd100681100759%_
                                     _%$%hd100678100749%_
                                     _%$%hd100675100739%_
                                     _%$%hd100672100729%_
                                     _%$%hd100669100719%_
                                     _%$%hd100666100709%_)
                                    (_%$%g100654100688%_
                                     _%$%g100655100692%_))))
                            (_%$%g100654100688%_ _%$%g100655100692%_))))
                    (_%$%g100654100688%_ _%$%g100655100692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g100654100688%_
                                                     _%$%g100655100692%_))))
                                            (_%$%g100654100688%_
                                             _%$%g100655100692%_))))
                                    (_%$%g100654100688%_
                                     _%$%g100655100692%_))))
                            (_%$%g100654100688%_ _%$%g100655100692%_))))
                    (_%$%g100654100688%_ _%$%g100655100692%_)))))
        (_%$%g100653100799%_ _%$stx100650%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx100803%_)
      (let* ((_%$%g100807100825%_
              (lambda (_%$%g100808100821%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g100808100821%_)))
             (_%$%g100806100880%_
              (lambda (_%$%g100808100829%_)
                (if (gx#stx-pair? _%$%g100808100829%_)
                    (let ((_%$%e100811100832%_
                           (gx#syntax-e _%$%g100808100829%_)))
                      (let ((_%$%hd100812100836%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e100811100832%_)))
                            (_%$%tl100813100839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e100811100832%_))))
                        (if (gx#stx-pair? _%$%tl100813100839%_)
                            (let ((_%$%e100814100842%_
                                   (gx#syntax-e _%$%tl100813100839%_)))
                              (let ((_%$%hd100815100846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e100814100842%_)))
                                    (_%$%tl100816100849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e100814100842%_))))
                                (if (gx#stx-pair? _%$%tl100816100849%_)
                                    (let ((_%$%e100817100852%_
                                           (gx#syntax-e _%$%tl100816100849%_)))
                                      (let ((_%$%hd100818100856%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e100817100852%_)))
                                            (_%$%tl100819100859%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e100817100852%_))))
                                        (if (gx#stx-null? _%$%tl100819100859%_)
                                            ((lambda (_%$%g100809100862%_
                                                      _%$%g100810100864%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%$%g100810100864%_ '()))
                   (cons _%$%g100809100862%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%hd100818100856%_
                                             _%$%hd100815100846%_)
                                            (_%$%g100807100825%_
                                             _%$%g100808100829%_))))
                                    (_%$%g100807100825%_
                                     _%$%g100808100829%_))))
                            (_%$%g100807100825%_ _%$%g100808100829%_))))
                    (_%$%g100807100825%_ _%$%g100808100829%_)))))
        (_%$%g100806100880%_ _%$stx100803%_)))))

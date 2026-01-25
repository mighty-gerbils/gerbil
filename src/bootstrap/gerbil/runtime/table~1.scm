(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx100206%_)
      (let* ((_%g100210100228%_
              (lambda (_%g100211100224%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100211100224%_)))
             (_%g100209100284%_
              (lambda (_%g100211100232%_)
                (if (gx#stx-pair? _%g100211100232%_)
                    (let ((_%e100214100235%_ (gx#syntax-e _%g100211100232%_)))
                      (let ((_%hd100215100239%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100214100235%_)))
                            (_%tl100216100242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100214100235%_))))
                        (if (gx#stx-pair? _%tl100216100242%_)
                            (let ((_%e100217100245%_
                                   (gx#syntax-e _%tl100216100242%_)))
                              (let ((_%hd100218100249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100217100245%_)))
                                    (_%tl100219100252%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100217100245%_))))
                                (if (gx#stx-pair? _%tl100219100252%_)
                                    (let ((_%e100220100255%_
                                           (gx#syntax-e _%tl100219100252%_)))
                                      (let ((_%hd100221100259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100220100255%_)))
                                            (_%tl100222100262%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100220100255%_))))
                                        (if (gx#stx-null? _%tl100222100262%_)
                                            ((lambda (_%g100212100265%_
                                                      _%g100213100267%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g100213100267%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g100212100265%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd100221100259%_
                                             _%hd100218100249%_)
                                            (_%g100210100228%_
                                             _%g100211100232%_))))
                                    (_%g100210100228%_ _%g100211100232%_))))
                            (_%g100210100228%_ _%g100211100232%_))))
                    (_%g100210100228%_ _%g100211100232%_)))))
        (_%g100209100284%_ _%$stx100206%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx100288%_)
      (let* ((_%g100291100313%_
              (lambda (_%g100292100309%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100292100309%_)))
             (_%g100290100626%_
              (lambda (_%g100292100317%_)
                (if (gx#stx-pair? _%g100292100317%_)
                    (let ((_%e100296100320%_ (gx#syntax-e _%g100292100317%_)))
                      (let ((_%hd100297100324%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100296100320%_)))
                            (_%tl100298100327%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100296100320%_))))
                        (if (gx#stx-pair? _%tl100298100327%_)
                            (let ((_%e100299100330%_
                                   (gx#syntax-e _%tl100298100327%_)))
                              (let ((_%hd100300100334%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100299100330%_)))
                                    (_%tl100301100337%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100299100330%_))))
                                (if (gx#stx-pair? _%tl100301100337%_)
                                    (let ((_%e100302100340%_
                                           (gx#syntax-e _%tl100301100337%_)))
                                      (let ((_%hd100303100344%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100302100340%_)))
                                            (_%tl100304100347%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100302100340%_))))
                                        (if (gx#stx-pair? _%tl100304100347%_)
                                            (let ((_%e100305100350%_
                                                   (gx#syntax-e
                                                    _%tl100304100347%_)))
                                              (let ((_%hd100306100354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100305100350%_)))
                                                    (_%tl100307100357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100305100350%_))))
                                                (if (gx#stx-null?
                                                     _%tl100307100357%_)
                                                    ((lambda (_%g100293100360%_
                                                              _%g100294100362%_
                                                              _%g100295100363%_)
                                                       (let* ((_%g100382100437%_
                                                               (lambda (_%g100383100433%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g100383100433%_)))
                      (_%g100381100622%_
                       (lambda (_%g100383100441%_)
                         (if (gx#stx-pair? _%g100383100441%_)
                             (let ((_%e100396100444%_
                                    (gx#syntax-e _%g100383100441%_)))
                               (let ((_%hd100397100448%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100396100444%_)))
                                     (_%tl100398100451%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100396100444%_))))
                                 (if (gx#stx-pair? _%tl100398100451%_)
                                     (let ((_%e100399100454%_
                                            (gx#syntax-e _%tl100398100451%_)))
                                       (let ((_%hd100400100458%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100399100454%_)))
                                             (_%tl100401100461%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100399100454%_))))
                                         (if (gx#stx-pair? _%tl100401100461%_)
                                             (let ((_%e100402100464%_
                                                    (gx#syntax-e
                                                     _%tl100401100461%_)))
                                               (let ((_%hd100403100468%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100402100464%_)))
                                                     (_%tl100404100471%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100402100464%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100404100471%_)
                                                     (let ((_%e100405100474%_
                                                            (gx#syntax-e
                                                             _%tl100404100471%_)))
                                                       (let ((_%hd100406100478%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100405100474%_)))
                     (_%tl100407100481%_
                      (let () (declare (not safe)) (##cdr _%e100405100474%_))))
                 (if (gx#stx-pair? _%tl100407100481%_)
                     (let ((_%e100408100484%_
                            (gx#syntax-e _%tl100407100481%_)))
                       (let ((_%hd100409100488%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100408100484%_)))
                             (_%tl100410100491%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100408100484%_))))
                         (if (gx#stx-pair? _%tl100410100491%_)
                             (let ((_%e100411100494%_
                                    (gx#syntax-e _%tl100410100491%_)))
                               (let ((_%hd100412100498%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100411100494%_)))
                                     (_%tl100413100501%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100411100494%_))))
                                 (if (gx#stx-pair? _%tl100413100501%_)
                                     (let ((_%e100414100504%_
                                            (gx#syntax-e _%tl100413100501%_)))
                                       (let ((_%hd100415100508%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100414100504%_)))
                                             (_%tl100416100511%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100414100504%_))))
                                         (if (gx#stx-pair? _%tl100416100511%_)
                                             (let ((_%e100417100514%_
                                                    (gx#syntax-e
                                                     _%tl100416100511%_)))
                                               (let ((_%hd100418100518%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100417100514%_)))
                                                     (_%tl100419100521%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100417100514%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100419100521%_)
                                                     (let ((_%e100420100524%_
                                                            (gx#syntax-e
                                                             _%tl100419100521%_)))
                                                       (let ((_%hd100421100528%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100420100524%_)))
                     (_%tl100422100531%_
                      (let () (declare (not safe)) (##cdr _%e100420100524%_))))
                 (if (gx#stx-pair? _%tl100422100531%_)
                     (let ((_%e100423100534%_
                            (gx#syntax-e _%tl100422100531%_)))
                       (let ((_%hd100424100538%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100423100534%_)))
                             (_%tl100425100541%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100423100534%_))))
                         (if (gx#stx-pair? _%tl100425100541%_)
                             (let ((_%e100426100544%_
                                    (gx#syntax-e _%tl100425100541%_)))
                               (let ((_%hd100427100548%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100426100544%_)))
                                     (_%tl100428100551%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100426100544%_))))
                                 (if (gx#stx-pair? _%tl100428100551%_)
                                     (let ((_%e100429100554%_
                                            (gx#syntax-e _%tl100428100551%_)))
                                       (let ((_%hd100430100558%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100429100554%_)))
                                             (_%tl100431100561%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100429100554%_))))
                                         (if (gx#stx-null? _%tl100431100561%_)
                                             ((lambda (_%g100384100564%_
                                                       _%g100385100566%_
                                                       _%g100386100567%_
                                                       _%g100387100568%_
                                                       _%g100388100569%_
                                                       _%g100389100570%_
                                                       _%g100390100571%_
                                                       _%g100391100572%_
                                                       _%g100392100573%_
                                                       _%g100393100574%_
                                                       _%g100394100575%_
                                                       _%g100395100576%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g100395100576%_
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
                                                  (cons _%g100294100362%_
                                                        (cons _%g100293100360%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g100394100575%_
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
                                                        (cons _%g100294100362%_
                                                              (cons _%g100293100360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g100393100574%_
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
                                              (cons _%g100294100362%_
                                                    (cons _%g100293100360%_
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
                                            (cons (cons _%g100392100573%_
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
                            (cons (cons _%g100393100574%_
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
                                                  (cons (cons _%g100391100572%_
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
                                                          (cons _%g100294100362%_
                                                                (cons _%g100293100360%_
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
                                                        (cons (cons _%g100390100571%_
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
                            (cons (cons _%g100391100572%_
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
                                                              (cons (cons _%g100389100570%_
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
                                              (cons (cons _%g100390100571%_
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
                            (cons (cons _%g100388100569%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g100387100568%_
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
                                    (cons _%g100294100362%_
                                          (cons _%g100293100360%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g100387100568%_
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
                                  (cons (cons _%g100387100568%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g100387100568%_
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
                                              (cons (cons _%g100388100569%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g100387100568%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g100386100567%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g100387100568%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g100387100568%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g100387100568%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g100385100566%_
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
                                                      (cons _%g100294100362%_
                                                            (cons _%g100293100360%_
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
                                                    (cons (cons _%g100384100564%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g100385100566%_
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
                                              _%hd100430100558%_
                                              _%hd100427100548%_
                                              _%hd100424100538%_
                                              _%hd100421100528%_
                                              _%hd100418100518%_
                                              _%hd100415100508%_
                                              _%hd100412100498%_
                                              _%hd100409100488%_
                                              _%hd100406100478%_
                                              _%hd100403100468%_
                                              _%hd100400100458%_
                                              _%hd100397100448%_)
                                             (_%g100382100437%_
                                              _%g100383100441%_))))
                                     (_%g100382100437%_ _%g100383100441%_))))
                             (_%g100382100437%_ _%g100383100441%_))))
                     (_%g100382100437%_ _%g100383100441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g100382100437%_
                                                      _%g100383100441%_))))
                                             (_%g100382100437%_
                                              _%g100383100441%_))))
                                     (_%g100382100437%_ _%g100383100441%_))))
                             (_%g100382100437%_ _%g100383100441%_))))
                     (_%g100382100437%_ _%g100383100441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g100382100437%_
                                                      _%g100383100441%_))))
                                             (_%g100382100437%_
                                              _%g100383100441%_))))
                                     (_%g100382100437%_ _%g100383100441%_))))
                             (_%g100382100437%_ _%g100383100441%_)))))
                 (_%g100381100622%_
                  (list (gx#stx-identifier
                         _%g100295100363%_
                         '"make-"
                         _%g100295100363%_)
                        (gx#stx-identifier
                         _%g100295100363%_
                         '"make-"
                         _%g100295100363%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g100295100363%_
                         '"__"
                         _%g100295100363%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g100295100363%_
                         '"__"
                         _%g100295100363%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g100295100363%_
                         _%g100295100363%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd100306100354%_
                                                     _%hd100303100344%_
                                                     _%hd100300100334%_)
                                                    (_%g100291100313%_
                                                     _%g100292100317%_))))
                                            (_%g100291100313%_
                                             _%g100292100317%_))))
                                    (_%g100291100313%_ _%g100292100317%_))))
                            (_%g100291100313%_ _%g100292100317%_))))
                    (_%g100291100313%_ _%g100292100317%_)))))
        (_%g100290100626%_ _%stx100288%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx100630%_)
      (let* ((_%g100634100656%_
              (lambda (_%g100635100652%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100635100652%_)))
             (_%g100633100725%_
              (lambda (_%g100635100660%_)
                (if (gx#stx-pair? _%g100635100660%_)
                    (let ((_%e100639100663%_ (gx#syntax-e _%g100635100660%_)))
                      (let ((_%hd100640100667%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100639100663%_)))
                            (_%tl100641100670%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100639100663%_))))
                        (if (gx#stx-pair? _%tl100641100670%_)
                            (let ((_%e100642100673%_
                                   (gx#syntax-e _%tl100641100670%_)))
                              (let ((_%hd100643100677%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100642100673%_)))
                                    (_%tl100644100680%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100642100673%_))))
                                (if (gx#stx-pair? _%tl100644100680%_)
                                    (let ((_%e100645100683%_
                                           (gx#syntax-e _%tl100644100680%_)))
                                      (let ((_%hd100646100687%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100645100683%_)))
                                            (_%tl100647100690%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100645100683%_))))
                                        (if (gx#stx-pair? _%tl100647100690%_)
                                            (let ((_%e100648100693%_
                                                   (gx#syntax-e
                                                    _%tl100647100690%_)))
                                              (let ((_%hd100649100697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100648100693%_)))
                                                    (_%tl100650100700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100648100693%_))))
                                                (if (gx#stx-null?
                                                     _%tl100650100700%_)
                                                    ((lambda (_%g100636100703%_
                                                              _%g100637100705%_
                                                              _%g100638100706%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g100638100706%_
                                                   (cons _%g100637100705%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g100637100705%_
                                   (cons _%g100637100705%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g100636100703%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd100649100697%_
                                                     _%hd100646100687%_
                                                     _%hd100643100677%_)
                                                    (_%g100634100656%_
                                                     _%g100635100660%_))))
                                            (_%g100634100656%_
                                             _%g100635100660%_))))
                                    (_%g100634100656%_ _%g100635100660%_))))
                            (_%g100634100656%_ _%g100635100660%_))))
                    (_%g100634100656%_ _%g100635100660%_)))))
        (_%g100633100725%_ _%$stx100630%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx100729%_)
      (let* ((_%g100733100767%_
              (lambda (_%g100734100763%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100734100763%_)))
             (_%g100732100878%_
              (lambda (_%g100734100771%_)
                (if (gx#stx-pair? _%g100734100771%_)
                    (let ((_%e100741100774%_ (gx#syntax-e _%g100734100771%_)))
                      (let ((_%hd100742100778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100741100774%_)))
                            (_%tl100743100781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100741100774%_))))
                        (if (gx#stx-pair? _%tl100743100781%_)
                            (let ((_%e100744100784%_
                                   (gx#syntax-e _%tl100743100781%_)))
                              (let ((_%hd100745100788%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100744100784%_)))
                                    (_%tl100746100791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100744100784%_))))
                                (if (gx#stx-pair? _%tl100746100791%_)
                                    (let ((_%e100747100794%_
                                           (gx#syntax-e _%tl100746100791%_)))
                                      (let ((_%hd100748100798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100747100794%_)))
                                            (_%tl100749100801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100747100794%_))))
                                        (if (gx#stx-pair? _%tl100749100801%_)
                                            (let ((_%e100750100804%_
                                                   (gx#syntax-e
                                                    _%tl100749100801%_)))
                                              (let ((_%hd100751100808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100750100804%_)))
                                                    (_%tl100752100811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100750100804%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100752100811%_)
                                                    (let ((_%e100753100814%_
                                                           (gx#syntax-e
                                                            _%tl100752100811%_)))
                                                      (let ((_%hd100754100818%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100753100814%_)))
                    (_%tl100755100821%_
                     (let () (declare (not safe)) (##cdr _%e100753100814%_))))
                (if (gx#stx-pair? _%tl100755100821%_)
                    (let ((_%e100756100824%_ (gx#syntax-e _%tl100755100821%_)))
                      (let ((_%hd100757100828%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100756100824%_)))
                            (_%tl100758100831%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100756100824%_))))
                        (if (gx#stx-pair? _%tl100758100831%_)
                            (let ((_%e100759100834%_
                                   (gx#syntax-e _%tl100758100831%_)))
                              (let ((_%hd100760100838%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100759100834%_)))
                                    (_%tl100761100841%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100759100834%_))))
                                (if (gx#stx-null? _%tl100761100841%_)
                                    ((lambda (_%g100735100844%_
                                              _%g100736100846%_
                                              _%g100737100847%_
                                              _%g100738100848%_
                                              _%g100739100849%_
                                              _%g100740100850%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g100738100848%_
                                               (cons _%g100736100846%_ '()))
                                         (cons _%g100739100849%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g100740100850%_ '()))
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
                               (cons _%g100740100850%_
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
                                     (cons _%g100735100844%_ '()))
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
                                     (cons (cons (cons _%g100737100847%_
                                                       (cons _%g100736100846%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g100740100850%_
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
                                     _%hd100760100838%_
                                     _%hd100757100828%_
                                     _%hd100754100818%_
                                     _%hd100751100808%_
                                     _%hd100748100798%_
                                     _%hd100745100788%_)
                                    (_%g100733100767%_ _%g100734100771%_))))
                            (_%g100733100767%_ _%g100734100771%_))))
                    (_%g100733100767%_ _%g100734100771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100733100767%_
                                                     _%g100734100771%_))))
                                            (_%g100733100767%_
                                             _%g100734100771%_))))
                                    (_%g100733100767%_ _%g100734100771%_))))
                            (_%g100733100767%_ _%g100734100771%_))))
                    (_%g100733100767%_ _%g100734100771%_)))))
        (_%g100732100878%_ _%$stx100729%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx100882%_)
      (let* ((_%g100886100928%_
              (lambda (_%g100887100924%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100887100924%_)))
             (_%g100885101067%_
              (lambda (_%g100887100932%_)
                (if (gx#stx-pair? _%g100887100932%_)
                    (let ((_%e100896100935%_ (gx#syntax-e _%g100887100932%_)))
                      (let ((_%hd100897100939%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100896100935%_)))
                            (_%tl100898100942%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100896100935%_))))
                        (if (gx#stx-pair? _%tl100898100942%_)
                            (let ((_%e100899100945%_
                                   (gx#syntax-e _%tl100898100942%_)))
                              (let ((_%hd100900100949%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100899100945%_)))
                                    (_%tl100901100952%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100899100945%_))))
                                (if (gx#stx-pair? _%tl100901100952%_)
                                    (let ((_%e100902100955%_
                                           (gx#syntax-e _%tl100901100952%_)))
                                      (let ((_%hd100903100959%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100902100955%_)))
                                            (_%tl100904100962%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100902100955%_))))
                                        (if (gx#stx-pair? _%tl100904100962%_)
                                            (let ((_%e100905100965%_
                                                   (gx#syntax-e
                                                    _%tl100904100962%_)))
                                              (let ((_%hd100906100969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100905100965%_)))
                                                    (_%tl100907100972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100905100965%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100907100972%_)
                                                    (let ((_%e100908100975%_
                                                           (gx#syntax-e
                                                            _%tl100907100972%_)))
                                                      (let ((_%hd100909100979%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100908100975%_)))
                    (_%tl100910100982%_
                     (let () (declare (not safe)) (##cdr _%e100908100975%_))))
                (if (gx#stx-pair? _%tl100910100982%_)
                    (let ((_%e100911100985%_ (gx#syntax-e _%tl100910100982%_)))
                      (let ((_%hd100912100989%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100911100985%_)))
                            (_%tl100913100992%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100911100985%_))))
                        (if (gx#stx-pair? _%tl100913100992%_)
                            (let ((_%e100914100995%_
                                   (gx#syntax-e _%tl100913100992%_)))
                              (let ((_%hd100915100999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100914100995%_)))
                                    (_%tl100916101002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100914100995%_))))
                                (if (gx#stx-pair? _%tl100916101002%_)
                                    (let ((_%e100917101005%_
                                           (gx#syntax-e _%tl100916101002%_)))
                                      (let ((_%hd100918101009%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100917101005%_)))
                                            (_%tl100919101012%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100917101005%_))))
                                        (if (gx#stx-pair? _%tl100919101012%_)
                                            (let ((_%e100920101015%_
                                                   (gx#syntax-e
                                                    _%tl100919101012%_)))
                                              (let ((_%hd100921101019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100920101015%_)))
                                                    (_%tl100922101022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100920101015%_))))
                                                (if (gx#stx-null?
                                                     _%tl100922101022%_)
                                                    ((lambda (_%g100888101025%_
                                                              _%g100889101027%_
                                                              _%g100890101028%_
                                                              _%g100891101029%_
                                                              _%g100892101030%_
                                                              _%g100893101031%_
                                                              _%g100894101032%_
                                                              _%g100895101033%_)
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
                                                   (cons (cons _%g100893101031%_
                                                               (cons _%g100891101029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g100894101032%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g100895101033%_
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
                                               (cons _%g100895101033%_
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
                                                       (cons _%g100895101033%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g100891101029%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g100895101033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g100890101028%_ '()))))
               (cons (cons _%g100888101025%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g100895101033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g100891101029%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g100895101033%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g100890101028%_ '()))))
                     (cons (cons _%g100889101027%_ '()) '()))))
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
                                                     (cons (cons (cons _%g100892101030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g100891101029%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g100895101033%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g100891101029%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g100895101033%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g100890101028%_ '()))))
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
                                                     _%hd100921101019%_
                                                     _%hd100918101009%_
                                                     _%hd100915100999%_
                                                     _%hd100912100989%_
                                                     _%hd100909100979%_
                                                     _%hd100906100969%_
                                                     _%hd100903100959%_
                                                     _%hd100900100949%_)
                                                    (_%g100886100928%_
                                                     _%g100887100932%_))))
                                            (_%g100886100928%_
                                             _%g100887100932%_))))
                                    (_%g100886100928%_ _%g100887100932%_))))
                            (_%g100886100928%_ _%g100887100932%_))))
                    (_%g100886100928%_ _%g100887100932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100886100928%_
                                                     _%g100887100932%_))))
                                            (_%g100886100928%_
                                             _%g100887100932%_))))
                                    (_%g100886100928%_ _%g100887100932%_))))
                            (_%g100886100928%_ _%g100887100932%_))))
                    (_%g100886100928%_ _%g100887100932%_)))))
        (_%g100885101067%_ _%$stx100882%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx101071%_)
      (let* ((_%g101075101121%_
              (lambda (_%g101076101117%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101076101117%_)))
             (_%g101074101274%_
              (lambda (_%g101076101125%_)
                (if (gx#stx-pair? _%g101076101125%_)
                    (let ((_%e101086101128%_ (gx#syntax-e _%g101076101125%_)))
                      (let ((_%hd101087101132%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101086101128%_)))
                            (_%tl101088101135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101086101128%_))))
                        (if (gx#stx-pair? _%tl101088101135%_)
                            (let ((_%e101089101138%_
                                   (gx#syntax-e _%tl101088101135%_)))
                              (let ((_%hd101090101142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101089101138%_)))
                                    (_%tl101091101145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101089101138%_))))
                                (if (gx#stx-pair? _%tl101091101145%_)
                                    (let ((_%e101092101148%_
                                           (gx#syntax-e _%tl101091101145%_)))
                                      (let ((_%hd101093101152%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101092101148%_)))
                                            (_%tl101094101155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101092101148%_))))
                                        (if (gx#stx-pair? _%tl101094101155%_)
                                            (let ((_%e101095101158%_
                                                   (gx#syntax-e
                                                    _%tl101094101155%_)))
                                              (let ((_%hd101096101162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101095101158%_)))
                                                    (_%tl101097101165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101095101158%_))))
                                                (if (gx#stx-pair?
                                                     _%tl101097101165%_)
                                                    (let ((_%e101098101168%_
                                                           (gx#syntax-e
                                                            _%tl101097101165%_)))
                                                      (let ((_%hd101099101172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e101098101168%_)))
                    (_%tl101100101175%_
                     (let () (declare (not safe)) (##cdr _%e101098101168%_))))
                (if (gx#stx-pair? _%tl101100101175%_)
                    (let ((_%e101101101178%_ (gx#syntax-e _%tl101100101175%_)))
                      (let ((_%hd101102101182%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101101101178%_)))
                            (_%tl101103101185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101101101178%_))))
                        (if (gx#stx-pair? _%tl101103101185%_)
                            (let ((_%e101104101188%_
                                   (gx#syntax-e _%tl101103101185%_)))
                              (let ((_%hd101105101192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101104101188%_)))
                                    (_%tl101106101195%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101104101188%_))))
                                (if (gx#stx-pair? _%tl101106101195%_)
                                    (let ((_%e101107101198%_
                                           (gx#syntax-e _%tl101106101195%_)))
                                      (let ((_%hd101108101202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101107101198%_)))
                                            (_%tl101109101205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101107101198%_))))
                                        (if (gx#stx-pair? _%tl101109101205%_)
                                            (let ((_%e101110101208%_
                                                   (gx#syntax-e
                                                    _%tl101109101205%_)))
                                              (let ((_%hd101111101212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101110101208%_)))
                                                    (_%tl101112101215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101110101208%_))))
                                                (if (gx#stx-pair?
                                                     _%tl101112101215%_)
                                                    (let ((_%e101113101218%_
                                                           (gx#syntax-e
                                                            _%tl101112101215%_)))
                                                      (let ((_%hd101114101222%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e101113101218%_)))
                    (_%tl101115101225%_
                     (let () (declare (not safe)) (##cdr _%e101113101218%_))))
                (if (gx#stx-null? _%tl101115101225%_)
                    ((lambda (_%g101077101228%_
                              _%g101078101230%_
                              _%g101079101231%_
                              _%g101080101232%_
                              _%g101081101233%_
                              _%g101082101234%_
                              _%g101083101235%_
                              _%g101084101236%_
                              _%g101085101237%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g101083101235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g101081101233%_ '()))
                         (cons _%g101084101236%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g101085101237%_ '()))
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
                                                       (cons _%g101085101237%_
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
                                                               (cons _%g101085101237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g101081101233%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g101085101237%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g101080101232%_
                                                     (cons _%g101079101231%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g101077101228%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g101085101237%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g101081101233%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g101085101237%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g101080101232%_
                                                           (cons _%g101079101231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g101078101230%_ '()) '()))))
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
                     (cons (cons (cons _%g101082101234%_
                                       (cons _%g101081101233%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g101085101237%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g101081101233%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g101085101237%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g101080101232%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g101085101237%_
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
                     _%hd101114101222%_
                     _%hd101111101212%_
                     _%hd101108101202%_
                     _%hd101105101192%_
                     _%hd101102101182%_
                     _%hd101099101172%_
                     _%hd101096101162%_
                     _%hd101093101152%_
                     _%hd101090101142%_)
                    (_%g101075101121%_ _%g101076101125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101075101121%_
                                                     _%g101076101125%_))))
                                            (_%g101075101121%_
                                             _%g101076101125%_))))
                                    (_%g101075101121%_ _%g101076101125%_))))
                            (_%g101075101121%_ _%g101076101125%_))))
                    (_%g101075101121%_ _%g101076101125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101075101121%_
                                                     _%g101076101125%_))))
                                            (_%g101075101121%_
                                             _%g101076101125%_))))
                                    (_%g101075101121%_ _%g101076101125%_))))
                            (_%g101075101121%_ _%g101076101125%_))))
                    (_%g101075101121%_ _%g101076101125%_)))))
        (_%g101074101274%_ _%$stx101071%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx101278%_)
      (let* ((_%g101282101316%_
              (lambda (_%g101283101312%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101283101312%_)))
             (_%g101281101427%_
              (lambda (_%g101283101320%_)
                (if (gx#stx-pair? _%g101283101320%_)
                    (let ((_%e101290101323%_ (gx#syntax-e _%g101283101320%_)))
                      (let ((_%hd101291101327%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101290101323%_)))
                            (_%tl101292101330%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101290101323%_))))
                        (if (gx#stx-pair? _%tl101292101330%_)
                            (let ((_%e101293101333%_
                                   (gx#syntax-e _%tl101292101330%_)))
                              (let ((_%hd101294101337%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101293101333%_)))
                                    (_%tl101295101340%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101293101333%_))))
                                (if (gx#stx-pair? _%tl101295101340%_)
                                    (let ((_%e101296101343%_
                                           (gx#syntax-e _%tl101295101340%_)))
                                      (let ((_%hd101297101347%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101296101343%_)))
                                            (_%tl101298101350%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101296101343%_))))
                                        (if (gx#stx-pair? _%tl101298101350%_)
                                            (let ((_%e101299101353%_
                                                   (gx#syntax-e
                                                    _%tl101298101350%_)))
                                              (let ((_%hd101300101357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101299101353%_)))
                                                    (_%tl101301101360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101299101353%_))))
                                                (if (gx#stx-pair?
                                                     _%tl101301101360%_)
                                                    (let ((_%e101302101363%_
                                                           (gx#syntax-e
                                                            _%tl101301101360%_)))
                                                      (let ((_%hd101303101367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e101302101363%_)))
                    (_%tl101304101370%_
                     (let () (declare (not safe)) (##cdr _%e101302101363%_))))
                (if (gx#stx-pair? _%tl101304101370%_)
                    (let ((_%e101305101373%_ (gx#syntax-e _%tl101304101370%_)))
                      (let ((_%hd101306101377%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101305101373%_)))
                            (_%tl101307101380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101305101373%_))))
                        (if (gx#stx-pair? _%tl101307101380%_)
                            (let ((_%e101308101383%_
                                   (gx#syntax-e _%tl101307101380%_)))
                              (let ((_%hd101309101387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101308101383%_)))
                                    (_%tl101310101390%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101308101383%_))))
                                (if (gx#stx-null? _%tl101310101390%_)
                                    ((lambda (_%g101284101393%_
                                              _%g101285101395%_
                                              _%g101286101396%_
                                              _%g101287101397%_
                                              _%g101288101398%_
                                              _%g101289101399%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g101287101397%_
                                               (cons _%g101285101395%_ '()))
                                         (cons _%g101288101398%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g101289101399%_ '()))
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
                               (cons _%g101289101399%_
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
                                     (cons (cons (cons _%g101286101396%_
                                                       (cons _%g101285101395%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g101289101399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g101289101399%_
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
                     (cons (cons _%g101284101393%_ '()) '()))))
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
                                     _%hd101309101387%_
                                     _%hd101306101377%_
                                     _%hd101303101367%_
                                     _%hd101300101357%_
                                     _%hd101297101347%_
                                     _%hd101294101337%_)
                                    (_%g101282101316%_ _%g101283101320%_))))
                            (_%g101282101316%_ _%g101283101320%_))))
                    (_%g101282101316%_ _%g101283101320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101282101316%_
                                                     _%g101283101320%_))))
                                            (_%g101282101316%_
                                             _%g101283101320%_))))
                                    (_%g101282101316%_ _%g101283101320%_))))
                            (_%g101282101316%_ _%g101283101320%_))))
                    (_%g101282101316%_ _%g101283101320%_)))))
        (_%g101281101427%_ _%$stx101278%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx101431%_)
      (let* ((_%g101435101453%_
              (lambda (_%g101436101449%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101436101449%_)))
             (_%g101434101508%_
              (lambda (_%g101436101457%_)
                (if (gx#stx-pair? _%g101436101457%_)
                    (let ((_%e101439101460%_ (gx#syntax-e _%g101436101457%_)))
                      (let ((_%hd101440101464%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101439101460%_)))
                            (_%tl101441101467%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101439101460%_))))
                        (if (gx#stx-pair? _%tl101441101467%_)
                            (let ((_%e101442101470%_
                                   (gx#syntax-e _%tl101441101467%_)))
                              (let ((_%hd101443101474%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101442101470%_)))
                                    (_%tl101444101477%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101442101470%_))))
                                (if (gx#stx-pair? _%tl101444101477%_)
                                    (let ((_%e101445101480%_
                                           (gx#syntax-e _%tl101444101477%_)))
                                      (let ((_%hd101446101484%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101445101480%_)))
                                            (_%tl101447101487%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101445101480%_))))
                                        (if (gx#stx-null? _%tl101447101487%_)
                                            ((lambda (_%g101437101490%_
                                                      _%g101438101492%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g101438101492%_ '()))
                   (cons _%g101437101490%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd101446101484%_
                                             _%hd101443101474%_)
                                            (_%g101435101453%_
                                             _%g101436101457%_))))
                                    (_%g101435101453%_ _%g101436101457%_))))
                            (_%g101435101453%_ _%g101436101457%_))))
                    (_%g101435101453%_ _%g101436101457%_)))))
        (_%g101434101508%_ _%$stx101431%_)))))

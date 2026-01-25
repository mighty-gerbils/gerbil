(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx100168%_)
      (let* ((_%g100172100190%_
              (lambda (_%g100173100186%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100173100186%_)))
             (_%g100171100246%_
              (lambda (_%g100173100194%_)
                (if (gx#stx-pair? _%g100173100194%_)
                    (let ((_%e100176100197%_ (gx#syntax-e _%g100173100194%_)))
                      (let ((_%hd100177100201%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100176100197%_)))
                            (_%tl100178100204%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100176100197%_))))
                        (if (gx#stx-pair? _%tl100178100204%_)
                            (let ((_%e100179100207%_
                                   (gx#syntax-e _%tl100178100204%_)))
                              (let ((_%hd100180100211%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100179100207%_)))
                                    (_%tl100181100214%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100179100207%_))))
                                (if (gx#stx-pair? _%tl100181100214%_)
                                    (let ((_%e100182100217%_
                                           (gx#syntax-e _%tl100181100214%_)))
                                      (let ((_%hd100183100221%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100182100217%_)))
                                            (_%tl100184100224%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100182100217%_))))
                                        (if (gx#stx-null? _%tl100184100224%_)
                                            ((lambda (_%g100174100227%_
                                                      _%g100175100229%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g100175100229%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g100174100227%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd100183100221%_
                                             _%hd100180100211%_)
                                            (_%g100172100190%_
                                             _%g100173100194%_))))
                                    (_%g100172100190%_ _%g100173100194%_))))
                            (_%g100172100190%_ _%g100173100194%_))))
                    (_%g100172100190%_ _%g100173100194%_)))))
        (_%g100171100246%_ _%$stx100168%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx100250%_)
      (let* ((_%g100253100275%_
              (lambda (_%g100254100271%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100254100271%_)))
             (_%g100252100588%_
              (lambda (_%g100254100279%_)
                (if (gx#stx-pair? _%g100254100279%_)
                    (let ((_%e100258100282%_ (gx#syntax-e _%g100254100279%_)))
                      (let ((_%hd100259100286%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100258100282%_)))
                            (_%tl100260100289%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100258100282%_))))
                        (if (gx#stx-pair? _%tl100260100289%_)
                            (let ((_%e100261100292%_
                                   (gx#syntax-e _%tl100260100289%_)))
                              (let ((_%hd100262100296%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100261100292%_)))
                                    (_%tl100263100299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100261100292%_))))
                                (if (gx#stx-pair? _%tl100263100299%_)
                                    (let ((_%e100264100302%_
                                           (gx#syntax-e _%tl100263100299%_)))
                                      (let ((_%hd100265100306%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100264100302%_)))
                                            (_%tl100266100309%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100264100302%_))))
                                        (if (gx#stx-pair? _%tl100266100309%_)
                                            (let ((_%e100267100312%_
                                                   (gx#syntax-e
                                                    _%tl100266100309%_)))
                                              (let ((_%hd100268100316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100267100312%_)))
                                                    (_%tl100269100319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100267100312%_))))
                                                (if (gx#stx-null?
                                                     _%tl100269100319%_)
                                                    ((lambda (_%g100255100322%_
                                                              _%g100256100324%_
                                                              _%g100257100325%_)
                                                       (let* ((_%g100344100399%_
                                                               (lambda (_%g100345100395%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g100345100395%_)))
                      (_%g100343100584%_
                       (lambda (_%g100345100403%_)
                         (if (gx#stx-pair? _%g100345100403%_)
                             (let ((_%e100358100406%_
                                    (gx#syntax-e _%g100345100403%_)))
                               (let ((_%hd100359100410%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100358100406%_)))
                                     (_%tl100360100413%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100358100406%_))))
                                 (if (gx#stx-pair? _%tl100360100413%_)
                                     (let ((_%e100361100416%_
                                            (gx#syntax-e _%tl100360100413%_)))
                                       (let ((_%hd100362100420%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100361100416%_)))
                                             (_%tl100363100423%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100361100416%_))))
                                         (if (gx#stx-pair? _%tl100363100423%_)
                                             (let ((_%e100364100426%_
                                                    (gx#syntax-e
                                                     _%tl100363100423%_)))
                                               (let ((_%hd100365100430%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100364100426%_)))
                                                     (_%tl100366100433%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100364100426%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100366100433%_)
                                                     (let ((_%e100367100436%_
                                                            (gx#syntax-e
                                                             _%tl100366100433%_)))
                                                       (let ((_%hd100368100440%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100367100436%_)))
                     (_%tl100369100443%_
                      (let () (declare (not safe)) (##cdr _%e100367100436%_))))
                 (if (gx#stx-pair? _%tl100369100443%_)
                     (let ((_%e100370100446%_
                            (gx#syntax-e _%tl100369100443%_)))
                       (let ((_%hd100371100450%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100370100446%_)))
                             (_%tl100372100453%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100370100446%_))))
                         (if (gx#stx-pair? _%tl100372100453%_)
                             (let ((_%e100373100456%_
                                    (gx#syntax-e _%tl100372100453%_)))
                               (let ((_%hd100374100460%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100373100456%_)))
                                     (_%tl100375100463%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100373100456%_))))
                                 (if (gx#stx-pair? _%tl100375100463%_)
                                     (let ((_%e100376100466%_
                                            (gx#syntax-e _%tl100375100463%_)))
                                       (let ((_%hd100377100470%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100376100466%_)))
                                             (_%tl100378100473%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100376100466%_))))
                                         (if (gx#stx-pair? _%tl100378100473%_)
                                             (let ((_%e100379100476%_
                                                    (gx#syntax-e
                                                     _%tl100378100473%_)))
                                               (let ((_%hd100380100480%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100379100476%_)))
                                                     (_%tl100381100483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100379100476%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100381100483%_)
                                                     (let ((_%e100382100486%_
                                                            (gx#syntax-e
                                                             _%tl100381100483%_)))
                                                       (let ((_%hd100383100490%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100382100486%_)))
                     (_%tl100384100493%_
                      (let () (declare (not safe)) (##cdr _%e100382100486%_))))
                 (if (gx#stx-pair? _%tl100384100493%_)
                     (let ((_%e100385100496%_
                            (gx#syntax-e _%tl100384100493%_)))
                       (let ((_%hd100386100500%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100385100496%_)))
                             (_%tl100387100503%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100385100496%_))))
                         (if (gx#stx-pair? _%tl100387100503%_)
                             (let ((_%e100388100506%_
                                    (gx#syntax-e _%tl100387100503%_)))
                               (let ((_%hd100389100510%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100388100506%_)))
                                     (_%tl100390100513%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100388100506%_))))
                                 (if (gx#stx-pair? _%tl100390100513%_)
                                     (let ((_%e100391100516%_
                                            (gx#syntax-e _%tl100390100513%_)))
                                       (let ((_%hd100392100520%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100391100516%_)))
                                             (_%tl100393100523%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100391100516%_))))
                                         (if (gx#stx-null? _%tl100393100523%_)
                                             ((lambda (_%g100346100526%_
                                                       _%g100347100528%_
                                                       _%g100348100529%_
                                                       _%g100349100530%_
                                                       _%g100350100531%_
                                                       _%g100351100532%_
                                                       _%g100352100533%_
                                                       _%g100353100534%_
                                                       _%g100354100535%_
                                                       _%g100355100536%_
                                                       _%g100356100537%_
                                                       _%g100357100538%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g100357100538%_
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
                                                  (cons _%g100256100324%_
                                                        (cons _%g100255100322%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g100356100537%_
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
                                                        (cons _%g100256100324%_
                                                              (cons _%g100255100322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g100355100536%_
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
                                              (cons _%g100256100324%_
                                                    (cons _%g100255100322%_
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
                                            (cons (cons _%g100354100535%_
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
                            (cons (cons _%g100355100536%_
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
                                                  (cons (cons _%g100353100534%_
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
                                                          (cons _%g100256100324%_
                                                                (cons _%g100255100322%_
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
                                                        (cons (cons _%g100352100533%_
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
                            (cons (cons _%g100353100534%_
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
                                                              (cons (cons _%g100351100532%_
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
                                              (cons (cons _%g100352100533%_
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
                            (cons (cons _%g100350100531%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g100349100530%_
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
                                    (cons _%g100256100324%_
                                          (cons _%g100255100322%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g100349100530%_
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
                                  (cons (cons _%g100349100530%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g100349100530%_
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
                                              (cons (cons _%g100350100531%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g100349100530%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g100348100529%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g100349100530%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g100349100530%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g100349100530%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g100347100528%_
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
                                                      (cons _%g100256100324%_
                                                            (cons _%g100255100322%_
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
                                                    (cons (cons _%g100346100526%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g100347100528%_
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
                                              _%hd100392100520%_
                                              _%hd100389100510%_
                                              _%hd100386100500%_
                                              _%hd100383100490%_
                                              _%hd100380100480%_
                                              _%hd100377100470%_
                                              _%hd100374100460%_
                                              _%hd100371100450%_
                                              _%hd100368100440%_
                                              _%hd100365100430%_
                                              _%hd100362100420%_
                                              _%hd100359100410%_)
                                             (_%g100344100399%_
                                              _%g100345100403%_))))
                                     (_%g100344100399%_ _%g100345100403%_))))
                             (_%g100344100399%_ _%g100345100403%_))))
                     (_%g100344100399%_ _%g100345100403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g100344100399%_
                                                      _%g100345100403%_))))
                                             (_%g100344100399%_
                                              _%g100345100403%_))))
                                     (_%g100344100399%_ _%g100345100403%_))))
                             (_%g100344100399%_ _%g100345100403%_))))
                     (_%g100344100399%_ _%g100345100403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g100344100399%_
                                                      _%g100345100403%_))))
                                             (_%g100344100399%_
                                              _%g100345100403%_))))
                                     (_%g100344100399%_ _%g100345100403%_))))
                             (_%g100344100399%_ _%g100345100403%_)))))
                 (_%g100343100584%_
                  (list (gx#stx-identifier
                         _%g100257100325%_
                         '"make-"
                         _%g100257100325%_)
                        (gx#stx-identifier
                         _%g100257100325%_
                         '"make-"
                         _%g100257100325%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g100257100325%_
                         '"__"
                         _%g100257100325%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g100257100325%_
                         '"__"
                         _%g100257100325%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g100257100325%_
                         _%g100257100325%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd100268100316%_
                                                     _%hd100265100306%_
                                                     _%hd100262100296%_)
                                                    (_%g100253100275%_
                                                     _%g100254100279%_))))
                                            (_%g100253100275%_
                                             _%g100254100279%_))))
                                    (_%g100253100275%_ _%g100254100279%_))))
                            (_%g100253100275%_ _%g100254100279%_))))
                    (_%g100253100275%_ _%g100254100279%_)))))
        (_%g100252100588%_ _%stx100250%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx100592%_)
      (let* ((_%g100596100618%_
              (lambda (_%g100597100614%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100597100614%_)))
             (_%g100595100687%_
              (lambda (_%g100597100622%_)
                (if (gx#stx-pair? _%g100597100622%_)
                    (let ((_%e100601100625%_ (gx#syntax-e _%g100597100622%_)))
                      (let ((_%hd100602100629%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100601100625%_)))
                            (_%tl100603100632%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100601100625%_))))
                        (if (gx#stx-pair? _%tl100603100632%_)
                            (let ((_%e100604100635%_
                                   (gx#syntax-e _%tl100603100632%_)))
                              (let ((_%hd100605100639%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100604100635%_)))
                                    (_%tl100606100642%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100604100635%_))))
                                (if (gx#stx-pair? _%tl100606100642%_)
                                    (let ((_%e100607100645%_
                                           (gx#syntax-e _%tl100606100642%_)))
                                      (let ((_%hd100608100649%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100607100645%_)))
                                            (_%tl100609100652%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100607100645%_))))
                                        (if (gx#stx-pair? _%tl100609100652%_)
                                            (let ((_%e100610100655%_
                                                   (gx#syntax-e
                                                    _%tl100609100652%_)))
                                              (let ((_%hd100611100659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100610100655%_)))
                                                    (_%tl100612100662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100610100655%_))))
                                                (if (gx#stx-null?
                                                     _%tl100612100662%_)
                                                    ((lambda (_%g100598100665%_
                                                              _%g100599100667%_
                                                              _%g100600100668%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g100600100668%_
                                                   (cons _%g100599100667%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g100599100667%_
                                   (cons _%g100599100667%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g100598100665%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd100611100659%_
                                                     _%hd100608100649%_
                                                     _%hd100605100639%_)
                                                    (_%g100596100618%_
                                                     _%g100597100622%_))))
                                            (_%g100596100618%_
                                             _%g100597100622%_))))
                                    (_%g100596100618%_ _%g100597100622%_))))
                            (_%g100596100618%_ _%g100597100622%_))))
                    (_%g100596100618%_ _%g100597100622%_)))))
        (_%g100595100687%_ _%$stx100592%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx100691%_)
      (let* ((_%g100695100729%_
              (lambda (_%g100696100725%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100696100725%_)))
             (_%g100694100840%_
              (lambda (_%g100696100733%_)
                (if (gx#stx-pair? _%g100696100733%_)
                    (let ((_%e100703100736%_ (gx#syntax-e _%g100696100733%_)))
                      (let ((_%hd100704100740%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100703100736%_)))
                            (_%tl100705100743%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100703100736%_))))
                        (if (gx#stx-pair? _%tl100705100743%_)
                            (let ((_%e100706100746%_
                                   (gx#syntax-e _%tl100705100743%_)))
                              (let ((_%hd100707100750%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100706100746%_)))
                                    (_%tl100708100753%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100706100746%_))))
                                (if (gx#stx-pair? _%tl100708100753%_)
                                    (let ((_%e100709100756%_
                                           (gx#syntax-e _%tl100708100753%_)))
                                      (let ((_%hd100710100760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100709100756%_)))
                                            (_%tl100711100763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100709100756%_))))
                                        (if (gx#stx-pair? _%tl100711100763%_)
                                            (let ((_%e100712100766%_
                                                   (gx#syntax-e
                                                    _%tl100711100763%_)))
                                              (let ((_%hd100713100770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100712100766%_)))
                                                    (_%tl100714100773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100712100766%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100714100773%_)
                                                    (let ((_%e100715100776%_
                                                           (gx#syntax-e
                                                            _%tl100714100773%_)))
                                                      (let ((_%hd100716100780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100715100776%_)))
                    (_%tl100717100783%_
                     (let () (declare (not safe)) (##cdr _%e100715100776%_))))
                (if (gx#stx-pair? _%tl100717100783%_)
                    (let ((_%e100718100786%_ (gx#syntax-e _%tl100717100783%_)))
                      (let ((_%hd100719100790%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100718100786%_)))
                            (_%tl100720100793%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100718100786%_))))
                        (if (gx#stx-pair? _%tl100720100793%_)
                            (let ((_%e100721100796%_
                                   (gx#syntax-e _%tl100720100793%_)))
                              (let ((_%hd100722100800%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100721100796%_)))
                                    (_%tl100723100803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100721100796%_))))
                                (if (gx#stx-null? _%tl100723100803%_)
                                    ((lambda (_%g100697100806%_
                                              _%g100698100808%_
                                              _%g100699100809%_
                                              _%g100700100810%_
                                              _%g100701100811%_
                                              _%g100702100812%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g100700100810%_
                                               (cons _%g100698100808%_ '()))
                                         (cons _%g100701100811%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g100702100812%_ '()))
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
                               (cons _%g100702100812%_
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
                                     (cons _%g100697100806%_ '()))
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
                                     (cons (cons (cons _%g100699100809%_
                                                       (cons _%g100698100808%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g100702100812%_
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
                                     _%hd100722100800%_
                                     _%hd100719100790%_
                                     _%hd100716100780%_
                                     _%hd100713100770%_
                                     _%hd100710100760%_
                                     _%hd100707100750%_)
                                    (_%g100695100729%_ _%g100696100733%_))))
                            (_%g100695100729%_ _%g100696100733%_))))
                    (_%g100695100729%_ _%g100696100733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100695100729%_
                                                     _%g100696100733%_))))
                                            (_%g100695100729%_
                                             _%g100696100733%_))))
                                    (_%g100695100729%_ _%g100696100733%_))))
                            (_%g100695100729%_ _%g100696100733%_))))
                    (_%g100695100729%_ _%g100696100733%_)))))
        (_%g100694100840%_ _%$stx100691%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx100844%_)
      (let* ((_%g100848100890%_
              (lambda (_%g100849100886%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100849100886%_)))
             (_%g100847101029%_
              (lambda (_%g100849100894%_)
                (if (gx#stx-pair? _%g100849100894%_)
                    (let ((_%e100858100897%_ (gx#syntax-e _%g100849100894%_)))
                      (let ((_%hd100859100901%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100858100897%_)))
                            (_%tl100860100904%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100858100897%_))))
                        (if (gx#stx-pair? _%tl100860100904%_)
                            (let ((_%e100861100907%_
                                   (gx#syntax-e _%tl100860100904%_)))
                              (let ((_%hd100862100911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100861100907%_)))
                                    (_%tl100863100914%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100861100907%_))))
                                (if (gx#stx-pair? _%tl100863100914%_)
                                    (let ((_%e100864100917%_
                                           (gx#syntax-e _%tl100863100914%_)))
                                      (let ((_%hd100865100921%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100864100917%_)))
                                            (_%tl100866100924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100864100917%_))))
                                        (if (gx#stx-pair? _%tl100866100924%_)
                                            (let ((_%e100867100927%_
                                                   (gx#syntax-e
                                                    _%tl100866100924%_)))
                                              (let ((_%hd100868100931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100867100927%_)))
                                                    (_%tl100869100934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100867100927%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100869100934%_)
                                                    (let ((_%e100870100937%_
                                                           (gx#syntax-e
                                                            _%tl100869100934%_)))
                                                      (let ((_%hd100871100941%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100870100937%_)))
                    (_%tl100872100944%_
                     (let () (declare (not safe)) (##cdr _%e100870100937%_))))
                (if (gx#stx-pair? _%tl100872100944%_)
                    (let ((_%e100873100947%_ (gx#syntax-e _%tl100872100944%_)))
                      (let ((_%hd100874100951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100873100947%_)))
                            (_%tl100875100954%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100873100947%_))))
                        (if (gx#stx-pair? _%tl100875100954%_)
                            (let ((_%e100876100957%_
                                   (gx#syntax-e _%tl100875100954%_)))
                              (let ((_%hd100877100961%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100876100957%_)))
                                    (_%tl100878100964%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100876100957%_))))
                                (if (gx#stx-pair? _%tl100878100964%_)
                                    (let ((_%e100879100967%_
                                           (gx#syntax-e _%tl100878100964%_)))
                                      (let ((_%hd100880100971%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100879100967%_)))
                                            (_%tl100881100974%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100879100967%_))))
                                        (if (gx#stx-pair? _%tl100881100974%_)
                                            (let ((_%e100882100977%_
                                                   (gx#syntax-e
                                                    _%tl100881100974%_)))
                                              (let ((_%hd100883100981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100882100977%_)))
                                                    (_%tl100884100984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100882100977%_))))
                                                (if (gx#stx-null?
                                                     _%tl100884100984%_)
                                                    ((lambda (_%g100850100987%_
                                                              _%g100851100989%_
                                                              _%g100852100990%_
                                                              _%g100853100991%_
                                                              _%g100854100992%_
                                                              _%g100855100993%_
                                                              _%g100856100994%_
                                                              _%g100857100995%_)
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
                                                   (cons (cons _%g100855100993%_
                                                               (cons _%g100853100991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g100856100994%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g100857100995%_
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
                                               (cons _%g100857100995%_
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
                                                       (cons _%g100857100995%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g100853100991%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g100857100995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g100852100990%_ '()))))
               (cons (cons _%g100850100987%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g100857100995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g100853100991%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g100857100995%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g100852100990%_ '()))))
                     (cons (cons _%g100851100989%_ '()) '()))))
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
                                                     (cons (cons (cons _%g100854100992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g100853100991%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g100857100995%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g100853100991%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g100857100995%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g100852100990%_ '()))))
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
                                                     _%hd100883100981%_
                                                     _%hd100880100971%_
                                                     _%hd100877100961%_
                                                     _%hd100874100951%_
                                                     _%hd100871100941%_
                                                     _%hd100868100931%_
                                                     _%hd100865100921%_
                                                     _%hd100862100911%_)
                                                    (_%g100848100890%_
                                                     _%g100849100894%_))))
                                            (_%g100848100890%_
                                             _%g100849100894%_))))
                                    (_%g100848100890%_ _%g100849100894%_))))
                            (_%g100848100890%_ _%g100849100894%_))))
                    (_%g100848100890%_ _%g100849100894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100848100890%_
                                                     _%g100849100894%_))))
                                            (_%g100848100890%_
                                             _%g100849100894%_))))
                                    (_%g100848100890%_ _%g100849100894%_))))
                            (_%g100848100890%_ _%g100849100894%_))))
                    (_%g100848100890%_ _%g100849100894%_)))))
        (_%g100847101029%_ _%$stx100844%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx101033%_)
      (let* ((_%g101037101083%_
              (lambda (_%g101038101079%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101038101079%_)))
             (_%g101036101236%_
              (lambda (_%g101038101087%_)
                (if (gx#stx-pair? _%g101038101087%_)
                    (let ((_%e101048101090%_ (gx#syntax-e _%g101038101087%_)))
                      (let ((_%hd101049101094%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101048101090%_)))
                            (_%tl101050101097%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101048101090%_))))
                        (if (gx#stx-pair? _%tl101050101097%_)
                            (let ((_%e101051101100%_
                                   (gx#syntax-e _%tl101050101097%_)))
                              (let ((_%hd101052101104%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101051101100%_)))
                                    (_%tl101053101107%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101051101100%_))))
                                (if (gx#stx-pair? _%tl101053101107%_)
                                    (let ((_%e101054101110%_
                                           (gx#syntax-e _%tl101053101107%_)))
                                      (let ((_%hd101055101114%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101054101110%_)))
                                            (_%tl101056101117%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101054101110%_))))
                                        (if (gx#stx-pair? _%tl101056101117%_)
                                            (let ((_%e101057101120%_
                                                   (gx#syntax-e
                                                    _%tl101056101117%_)))
                                              (let ((_%hd101058101124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101057101120%_)))
                                                    (_%tl101059101127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101057101120%_))))
                                                (if (gx#stx-pair?
                                                     _%tl101059101127%_)
                                                    (let ((_%e101060101130%_
                                                           (gx#syntax-e
                                                            _%tl101059101127%_)))
                                                      (let ((_%hd101061101134%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e101060101130%_)))
                    (_%tl101062101137%_
                     (let () (declare (not safe)) (##cdr _%e101060101130%_))))
                (if (gx#stx-pair? _%tl101062101137%_)
                    (let ((_%e101063101140%_ (gx#syntax-e _%tl101062101137%_)))
                      (let ((_%hd101064101144%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101063101140%_)))
                            (_%tl101065101147%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101063101140%_))))
                        (if (gx#stx-pair? _%tl101065101147%_)
                            (let ((_%e101066101150%_
                                   (gx#syntax-e _%tl101065101147%_)))
                              (let ((_%hd101067101154%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101066101150%_)))
                                    (_%tl101068101157%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101066101150%_))))
                                (if (gx#stx-pair? _%tl101068101157%_)
                                    (let ((_%e101069101160%_
                                           (gx#syntax-e _%tl101068101157%_)))
                                      (let ((_%hd101070101164%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101069101160%_)))
                                            (_%tl101071101167%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101069101160%_))))
                                        (if (gx#stx-pair? _%tl101071101167%_)
                                            (let ((_%e101072101170%_
                                                   (gx#syntax-e
                                                    _%tl101071101167%_)))
                                              (let ((_%hd101073101174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101072101170%_)))
                                                    (_%tl101074101177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101072101170%_))))
                                                (if (gx#stx-pair?
                                                     _%tl101074101177%_)
                                                    (let ((_%e101075101180%_
                                                           (gx#syntax-e
                                                            _%tl101074101177%_)))
                                                      (let ((_%hd101076101184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e101075101180%_)))
                    (_%tl101077101187%_
                     (let () (declare (not safe)) (##cdr _%e101075101180%_))))
                (if (gx#stx-null? _%tl101077101187%_)
                    ((lambda (_%g101039101190%_
                              _%g101040101192%_
                              _%g101041101193%_
                              _%g101042101194%_
                              _%g101043101195%_
                              _%g101044101196%_
                              _%g101045101197%_
                              _%g101046101198%_
                              _%g101047101199%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g101045101197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g101043101195%_ '()))
                         (cons _%g101046101198%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g101047101199%_ '()))
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
                                                       (cons _%g101047101199%_
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
                                                               (cons _%g101047101199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g101043101195%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g101047101199%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g101042101194%_
                                                     (cons _%g101041101193%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g101039101190%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g101047101199%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g101043101195%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g101047101199%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g101042101194%_
                                                           (cons _%g101041101193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g101040101192%_ '()) '()))))
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
                     (cons (cons (cons _%g101044101196%_
                                       (cons _%g101043101195%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g101047101199%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g101043101195%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g101047101199%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g101042101194%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g101047101199%_
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
                     _%hd101076101184%_
                     _%hd101073101174%_
                     _%hd101070101164%_
                     _%hd101067101154%_
                     _%hd101064101144%_
                     _%hd101061101134%_
                     _%hd101058101124%_
                     _%hd101055101114%_
                     _%hd101052101104%_)
                    (_%g101037101083%_ _%g101038101087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101037101083%_
                                                     _%g101038101087%_))))
                                            (_%g101037101083%_
                                             _%g101038101087%_))))
                                    (_%g101037101083%_ _%g101038101087%_))))
                            (_%g101037101083%_ _%g101038101087%_))))
                    (_%g101037101083%_ _%g101038101087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101037101083%_
                                                     _%g101038101087%_))))
                                            (_%g101037101083%_
                                             _%g101038101087%_))))
                                    (_%g101037101083%_ _%g101038101087%_))))
                            (_%g101037101083%_ _%g101038101087%_))))
                    (_%g101037101083%_ _%g101038101087%_)))))
        (_%g101036101236%_ _%$stx101033%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx101240%_)
      (let* ((_%g101244101278%_
              (lambda (_%g101245101274%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101245101274%_)))
             (_%g101243101389%_
              (lambda (_%g101245101282%_)
                (if (gx#stx-pair? _%g101245101282%_)
                    (let ((_%e101252101285%_ (gx#syntax-e _%g101245101282%_)))
                      (let ((_%hd101253101289%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101252101285%_)))
                            (_%tl101254101292%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101252101285%_))))
                        (if (gx#stx-pair? _%tl101254101292%_)
                            (let ((_%e101255101295%_
                                   (gx#syntax-e _%tl101254101292%_)))
                              (let ((_%hd101256101299%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101255101295%_)))
                                    (_%tl101257101302%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101255101295%_))))
                                (if (gx#stx-pair? _%tl101257101302%_)
                                    (let ((_%e101258101305%_
                                           (gx#syntax-e _%tl101257101302%_)))
                                      (let ((_%hd101259101309%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101258101305%_)))
                                            (_%tl101260101312%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101258101305%_))))
                                        (if (gx#stx-pair? _%tl101260101312%_)
                                            (let ((_%e101261101315%_
                                                   (gx#syntax-e
                                                    _%tl101260101312%_)))
                                              (let ((_%hd101262101319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101261101315%_)))
                                                    (_%tl101263101322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101261101315%_))))
                                                (if (gx#stx-pair?
                                                     _%tl101263101322%_)
                                                    (let ((_%e101264101325%_
                                                           (gx#syntax-e
                                                            _%tl101263101322%_)))
                                                      (let ((_%hd101265101329%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e101264101325%_)))
                    (_%tl101266101332%_
                     (let () (declare (not safe)) (##cdr _%e101264101325%_))))
                (if (gx#stx-pair? _%tl101266101332%_)
                    (let ((_%e101267101335%_ (gx#syntax-e _%tl101266101332%_)))
                      (let ((_%hd101268101339%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101267101335%_)))
                            (_%tl101269101342%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101267101335%_))))
                        (if (gx#stx-pair? _%tl101269101342%_)
                            (let ((_%e101270101345%_
                                   (gx#syntax-e _%tl101269101342%_)))
                              (let ((_%hd101271101349%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101270101345%_)))
                                    (_%tl101272101352%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101270101345%_))))
                                (if (gx#stx-null? _%tl101272101352%_)
                                    ((lambda (_%g101246101355%_
                                              _%g101247101357%_
                                              _%g101248101358%_
                                              _%g101249101359%_
                                              _%g101250101360%_
                                              _%g101251101361%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g101249101359%_
                                               (cons _%g101247101357%_ '()))
                                         (cons _%g101250101360%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g101251101361%_ '()))
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
                               (cons _%g101251101361%_
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
                                     (cons (cons (cons _%g101248101358%_
                                                       (cons _%g101247101357%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g101251101361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g101251101361%_
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
                     (cons (cons _%g101246101355%_ '()) '()))))
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
                                     _%hd101271101349%_
                                     _%hd101268101339%_
                                     _%hd101265101329%_
                                     _%hd101262101319%_
                                     _%hd101259101309%_
                                     _%hd101256101299%_)
                                    (_%g101244101278%_ _%g101245101282%_))))
                            (_%g101244101278%_ _%g101245101282%_))))
                    (_%g101244101278%_ _%g101245101282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101244101278%_
                                                     _%g101245101282%_))))
                                            (_%g101244101278%_
                                             _%g101245101282%_))))
                                    (_%g101244101278%_ _%g101245101282%_))))
                            (_%g101244101278%_ _%g101245101282%_))))
                    (_%g101244101278%_ _%g101245101282%_)))))
        (_%g101243101389%_ _%$stx101240%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx101393%_)
      (let* ((_%g101397101415%_
              (lambda (_%g101398101411%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101398101411%_)))
             (_%g101396101470%_
              (lambda (_%g101398101419%_)
                (if (gx#stx-pair? _%g101398101419%_)
                    (let ((_%e101401101422%_ (gx#syntax-e _%g101398101419%_)))
                      (let ((_%hd101402101426%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101401101422%_)))
                            (_%tl101403101429%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101401101422%_))))
                        (if (gx#stx-pair? _%tl101403101429%_)
                            (let ((_%e101404101432%_
                                   (gx#syntax-e _%tl101403101429%_)))
                              (let ((_%hd101405101436%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101404101432%_)))
                                    (_%tl101406101439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101404101432%_))))
                                (if (gx#stx-pair? _%tl101406101439%_)
                                    (let ((_%e101407101442%_
                                           (gx#syntax-e _%tl101406101439%_)))
                                      (let ((_%hd101408101446%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101407101442%_)))
                                            (_%tl101409101449%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101407101442%_))))
                                        (if (gx#stx-null? _%tl101409101449%_)
                                            ((lambda (_%g101399101452%_
                                                      _%g101400101454%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g101400101454%_ '()))
                   (cons _%g101399101452%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd101408101446%_
                                             _%hd101405101436%_)
                                            (_%g101397101415%_
                                             _%g101398101419%_))))
                                    (_%g101397101415%_ _%g101398101419%_))))
                            (_%g101397101415%_ _%g101398101419%_))))
                    (_%g101397101415%_ _%g101398101419%_)))))
        (_%g101396101470%_ _%$stx101393%_)))))

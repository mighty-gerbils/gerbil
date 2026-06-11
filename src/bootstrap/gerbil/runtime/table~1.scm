(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx115984%_)
      (let* ((_%$%g115988116006%_
              (lambda (_%$%g115989116002%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g115989116002%_)))
             (_%$%g115987116062%_
              (lambda (_%$%g115989116010%_)
                (if (gx#stx-pair? _%$%g115989116010%_)
                    (let ((_%$%e115992116013%_
                           (gx#syntax-e _%$%g115989116010%_)))
                      (let ((_%$%hd115993116017%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e115992116013%_)))
                            (_%$%tl115994116020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e115992116013%_))))
                        (if (gx#stx-pair? _%$%tl115994116020%_)
                            (let ((_%$%e115995116023%_
                                   (gx#syntax-e _%$%tl115994116020%_)))
                              (let ((_%$%hd115996116027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e115995116023%_)))
                                    (_%$%tl115997116030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e115995116023%_))))
                                (if (gx#stx-pair? _%$%tl115997116030%_)
                                    (let ((_%$%e115998116033%_
                                           (gx#syntax-e _%$%tl115997116030%_)))
                                      (let ((_%$%hd115999116037%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e115998116033%_)))
                                            (_%$%tl116000116040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e115998116033%_))))
                                        (if (gx#stx-null? _%$%tl116000116040%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd115996116027%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd115999116037%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g115988116006%_
                                             _%$%g115989116010%_))))
                                    (_%$%g115988116006%_
                                     _%$%g115989116010%_))))
                            (_%$%g115988116006%_ _%$%g115989116010%_))))
                    (_%$%g115988116006%_ _%$%g115989116010%_)))))
        (_%$%g115987116062%_ _%$stx115984%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx116066%_)
      (let* ((_%$%g116069116091%_
              (lambda (_%$%g116070116087%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g116070116087%_)))
             (_%$%g116068116404%_
              (lambda (_%$%g116070116095%_)
                (if (gx#stx-pair? _%$%g116070116095%_)
                    (let ((_%$%e116074116098%_
                           (gx#syntax-e _%$%g116070116095%_)))
                      (let ((_%$%hd116075116102%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116074116098%_)))
                            (_%$%tl116076116105%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116074116098%_))))
                        (if (gx#stx-pair? _%$%tl116076116105%_)
                            (let ((_%$%e116077116108%_
                                   (gx#syntax-e _%$%tl116076116105%_)))
                              (let ((_%$%hd116078116112%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116077116108%_)))
                                    (_%$%tl116079116115%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116077116108%_))))
                                (if (gx#stx-pair? _%$%tl116079116115%_)
                                    (let ((_%$%e116080116118%_
                                           (gx#syntax-e _%$%tl116079116115%_)))
                                      (let ((_%$%hd116081116122%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116080116118%_)))
                                            (_%$%tl116082116125%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116080116118%_))))
                                        (if (gx#stx-pair? _%$%tl116082116125%_)
                                            (let ((_%$%e116083116128%_
                                                   (gx#syntax-e
                                                    _%$%tl116082116125%_)))
                                              (let ((_%$%hd116084116132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116083116128%_)))
                                                    (_%$%tl116085116135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116083116128%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl116085116135%_)
                                                    (let* ((_%$%g116160116215%_
                                                            (lambda (_%$%g116161116211%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g116161116211%_)))
                                                           (_%$%g116159116400%_
                                                            (lambda (_%$%g116161116219%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g116161116219%_)
                          (let ((_%$%e116174116222%_
                                 (gx#syntax-e _%$%g116161116219%_)))
                            (let ((_%$%hd116175116226%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e116174116222%_)))
                                  (_%$%tl116176116229%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e116174116222%_))))
                              (if (gx#stx-pair? _%$%tl116176116229%_)
                                  (let ((_%$%e116177116232%_
                                         (gx#syntax-e _%$%tl116176116229%_)))
                                    (let ((_%$%hd116178116236%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e116177116232%_)))
                                          (_%$%tl116179116239%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e116177116232%_))))
                                      (if (gx#stx-pair? _%$%tl116179116239%_)
                                          (let ((_%$%e116180116242%_
                                                 (gx#syntax-e
                                                  _%$%tl116179116239%_)))
                                            (let ((_%$%hd116181116246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e116180116242%_)))
                                                  (_%$%tl116182116249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e116180116242%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl116182116249%_)
                                                  (let ((_%$%e116183116252%_
                                                         (gx#syntax-e
                                                          _%$%tl116182116249%_)))
                                                    (let ((_%$%hd116184116256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e116183116252%_)))
                                                          (_%$%tl116185116259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e116183116252%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl116185116259%_)
                                                          (let ((_%$%e116186116262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl116185116259%_)))
                    (let ((_%$%hd116187116266%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e116186116262%_)))
                          (_%$%tl116188116269%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e116186116262%_))))
                      (if (gx#stx-pair? _%$%tl116188116269%_)
                          (let ((_%$%e116189116272%_
                                 (gx#syntax-e _%$%tl116188116269%_)))
                            (let ((_%$%hd116190116276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e116189116272%_)))
                                  (_%$%tl116191116279%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e116189116272%_))))
                              (if (gx#stx-pair? _%$%tl116191116279%_)
                                  (let ((_%$%e116192116282%_
                                         (gx#syntax-e _%$%tl116191116279%_)))
                                    (let ((_%$%hd116193116286%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e116192116282%_)))
                                          (_%$%tl116194116289%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e116192116282%_))))
                                      (if (gx#stx-pair? _%$%tl116194116289%_)
                                          (let ((_%$%e116195116292%_
                                                 (gx#syntax-e
                                                  _%$%tl116194116289%_)))
                                            (let ((_%$%hd116196116296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e116195116292%_)))
                                                  (_%$%tl116197116299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e116195116292%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl116197116299%_)
                                                  (let ((_%$%e116198116302%_
                                                         (gx#syntax-e
                                                          _%$%tl116197116299%_)))
                                                    (let ((_%$%hd116199116306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e116198116302%_)))
                                                          (_%$%tl116200116309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e116198116302%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl116200116309%_)
                                                          (let ((_%$%e116201116312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl116200116309%_)))
                    (let ((_%$%hd116202116316%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e116201116312%_)))
                          (_%$%tl116203116319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e116201116312%_))))
                      (if (gx#stx-pair? _%$%tl116203116319%_)
                          (let ((_%$%e116204116322%_
                                 (gx#syntax-e _%$%tl116203116319%_)))
                            (let ((_%$%hd116205116326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e116204116322%_)))
                                  (_%$%tl116206116329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e116204116322%_))))
                              (if (gx#stx-pair? _%$%tl116206116329%_)
                                  (let ((_%$%e116207116332%_
                                         (gx#syntax-e _%$%tl116206116329%_)))
                                    (let ((_%$%hd116208116336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e116207116332%_)))
                                          (_%$%tl116209116339%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e116207116332%_))))
                                      (if (gx#stx-null? _%$%tl116209116339%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd116175116226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd116081116122%_
                                                  (cons _%$%hd116084116132%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd116178116236%_
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
                                                  (cons _%$%hd116081116122%_
                                                        (cons _%$%hd116084116132%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd116181116246%_
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
                                        (cons _%$%hd116081116122%_
                                              (cons _%$%hd116084116132%_
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
                                      (cons (cons _%$%hd116184116256%_
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
                                                              (cons (cons _%$%hd116181116246%_
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
                                            (cons (cons _%$%hd116187116266%_
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
                                                    (cons _%$%hd116081116122%_
                                                          (cons _%$%hd116084116132%_
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
                                                  (cons (cons _%$%hd116190116276%_
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
                      (cons (cons _%$%hd116187116266%_
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
                                                        (cons (cons _%$%hd116193116286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd116190116276%_
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
                                                              (cons (cons _%$%hd116196116296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd116199116306%_
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
                              (cons _%$%hd116081116122%_
                                    (cons _%$%hd116084116132%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd116199116306%_
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
                            (cons (cons _%$%hd116199116306%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd116199116306%_
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
                                        (cons (cons _%$%hd116196116296%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd116199116306%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd116202116316%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd116199116306%_
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
                                                          (cons (cons _%$%hd116199116306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd116199116306%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd116205116326%_
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
                                                (cons _%$%hd116081116122%_
                                                      (cons _%$%hd116084116132%_
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
                                              (cons (cons _%$%hd116208116336%_
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
                              (cons (cons _%$%hd116205116326%_
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
                                          (_%$%g116160116215%_
                                           _%$%g116161116219%_))))
                                  (_%$%g116160116215%_ _%$%g116161116219%_))))
                          (_%$%g116160116215%_ _%$%g116161116219%_))))
                  (_%$%g116160116215%_ _%$%g116161116219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g116160116215%_
                                                   _%$%g116161116219%_))))
                                          (_%$%g116160116215%_
                                           _%$%g116161116219%_))))
                                  (_%$%g116160116215%_ _%$%g116161116219%_))))
                          (_%$%g116160116215%_ _%$%g116161116219%_))))
                  (_%$%g116160116215%_ _%$%g116161116219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g116160116215%_
                                                   _%$%g116161116219%_))))
                                          (_%$%g116160116215%_
                                           _%$%g116161116219%_))))
                                  (_%$%g116160116215%_ _%$%g116161116219%_))))
                          (_%$%g116160116215%_ _%$%g116161116219%_)))))
              (_%$%g116159116400%_
               (list (gx#stx-identifier
                      _%$%hd116078116112%_
                      '"make-"
                      _%$%hd116078116112%_)
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      '"make-"
                      _%$%hd116078116112%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      '"__"
                      _%$%hd116078116112%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      '"__"
                      _%$%hd116078116112%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd116078116112%_
                      _%$%hd116078116112%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g116069116091%_
                                                     _%$%g116070116095%_))))
                                            (_%$%g116069116091%_
                                             _%$%g116070116095%_))))
                                    (_%$%g116069116091%_
                                     _%$%g116070116095%_))))
                            (_%$%g116069116091%_ _%$%g116070116095%_))))
                    (_%$%g116069116091%_ _%$%g116070116095%_)))))
        (_%$%g116068116404%_ _%stx116066%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx116408%_)
      (let* ((_%$%g116412116434%_
              (lambda (_%$%g116413116430%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g116413116430%_)))
             (_%$%g116411116503%_
              (lambda (_%$%g116413116438%_)
                (if (gx#stx-pair? _%$%g116413116438%_)
                    (let ((_%$%e116417116441%_
                           (gx#syntax-e _%$%g116413116438%_)))
                      (let ((_%$%hd116418116445%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116417116441%_)))
                            (_%$%tl116419116448%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116417116441%_))))
                        (if (gx#stx-pair? _%$%tl116419116448%_)
                            (let ((_%$%e116420116451%_
                                   (gx#syntax-e _%$%tl116419116448%_)))
                              (let ((_%$%hd116421116455%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116420116451%_)))
                                    (_%$%tl116422116458%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116420116451%_))))
                                (if (gx#stx-pair? _%$%tl116422116458%_)
                                    (let ((_%$%e116423116461%_
                                           (gx#syntax-e _%$%tl116422116458%_)))
                                      (let ((_%$%hd116424116465%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116423116461%_)))
                                            (_%$%tl116425116468%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116423116461%_))))
                                        (if (gx#stx-pair? _%$%tl116425116468%_)
                                            (let ((_%$%e116426116471%_
                                                   (gx#syntax-e
                                                    _%$%tl116425116468%_)))
                                              (let ((_%$%hd116427116475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116426116471%_)))
                                                    (_%$%tl116428116478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116426116471%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl116428116478%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd116421116455%_
                                                (cons _%$%hd116424116465%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd116424116465%_
                                (cons _%$%hd116424116465%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd116427116475%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g116412116434%_
                                                     _%$%g116413116438%_))))
                                            (_%$%g116412116434%_
                                             _%$%g116413116438%_))))
                                    (_%$%g116412116434%_
                                     _%$%g116413116438%_))))
                            (_%$%g116412116434%_ _%$%g116413116438%_))))
                    (_%$%g116412116434%_ _%$%g116413116438%_)))))
        (_%$%g116411116503%_ _%$stx116408%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx116507%_)
      (let* ((_%$%g116511116545%_
              (lambda (_%$%g116512116541%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g116512116541%_)))
             (_%$%g116510116656%_
              (lambda (_%$%g116512116549%_)
                (if (gx#stx-pair? _%$%g116512116549%_)
                    (let ((_%$%e116519116552%_
                           (gx#syntax-e _%$%g116512116549%_)))
                      (let ((_%$%hd116520116556%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116519116552%_)))
                            (_%$%tl116521116559%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116519116552%_))))
                        (if (gx#stx-pair? _%$%tl116521116559%_)
                            (let ((_%$%e116522116562%_
                                   (gx#syntax-e _%$%tl116521116559%_)))
                              (let ((_%$%hd116523116566%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116522116562%_)))
                                    (_%$%tl116524116569%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116522116562%_))))
                                (if (gx#stx-pair? _%$%tl116524116569%_)
                                    (let ((_%$%e116525116572%_
                                           (gx#syntax-e _%$%tl116524116569%_)))
                                      (let ((_%$%hd116526116576%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116525116572%_)))
                                            (_%$%tl116527116579%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116525116572%_))))
                                        (if (gx#stx-pair? _%$%tl116527116579%_)
                                            (let ((_%$%e116528116582%_
                                                   (gx#syntax-e
                                                    _%$%tl116527116579%_)))
                                              (let ((_%$%hd116529116586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116528116582%_)))
                                                    (_%$%tl116530116589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116528116582%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl116530116589%_)
                                                    (let ((_%$%e116531116592%_
                                                           (gx#syntax-e
                                                            _%$%tl116530116589%_)))
                                                      (let ((_%$%hd116532116596%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e116531116592%_)))
                    (_%$%tl116533116599%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e116531116592%_))))
                (if (gx#stx-pair? _%$%tl116533116599%_)
                    (let ((_%$%e116534116602%_
                           (gx#syntax-e _%$%tl116533116599%_)))
                      (let ((_%$%hd116535116606%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116534116602%_)))
                            (_%$%tl116536116609%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116534116602%_))))
                        (if (gx#stx-pair? _%$%tl116536116609%_)
                            (let ((_%$%e116537116612%_
                                   (gx#syntax-e _%$%tl116536116609%_)))
                              (let ((_%$%hd116538116616%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116537116612%_)))
                                    (_%$%tl116539116619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116537116612%_))))
                                (if (gx#stx-null? _%$%tl116539116619%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd116529116586%_
                                            (cons _%$%hd116535116606%_ '()))
                                      (cons _%$%hd116526116576%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd116523116566%_ '()))
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
                            (cons _%$%hd116523116566%_
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
                                  (cons _%$%hd116538116616%_ '()))
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
                                  (cons (cons (cons _%$%hd116532116596%_
                                                    (cons _%$%hd116535116606%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd116523116566%_
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
                                    (_%$%g116511116545%_
                                     _%$%g116512116549%_))))
                            (_%$%g116511116545%_ _%$%g116512116549%_))))
                    (_%$%g116511116545%_ _%$%g116512116549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g116511116545%_
                                                     _%$%g116512116549%_))))
                                            (_%$%g116511116545%_
                                             _%$%g116512116549%_))))
                                    (_%$%g116511116545%_
                                     _%$%g116512116549%_))))
                            (_%$%g116511116545%_ _%$%g116512116549%_))))
                    (_%$%g116511116545%_ _%$%g116512116549%_)))))
        (_%$%g116510116656%_ _%$stx116507%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx116660%_)
      (let* ((_%$%g116664116706%_
              (lambda (_%$%g116665116702%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g116665116702%_)))
             (_%$%g116663116845%_
              (lambda (_%$%g116665116710%_)
                (if (gx#stx-pair? _%$%g116665116710%_)
                    (let ((_%$%e116674116713%_
                           (gx#syntax-e _%$%g116665116710%_)))
                      (let ((_%$%hd116675116717%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116674116713%_)))
                            (_%$%tl116676116720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116674116713%_))))
                        (if (gx#stx-pair? _%$%tl116676116720%_)
                            (let ((_%$%e116677116723%_
                                   (gx#syntax-e _%$%tl116676116720%_)))
                              (let ((_%$%hd116678116727%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116677116723%_)))
                                    (_%$%tl116679116730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116677116723%_))))
                                (if (gx#stx-pair? _%$%tl116679116730%_)
                                    (let ((_%$%e116680116733%_
                                           (gx#syntax-e _%$%tl116679116730%_)))
                                      (let ((_%$%hd116681116737%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116680116733%_)))
                                            (_%$%tl116682116740%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116680116733%_))))
                                        (if (gx#stx-pair? _%$%tl116682116740%_)
                                            (let ((_%$%e116683116743%_
                                                   (gx#syntax-e
                                                    _%$%tl116682116740%_)))
                                              (let ((_%$%hd116684116747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116683116743%_)))
                                                    (_%$%tl116685116750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116683116743%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl116685116750%_)
                                                    (let ((_%$%e116686116753%_
                                                           (gx#syntax-e
                                                            _%$%tl116685116750%_)))
                                                      (let ((_%$%hd116687116757%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e116686116753%_)))
                    (_%$%tl116688116760%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e116686116753%_))))
                (if (gx#stx-pair? _%$%tl116688116760%_)
                    (let ((_%$%e116689116763%_
                           (gx#syntax-e _%$%tl116688116760%_)))
                      (let ((_%$%hd116690116767%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116689116763%_)))
                            (_%$%tl116691116770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116689116763%_))))
                        (if (gx#stx-pair? _%$%tl116691116770%_)
                            (let ((_%$%e116692116773%_
                                   (gx#syntax-e _%$%tl116691116770%_)))
                              (let ((_%$%hd116693116777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116692116773%_)))
                                    (_%$%tl116694116780%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116692116773%_))))
                                (if (gx#stx-pair? _%$%tl116694116780%_)
                                    (let ((_%$%e116695116783%_
                                           (gx#syntax-e _%$%tl116694116780%_)))
                                      (let ((_%$%hd116696116787%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116695116783%_)))
                                            (_%$%tl116697116790%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116695116783%_))))
                                        (if (gx#stx-pair? _%$%tl116697116790%_)
                                            (let ((_%$%e116698116793%_
                                                   (gx#syntax-e
                                                    _%$%tl116697116790%_)))
                                              (let ((_%$%hd116699116797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116698116793%_)))
                                                    (_%$%tl116700116800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116698116793%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl116700116800%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd116684116747%_
                                                            (cons _%$%hd116690116767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd116681116737%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd116678116727%_
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
                                            (cons _%$%hd116678116727%_
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
                                                    (cons _%$%hd116678116727%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd116690116767%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd116678116727%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd116693116777%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd116699116797%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd116678116727%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd116690116767%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd116678116727%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd116693116777%_ '()))))
                  (cons (cons _%$%hd116696116787%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd116687116757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd116690116767%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd116678116727%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd116690116767%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd116678116727%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd116693116777%_
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
                                                    (_%$%g116664116706%_
                                                     _%$%g116665116710%_))))
                                            (_%$%g116664116706%_
                                             _%$%g116665116710%_))))
                                    (_%$%g116664116706%_
                                     _%$%g116665116710%_))))
                            (_%$%g116664116706%_ _%$%g116665116710%_))))
                    (_%$%g116664116706%_ _%$%g116665116710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g116664116706%_
                                                     _%$%g116665116710%_))))
                                            (_%$%g116664116706%_
                                             _%$%g116665116710%_))))
                                    (_%$%g116664116706%_
                                     _%$%g116665116710%_))))
                            (_%$%g116664116706%_ _%$%g116665116710%_))))
                    (_%$%g116664116706%_ _%$%g116665116710%_)))))
        (_%$%g116663116845%_ _%$stx116660%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx116849%_)
      (let* ((_%$%g116853116899%_
              (lambda (_%$%g116854116895%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g116854116895%_)))
             (_%$%g116852117052%_
              (lambda (_%$%g116854116903%_)
                (if (gx#stx-pair? _%$%g116854116903%_)
                    (let ((_%$%e116864116906%_
                           (gx#syntax-e _%$%g116854116903%_)))
                      (let ((_%$%hd116865116910%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116864116906%_)))
                            (_%$%tl116866116913%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116864116906%_))))
                        (if (gx#stx-pair? _%$%tl116866116913%_)
                            (let ((_%$%e116867116916%_
                                   (gx#syntax-e _%$%tl116866116913%_)))
                              (let ((_%$%hd116868116920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116867116916%_)))
                                    (_%$%tl116869116923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116867116916%_))))
                                (if (gx#stx-pair? _%$%tl116869116923%_)
                                    (let ((_%$%e116870116926%_
                                           (gx#syntax-e _%$%tl116869116923%_)))
                                      (let ((_%$%hd116871116930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116870116926%_)))
                                            (_%$%tl116872116933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116870116926%_))))
                                        (if (gx#stx-pair? _%$%tl116872116933%_)
                                            (let ((_%$%e116873116936%_
                                                   (gx#syntax-e
                                                    _%$%tl116872116933%_)))
                                              (let ((_%$%hd116874116940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116873116936%_)))
                                                    (_%$%tl116875116943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116873116936%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl116875116943%_)
                                                    (let ((_%$%e116876116946%_
                                                           (gx#syntax-e
                                                            _%$%tl116875116943%_)))
                                                      (let ((_%$%hd116877116950%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e116876116946%_)))
                    (_%$%tl116878116953%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e116876116946%_))))
                (if (gx#stx-pair? _%$%tl116878116953%_)
                    (let ((_%$%e116879116956%_
                           (gx#syntax-e _%$%tl116878116953%_)))
                      (let ((_%$%hd116880116960%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116879116956%_)))
                            (_%$%tl116881116963%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116879116956%_))))
                        (if (gx#stx-pair? _%$%tl116881116963%_)
                            (let ((_%$%e116882116966%_
                                   (gx#syntax-e _%$%tl116881116963%_)))
                              (let ((_%$%hd116883116970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116882116966%_)))
                                    (_%$%tl116884116973%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116882116966%_))))
                                (if (gx#stx-pair? _%$%tl116884116973%_)
                                    (let ((_%$%e116885116976%_
                                           (gx#syntax-e _%$%tl116884116973%_)))
                                      (let ((_%$%hd116886116980%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116885116976%_)))
                                            (_%$%tl116887116983%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116885116976%_))))
                                        (if (gx#stx-pair? _%$%tl116887116983%_)
                                            (let ((_%$%e116888116986%_
                                                   (gx#syntax-e
                                                    _%$%tl116887116983%_)))
                                              (let ((_%$%hd116889116990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e116888116986%_)))
                                                    (_%$%tl116890116993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e116888116986%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl116890116993%_)
                                                    (let ((_%$%e116891116996%_
                                                           (gx#syntax-e
                                                            _%$%tl116890116993%_)))
                                                      (let ((_%$%hd116892117000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e116891116996%_)))
                    (_%$%tl116893117003%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e116891116996%_))))
                (if (gx#stx-null? _%$%tl116893117003%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd116874116940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd116880116960%_ '()))
                      (cons _%$%hd116871116930%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd116868116920%_
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
                                                    (cons _%$%hd116868116920%_
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
                                                            (cons _%$%hd116868116920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd116880116960%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd116868116920%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd116883116970%_
                                                  (cons _%$%hd116886116980%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd116892117000%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd116868116920%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd116880116960%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd116868116920%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd116883116970%_
                                                        (cons _%$%hd116886116980%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd116889116990%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd116877116950%_
                                    (cons _%$%hd116880116960%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd116868116920%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd116880116960%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd116868116920%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd116883116970%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd116868116920%_
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
                    (_%$%g116853116899%_ _%$%g116854116903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g116853116899%_
                                                     _%$%g116854116903%_))))
                                            (_%$%g116853116899%_
                                             _%$%g116854116903%_))))
                                    (_%$%g116853116899%_
                                     _%$%g116854116903%_))))
                            (_%$%g116853116899%_ _%$%g116854116903%_))))
                    (_%$%g116853116899%_ _%$%g116854116903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g116853116899%_
                                                     _%$%g116854116903%_))))
                                            (_%$%g116853116899%_
                                             _%$%g116854116903%_))))
                                    (_%$%g116853116899%_
                                     _%$%g116854116903%_))))
                            (_%$%g116853116899%_ _%$%g116854116903%_))))
                    (_%$%g116853116899%_ _%$%g116854116903%_)))))
        (_%$%g116852117052%_ _%$stx116849%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx117056%_)
      (let* ((_%$%g117060117094%_
              (lambda (_%$%g117061117090%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117061117090%_)))
             (_%$%g117059117205%_
              (lambda (_%$%g117061117098%_)
                (if (gx#stx-pair? _%$%g117061117098%_)
                    (let ((_%$%e117068117101%_
                           (gx#syntax-e _%$%g117061117098%_)))
                      (let ((_%$%hd117069117105%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117068117101%_)))
                            (_%$%tl117070117108%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117068117101%_))))
                        (if (gx#stx-pair? _%$%tl117070117108%_)
                            (let ((_%$%e117071117111%_
                                   (gx#syntax-e _%$%tl117070117108%_)))
                              (let ((_%$%hd117072117115%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117071117111%_)))
                                    (_%$%tl117073117118%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117071117111%_))))
                                (if (gx#stx-pair? _%$%tl117073117118%_)
                                    (let ((_%$%e117074117121%_
                                           (gx#syntax-e _%$%tl117073117118%_)))
                                      (let ((_%$%hd117075117125%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117074117121%_)))
                                            (_%$%tl117076117128%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117074117121%_))))
                                        (if (gx#stx-pair? _%$%tl117076117128%_)
                                            (let ((_%$%e117077117131%_
                                                   (gx#syntax-e
                                                    _%$%tl117076117128%_)))
                                              (let ((_%$%hd117078117135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117077117131%_)))
                                                    (_%$%tl117079117138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117077117131%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl117079117138%_)
                                                    (let ((_%$%e117080117141%_
                                                           (gx#syntax-e
                                                            _%$%tl117079117138%_)))
                                                      (let ((_%$%hd117081117145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e117080117141%_)))
                    (_%$%tl117082117148%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e117080117141%_))))
                (if (gx#stx-pair? _%$%tl117082117148%_)
                    (let ((_%$%e117083117151%_
                           (gx#syntax-e _%$%tl117082117148%_)))
                      (let ((_%$%hd117084117155%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117083117151%_)))
                            (_%$%tl117085117158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117083117151%_))))
                        (if (gx#stx-pair? _%$%tl117085117158%_)
                            (let ((_%$%e117086117161%_
                                   (gx#syntax-e _%$%tl117085117158%_)))
                              (let ((_%$%hd117087117165%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117086117161%_)))
                                    (_%$%tl117088117168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117086117161%_))))
                                (if (gx#stx-null? _%$%tl117088117168%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd117078117135%_
                                            (cons _%$%hd117084117155%_ '()))
                                      (cons _%$%hd117075117125%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd117072117115%_ '()))
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
                            (cons _%$%hd117072117115%_
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
                                  (cons (cons (cons _%$%hd117081117145%_
                                                    (cons _%$%hd117084117155%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd117072117115%_
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
                        (cons _%$%hd117072117115%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd117087117165%_ '()) '()))))
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
                                    (_%$%g117060117094%_
                                     _%$%g117061117098%_))))
                            (_%$%g117060117094%_ _%$%g117061117098%_))))
                    (_%$%g117060117094%_ _%$%g117061117098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117060117094%_
                                                     _%$%g117061117098%_))))
                                            (_%$%g117060117094%_
                                             _%$%g117061117098%_))))
                                    (_%$%g117060117094%_
                                     _%$%g117061117098%_))))
                            (_%$%g117060117094%_ _%$%g117061117098%_))))
                    (_%$%g117060117094%_ _%$%g117061117098%_)))))
        (_%$%g117059117205%_ _%$stx117056%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx117209%_)
      (let* ((_%$%g117213117231%_
              (lambda (_%$%g117214117227%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117214117227%_)))
             (_%$%g117212117286%_
              (lambda (_%$%g117214117235%_)
                (if (gx#stx-pair? _%$%g117214117235%_)
                    (let ((_%$%e117217117238%_
                           (gx#syntax-e _%$%g117214117235%_)))
                      (let ((_%$%hd117218117242%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117217117238%_)))
                            (_%$%tl117219117245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117217117238%_))))
                        (if (gx#stx-pair? _%$%tl117219117245%_)
                            (let ((_%$%e117220117248%_
                                   (gx#syntax-e _%$%tl117219117245%_)))
                              (let ((_%$%hd117221117252%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117220117248%_)))
                                    (_%$%tl117222117255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117220117248%_))))
                                (if (gx#stx-pair? _%$%tl117222117255%_)
                                    (let ((_%$%e117223117258%_
                                           (gx#syntax-e _%$%tl117222117255%_)))
                                      (let ((_%$%hd117224117262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117223117258%_)))
                                            (_%$%tl117225117265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117223117258%_))))
                                        (if (gx#stx-null? _%$%tl117225117265%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd117221117252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd117224117262%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g117213117231%_
                                             _%$%g117214117235%_))))
                                    (_%$%g117213117231%_
                                     _%$%g117214117235%_))))
                            (_%$%g117213117231%_ _%$%g117214117235%_))))
                    (_%$%g117213117231%_ _%$%g117214117235%_)))))
        (_%$%g117212117286%_ _%$stx117209%_)))))

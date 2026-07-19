(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx120994%_)
      (let* ((_%$%g120998121016%_
              (lambda (_%$%g120999121012%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g120999121012%_)))
             (_%$%g120997121072%_
              (lambda (_%$%g120999121020%_)
                (if (gx#stx-pair? _%$%g120999121020%_)
                    (let ((_%$%e121002121023%_
                           (gx#syntax-e _%$%g120999121020%_)))
                      (let ((_%$%hd121003121027%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121002121023%_)))
                            (_%$%tl121004121030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121002121023%_))))
                        (if (gx#stx-pair? _%$%tl121004121030%_)
                            (let ((_%$%e121005121033%_
                                   (gx#syntax-e _%$%tl121004121030%_)))
                              (let ((_%$%hd121006121037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121005121033%_)))
                                    (_%$%tl121007121040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121005121033%_))))
                                (if (gx#stx-pair? _%$%tl121007121040%_)
                                    (let ((_%$%e121008121043%_
                                           (gx#syntax-e _%$%tl121007121040%_)))
                                      (let ((_%$%hd121009121047%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121008121043%_)))
                                            (_%$%tl121010121050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121008121043%_))))
                                        (if (gx#stx-null? _%$%tl121010121050%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd121006121037%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd121009121047%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g120998121016%_
                                             _%$%g120999121020%_))))
                                    (_%$%g120998121016%_
                                     _%$%g120999121020%_))))
                            (_%$%g120998121016%_ _%$%g120999121020%_))))
                    (_%$%g120998121016%_ _%$%g120999121020%_)))))
        (_%$%g120997121072%_ _%$stx120994%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx121076%_)
      (let* ((_%$%g121079121101%_
              (lambda (_%$%g121080121097%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121080121097%_)))
             (_%$%g121078121414%_
              (lambda (_%$%g121080121105%_)
                (if (gx#stx-pair? _%$%g121080121105%_)
                    (let ((_%$%e121084121108%_
                           (gx#syntax-e _%$%g121080121105%_)))
                      (let ((_%$%hd121085121112%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121084121108%_)))
                            (_%$%tl121086121115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121084121108%_))))
                        (if (gx#stx-pair? _%$%tl121086121115%_)
                            (let ((_%$%e121087121118%_
                                   (gx#syntax-e _%$%tl121086121115%_)))
                              (let ((_%$%hd121088121122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121087121118%_)))
                                    (_%$%tl121089121125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121087121118%_))))
                                (if (gx#stx-pair? _%$%tl121089121125%_)
                                    (let ((_%$%e121090121128%_
                                           (gx#syntax-e _%$%tl121089121125%_)))
                                      (let ((_%$%hd121091121132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121090121128%_)))
                                            (_%$%tl121092121135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121090121128%_))))
                                        (if (gx#stx-pair? _%$%tl121092121135%_)
                                            (let ((_%$%e121093121138%_
                                                   (gx#syntax-e
                                                    _%$%tl121092121135%_)))
                                              (let ((_%$%hd121094121142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121093121138%_)))
                                                    (_%$%tl121095121145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121093121138%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl121095121145%_)
                                                    (let* ((_%$%g121170121225%_
                                                            (lambda (_%$%g121171121221%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g121171121221%_)))
                                                           (_%$%g121169121410%_
                                                            (lambda (_%$%g121171121229%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g121171121229%_)
                          (let ((_%$%e121184121232%_
                                 (gx#syntax-e _%$%g121171121229%_)))
                            (let ((_%$%hd121185121236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e121184121232%_)))
                                  (_%$%tl121186121239%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e121184121232%_))))
                              (if (gx#stx-pair? _%$%tl121186121239%_)
                                  (let ((_%$%e121187121242%_
                                         (gx#syntax-e _%$%tl121186121239%_)))
                                    (let ((_%$%hd121188121246%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121187121242%_)))
                                          (_%$%tl121189121249%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121187121242%_))))
                                      (if (gx#stx-pair? _%$%tl121189121249%_)
                                          (let ((_%$%e121190121252%_
                                                 (gx#syntax-e
                                                  _%$%tl121189121249%_)))
                                            (let ((_%$%hd121191121256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e121190121252%_)))
                                                  (_%$%tl121192121259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e121190121252%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl121192121259%_)
                                                  (let ((_%$%e121193121262%_
                                                         (gx#syntax-e
                                                          _%$%tl121192121259%_)))
                                                    (let ((_%$%hd121194121266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e121193121262%_)))
                                                          (_%$%tl121195121269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e121193121262%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl121195121269%_)
                                                          (let ((_%$%e121196121272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl121195121269%_)))
                    (let ((_%$%hd121197121276%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121196121272%_)))
                          (_%$%tl121198121279%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121196121272%_))))
                      (if (gx#stx-pair? _%$%tl121198121279%_)
                          (let ((_%$%e121199121282%_
                                 (gx#syntax-e _%$%tl121198121279%_)))
                            (let ((_%$%hd121200121286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e121199121282%_)))
                                  (_%$%tl121201121289%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e121199121282%_))))
                              (if (gx#stx-pair? _%$%tl121201121289%_)
                                  (let ((_%$%e121202121292%_
                                         (gx#syntax-e _%$%tl121201121289%_)))
                                    (let ((_%$%hd121203121296%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121202121292%_)))
                                          (_%$%tl121204121299%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121202121292%_))))
                                      (if (gx#stx-pair? _%$%tl121204121299%_)
                                          (let ((_%$%e121205121302%_
                                                 (gx#syntax-e
                                                  _%$%tl121204121299%_)))
                                            (let ((_%$%hd121206121306%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e121205121302%_)))
                                                  (_%$%tl121207121309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e121205121302%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl121207121309%_)
                                                  (let ((_%$%e121208121312%_
                                                         (gx#syntax-e
                                                          _%$%tl121207121309%_)))
                                                    (let ((_%$%hd121209121316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e121208121312%_)))
                                                          (_%$%tl121210121319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e121208121312%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl121210121319%_)
                                                          (let ((_%$%e121211121322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl121210121319%_)))
                    (let ((_%$%hd121212121326%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121211121322%_)))
                          (_%$%tl121213121329%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121211121322%_))))
                      (if (gx#stx-pair? _%$%tl121213121329%_)
                          (let ((_%$%e121214121332%_
                                 (gx#syntax-e _%$%tl121213121329%_)))
                            (let ((_%$%hd121215121336%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e121214121332%_)))
                                  (_%$%tl121216121339%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e121214121332%_))))
                              (if (gx#stx-pair? _%$%tl121216121339%_)
                                  (let ((_%$%e121217121342%_
                                         (gx#syntax-e _%$%tl121216121339%_)))
                                    (let ((_%$%hd121218121346%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121217121342%_)))
                                          (_%$%tl121219121349%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121217121342%_))))
                                      (if (gx#stx-null? _%$%tl121219121349%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd121185121236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd121091121132%_
                                                  (cons _%$%hd121094121142%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd121188121246%_
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
                                                  (cons _%$%hd121091121132%_
                                                        (cons _%$%hd121094121142%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd121191121256%_
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
                                        (cons _%$%hd121091121132%_
                                              (cons _%$%hd121094121142%_
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
                                      (cons (cons _%$%hd121194121266%_
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
                                                              (cons (cons _%$%hd121191121256%_
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
                                            (cons (cons _%$%hd121197121276%_
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
                                                    (cons _%$%hd121091121132%_
                                                          (cons _%$%hd121094121142%_
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
                                                  (cons (cons _%$%hd121200121286%_
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
                      (cons (cons _%$%hd121197121276%_
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
                                                        (cons (cons _%$%hd121203121296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd121200121286%_
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
                                                              (cons (cons _%$%hd121206121306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd121209121316%_
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
                              (cons _%$%hd121091121132%_
                                    (cons _%$%hd121094121142%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd121209121316%_
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
                            (cons (cons _%$%hd121209121316%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd121209121316%_
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
                                        (cons (cons _%$%hd121206121306%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd121209121316%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd121212121326%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd121209121316%_
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
                                                          (cons (cons _%$%hd121209121316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd121209121316%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd121215121336%_
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
                                                (cons _%$%hd121091121132%_
                                                      (cons _%$%hd121094121142%_
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
                                              (cons (cons _%$%hd121218121346%_
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
                              (cons (cons _%$%hd121215121336%_
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
                                          (_%$%g121170121225%_
                                           _%$%g121171121229%_))))
                                  (_%$%g121170121225%_ _%$%g121171121229%_))))
                          (_%$%g121170121225%_ _%$%g121171121229%_))))
                  (_%$%g121170121225%_ _%$%g121171121229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g121170121225%_
                                                   _%$%g121171121229%_))))
                                          (_%$%g121170121225%_
                                           _%$%g121171121229%_))))
                                  (_%$%g121170121225%_ _%$%g121171121229%_))))
                          (_%$%g121170121225%_ _%$%g121171121229%_))))
                  (_%$%g121170121225%_ _%$%g121171121229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g121170121225%_
                                                   _%$%g121171121229%_))))
                                          (_%$%g121170121225%_
                                           _%$%g121171121229%_))))
                                  (_%$%g121170121225%_ _%$%g121171121229%_))))
                          (_%$%g121170121225%_ _%$%g121171121229%_)))))
              (_%$%g121169121410%_
               (list (gx#stx-identifier
                      _%$%hd121088121122%_
                      '"make-"
                      _%$%hd121088121122%_)
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      '"make-"
                      _%$%hd121088121122%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      '"__"
                      _%$%hd121088121122%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      '"__"
                      _%$%hd121088121122%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd121088121122%_
                      _%$%hd121088121122%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121079121101%_
                                                     _%$%g121080121105%_))))
                                            (_%$%g121079121101%_
                                             _%$%g121080121105%_))))
                                    (_%$%g121079121101%_
                                     _%$%g121080121105%_))))
                            (_%$%g121079121101%_ _%$%g121080121105%_))))
                    (_%$%g121079121101%_ _%$%g121080121105%_)))))
        (_%$%g121078121414%_ _%stx121076%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx121418%_)
      (let* ((_%$%g121422121444%_
              (lambda (_%$%g121423121440%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121423121440%_)))
             (_%$%g121421121513%_
              (lambda (_%$%g121423121448%_)
                (if (gx#stx-pair? _%$%g121423121448%_)
                    (let ((_%$%e121427121451%_
                           (gx#syntax-e _%$%g121423121448%_)))
                      (let ((_%$%hd121428121455%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121427121451%_)))
                            (_%$%tl121429121458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121427121451%_))))
                        (if (gx#stx-pair? _%$%tl121429121458%_)
                            (let ((_%$%e121430121461%_
                                   (gx#syntax-e _%$%tl121429121458%_)))
                              (let ((_%$%hd121431121465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121430121461%_)))
                                    (_%$%tl121432121468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121430121461%_))))
                                (if (gx#stx-pair? _%$%tl121432121468%_)
                                    (let ((_%$%e121433121471%_
                                           (gx#syntax-e _%$%tl121432121468%_)))
                                      (let ((_%$%hd121434121475%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121433121471%_)))
                                            (_%$%tl121435121478%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121433121471%_))))
                                        (if (gx#stx-pair? _%$%tl121435121478%_)
                                            (let ((_%$%e121436121481%_
                                                   (gx#syntax-e
                                                    _%$%tl121435121478%_)))
                                              (let ((_%$%hd121437121485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121436121481%_)))
                                                    (_%$%tl121438121488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121436121481%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl121438121488%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd121431121465%_
                                                (cons _%$%hd121434121475%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd121434121475%_
                                (cons _%$%hd121434121475%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd121437121485%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121422121444%_
                                                     _%$%g121423121448%_))))
                                            (_%$%g121422121444%_
                                             _%$%g121423121448%_))))
                                    (_%$%g121422121444%_
                                     _%$%g121423121448%_))))
                            (_%$%g121422121444%_ _%$%g121423121448%_))))
                    (_%$%g121422121444%_ _%$%g121423121448%_)))))
        (_%$%g121421121513%_ _%$stx121418%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx121517%_)
      (let* ((_%$%g121521121555%_
              (lambda (_%$%g121522121551%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121522121551%_)))
             (_%$%g121520121666%_
              (lambda (_%$%g121522121559%_)
                (if (gx#stx-pair? _%$%g121522121559%_)
                    (let ((_%$%e121529121562%_
                           (gx#syntax-e _%$%g121522121559%_)))
                      (let ((_%$%hd121530121566%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121529121562%_)))
                            (_%$%tl121531121569%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121529121562%_))))
                        (if (gx#stx-pair? _%$%tl121531121569%_)
                            (let ((_%$%e121532121572%_
                                   (gx#syntax-e _%$%tl121531121569%_)))
                              (let ((_%$%hd121533121576%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121532121572%_)))
                                    (_%$%tl121534121579%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121532121572%_))))
                                (if (gx#stx-pair? _%$%tl121534121579%_)
                                    (let ((_%$%e121535121582%_
                                           (gx#syntax-e _%$%tl121534121579%_)))
                                      (let ((_%$%hd121536121586%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121535121582%_)))
                                            (_%$%tl121537121589%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121535121582%_))))
                                        (if (gx#stx-pair? _%$%tl121537121589%_)
                                            (let ((_%$%e121538121592%_
                                                   (gx#syntax-e
                                                    _%$%tl121537121589%_)))
                                              (let ((_%$%hd121539121596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121538121592%_)))
                                                    (_%$%tl121540121599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121538121592%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl121540121599%_)
                                                    (let ((_%$%e121541121602%_
                                                           (gx#syntax-e
                                                            _%$%tl121540121599%_)))
                                                      (let ((_%$%hd121542121606%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e121541121602%_)))
                    (_%$%tl121543121609%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e121541121602%_))))
                (if (gx#stx-pair? _%$%tl121543121609%_)
                    (let ((_%$%e121544121612%_
                           (gx#syntax-e _%$%tl121543121609%_)))
                      (let ((_%$%hd121545121616%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121544121612%_)))
                            (_%$%tl121546121619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121544121612%_))))
                        (if (gx#stx-pair? _%$%tl121546121619%_)
                            (let ((_%$%e121547121622%_
                                   (gx#syntax-e _%$%tl121546121619%_)))
                              (let ((_%$%hd121548121626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121547121622%_)))
                                    (_%$%tl121549121629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121547121622%_))))
                                (if (gx#stx-null? _%$%tl121549121629%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd121539121596%_
                                            (cons _%$%hd121545121616%_ '()))
                                      (cons _%$%hd121536121586%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd121533121576%_ '()))
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
                            (cons _%$%hd121533121576%_
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
                                  (cons _%$%hd121548121626%_ '()))
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
                                  (cons (cons (cons _%$%hd121542121606%_
                                                    (cons _%$%hd121545121616%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd121533121576%_
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
                                    (_%$%g121521121555%_
                                     _%$%g121522121559%_))))
                            (_%$%g121521121555%_ _%$%g121522121559%_))))
                    (_%$%g121521121555%_ _%$%g121522121559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121521121555%_
                                                     _%$%g121522121559%_))))
                                            (_%$%g121521121555%_
                                             _%$%g121522121559%_))))
                                    (_%$%g121521121555%_
                                     _%$%g121522121559%_))))
                            (_%$%g121521121555%_ _%$%g121522121559%_))))
                    (_%$%g121521121555%_ _%$%g121522121559%_)))))
        (_%$%g121520121666%_ _%$stx121517%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx121670%_)
      (let* ((_%$%g121674121716%_
              (lambda (_%$%g121675121712%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121675121712%_)))
             (_%$%g121673121855%_
              (lambda (_%$%g121675121720%_)
                (if (gx#stx-pair? _%$%g121675121720%_)
                    (let ((_%$%e121684121723%_
                           (gx#syntax-e _%$%g121675121720%_)))
                      (let ((_%$%hd121685121727%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121684121723%_)))
                            (_%$%tl121686121730%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121684121723%_))))
                        (if (gx#stx-pair? _%$%tl121686121730%_)
                            (let ((_%$%e121687121733%_
                                   (gx#syntax-e _%$%tl121686121730%_)))
                              (let ((_%$%hd121688121737%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121687121733%_)))
                                    (_%$%tl121689121740%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121687121733%_))))
                                (if (gx#stx-pair? _%$%tl121689121740%_)
                                    (let ((_%$%e121690121743%_
                                           (gx#syntax-e _%$%tl121689121740%_)))
                                      (let ((_%$%hd121691121747%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121690121743%_)))
                                            (_%$%tl121692121750%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121690121743%_))))
                                        (if (gx#stx-pair? _%$%tl121692121750%_)
                                            (let ((_%$%e121693121753%_
                                                   (gx#syntax-e
                                                    _%$%tl121692121750%_)))
                                              (let ((_%$%hd121694121757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121693121753%_)))
                                                    (_%$%tl121695121760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121693121753%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl121695121760%_)
                                                    (let ((_%$%e121696121763%_
                                                           (gx#syntax-e
                                                            _%$%tl121695121760%_)))
                                                      (let ((_%$%hd121697121767%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e121696121763%_)))
                    (_%$%tl121698121770%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e121696121763%_))))
                (if (gx#stx-pair? _%$%tl121698121770%_)
                    (let ((_%$%e121699121773%_
                           (gx#syntax-e _%$%tl121698121770%_)))
                      (let ((_%$%hd121700121777%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121699121773%_)))
                            (_%$%tl121701121780%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121699121773%_))))
                        (if (gx#stx-pair? _%$%tl121701121780%_)
                            (let ((_%$%e121702121783%_
                                   (gx#syntax-e _%$%tl121701121780%_)))
                              (let ((_%$%hd121703121787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121702121783%_)))
                                    (_%$%tl121704121790%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121702121783%_))))
                                (if (gx#stx-pair? _%$%tl121704121790%_)
                                    (let ((_%$%e121705121793%_
                                           (gx#syntax-e _%$%tl121704121790%_)))
                                      (let ((_%$%hd121706121797%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121705121793%_)))
                                            (_%$%tl121707121800%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121705121793%_))))
                                        (if (gx#stx-pair? _%$%tl121707121800%_)
                                            (let ((_%$%e121708121803%_
                                                   (gx#syntax-e
                                                    _%$%tl121707121800%_)))
                                              (let ((_%$%hd121709121807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121708121803%_)))
                                                    (_%$%tl121710121810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121708121803%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl121710121810%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd121694121757%_
                                                            (cons _%$%hd121700121777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd121691121747%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd121688121737%_
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
                                            (cons _%$%hd121688121737%_
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
                                                    (cons _%$%hd121688121737%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd121700121777%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd121688121737%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd121703121787%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd121709121807%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd121688121737%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd121700121777%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd121688121737%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd121703121787%_ '()))))
                  (cons (cons _%$%hd121706121797%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd121697121767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd121700121777%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd121688121737%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd121700121777%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd121688121737%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd121703121787%_
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
                                                    (_%$%g121674121716%_
                                                     _%$%g121675121720%_))))
                                            (_%$%g121674121716%_
                                             _%$%g121675121720%_))))
                                    (_%$%g121674121716%_
                                     _%$%g121675121720%_))))
                            (_%$%g121674121716%_ _%$%g121675121720%_))))
                    (_%$%g121674121716%_ _%$%g121675121720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121674121716%_
                                                     _%$%g121675121720%_))))
                                            (_%$%g121674121716%_
                                             _%$%g121675121720%_))))
                                    (_%$%g121674121716%_
                                     _%$%g121675121720%_))))
                            (_%$%g121674121716%_ _%$%g121675121720%_))))
                    (_%$%g121674121716%_ _%$%g121675121720%_)))))
        (_%$%g121673121855%_ _%$stx121670%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx121859%_)
      (let* ((_%$%g121863121909%_
              (lambda (_%$%g121864121905%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121864121905%_)))
             (_%$%g121862122062%_
              (lambda (_%$%g121864121913%_)
                (if (gx#stx-pair? _%$%g121864121913%_)
                    (let ((_%$%e121874121916%_
                           (gx#syntax-e _%$%g121864121913%_)))
                      (let ((_%$%hd121875121920%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121874121916%_)))
                            (_%$%tl121876121923%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121874121916%_))))
                        (if (gx#stx-pair? _%$%tl121876121923%_)
                            (let ((_%$%e121877121926%_
                                   (gx#syntax-e _%$%tl121876121923%_)))
                              (let ((_%$%hd121878121930%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121877121926%_)))
                                    (_%$%tl121879121933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121877121926%_))))
                                (if (gx#stx-pair? _%$%tl121879121933%_)
                                    (let ((_%$%e121880121936%_
                                           (gx#syntax-e _%$%tl121879121933%_)))
                                      (let ((_%$%hd121881121940%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121880121936%_)))
                                            (_%$%tl121882121943%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121880121936%_))))
                                        (if (gx#stx-pair? _%$%tl121882121943%_)
                                            (let ((_%$%e121883121946%_
                                                   (gx#syntax-e
                                                    _%$%tl121882121943%_)))
                                              (let ((_%$%hd121884121950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121883121946%_)))
                                                    (_%$%tl121885121953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121883121946%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl121885121953%_)
                                                    (let ((_%$%e121886121956%_
                                                           (gx#syntax-e
                                                            _%$%tl121885121953%_)))
                                                      (let ((_%$%hd121887121960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e121886121956%_)))
                    (_%$%tl121888121963%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e121886121956%_))))
                (if (gx#stx-pair? _%$%tl121888121963%_)
                    (let ((_%$%e121889121966%_
                           (gx#syntax-e _%$%tl121888121963%_)))
                      (let ((_%$%hd121890121970%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121889121966%_)))
                            (_%$%tl121891121973%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121889121966%_))))
                        (if (gx#stx-pair? _%$%tl121891121973%_)
                            (let ((_%$%e121892121976%_
                                   (gx#syntax-e _%$%tl121891121973%_)))
                              (let ((_%$%hd121893121980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121892121976%_)))
                                    (_%$%tl121894121983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121892121976%_))))
                                (if (gx#stx-pair? _%$%tl121894121983%_)
                                    (let ((_%$%e121895121986%_
                                           (gx#syntax-e _%$%tl121894121983%_)))
                                      (let ((_%$%hd121896121990%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121895121986%_)))
                                            (_%$%tl121897121993%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121895121986%_))))
                                        (if (gx#stx-pair? _%$%tl121897121993%_)
                                            (let ((_%$%e121898121996%_
                                                   (gx#syntax-e
                                                    _%$%tl121897121993%_)))
                                              (let ((_%$%hd121899122000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121898121996%_)))
                                                    (_%$%tl121900122003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121898121996%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl121900122003%_)
                                                    (let ((_%$%e121901122006%_
                                                           (gx#syntax-e
                                                            _%$%tl121900122003%_)))
                                                      (let ((_%$%hd121902122010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e121901122006%_)))
                    (_%$%tl121903122013%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e121901122006%_))))
                (if (gx#stx-null? _%$%tl121903122013%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd121884121950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd121890121970%_ '()))
                      (cons _%$%hd121881121940%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd121878121930%_
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
                                                    (cons _%$%hd121878121930%_
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
                                                            (cons _%$%hd121878121930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd121890121970%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd121878121930%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd121893121980%_
                                                  (cons _%$%hd121896121990%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd121902122010%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd121878121930%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd121890121970%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd121878121930%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd121893121980%_
                                                        (cons _%$%hd121896121990%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd121899122000%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd121887121960%_
                                    (cons _%$%hd121890121970%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd121878121930%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd121890121970%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd121878121930%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd121893121980%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd121878121930%_
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
                    (_%$%g121863121909%_ _%$%g121864121913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121863121909%_
                                                     _%$%g121864121913%_))))
                                            (_%$%g121863121909%_
                                             _%$%g121864121913%_))))
                                    (_%$%g121863121909%_
                                     _%$%g121864121913%_))))
                            (_%$%g121863121909%_ _%$%g121864121913%_))))
                    (_%$%g121863121909%_ _%$%g121864121913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121863121909%_
                                                     _%$%g121864121913%_))))
                                            (_%$%g121863121909%_
                                             _%$%g121864121913%_))))
                                    (_%$%g121863121909%_
                                     _%$%g121864121913%_))))
                            (_%$%g121863121909%_ _%$%g121864121913%_))))
                    (_%$%g121863121909%_ _%$%g121864121913%_)))))
        (_%$%g121862122062%_ _%$stx121859%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx122066%_)
      (let* ((_%$%g122070122104%_
              (lambda (_%$%g122071122100%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g122071122100%_)))
             (_%$%g122069122215%_
              (lambda (_%$%g122071122108%_)
                (if (gx#stx-pair? _%$%g122071122108%_)
                    (let ((_%$%e122078122111%_
                           (gx#syntax-e _%$%g122071122108%_)))
                      (let ((_%$%hd122079122115%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122078122111%_)))
                            (_%$%tl122080122118%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122078122111%_))))
                        (if (gx#stx-pair? _%$%tl122080122118%_)
                            (let ((_%$%e122081122121%_
                                   (gx#syntax-e _%$%tl122080122118%_)))
                              (let ((_%$%hd122082122125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122081122121%_)))
                                    (_%$%tl122083122128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122081122121%_))))
                                (if (gx#stx-pair? _%$%tl122083122128%_)
                                    (let ((_%$%e122084122131%_
                                           (gx#syntax-e _%$%tl122083122128%_)))
                                      (let ((_%$%hd122085122135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e122084122131%_)))
                                            (_%$%tl122086122138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e122084122131%_))))
                                        (if (gx#stx-pair? _%$%tl122086122138%_)
                                            (let ((_%$%e122087122141%_
                                                   (gx#syntax-e
                                                    _%$%tl122086122138%_)))
                                              (let ((_%$%hd122088122145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e122087122141%_)))
                                                    (_%$%tl122089122148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e122087122141%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl122089122148%_)
                                                    (let ((_%$%e122090122151%_
                                                           (gx#syntax-e
                                                            _%$%tl122089122148%_)))
                                                      (let ((_%$%hd122091122155%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e122090122151%_)))
                    (_%$%tl122092122158%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e122090122151%_))))
                (if (gx#stx-pair? _%$%tl122092122158%_)
                    (let ((_%$%e122093122161%_
                           (gx#syntax-e _%$%tl122092122158%_)))
                      (let ((_%$%hd122094122165%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122093122161%_)))
                            (_%$%tl122095122168%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122093122161%_))))
                        (if (gx#stx-pair? _%$%tl122095122168%_)
                            (let ((_%$%e122096122171%_
                                   (gx#syntax-e _%$%tl122095122168%_)))
                              (let ((_%$%hd122097122175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122096122171%_)))
                                    (_%$%tl122098122178%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122096122171%_))))
                                (if (gx#stx-null? _%$%tl122098122178%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd122088122145%_
                                            (cons _%$%hd122094122165%_ '()))
                                      (cons _%$%hd122085122135%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd122082122125%_ '()))
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
                            (cons _%$%hd122082122125%_
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
                                  (cons (cons (cons _%$%hd122091122155%_
                                                    (cons _%$%hd122094122165%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd122082122125%_
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
                        (cons _%$%hd122082122125%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd122097122175%_ '()) '()))))
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
                                    (_%$%g122070122104%_
                                     _%$%g122071122108%_))))
                            (_%$%g122070122104%_ _%$%g122071122108%_))))
                    (_%$%g122070122104%_ _%$%g122071122108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g122070122104%_
                                                     _%$%g122071122108%_))))
                                            (_%$%g122070122104%_
                                             _%$%g122071122108%_))))
                                    (_%$%g122070122104%_
                                     _%$%g122071122108%_))))
                            (_%$%g122070122104%_ _%$%g122071122108%_))))
                    (_%$%g122070122104%_ _%$%g122071122108%_)))))
        (_%$%g122069122215%_ _%$stx122066%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx122219%_)
      (let* ((_%$%g122223122241%_
              (lambda (_%$%g122224122237%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g122224122237%_)))
             (_%$%g122222122296%_
              (lambda (_%$%g122224122245%_)
                (if (gx#stx-pair? _%$%g122224122245%_)
                    (let ((_%$%e122227122248%_
                           (gx#syntax-e _%$%g122224122245%_)))
                      (let ((_%$%hd122228122252%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122227122248%_)))
                            (_%$%tl122229122255%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122227122248%_))))
                        (if (gx#stx-pair? _%$%tl122229122255%_)
                            (let ((_%$%e122230122258%_
                                   (gx#syntax-e _%$%tl122229122255%_)))
                              (let ((_%$%hd122231122262%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122230122258%_)))
                                    (_%$%tl122232122265%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122230122258%_))))
                                (if (gx#stx-pair? _%$%tl122232122265%_)
                                    (let ((_%$%e122233122268%_
                                           (gx#syntax-e _%$%tl122232122265%_)))
                                      (let ((_%$%hd122234122272%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e122233122268%_)))
                                            (_%$%tl122235122275%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e122233122268%_))))
                                        (if (gx#stx-null? _%$%tl122235122275%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd122231122262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd122234122272%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g122223122241%_
                                             _%$%g122224122245%_))))
                                    (_%$%g122223122241%_
                                     _%$%g122224122245%_))))
                            (_%$%g122223122241%_ _%$%g122224122245%_))))
                    (_%$%g122223122241%_ _%$%g122224122245%_)))))
        (_%$%g122222122296%_ _%$stx122219%_)))))

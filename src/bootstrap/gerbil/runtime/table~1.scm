(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx118376%_)
      (let* ((_%$%g118380118398%_
              (lambda (_%$%g118381118394%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118381118394%_)))
             (_%$%g118379118454%_
              (lambda (_%$%g118381118402%_)
                (if (gx#stx-pair? _%$%g118381118402%_)
                    (let ((_%$%e118384118405%_
                           (gx#syntax-e _%$%g118381118402%_)))
                      (let ((_%$%hd118385118409%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118384118405%_)))
                            (_%$%tl118386118412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118384118405%_))))
                        (if (gx#stx-pair? _%$%tl118386118412%_)
                            (let ((_%$%e118387118415%_
                                   (gx#syntax-e _%$%tl118386118412%_)))
                              (let ((_%$%hd118388118419%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118387118415%_)))
                                    (_%$%tl118389118422%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118387118415%_))))
                                (if (gx#stx-pair? _%$%tl118389118422%_)
                                    (let ((_%$%e118390118425%_
                                           (gx#syntax-e _%$%tl118389118422%_)))
                                      (let ((_%$%hd118391118429%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118390118425%_)))
                                            (_%$%tl118392118432%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118390118425%_))))
                                        (if (gx#stx-null? _%$%tl118392118432%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd118388118419%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd118391118429%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g118380118398%_
                                             _%$%g118381118402%_))))
                                    (_%$%g118380118398%_
                                     _%$%g118381118402%_))))
                            (_%$%g118380118398%_ _%$%g118381118402%_))))
                    (_%$%g118380118398%_ _%$%g118381118402%_)))))
        (_%$%g118379118454%_ _%$stx118376%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx118458%_)
      (let* ((_%$%g118461118483%_
              (lambda (_%$%g118462118479%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118462118479%_)))
             (_%$%g118460118796%_
              (lambda (_%$%g118462118487%_)
                (if (gx#stx-pair? _%$%g118462118487%_)
                    (let ((_%$%e118466118490%_
                           (gx#syntax-e _%$%g118462118487%_)))
                      (let ((_%$%hd118467118494%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118466118490%_)))
                            (_%$%tl118468118497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118466118490%_))))
                        (if (gx#stx-pair? _%$%tl118468118497%_)
                            (let ((_%$%e118469118500%_
                                   (gx#syntax-e _%$%tl118468118497%_)))
                              (let ((_%$%hd118470118504%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118469118500%_)))
                                    (_%$%tl118471118507%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118469118500%_))))
                                (if (gx#stx-pair? _%$%tl118471118507%_)
                                    (let ((_%$%e118472118510%_
                                           (gx#syntax-e _%$%tl118471118507%_)))
                                      (let ((_%$%hd118473118514%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118472118510%_)))
                                            (_%$%tl118474118517%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118472118510%_))))
                                        (if (gx#stx-pair? _%$%tl118474118517%_)
                                            (let ((_%$%e118475118520%_
                                                   (gx#syntax-e
                                                    _%$%tl118474118517%_)))
                                              (let ((_%$%hd118476118524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118475118520%_)))
                                                    (_%$%tl118477118527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118475118520%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl118477118527%_)
                                                    (let* ((_%$%g118552118607%_
                                                            (lambda (_%$%g118553118603%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g118553118603%_)))
                                                           (_%$%g118551118792%_
                                                            (lambda (_%$%g118553118611%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g118553118611%_)
                          (let ((_%$%e118566118614%_
                                 (gx#syntax-e _%$%g118553118611%_)))
                            (let ((_%$%hd118567118618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e118566118614%_)))
                                  (_%$%tl118568118621%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e118566118614%_))))
                              (if (gx#stx-pair? _%$%tl118568118621%_)
                                  (let ((_%$%e118569118624%_
                                         (gx#syntax-e _%$%tl118568118621%_)))
                                    (let ((_%$%hd118570118628%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e118569118624%_)))
                                          (_%$%tl118571118631%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e118569118624%_))))
                                      (if (gx#stx-pair? _%$%tl118571118631%_)
                                          (let ((_%$%e118572118634%_
                                                 (gx#syntax-e
                                                  _%$%tl118571118631%_)))
                                            (let ((_%$%hd118573118638%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e118572118634%_)))
                                                  (_%$%tl118574118641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e118572118634%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl118574118641%_)
                                                  (let ((_%$%e118575118644%_
                                                         (gx#syntax-e
                                                          _%$%tl118574118641%_)))
                                                    (let ((_%$%hd118576118648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e118575118644%_)))
                                                          (_%$%tl118577118651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e118575118644%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl118577118651%_)
                                                          (let ((_%$%e118578118654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl118577118651%_)))
                    (let ((_%$%hd118579118658%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e118578118654%_)))
                          (_%$%tl118580118661%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e118578118654%_))))
                      (if (gx#stx-pair? _%$%tl118580118661%_)
                          (let ((_%$%e118581118664%_
                                 (gx#syntax-e _%$%tl118580118661%_)))
                            (let ((_%$%hd118582118668%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e118581118664%_)))
                                  (_%$%tl118583118671%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e118581118664%_))))
                              (if (gx#stx-pair? _%$%tl118583118671%_)
                                  (let ((_%$%e118584118674%_
                                         (gx#syntax-e _%$%tl118583118671%_)))
                                    (let ((_%$%hd118585118678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e118584118674%_)))
                                          (_%$%tl118586118681%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e118584118674%_))))
                                      (if (gx#stx-pair? _%$%tl118586118681%_)
                                          (let ((_%$%e118587118684%_
                                                 (gx#syntax-e
                                                  _%$%tl118586118681%_)))
                                            (let ((_%$%hd118588118688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e118587118684%_)))
                                                  (_%$%tl118589118691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e118587118684%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl118589118691%_)
                                                  (let ((_%$%e118590118694%_
                                                         (gx#syntax-e
                                                          _%$%tl118589118691%_)))
                                                    (let ((_%$%hd118591118698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e118590118694%_)))
                                                          (_%$%tl118592118701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e118590118694%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl118592118701%_)
                                                          (let ((_%$%e118593118704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl118592118701%_)))
                    (let ((_%$%hd118594118708%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e118593118704%_)))
                          (_%$%tl118595118711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e118593118704%_))))
                      (if (gx#stx-pair? _%$%tl118595118711%_)
                          (let ((_%$%e118596118714%_
                                 (gx#syntax-e _%$%tl118595118711%_)))
                            (let ((_%$%hd118597118718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e118596118714%_)))
                                  (_%$%tl118598118721%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e118596118714%_))))
                              (if (gx#stx-pair? _%$%tl118598118721%_)
                                  (let ((_%$%e118599118724%_
                                         (gx#syntax-e _%$%tl118598118721%_)))
                                    (let ((_%$%hd118600118728%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e118599118724%_)))
                                          (_%$%tl118601118731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e118599118724%_))))
                                      (if (gx#stx-null? _%$%tl118601118731%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd118567118618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd118473118514%_
                                                  (cons _%$%hd118476118524%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd118570118628%_
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
                                                  (cons _%$%hd118473118514%_
                                                        (cons _%$%hd118476118524%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd118573118638%_
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
                                        (cons _%$%hd118473118514%_
                                              (cons _%$%hd118476118524%_
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
                                      (cons (cons _%$%hd118576118648%_
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
                                                              (cons (cons _%$%hd118573118638%_
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
                                            (cons (cons _%$%hd118579118658%_
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
                                                    (cons _%$%hd118473118514%_
                                                          (cons _%$%hd118476118524%_
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
                                                  (cons (cons _%$%hd118582118668%_
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
                      (cons (cons _%$%hd118579118658%_
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
                                                        (cons (cons _%$%hd118585118678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd118582118668%_
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
                                                              (cons (cons _%$%hd118588118688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd118591118698%_
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
                              (cons _%$%hd118473118514%_
                                    (cons _%$%hd118476118524%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd118591118698%_
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
                            (cons (cons _%$%hd118591118698%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd118591118698%_
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
                                        (cons (cons _%$%hd118588118688%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd118591118698%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd118594118708%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd118591118698%_
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
                                                          (cons (cons _%$%hd118591118698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd118591118698%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd118597118718%_
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
                                                (cons _%$%hd118473118514%_
                                                      (cons _%$%hd118476118524%_
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
                                              (cons (cons _%$%hd118600118728%_
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
                              (cons (cons _%$%hd118597118718%_
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
                                          (_%$%g118552118607%_
                                           _%$%g118553118611%_))))
                                  (_%$%g118552118607%_ _%$%g118553118611%_))))
                          (_%$%g118552118607%_ _%$%g118553118611%_))))
                  (_%$%g118552118607%_ _%$%g118553118611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g118552118607%_
                                                   _%$%g118553118611%_))))
                                          (_%$%g118552118607%_
                                           _%$%g118553118611%_))))
                                  (_%$%g118552118607%_ _%$%g118553118611%_))))
                          (_%$%g118552118607%_ _%$%g118553118611%_))))
                  (_%$%g118552118607%_ _%$%g118553118611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g118552118607%_
                                                   _%$%g118553118611%_))))
                                          (_%$%g118552118607%_
                                           _%$%g118553118611%_))))
                                  (_%$%g118552118607%_ _%$%g118553118611%_))))
                          (_%$%g118552118607%_ _%$%g118553118611%_)))))
              (_%$%g118551118792%_
               (list (gx#stx-identifier
                      _%$%hd118470118504%_
                      '"make-"
                      _%$%hd118470118504%_)
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      '"make-"
                      _%$%hd118470118504%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      '"__"
                      _%$%hd118470118504%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      '"__"
                      _%$%hd118470118504%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd118470118504%_
                      _%$%hd118470118504%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118461118483%_
                                                     _%$%g118462118487%_))))
                                            (_%$%g118461118483%_
                                             _%$%g118462118487%_))))
                                    (_%$%g118461118483%_
                                     _%$%g118462118487%_))))
                            (_%$%g118461118483%_ _%$%g118462118487%_))))
                    (_%$%g118461118483%_ _%$%g118462118487%_)))))
        (_%$%g118460118796%_ _%stx118458%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx118800%_)
      (let* ((_%$%g118804118826%_
              (lambda (_%$%g118805118822%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118805118822%_)))
             (_%$%g118803118895%_
              (lambda (_%$%g118805118830%_)
                (if (gx#stx-pair? _%$%g118805118830%_)
                    (let ((_%$%e118809118833%_
                           (gx#syntax-e _%$%g118805118830%_)))
                      (let ((_%$%hd118810118837%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118809118833%_)))
                            (_%$%tl118811118840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118809118833%_))))
                        (if (gx#stx-pair? _%$%tl118811118840%_)
                            (let ((_%$%e118812118843%_
                                   (gx#syntax-e _%$%tl118811118840%_)))
                              (let ((_%$%hd118813118847%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118812118843%_)))
                                    (_%$%tl118814118850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118812118843%_))))
                                (if (gx#stx-pair? _%$%tl118814118850%_)
                                    (let ((_%$%e118815118853%_
                                           (gx#syntax-e _%$%tl118814118850%_)))
                                      (let ((_%$%hd118816118857%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118815118853%_)))
                                            (_%$%tl118817118860%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118815118853%_))))
                                        (if (gx#stx-pair? _%$%tl118817118860%_)
                                            (let ((_%$%e118818118863%_
                                                   (gx#syntax-e
                                                    _%$%tl118817118860%_)))
                                              (let ((_%$%hd118819118867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118818118863%_)))
                                                    (_%$%tl118820118870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118818118863%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl118820118870%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd118813118847%_
                                                (cons _%$%hd118816118857%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd118816118857%_
                                (cons _%$%hd118816118857%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd118819118867%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118804118826%_
                                                     _%$%g118805118830%_))))
                                            (_%$%g118804118826%_
                                             _%$%g118805118830%_))))
                                    (_%$%g118804118826%_
                                     _%$%g118805118830%_))))
                            (_%$%g118804118826%_ _%$%g118805118830%_))))
                    (_%$%g118804118826%_ _%$%g118805118830%_)))))
        (_%$%g118803118895%_ _%$stx118800%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx118899%_)
      (let* ((_%$%g118903118937%_
              (lambda (_%$%g118904118933%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118904118933%_)))
             (_%$%g118902119048%_
              (lambda (_%$%g118904118941%_)
                (if (gx#stx-pair? _%$%g118904118941%_)
                    (let ((_%$%e118911118944%_
                           (gx#syntax-e _%$%g118904118941%_)))
                      (let ((_%$%hd118912118948%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118911118944%_)))
                            (_%$%tl118913118951%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118911118944%_))))
                        (if (gx#stx-pair? _%$%tl118913118951%_)
                            (let ((_%$%e118914118954%_
                                   (gx#syntax-e _%$%tl118913118951%_)))
                              (let ((_%$%hd118915118958%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118914118954%_)))
                                    (_%$%tl118916118961%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118914118954%_))))
                                (if (gx#stx-pair? _%$%tl118916118961%_)
                                    (let ((_%$%e118917118964%_
                                           (gx#syntax-e _%$%tl118916118961%_)))
                                      (let ((_%$%hd118918118968%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118917118964%_)))
                                            (_%$%tl118919118971%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118917118964%_))))
                                        (if (gx#stx-pair? _%$%tl118919118971%_)
                                            (let ((_%$%e118920118974%_
                                                   (gx#syntax-e
                                                    _%$%tl118919118971%_)))
                                              (let ((_%$%hd118921118978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118920118974%_)))
                                                    (_%$%tl118922118981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118920118974%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl118922118981%_)
                                                    (let ((_%$%e118923118984%_
                                                           (gx#syntax-e
                                                            _%$%tl118922118981%_)))
                                                      (let ((_%$%hd118924118988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e118923118984%_)))
                    (_%$%tl118925118991%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e118923118984%_))))
                (if (gx#stx-pair? _%$%tl118925118991%_)
                    (let ((_%$%e118926118994%_
                           (gx#syntax-e _%$%tl118925118991%_)))
                      (let ((_%$%hd118927118998%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118926118994%_)))
                            (_%$%tl118928119001%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118926118994%_))))
                        (if (gx#stx-pair? _%$%tl118928119001%_)
                            (let ((_%$%e118929119004%_
                                   (gx#syntax-e _%$%tl118928119001%_)))
                              (let ((_%$%hd118930119008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118929119004%_)))
                                    (_%$%tl118931119011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118929119004%_))))
                                (if (gx#stx-null? _%$%tl118931119011%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd118921118978%_
                                            (cons _%$%hd118927118998%_ '()))
                                      (cons _%$%hd118918118968%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd118915118958%_ '()))
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
                            (cons _%$%hd118915118958%_
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
                                  (cons _%$%hd118930119008%_ '()))
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
                                  (cons (cons (cons _%$%hd118924118988%_
                                                    (cons _%$%hd118927118998%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd118915118958%_
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
                                    (_%$%g118903118937%_
                                     _%$%g118904118941%_))))
                            (_%$%g118903118937%_ _%$%g118904118941%_))))
                    (_%$%g118903118937%_ _%$%g118904118941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118903118937%_
                                                     _%$%g118904118941%_))))
                                            (_%$%g118903118937%_
                                             _%$%g118904118941%_))))
                                    (_%$%g118903118937%_
                                     _%$%g118904118941%_))))
                            (_%$%g118903118937%_ _%$%g118904118941%_))))
                    (_%$%g118903118937%_ _%$%g118904118941%_)))))
        (_%$%g118902119048%_ _%$stx118899%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx119052%_)
      (let* ((_%$%g119056119098%_
              (lambda (_%$%g119057119094%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119057119094%_)))
             (_%$%g119055119237%_
              (lambda (_%$%g119057119102%_)
                (if (gx#stx-pair? _%$%g119057119102%_)
                    (let ((_%$%e119066119105%_
                           (gx#syntax-e _%$%g119057119102%_)))
                      (let ((_%$%hd119067119109%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119066119105%_)))
                            (_%$%tl119068119112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119066119105%_))))
                        (if (gx#stx-pair? _%$%tl119068119112%_)
                            (let ((_%$%e119069119115%_
                                   (gx#syntax-e _%$%tl119068119112%_)))
                              (let ((_%$%hd119070119119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119069119115%_)))
                                    (_%$%tl119071119122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119069119115%_))))
                                (if (gx#stx-pair? _%$%tl119071119122%_)
                                    (let ((_%$%e119072119125%_
                                           (gx#syntax-e _%$%tl119071119122%_)))
                                      (let ((_%$%hd119073119129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119072119125%_)))
                                            (_%$%tl119074119132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119072119125%_))))
                                        (if (gx#stx-pair? _%$%tl119074119132%_)
                                            (let ((_%$%e119075119135%_
                                                   (gx#syntax-e
                                                    _%$%tl119074119132%_)))
                                              (let ((_%$%hd119076119139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119075119135%_)))
                                                    (_%$%tl119077119142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119075119135%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119077119142%_)
                                                    (let ((_%$%e119078119145%_
                                                           (gx#syntax-e
                                                            _%$%tl119077119142%_)))
                                                      (let ((_%$%hd119079119149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119078119145%_)))
                    (_%$%tl119080119152%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119078119145%_))))
                (if (gx#stx-pair? _%$%tl119080119152%_)
                    (let ((_%$%e119081119155%_
                           (gx#syntax-e _%$%tl119080119152%_)))
                      (let ((_%$%hd119082119159%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119081119155%_)))
                            (_%$%tl119083119162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119081119155%_))))
                        (if (gx#stx-pair? _%$%tl119083119162%_)
                            (let ((_%$%e119084119165%_
                                   (gx#syntax-e _%$%tl119083119162%_)))
                              (let ((_%$%hd119085119169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119084119165%_)))
                                    (_%$%tl119086119172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119084119165%_))))
                                (if (gx#stx-pair? _%$%tl119086119172%_)
                                    (let ((_%$%e119087119175%_
                                           (gx#syntax-e _%$%tl119086119172%_)))
                                      (let ((_%$%hd119088119179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119087119175%_)))
                                            (_%$%tl119089119182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119087119175%_))))
                                        (if (gx#stx-pair? _%$%tl119089119182%_)
                                            (let ((_%$%e119090119185%_
                                                   (gx#syntax-e
                                                    _%$%tl119089119182%_)))
                                              (let ((_%$%hd119091119189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119090119185%_)))
                                                    (_%$%tl119092119192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119090119185%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl119092119192%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd119076119139%_
                                                            (cons _%$%hd119082119159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd119073119129%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd119070119119%_
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
                                            (cons _%$%hd119070119119%_
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
                                                    (cons _%$%hd119070119119%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd119082119159%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd119070119119%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd119085119169%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd119091119189%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd119070119119%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd119082119159%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd119070119119%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd119085119169%_ '()))))
                  (cons (cons _%$%hd119088119179%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd119079119149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd119082119159%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd119070119119%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd119082119159%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd119070119119%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd119085119169%_
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
                                                    (_%$%g119056119098%_
                                                     _%$%g119057119102%_))))
                                            (_%$%g119056119098%_
                                             _%$%g119057119102%_))))
                                    (_%$%g119056119098%_
                                     _%$%g119057119102%_))))
                            (_%$%g119056119098%_ _%$%g119057119102%_))))
                    (_%$%g119056119098%_ _%$%g119057119102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119056119098%_
                                                     _%$%g119057119102%_))))
                                            (_%$%g119056119098%_
                                             _%$%g119057119102%_))))
                                    (_%$%g119056119098%_
                                     _%$%g119057119102%_))))
                            (_%$%g119056119098%_ _%$%g119057119102%_))))
                    (_%$%g119056119098%_ _%$%g119057119102%_)))))
        (_%$%g119055119237%_ _%$stx119052%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx119241%_)
      (let* ((_%$%g119245119291%_
              (lambda (_%$%g119246119287%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119246119287%_)))
             (_%$%g119244119444%_
              (lambda (_%$%g119246119295%_)
                (if (gx#stx-pair? _%$%g119246119295%_)
                    (let ((_%$%e119256119298%_
                           (gx#syntax-e _%$%g119246119295%_)))
                      (let ((_%$%hd119257119302%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119256119298%_)))
                            (_%$%tl119258119305%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119256119298%_))))
                        (if (gx#stx-pair? _%$%tl119258119305%_)
                            (let ((_%$%e119259119308%_
                                   (gx#syntax-e _%$%tl119258119305%_)))
                              (let ((_%$%hd119260119312%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119259119308%_)))
                                    (_%$%tl119261119315%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119259119308%_))))
                                (if (gx#stx-pair? _%$%tl119261119315%_)
                                    (let ((_%$%e119262119318%_
                                           (gx#syntax-e _%$%tl119261119315%_)))
                                      (let ((_%$%hd119263119322%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119262119318%_)))
                                            (_%$%tl119264119325%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119262119318%_))))
                                        (if (gx#stx-pair? _%$%tl119264119325%_)
                                            (let ((_%$%e119265119328%_
                                                   (gx#syntax-e
                                                    _%$%tl119264119325%_)))
                                              (let ((_%$%hd119266119332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119265119328%_)))
                                                    (_%$%tl119267119335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119265119328%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119267119335%_)
                                                    (let ((_%$%e119268119338%_
                                                           (gx#syntax-e
                                                            _%$%tl119267119335%_)))
                                                      (let ((_%$%hd119269119342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119268119338%_)))
                    (_%$%tl119270119345%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119268119338%_))))
                (if (gx#stx-pair? _%$%tl119270119345%_)
                    (let ((_%$%e119271119348%_
                           (gx#syntax-e _%$%tl119270119345%_)))
                      (let ((_%$%hd119272119352%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119271119348%_)))
                            (_%$%tl119273119355%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119271119348%_))))
                        (if (gx#stx-pair? _%$%tl119273119355%_)
                            (let ((_%$%e119274119358%_
                                   (gx#syntax-e _%$%tl119273119355%_)))
                              (let ((_%$%hd119275119362%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119274119358%_)))
                                    (_%$%tl119276119365%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119274119358%_))))
                                (if (gx#stx-pair? _%$%tl119276119365%_)
                                    (let ((_%$%e119277119368%_
                                           (gx#syntax-e _%$%tl119276119365%_)))
                                      (let ((_%$%hd119278119372%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119277119368%_)))
                                            (_%$%tl119279119375%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119277119368%_))))
                                        (if (gx#stx-pair? _%$%tl119279119375%_)
                                            (let ((_%$%e119280119378%_
                                                   (gx#syntax-e
                                                    _%$%tl119279119375%_)))
                                              (let ((_%$%hd119281119382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119280119378%_)))
                                                    (_%$%tl119282119385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119280119378%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119282119385%_)
                                                    (let ((_%$%e119283119388%_
                                                           (gx#syntax-e
                                                            _%$%tl119282119385%_)))
                                                      (let ((_%$%hd119284119392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119283119388%_)))
                    (_%$%tl119285119395%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119283119388%_))))
                (if (gx#stx-null? _%$%tl119285119395%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd119266119332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd119272119352%_ '()))
                      (cons _%$%hd119263119322%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd119260119312%_
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
                                                    (cons _%$%hd119260119312%_
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
                                                            (cons _%$%hd119260119312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd119272119352%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd119260119312%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd119275119362%_
                                                  (cons _%$%hd119278119372%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd119284119392%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd119260119312%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd119272119352%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd119260119312%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd119275119362%_
                                                        (cons _%$%hd119278119372%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd119281119382%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd119269119342%_
                                    (cons _%$%hd119272119352%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd119260119312%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd119272119352%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd119260119312%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd119275119362%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd119260119312%_
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
                    (_%$%g119245119291%_ _%$%g119246119295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119245119291%_
                                                     _%$%g119246119295%_))))
                                            (_%$%g119245119291%_
                                             _%$%g119246119295%_))))
                                    (_%$%g119245119291%_
                                     _%$%g119246119295%_))))
                            (_%$%g119245119291%_ _%$%g119246119295%_))))
                    (_%$%g119245119291%_ _%$%g119246119295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119245119291%_
                                                     _%$%g119246119295%_))))
                                            (_%$%g119245119291%_
                                             _%$%g119246119295%_))))
                                    (_%$%g119245119291%_
                                     _%$%g119246119295%_))))
                            (_%$%g119245119291%_ _%$%g119246119295%_))))
                    (_%$%g119245119291%_ _%$%g119246119295%_)))))
        (_%$%g119244119444%_ _%$stx119241%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx119448%_)
      (let* ((_%$%g119452119486%_
              (lambda (_%$%g119453119482%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119453119482%_)))
             (_%$%g119451119597%_
              (lambda (_%$%g119453119490%_)
                (if (gx#stx-pair? _%$%g119453119490%_)
                    (let ((_%$%e119460119493%_
                           (gx#syntax-e _%$%g119453119490%_)))
                      (let ((_%$%hd119461119497%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119460119493%_)))
                            (_%$%tl119462119500%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119460119493%_))))
                        (if (gx#stx-pair? _%$%tl119462119500%_)
                            (let ((_%$%e119463119503%_
                                   (gx#syntax-e _%$%tl119462119500%_)))
                              (let ((_%$%hd119464119507%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119463119503%_)))
                                    (_%$%tl119465119510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119463119503%_))))
                                (if (gx#stx-pair? _%$%tl119465119510%_)
                                    (let ((_%$%e119466119513%_
                                           (gx#syntax-e _%$%tl119465119510%_)))
                                      (let ((_%$%hd119467119517%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119466119513%_)))
                                            (_%$%tl119468119520%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119466119513%_))))
                                        (if (gx#stx-pair? _%$%tl119468119520%_)
                                            (let ((_%$%e119469119523%_
                                                   (gx#syntax-e
                                                    _%$%tl119468119520%_)))
                                              (let ((_%$%hd119470119527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119469119523%_)))
                                                    (_%$%tl119471119530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119469119523%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119471119530%_)
                                                    (let ((_%$%e119472119533%_
                                                           (gx#syntax-e
                                                            _%$%tl119471119530%_)))
                                                      (let ((_%$%hd119473119537%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119472119533%_)))
                    (_%$%tl119474119540%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119472119533%_))))
                (if (gx#stx-pair? _%$%tl119474119540%_)
                    (let ((_%$%e119475119543%_
                           (gx#syntax-e _%$%tl119474119540%_)))
                      (let ((_%$%hd119476119547%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119475119543%_)))
                            (_%$%tl119477119550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119475119543%_))))
                        (if (gx#stx-pair? _%$%tl119477119550%_)
                            (let ((_%$%e119478119553%_
                                   (gx#syntax-e _%$%tl119477119550%_)))
                              (let ((_%$%hd119479119557%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119478119553%_)))
                                    (_%$%tl119480119560%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119478119553%_))))
                                (if (gx#stx-null? _%$%tl119480119560%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd119470119527%_
                                            (cons _%$%hd119476119547%_ '()))
                                      (cons _%$%hd119467119517%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd119464119507%_ '()))
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
                            (cons _%$%hd119464119507%_
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
                                  (cons (cons (cons _%$%hd119473119537%_
                                                    (cons _%$%hd119476119547%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd119464119507%_
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
                        (cons _%$%hd119464119507%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd119479119557%_ '()) '()))))
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
                                    (_%$%g119452119486%_
                                     _%$%g119453119490%_))))
                            (_%$%g119452119486%_ _%$%g119453119490%_))))
                    (_%$%g119452119486%_ _%$%g119453119490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119452119486%_
                                                     _%$%g119453119490%_))))
                                            (_%$%g119452119486%_
                                             _%$%g119453119490%_))))
                                    (_%$%g119452119486%_
                                     _%$%g119453119490%_))))
                            (_%$%g119452119486%_ _%$%g119453119490%_))))
                    (_%$%g119452119486%_ _%$%g119453119490%_)))))
        (_%$%g119451119597%_ _%$stx119448%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx119601%_)
      (let* ((_%$%g119605119623%_
              (lambda (_%$%g119606119619%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119606119619%_)))
             (_%$%g119604119678%_
              (lambda (_%$%g119606119627%_)
                (if (gx#stx-pair? _%$%g119606119627%_)
                    (let ((_%$%e119609119630%_
                           (gx#syntax-e _%$%g119606119627%_)))
                      (let ((_%$%hd119610119634%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119609119630%_)))
                            (_%$%tl119611119637%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119609119630%_))))
                        (if (gx#stx-pair? _%$%tl119611119637%_)
                            (let ((_%$%e119612119640%_
                                   (gx#syntax-e _%$%tl119611119637%_)))
                              (let ((_%$%hd119613119644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119612119640%_)))
                                    (_%$%tl119614119647%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119612119640%_))))
                                (if (gx#stx-pair? _%$%tl119614119647%_)
                                    (let ((_%$%e119615119650%_
                                           (gx#syntax-e _%$%tl119614119647%_)))
                                      (let ((_%$%hd119616119654%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119615119650%_)))
                                            (_%$%tl119617119657%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119615119650%_))))
                                        (if (gx#stx-null? _%$%tl119617119657%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd119613119644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd119616119654%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g119605119623%_
                                             _%$%g119606119627%_))))
                                    (_%$%g119605119623%_
                                     _%$%g119606119627%_))))
                            (_%$%g119605119623%_ _%$%g119606119627%_))))
                    (_%$%g119605119623%_ _%$%g119606119627%_)))))
        (_%$%g119604119678%_ _%$stx119601%_)))))

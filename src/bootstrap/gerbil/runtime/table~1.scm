(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx118196%_)
      (let* ((_%$%g118200118218%_
              (lambda (_%$%g118201118214%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118201118214%_)))
             (_%$%g118199118274%_
              (lambda (_%$%g118201118222%_)
                (if (gx#stx-pair? _%$%g118201118222%_)
                    (let ((_%$%e118204118225%_
                           (gx#syntax-e _%$%g118201118222%_)))
                      (let ((_%$%hd118205118229%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118204118225%_)))
                            (_%$%tl118206118232%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118204118225%_))))
                        (if (gx#stx-pair? _%$%tl118206118232%_)
                            (let ((_%$%e118207118235%_
                                   (gx#syntax-e _%$%tl118206118232%_)))
                              (let ((_%$%hd118208118239%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118207118235%_)))
                                    (_%$%tl118209118242%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118207118235%_))))
                                (if (gx#stx-pair? _%$%tl118209118242%_)
                                    (let ((_%$%e118210118245%_
                                           (gx#syntax-e _%$%tl118209118242%_)))
                                      (let ((_%$%hd118211118249%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118210118245%_)))
                                            (_%$%tl118212118252%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118210118245%_))))
                                        (if (gx#stx-null? _%$%tl118212118252%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd118208118239%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd118211118249%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g118200118218%_
                                             _%$%g118201118222%_))))
                                    (_%$%g118200118218%_
                                     _%$%g118201118222%_))))
                            (_%$%g118200118218%_ _%$%g118201118222%_))))
                    (_%$%g118200118218%_ _%$%g118201118222%_)))))
        (_%$%g118199118274%_ _%$stx118196%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx118278%_)
      (let* ((_%$%g118281118303%_
              (lambda (_%$%g118282118299%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118282118299%_)))
             (_%$%g118280118616%_
              (lambda (_%$%g118282118307%_)
                (if (gx#stx-pair? _%$%g118282118307%_)
                    (let ((_%$%e118286118310%_
                           (gx#syntax-e _%$%g118282118307%_)))
                      (let ((_%$%hd118287118314%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118286118310%_)))
                            (_%$%tl118288118317%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118286118310%_))))
                        (if (gx#stx-pair? _%$%tl118288118317%_)
                            (let ((_%$%e118289118320%_
                                   (gx#syntax-e _%$%tl118288118317%_)))
                              (let ((_%$%hd118290118324%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118289118320%_)))
                                    (_%$%tl118291118327%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118289118320%_))))
                                (if (gx#stx-pair? _%$%tl118291118327%_)
                                    (let ((_%$%e118292118330%_
                                           (gx#syntax-e _%$%tl118291118327%_)))
                                      (let ((_%$%hd118293118334%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118292118330%_)))
                                            (_%$%tl118294118337%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118292118330%_))))
                                        (if (gx#stx-pair? _%$%tl118294118337%_)
                                            (let ((_%$%e118295118340%_
                                                   (gx#syntax-e
                                                    _%$%tl118294118337%_)))
                                              (let ((_%$%hd118296118344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118295118340%_)))
                                                    (_%$%tl118297118347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118295118340%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl118297118347%_)
                                                    (let* ((_%$%g118372118427%_
                                                            (lambda (_%$%g118373118423%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g118373118423%_)))
                                                           (_%$%g118371118612%_
                                                            (lambda (_%$%g118373118431%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g118373118431%_)
                          (let ((_%$%e118386118434%_
                                 (gx#syntax-e _%$%g118373118431%_)))
                            (let ((_%$%hd118387118438%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e118386118434%_)))
                                  (_%$%tl118388118441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e118386118434%_))))
                              (if (gx#stx-pair? _%$%tl118388118441%_)
                                  (let ((_%$%e118389118444%_
                                         (gx#syntax-e _%$%tl118388118441%_)))
                                    (let ((_%$%hd118390118448%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e118389118444%_)))
                                          (_%$%tl118391118451%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e118389118444%_))))
                                      (if (gx#stx-pair? _%$%tl118391118451%_)
                                          (let ((_%$%e118392118454%_
                                                 (gx#syntax-e
                                                  _%$%tl118391118451%_)))
                                            (let ((_%$%hd118393118458%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e118392118454%_)))
                                                  (_%$%tl118394118461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e118392118454%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl118394118461%_)
                                                  (let ((_%$%e118395118464%_
                                                         (gx#syntax-e
                                                          _%$%tl118394118461%_)))
                                                    (let ((_%$%hd118396118468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e118395118464%_)))
                                                          (_%$%tl118397118471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e118395118464%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl118397118471%_)
                                                          (let ((_%$%e118398118474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl118397118471%_)))
                    (let ((_%$%hd118399118478%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e118398118474%_)))
                          (_%$%tl118400118481%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e118398118474%_))))
                      (if (gx#stx-pair? _%$%tl118400118481%_)
                          (let ((_%$%e118401118484%_
                                 (gx#syntax-e _%$%tl118400118481%_)))
                            (let ((_%$%hd118402118488%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e118401118484%_)))
                                  (_%$%tl118403118491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e118401118484%_))))
                              (if (gx#stx-pair? _%$%tl118403118491%_)
                                  (let ((_%$%e118404118494%_
                                         (gx#syntax-e _%$%tl118403118491%_)))
                                    (let ((_%$%hd118405118498%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e118404118494%_)))
                                          (_%$%tl118406118501%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e118404118494%_))))
                                      (if (gx#stx-pair? _%$%tl118406118501%_)
                                          (let ((_%$%e118407118504%_
                                                 (gx#syntax-e
                                                  _%$%tl118406118501%_)))
                                            (let ((_%$%hd118408118508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e118407118504%_)))
                                                  (_%$%tl118409118511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e118407118504%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl118409118511%_)
                                                  (let ((_%$%e118410118514%_
                                                         (gx#syntax-e
                                                          _%$%tl118409118511%_)))
                                                    (let ((_%$%hd118411118518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e118410118514%_)))
                                                          (_%$%tl118412118521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e118410118514%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl118412118521%_)
                                                          (let ((_%$%e118413118524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl118412118521%_)))
                    (let ((_%$%hd118414118528%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e118413118524%_)))
                          (_%$%tl118415118531%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e118413118524%_))))
                      (if (gx#stx-pair? _%$%tl118415118531%_)
                          (let ((_%$%e118416118534%_
                                 (gx#syntax-e _%$%tl118415118531%_)))
                            (let ((_%$%hd118417118538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e118416118534%_)))
                                  (_%$%tl118418118541%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e118416118534%_))))
                              (if (gx#stx-pair? _%$%tl118418118541%_)
                                  (let ((_%$%e118419118544%_
                                         (gx#syntax-e _%$%tl118418118541%_)))
                                    (let ((_%$%hd118420118548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e118419118544%_)))
                                          (_%$%tl118421118551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e118419118544%_))))
                                      (if (gx#stx-null? _%$%tl118421118551%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd118387118438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd118293118334%_
                                                  (cons _%$%hd118296118344%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd118390118448%_
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
                                                  (cons _%$%hd118293118334%_
                                                        (cons _%$%hd118296118344%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd118393118458%_
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
                                        (cons _%$%hd118293118334%_
                                              (cons _%$%hd118296118344%_
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
                                      (cons (cons _%$%hd118396118468%_
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
                                                              (cons (cons _%$%hd118393118458%_
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
                                            (cons (cons _%$%hd118399118478%_
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
                                                    (cons _%$%hd118293118334%_
                                                          (cons _%$%hd118296118344%_
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
                                                  (cons (cons _%$%hd118402118488%_
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
                      (cons (cons _%$%hd118399118478%_
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
                                                        (cons (cons _%$%hd118405118498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd118402118488%_
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
                                                              (cons (cons _%$%hd118408118508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd118411118518%_
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
                              (cons _%$%hd118293118334%_
                                    (cons _%$%hd118296118344%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd118411118518%_
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
                            (cons (cons _%$%hd118411118518%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd118411118518%_
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
                                        (cons (cons _%$%hd118408118508%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd118411118518%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd118414118528%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd118411118518%_
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
                                                          (cons (cons _%$%hd118411118518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd118411118518%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd118417118538%_
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
                                                (cons _%$%hd118293118334%_
                                                      (cons _%$%hd118296118344%_
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
                                              (cons (cons _%$%hd118420118548%_
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
                              (cons (cons _%$%hd118417118538%_
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
                                          (_%$%g118372118427%_
                                           _%$%g118373118431%_))))
                                  (_%$%g118372118427%_ _%$%g118373118431%_))))
                          (_%$%g118372118427%_ _%$%g118373118431%_))))
                  (_%$%g118372118427%_ _%$%g118373118431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g118372118427%_
                                                   _%$%g118373118431%_))))
                                          (_%$%g118372118427%_
                                           _%$%g118373118431%_))))
                                  (_%$%g118372118427%_ _%$%g118373118431%_))))
                          (_%$%g118372118427%_ _%$%g118373118431%_))))
                  (_%$%g118372118427%_ _%$%g118373118431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g118372118427%_
                                                   _%$%g118373118431%_))))
                                          (_%$%g118372118427%_
                                           _%$%g118373118431%_))))
                                  (_%$%g118372118427%_ _%$%g118373118431%_))))
                          (_%$%g118372118427%_ _%$%g118373118431%_)))))
              (_%$%g118371118612%_
               (list (gx#stx-identifier
                      _%$%hd118290118324%_
                      '"make-"
                      _%$%hd118290118324%_)
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      '"make-"
                      _%$%hd118290118324%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      '"__"
                      _%$%hd118290118324%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      '"__"
                      _%$%hd118290118324%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd118290118324%_
                      _%$%hd118290118324%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118281118303%_
                                                     _%$%g118282118307%_))))
                                            (_%$%g118281118303%_
                                             _%$%g118282118307%_))))
                                    (_%$%g118281118303%_
                                     _%$%g118282118307%_))))
                            (_%$%g118281118303%_ _%$%g118282118307%_))))
                    (_%$%g118281118303%_ _%$%g118282118307%_)))))
        (_%$%g118280118616%_ _%stx118278%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx118620%_)
      (let* ((_%$%g118624118646%_
              (lambda (_%$%g118625118642%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118625118642%_)))
             (_%$%g118623118715%_
              (lambda (_%$%g118625118650%_)
                (if (gx#stx-pair? _%$%g118625118650%_)
                    (let ((_%$%e118629118653%_
                           (gx#syntax-e _%$%g118625118650%_)))
                      (let ((_%$%hd118630118657%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118629118653%_)))
                            (_%$%tl118631118660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118629118653%_))))
                        (if (gx#stx-pair? _%$%tl118631118660%_)
                            (let ((_%$%e118632118663%_
                                   (gx#syntax-e _%$%tl118631118660%_)))
                              (let ((_%$%hd118633118667%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118632118663%_)))
                                    (_%$%tl118634118670%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118632118663%_))))
                                (if (gx#stx-pair? _%$%tl118634118670%_)
                                    (let ((_%$%e118635118673%_
                                           (gx#syntax-e _%$%tl118634118670%_)))
                                      (let ((_%$%hd118636118677%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118635118673%_)))
                                            (_%$%tl118637118680%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118635118673%_))))
                                        (if (gx#stx-pair? _%$%tl118637118680%_)
                                            (let ((_%$%e118638118683%_
                                                   (gx#syntax-e
                                                    _%$%tl118637118680%_)))
                                              (let ((_%$%hd118639118687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118638118683%_)))
                                                    (_%$%tl118640118690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118638118683%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl118640118690%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd118633118667%_
                                                (cons _%$%hd118636118677%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd118636118677%_
                                (cons _%$%hd118636118677%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd118639118687%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118624118646%_
                                                     _%$%g118625118650%_))))
                                            (_%$%g118624118646%_
                                             _%$%g118625118650%_))))
                                    (_%$%g118624118646%_
                                     _%$%g118625118650%_))))
                            (_%$%g118624118646%_ _%$%g118625118650%_))))
                    (_%$%g118624118646%_ _%$%g118625118650%_)))))
        (_%$%g118623118715%_ _%$stx118620%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx118719%_)
      (let* ((_%$%g118723118757%_
              (lambda (_%$%g118724118753%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118724118753%_)))
             (_%$%g118722118868%_
              (lambda (_%$%g118724118761%_)
                (if (gx#stx-pair? _%$%g118724118761%_)
                    (let ((_%$%e118731118764%_
                           (gx#syntax-e _%$%g118724118761%_)))
                      (let ((_%$%hd118732118768%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118731118764%_)))
                            (_%$%tl118733118771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118731118764%_))))
                        (if (gx#stx-pair? _%$%tl118733118771%_)
                            (let ((_%$%e118734118774%_
                                   (gx#syntax-e _%$%tl118733118771%_)))
                              (let ((_%$%hd118735118778%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118734118774%_)))
                                    (_%$%tl118736118781%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118734118774%_))))
                                (if (gx#stx-pair? _%$%tl118736118781%_)
                                    (let ((_%$%e118737118784%_
                                           (gx#syntax-e _%$%tl118736118781%_)))
                                      (let ((_%$%hd118738118788%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118737118784%_)))
                                            (_%$%tl118739118791%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118737118784%_))))
                                        (if (gx#stx-pair? _%$%tl118739118791%_)
                                            (let ((_%$%e118740118794%_
                                                   (gx#syntax-e
                                                    _%$%tl118739118791%_)))
                                              (let ((_%$%hd118741118798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118740118794%_)))
                                                    (_%$%tl118742118801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118740118794%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl118742118801%_)
                                                    (let ((_%$%e118743118804%_
                                                           (gx#syntax-e
                                                            _%$%tl118742118801%_)))
                                                      (let ((_%$%hd118744118808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e118743118804%_)))
                    (_%$%tl118745118811%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e118743118804%_))))
                (if (gx#stx-pair? _%$%tl118745118811%_)
                    (let ((_%$%e118746118814%_
                           (gx#syntax-e _%$%tl118745118811%_)))
                      (let ((_%$%hd118747118818%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118746118814%_)))
                            (_%$%tl118748118821%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118746118814%_))))
                        (if (gx#stx-pair? _%$%tl118748118821%_)
                            (let ((_%$%e118749118824%_
                                   (gx#syntax-e _%$%tl118748118821%_)))
                              (let ((_%$%hd118750118828%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118749118824%_)))
                                    (_%$%tl118751118831%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118749118824%_))))
                                (if (gx#stx-null? _%$%tl118751118831%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd118741118798%_
                                            (cons _%$%hd118747118818%_ '()))
                                      (cons _%$%hd118738118788%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd118735118778%_ '()))
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
                            (cons _%$%hd118735118778%_
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
                                  (cons _%$%hd118750118828%_ '()))
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
                                  (cons (cons (cons _%$%hd118744118808%_
                                                    (cons _%$%hd118747118818%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd118735118778%_
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
                                    (_%$%g118723118757%_
                                     _%$%g118724118761%_))))
                            (_%$%g118723118757%_ _%$%g118724118761%_))))
                    (_%$%g118723118757%_ _%$%g118724118761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118723118757%_
                                                     _%$%g118724118761%_))))
                                            (_%$%g118723118757%_
                                             _%$%g118724118761%_))))
                                    (_%$%g118723118757%_
                                     _%$%g118724118761%_))))
                            (_%$%g118723118757%_ _%$%g118724118761%_))))
                    (_%$%g118723118757%_ _%$%g118724118761%_)))))
        (_%$%g118722118868%_ _%$stx118719%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx118872%_)
      (let* ((_%$%g118876118918%_
              (lambda (_%$%g118877118914%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118877118914%_)))
             (_%$%g118875119057%_
              (lambda (_%$%g118877118922%_)
                (if (gx#stx-pair? _%$%g118877118922%_)
                    (let ((_%$%e118886118925%_
                           (gx#syntax-e _%$%g118877118922%_)))
                      (let ((_%$%hd118887118929%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118886118925%_)))
                            (_%$%tl118888118932%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118886118925%_))))
                        (if (gx#stx-pair? _%$%tl118888118932%_)
                            (let ((_%$%e118889118935%_
                                   (gx#syntax-e _%$%tl118888118932%_)))
                              (let ((_%$%hd118890118939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118889118935%_)))
                                    (_%$%tl118891118942%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118889118935%_))))
                                (if (gx#stx-pair? _%$%tl118891118942%_)
                                    (let ((_%$%e118892118945%_
                                           (gx#syntax-e _%$%tl118891118942%_)))
                                      (let ((_%$%hd118893118949%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118892118945%_)))
                                            (_%$%tl118894118952%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118892118945%_))))
                                        (if (gx#stx-pair? _%$%tl118894118952%_)
                                            (let ((_%$%e118895118955%_
                                                   (gx#syntax-e
                                                    _%$%tl118894118952%_)))
                                              (let ((_%$%hd118896118959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118895118955%_)))
                                                    (_%$%tl118897118962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118895118955%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl118897118962%_)
                                                    (let ((_%$%e118898118965%_
                                                           (gx#syntax-e
                                                            _%$%tl118897118962%_)))
                                                      (let ((_%$%hd118899118969%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e118898118965%_)))
                    (_%$%tl118900118972%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e118898118965%_))))
                (if (gx#stx-pair? _%$%tl118900118972%_)
                    (let ((_%$%e118901118975%_
                           (gx#syntax-e _%$%tl118900118972%_)))
                      (let ((_%$%hd118902118979%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118901118975%_)))
                            (_%$%tl118903118982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118901118975%_))))
                        (if (gx#stx-pair? _%$%tl118903118982%_)
                            (let ((_%$%e118904118985%_
                                   (gx#syntax-e _%$%tl118903118982%_)))
                              (let ((_%$%hd118905118989%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118904118985%_)))
                                    (_%$%tl118906118992%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118904118985%_))))
                                (if (gx#stx-pair? _%$%tl118906118992%_)
                                    (let ((_%$%e118907118995%_
                                           (gx#syntax-e _%$%tl118906118992%_)))
                                      (let ((_%$%hd118908118999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118907118995%_)))
                                            (_%$%tl118909119002%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118907118995%_))))
                                        (if (gx#stx-pair? _%$%tl118909119002%_)
                                            (let ((_%$%e118910119005%_
                                                   (gx#syntax-e
                                                    _%$%tl118909119002%_)))
                                              (let ((_%$%hd118911119009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118910119005%_)))
                                                    (_%$%tl118912119012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118910119005%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl118912119012%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd118896118959%_
                                                            (cons _%$%hd118902118979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd118893118949%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd118890118939%_
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
                                            (cons _%$%hd118890118939%_
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
                                                    (cons _%$%hd118890118939%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd118902118979%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd118890118939%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd118905118989%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd118911119009%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd118890118939%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd118902118979%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd118890118939%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd118905118989%_ '()))))
                  (cons (cons _%$%hd118908118999%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd118899118969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd118902118979%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd118890118939%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd118902118979%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd118890118939%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd118905118989%_
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
                                                    (_%$%g118876118918%_
                                                     _%$%g118877118922%_))))
                                            (_%$%g118876118918%_
                                             _%$%g118877118922%_))))
                                    (_%$%g118876118918%_
                                     _%$%g118877118922%_))))
                            (_%$%g118876118918%_ _%$%g118877118922%_))))
                    (_%$%g118876118918%_ _%$%g118877118922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118876118918%_
                                                     _%$%g118877118922%_))))
                                            (_%$%g118876118918%_
                                             _%$%g118877118922%_))))
                                    (_%$%g118876118918%_
                                     _%$%g118877118922%_))))
                            (_%$%g118876118918%_ _%$%g118877118922%_))))
                    (_%$%g118876118918%_ _%$%g118877118922%_)))))
        (_%$%g118875119057%_ _%$stx118872%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx119061%_)
      (let* ((_%$%g119065119111%_
              (lambda (_%$%g119066119107%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119066119107%_)))
             (_%$%g119064119264%_
              (lambda (_%$%g119066119115%_)
                (if (gx#stx-pair? _%$%g119066119115%_)
                    (let ((_%$%e119076119118%_
                           (gx#syntax-e _%$%g119066119115%_)))
                      (let ((_%$%hd119077119122%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119076119118%_)))
                            (_%$%tl119078119125%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119076119118%_))))
                        (if (gx#stx-pair? _%$%tl119078119125%_)
                            (let ((_%$%e119079119128%_
                                   (gx#syntax-e _%$%tl119078119125%_)))
                              (let ((_%$%hd119080119132%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119079119128%_)))
                                    (_%$%tl119081119135%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119079119128%_))))
                                (if (gx#stx-pair? _%$%tl119081119135%_)
                                    (let ((_%$%e119082119138%_
                                           (gx#syntax-e _%$%tl119081119135%_)))
                                      (let ((_%$%hd119083119142%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119082119138%_)))
                                            (_%$%tl119084119145%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119082119138%_))))
                                        (if (gx#stx-pair? _%$%tl119084119145%_)
                                            (let ((_%$%e119085119148%_
                                                   (gx#syntax-e
                                                    _%$%tl119084119145%_)))
                                              (let ((_%$%hd119086119152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119085119148%_)))
                                                    (_%$%tl119087119155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119085119148%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119087119155%_)
                                                    (let ((_%$%e119088119158%_
                                                           (gx#syntax-e
                                                            _%$%tl119087119155%_)))
                                                      (let ((_%$%hd119089119162%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119088119158%_)))
                    (_%$%tl119090119165%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119088119158%_))))
                (if (gx#stx-pair? _%$%tl119090119165%_)
                    (let ((_%$%e119091119168%_
                           (gx#syntax-e _%$%tl119090119165%_)))
                      (let ((_%$%hd119092119172%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119091119168%_)))
                            (_%$%tl119093119175%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119091119168%_))))
                        (if (gx#stx-pair? _%$%tl119093119175%_)
                            (let ((_%$%e119094119178%_
                                   (gx#syntax-e _%$%tl119093119175%_)))
                              (let ((_%$%hd119095119182%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119094119178%_)))
                                    (_%$%tl119096119185%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119094119178%_))))
                                (if (gx#stx-pair? _%$%tl119096119185%_)
                                    (let ((_%$%e119097119188%_
                                           (gx#syntax-e _%$%tl119096119185%_)))
                                      (let ((_%$%hd119098119192%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119097119188%_)))
                                            (_%$%tl119099119195%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119097119188%_))))
                                        (if (gx#stx-pair? _%$%tl119099119195%_)
                                            (let ((_%$%e119100119198%_
                                                   (gx#syntax-e
                                                    _%$%tl119099119195%_)))
                                              (let ((_%$%hd119101119202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119100119198%_)))
                                                    (_%$%tl119102119205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119100119198%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119102119205%_)
                                                    (let ((_%$%e119103119208%_
                                                           (gx#syntax-e
                                                            _%$%tl119102119205%_)))
                                                      (let ((_%$%hd119104119212%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119103119208%_)))
                    (_%$%tl119105119215%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119103119208%_))))
                (if (gx#stx-null? _%$%tl119105119215%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd119086119152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd119092119172%_ '()))
                      (cons _%$%hd119083119142%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd119080119132%_
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
                                                    (cons _%$%hd119080119132%_
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
                                                            (cons _%$%hd119080119132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd119092119172%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd119080119132%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd119095119182%_
                                                  (cons _%$%hd119098119192%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd119104119212%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd119080119132%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd119092119172%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd119080119132%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd119095119182%_
                                                        (cons _%$%hd119098119192%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd119101119202%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd119089119162%_
                                    (cons _%$%hd119092119172%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd119080119132%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd119092119172%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd119080119132%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd119095119182%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd119080119132%_
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
                    (_%$%g119065119111%_ _%$%g119066119115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119065119111%_
                                                     _%$%g119066119115%_))))
                                            (_%$%g119065119111%_
                                             _%$%g119066119115%_))))
                                    (_%$%g119065119111%_
                                     _%$%g119066119115%_))))
                            (_%$%g119065119111%_ _%$%g119066119115%_))))
                    (_%$%g119065119111%_ _%$%g119066119115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119065119111%_
                                                     _%$%g119066119115%_))))
                                            (_%$%g119065119111%_
                                             _%$%g119066119115%_))))
                                    (_%$%g119065119111%_
                                     _%$%g119066119115%_))))
                            (_%$%g119065119111%_ _%$%g119066119115%_))))
                    (_%$%g119065119111%_ _%$%g119066119115%_)))))
        (_%$%g119064119264%_ _%$stx119061%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx119268%_)
      (let* ((_%$%g119272119306%_
              (lambda (_%$%g119273119302%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119273119302%_)))
             (_%$%g119271119417%_
              (lambda (_%$%g119273119310%_)
                (if (gx#stx-pair? _%$%g119273119310%_)
                    (let ((_%$%e119280119313%_
                           (gx#syntax-e _%$%g119273119310%_)))
                      (let ((_%$%hd119281119317%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119280119313%_)))
                            (_%$%tl119282119320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119280119313%_))))
                        (if (gx#stx-pair? _%$%tl119282119320%_)
                            (let ((_%$%e119283119323%_
                                   (gx#syntax-e _%$%tl119282119320%_)))
                              (let ((_%$%hd119284119327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119283119323%_)))
                                    (_%$%tl119285119330%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119283119323%_))))
                                (if (gx#stx-pair? _%$%tl119285119330%_)
                                    (let ((_%$%e119286119333%_
                                           (gx#syntax-e _%$%tl119285119330%_)))
                                      (let ((_%$%hd119287119337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119286119333%_)))
                                            (_%$%tl119288119340%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119286119333%_))))
                                        (if (gx#stx-pair? _%$%tl119288119340%_)
                                            (let ((_%$%e119289119343%_
                                                   (gx#syntax-e
                                                    _%$%tl119288119340%_)))
                                              (let ((_%$%hd119290119347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e119289119343%_)))
                                                    (_%$%tl119291119350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e119289119343%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl119291119350%_)
                                                    (let ((_%$%e119292119353%_
                                                           (gx#syntax-e
                                                            _%$%tl119291119350%_)))
                                                      (let ((_%$%hd119293119357%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e119292119353%_)))
                    (_%$%tl119294119360%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e119292119353%_))))
                (if (gx#stx-pair? _%$%tl119294119360%_)
                    (let ((_%$%e119295119363%_
                           (gx#syntax-e _%$%tl119294119360%_)))
                      (let ((_%$%hd119296119367%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119295119363%_)))
                            (_%$%tl119297119370%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119295119363%_))))
                        (if (gx#stx-pair? _%$%tl119297119370%_)
                            (let ((_%$%e119298119373%_
                                   (gx#syntax-e _%$%tl119297119370%_)))
                              (let ((_%$%hd119299119377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119298119373%_)))
                                    (_%$%tl119300119380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119298119373%_))))
                                (if (gx#stx-null? _%$%tl119300119380%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd119290119347%_
                                            (cons _%$%hd119296119367%_ '()))
                                      (cons _%$%hd119287119337%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd119284119327%_ '()))
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
                            (cons _%$%hd119284119327%_
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
                                  (cons (cons (cons _%$%hd119293119357%_
                                                    (cons _%$%hd119296119367%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd119284119327%_
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
                        (cons _%$%hd119284119327%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd119299119377%_ '()) '()))))
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
                                    (_%$%g119272119306%_
                                     _%$%g119273119310%_))))
                            (_%$%g119272119306%_ _%$%g119273119310%_))))
                    (_%$%g119272119306%_ _%$%g119273119310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g119272119306%_
                                                     _%$%g119273119310%_))))
                                            (_%$%g119272119306%_
                                             _%$%g119273119310%_))))
                                    (_%$%g119272119306%_
                                     _%$%g119273119310%_))))
                            (_%$%g119272119306%_ _%$%g119273119310%_))))
                    (_%$%g119272119306%_ _%$%g119273119310%_)))))
        (_%$%g119271119417%_ _%$stx119268%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx119421%_)
      (let* ((_%$%g119425119443%_
              (lambda (_%$%g119426119439%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g119426119439%_)))
             (_%$%g119424119498%_
              (lambda (_%$%g119426119447%_)
                (if (gx#stx-pair? _%$%g119426119447%_)
                    (let ((_%$%e119429119450%_
                           (gx#syntax-e _%$%g119426119447%_)))
                      (let ((_%$%hd119430119454%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e119429119450%_)))
                            (_%$%tl119431119457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e119429119450%_))))
                        (if (gx#stx-pair? _%$%tl119431119457%_)
                            (let ((_%$%e119432119460%_
                                   (gx#syntax-e _%$%tl119431119457%_)))
                              (let ((_%$%hd119433119464%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e119432119460%_)))
                                    (_%$%tl119434119467%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e119432119460%_))))
                                (if (gx#stx-pair? _%$%tl119434119467%_)
                                    (let ((_%$%e119435119470%_
                                           (gx#syntax-e _%$%tl119434119467%_)))
                                      (let ((_%$%hd119436119474%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e119435119470%_)))
                                            (_%$%tl119437119477%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e119435119470%_))))
                                        (if (gx#stx-null? _%$%tl119437119477%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd119433119464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd119436119474%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g119425119443%_
                                             _%$%g119426119447%_))))
                                    (_%$%g119425119443%_
                                     _%$%g119426119447%_))))
                            (_%$%g119425119443%_ _%$%g119426119447%_))))
                    (_%$%g119425119443%_ _%$%g119426119447%_)))))
        (_%$%g119424119498%_ _%$stx119421%_)))))

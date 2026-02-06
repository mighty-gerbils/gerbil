(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx111182%_)
      (let* ((_%g111186111204%_
              (lambda (_%g111187111200%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g111187111200%_)))
             (_%g111185111260%_
              (lambda (_%g111187111208%_)
                (if (gx#stx-pair? _%g111187111208%_)
                    (let ((_%e111190111211%_ (gx#syntax-e _%g111187111208%_)))
                      (let ((_%hd111191111215%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111190111211%_)))
                            (_%tl111192111218%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111190111211%_))))
                        (if (gx#stx-pair? _%tl111192111218%_)
                            (let ((_%e111193111221%_
                                   (gx#syntax-e _%tl111192111218%_)))
                              (let ((_%hd111194111225%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111193111221%_)))
                                    (_%tl111195111228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111193111221%_))))
                                (if (gx#stx-pair? _%tl111195111228%_)
                                    (let ((_%e111196111231%_
                                           (gx#syntax-e _%tl111195111228%_)))
                                      (let ((_%hd111197111235%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111196111231%_)))
                                            (_%tl111198111238%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111196111231%_))))
                                        (if (gx#stx-null? _%tl111198111238%_)
                                            ((lambda (_%g111188111241%_
                                                      _%g111189111243%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g111189111243%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g111188111241%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd111197111235%_
                                             _%hd111194111225%_)
                                            (_%g111186111204%_
                                             _%g111187111208%_))))
                                    (_%g111186111204%_ _%g111187111208%_))))
                            (_%g111186111204%_ _%g111187111208%_))))
                    (_%g111186111204%_ _%g111187111208%_)))))
        (_%g111185111260%_ _%$stx111182%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx111264%_)
      (let* ((_%g111267111289%_
              (lambda (_%g111268111285%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g111268111285%_)))
             (_%g111266111602%_
              (lambda (_%g111268111293%_)
                (if (gx#stx-pair? _%g111268111293%_)
                    (let ((_%e111272111296%_ (gx#syntax-e _%g111268111293%_)))
                      (let ((_%hd111273111300%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111272111296%_)))
                            (_%tl111274111303%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111272111296%_))))
                        (if (gx#stx-pair? _%tl111274111303%_)
                            (let ((_%e111275111306%_
                                   (gx#syntax-e _%tl111274111303%_)))
                              (let ((_%hd111276111310%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111275111306%_)))
                                    (_%tl111277111313%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111275111306%_))))
                                (if (gx#stx-pair? _%tl111277111313%_)
                                    (let ((_%e111278111316%_
                                           (gx#syntax-e _%tl111277111313%_)))
                                      (let ((_%hd111279111320%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111278111316%_)))
                                            (_%tl111280111323%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111278111316%_))))
                                        (if (gx#stx-pair? _%tl111280111323%_)
                                            (let ((_%e111281111326%_
                                                   (gx#syntax-e
                                                    _%tl111280111323%_)))
                                              (let ((_%hd111282111330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e111281111326%_)))
                                                    (_%tl111283111333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e111281111326%_))))
                                                (if (gx#stx-null?
                                                     _%tl111283111333%_)
                                                    ((lambda (_%g111269111336%_
                                                              _%g111270111338%_
                                                              _%g111271111339%_)
                                                       (let* ((_%g111358111413%_
                                                               (lambda (_%g111359111409%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g111359111409%_)))
                      (_%g111357111598%_
                       (lambda (_%g111359111417%_)
                         (if (gx#stx-pair? _%g111359111417%_)
                             (let ((_%e111372111420%_
                                    (gx#syntax-e _%g111359111417%_)))
                               (let ((_%hd111373111424%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e111372111420%_)))
                                     (_%tl111374111427%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e111372111420%_))))
                                 (if (gx#stx-pair? _%tl111374111427%_)
                                     (let ((_%e111375111430%_
                                            (gx#syntax-e _%tl111374111427%_)))
                                       (let ((_%hd111376111434%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e111375111430%_)))
                                             (_%tl111377111437%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e111375111430%_))))
                                         (if (gx#stx-pair? _%tl111377111437%_)
                                             (let ((_%e111378111440%_
                                                    (gx#syntax-e
                                                     _%tl111377111437%_)))
                                               (let ((_%hd111379111444%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e111378111440%_)))
                                                     (_%tl111380111447%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e111378111440%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl111380111447%_)
                                                     (let ((_%e111381111450%_
                                                            (gx#syntax-e
                                                             _%tl111380111447%_)))
                                                       (let ((_%hd111382111454%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e111381111450%_)))
                     (_%tl111383111457%_
                      (let () (declare (not safe)) (##cdr _%e111381111450%_))))
                 (if (gx#stx-pair? _%tl111383111457%_)
                     (let ((_%e111384111460%_
                            (gx#syntax-e _%tl111383111457%_)))
                       (let ((_%hd111385111464%_
                              (let ()
                                (declare (not safe))
                                (##car _%e111384111460%_)))
                             (_%tl111386111467%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e111384111460%_))))
                         (if (gx#stx-pair? _%tl111386111467%_)
                             (let ((_%e111387111470%_
                                    (gx#syntax-e _%tl111386111467%_)))
                               (let ((_%hd111388111474%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e111387111470%_)))
                                     (_%tl111389111477%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e111387111470%_))))
                                 (if (gx#stx-pair? _%tl111389111477%_)
                                     (let ((_%e111390111480%_
                                            (gx#syntax-e _%tl111389111477%_)))
                                       (let ((_%hd111391111484%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e111390111480%_)))
                                             (_%tl111392111487%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e111390111480%_))))
                                         (if (gx#stx-pair? _%tl111392111487%_)
                                             (let ((_%e111393111490%_
                                                    (gx#syntax-e
                                                     _%tl111392111487%_)))
                                               (let ((_%hd111394111494%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e111393111490%_)))
                                                     (_%tl111395111497%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e111393111490%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl111395111497%_)
                                                     (let ((_%e111396111500%_
                                                            (gx#syntax-e
                                                             _%tl111395111497%_)))
                                                       (let ((_%hd111397111504%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e111396111500%_)))
                     (_%tl111398111507%_
                      (let () (declare (not safe)) (##cdr _%e111396111500%_))))
                 (if (gx#stx-pair? _%tl111398111507%_)
                     (let ((_%e111399111510%_
                            (gx#syntax-e _%tl111398111507%_)))
                       (let ((_%hd111400111514%_
                              (let ()
                                (declare (not safe))
                                (##car _%e111399111510%_)))
                             (_%tl111401111517%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e111399111510%_))))
                         (if (gx#stx-pair? _%tl111401111517%_)
                             (let ((_%e111402111520%_
                                    (gx#syntax-e _%tl111401111517%_)))
                               (let ((_%hd111403111524%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e111402111520%_)))
                                     (_%tl111404111527%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e111402111520%_))))
                                 (if (gx#stx-pair? _%tl111404111527%_)
                                     (let ((_%e111405111530%_
                                            (gx#syntax-e _%tl111404111527%_)))
                                       (let ((_%hd111406111534%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e111405111530%_)))
                                             (_%tl111407111537%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e111405111530%_))))
                                         (if (gx#stx-null? _%tl111407111537%_)
                                             ((lambda (_%g111360111540%_
                                                       _%g111361111542%_
                                                       _%g111362111543%_
                                                       _%g111363111544%_
                                                       _%g111364111545%_
                                                       _%g111365111546%_
                                                       _%g111366111547%_
                                                       _%g111367111548%_
                                                       _%g111368111549%_
                                                       _%g111369111550%_
                                                       _%g111370111551%_
                                                       _%g111371111552%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g111371111552%_
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
                                                  (cons _%g111270111338%_
                                                        (cons _%g111269111336%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g111370111551%_
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
                                                        (cons _%g111270111338%_
                                                              (cons _%g111269111336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g111369111550%_
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
                                              (cons _%g111270111338%_
                                                    (cons _%g111269111336%_
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
                                            (cons (cons _%g111368111549%_
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
                            (cons (cons _%g111369111550%_
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
                                                  (cons (cons _%g111367111548%_
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
                                                          (cons _%g111270111338%_
                                                                (cons _%g111269111336%_
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
                                                        (cons (cons _%g111366111547%_
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
                            (cons (cons _%g111367111548%_
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
                                                              (cons (cons _%g111365111546%_
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
                                              (cons (cons _%g111366111547%_
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
                            (cons (cons _%g111364111545%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g111363111544%_
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
                                    (cons _%g111270111338%_
                                          (cons _%g111269111336%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g111363111544%_
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
                                  (cons (cons _%g111363111544%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g111363111544%_
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
                                              (cons (cons _%g111364111545%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g111363111544%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g111362111543%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g111363111544%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g111363111544%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g111363111544%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g111361111542%_
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
                                                      (cons _%g111270111338%_
                                                            (cons _%g111269111336%_
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
                                                    (cons (cons _%g111360111540%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g111361111542%_
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
                                              _%hd111406111534%_
                                              _%hd111403111524%_
                                              _%hd111400111514%_
                                              _%hd111397111504%_
                                              _%hd111394111494%_
                                              _%hd111391111484%_
                                              _%hd111388111474%_
                                              _%hd111385111464%_
                                              _%hd111382111454%_
                                              _%hd111379111444%_
                                              _%hd111376111434%_
                                              _%hd111373111424%_)
                                             (_%g111358111413%_
                                              _%g111359111417%_))))
                                     (_%g111358111413%_ _%g111359111417%_))))
                             (_%g111358111413%_ _%g111359111417%_))))
                     (_%g111358111413%_ _%g111359111417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111358111413%_
                                                      _%g111359111417%_))))
                                             (_%g111358111413%_
                                              _%g111359111417%_))))
                                     (_%g111358111413%_ _%g111359111417%_))))
                             (_%g111358111413%_ _%g111359111417%_))))
                     (_%g111358111413%_ _%g111359111417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111358111413%_
                                                      _%g111359111417%_))))
                                             (_%g111358111413%_
                                              _%g111359111417%_))))
                                     (_%g111358111413%_ _%g111359111417%_))))
                             (_%g111358111413%_ _%g111359111417%_)))))
                 (_%g111357111598%_
                  (list (gx#stx-identifier
                         _%g111271111339%_
                         '"make-"
                         _%g111271111339%_)
                        (gx#stx-identifier
                         _%g111271111339%_
                         '"make-"
                         _%g111271111339%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g111271111339%_
                         '"__"
                         _%g111271111339%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g111271111339%_
                         '"__"
                         _%g111271111339%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g111271111339%_
                         _%g111271111339%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd111282111330%_
                                                     _%hd111279111320%_
                                                     _%hd111276111310%_)
                                                    (_%g111267111289%_
                                                     _%g111268111293%_))))
                                            (_%g111267111289%_
                                             _%g111268111293%_))))
                                    (_%g111267111289%_ _%g111268111293%_))))
                            (_%g111267111289%_ _%g111268111293%_))))
                    (_%g111267111289%_ _%g111268111293%_)))))
        (_%g111266111602%_ _%stx111264%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx111606%_)
      (let* ((_%g111610111632%_
              (lambda (_%g111611111628%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g111611111628%_)))
             (_%g111609111701%_
              (lambda (_%g111611111636%_)
                (if (gx#stx-pair? _%g111611111636%_)
                    (let ((_%e111615111639%_ (gx#syntax-e _%g111611111636%_)))
                      (let ((_%hd111616111643%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111615111639%_)))
                            (_%tl111617111646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111615111639%_))))
                        (if (gx#stx-pair? _%tl111617111646%_)
                            (let ((_%e111618111649%_
                                   (gx#syntax-e _%tl111617111646%_)))
                              (let ((_%hd111619111653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111618111649%_)))
                                    (_%tl111620111656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111618111649%_))))
                                (if (gx#stx-pair? _%tl111620111656%_)
                                    (let ((_%e111621111659%_
                                           (gx#syntax-e _%tl111620111656%_)))
                                      (let ((_%hd111622111663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111621111659%_)))
                                            (_%tl111623111666%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111621111659%_))))
                                        (if (gx#stx-pair? _%tl111623111666%_)
                                            (let ((_%e111624111669%_
                                                   (gx#syntax-e
                                                    _%tl111623111666%_)))
                                              (let ((_%hd111625111673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e111624111669%_)))
                                                    (_%tl111626111676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e111624111669%_))))
                                                (if (gx#stx-null?
                                                     _%tl111626111676%_)
                                                    ((lambda (_%g111612111679%_
                                                              _%g111613111681%_
                                                              _%g111614111682%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g111614111682%_
                                                   (cons _%g111613111681%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g111613111681%_
                                   (cons _%g111613111681%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g111612111679%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd111625111673%_
                                                     _%hd111622111663%_
                                                     _%hd111619111653%_)
                                                    (_%g111610111632%_
                                                     _%g111611111636%_))))
                                            (_%g111610111632%_
                                             _%g111611111636%_))))
                                    (_%g111610111632%_ _%g111611111636%_))))
                            (_%g111610111632%_ _%g111611111636%_))))
                    (_%g111610111632%_ _%g111611111636%_)))))
        (_%g111609111701%_ _%$stx111606%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx111705%_)
      (let* ((_%g111709111743%_
              (lambda (_%g111710111739%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g111710111739%_)))
             (_%g111708111854%_
              (lambda (_%g111710111747%_)
                (if (gx#stx-pair? _%g111710111747%_)
                    (let ((_%e111717111750%_ (gx#syntax-e _%g111710111747%_)))
                      (let ((_%hd111718111754%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111717111750%_)))
                            (_%tl111719111757%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111717111750%_))))
                        (if (gx#stx-pair? _%tl111719111757%_)
                            (let ((_%e111720111760%_
                                   (gx#syntax-e _%tl111719111757%_)))
                              (let ((_%hd111721111764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111720111760%_)))
                                    (_%tl111722111767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111720111760%_))))
                                (if (gx#stx-pair? _%tl111722111767%_)
                                    (let ((_%e111723111770%_
                                           (gx#syntax-e _%tl111722111767%_)))
                                      (let ((_%hd111724111774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111723111770%_)))
                                            (_%tl111725111777%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111723111770%_))))
                                        (if (gx#stx-pair? _%tl111725111777%_)
                                            (let ((_%e111726111780%_
                                                   (gx#syntax-e
                                                    _%tl111725111777%_)))
                                              (let ((_%hd111727111784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e111726111780%_)))
                                                    (_%tl111728111787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e111726111780%_))))
                                                (if (gx#stx-pair?
                                                     _%tl111728111787%_)
                                                    (let ((_%e111729111790%_
                                                           (gx#syntax-e
                                                            _%tl111728111787%_)))
                                                      (let ((_%hd111730111794%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e111729111790%_)))
                    (_%tl111731111797%_
                     (let () (declare (not safe)) (##cdr _%e111729111790%_))))
                (if (gx#stx-pair? _%tl111731111797%_)
                    (let ((_%e111732111800%_ (gx#syntax-e _%tl111731111797%_)))
                      (let ((_%hd111733111804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111732111800%_)))
                            (_%tl111734111807%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111732111800%_))))
                        (if (gx#stx-pair? _%tl111734111807%_)
                            (let ((_%e111735111810%_
                                   (gx#syntax-e _%tl111734111807%_)))
                              (let ((_%hd111736111814%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111735111810%_)))
                                    (_%tl111737111817%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111735111810%_))))
                                (if (gx#stx-null? _%tl111737111817%_)
                                    ((lambda (_%g111711111820%_
                                              _%g111712111822%_
                                              _%g111713111823%_
                                              _%g111714111824%_
                                              _%g111715111825%_
                                              _%g111716111826%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g111714111824%_
                                               (cons _%g111712111822%_ '()))
                                         (cons _%g111715111825%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g111716111826%_ '()))
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
                               (cons _%g111716111826%_
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
                                     (cons _%g111711111820%_ '()))
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
                                     (cons (cons (cons _%g111713111823%_
                                                       (cons _%g111712111822%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g111716111826%_
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
                                     _%hd111736111814%_
                                     _%hd111733111804%_
                                     _%hd111730111794%_
                                     _%hd111727111784%_
                                     _%hd111724111774%_
                                     _%hd111721111764%_)
                                    (_%g111709111743%_ _%g111710111747%_))))
                            (_%g111709111743%_ _%g111710111747%_))))
                    (_%g111709111743%_ _%g111710111747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g111709111743%_
                                                     _%g111710111747%_))))
                                            (_%g111709111743%_
                                             _%g111710111747%_))))
                                    (_%g111709111743%_ _%g111710111747%_))))
                            (_%g111709111743%_ _%g111710111747%_))))
                    (_%g111709111743%_ _%g111710111747%_)))))
        (_%g111708111854%_ _%$stx111705%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx111858%_)
      (let* ((_%g111862111904%_
              (lambda (_%g111863111900%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g111863111900%_)))
             (_%g111861112043%_
              (lambda (_%g111863111908%_)
                (if (gx#stx-pair? _%g111863111908%_)
                    (let ((_%e111872111911%_ (gx#syntax-e _%g111863111908%_)))
                      (let ((_%hd111873111915%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111872111911%_)))
                            (_%tl111874111918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111872111911%_))))
                        (if (gx#stx-pair? _%tl111874111918%_)
                            (let ((_%e111875111921%_
                                   (gx#syntax-e _%tl111874111918%_)))
                              (let ((_%hd111876111925%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111875111921%_)))
                                    (_%tl111877111928%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111875111921%_))))
                                (if (gx#stx-pair? _%tl111877111928%_)
                                    (let ((_%e111878111931%_
                                           (gx#syntax-e _%tl111877111928%_)))
                                      (let ((_%hd111879111935%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111878111931%_)))
                                            (_%tl111880111938%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111878111931%_))))
                                        (if (gx#stx-pair? _%tl111880111938%_)
                                            (let ((_%e111881111941%_
                                                   (gx#syntax-e
                                                    _%tl111880111938%_)))
                                              (let ((_%hd111882111945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e111881111941%_)))
                                                    (_%tl111883111948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e111881111941%_))))
                                                (if (gx#stx-pair?
                                                     _%tl111883111948%_)
                                                    (let ((_%e111884111951%_
                                                           (gx#syntax-e
                                                            _%tl111883111948%_)))
                                                      (let ((_%hd111885111955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e111884111951%_)))
                    (_%tl111886111958%_
                     (let () (declare (not safe)) (##cdr _%e111884111951%_))))
                (if (gx#stx-pair? _%tl111886111958%_)
                    (let ((_%e111887111961%_ (gx#syntax-e _%tl111886111958%_)))
                      (let ((_%hd111888111965%_
                             (let ()
                               (declare (not safe))
                               (##car _%e111887111961%_)))
                            (_%tl111889111968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e111887111961%_))))
                        (if (gx#stx-pair? _%tl111889111968%_)
                            (let ((_%e111890111971%_
                                   (gx#syntax-e _%tl111889111968%_)))
                              (let ((_%hd111891111975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e111890111971%_)))
                                    (_%tl111892111978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e111890111971%_))))
                                (if (gx#stx-pair? _%tl111892111978%_)
                                    (let ((_%e111893111981%_
                                           (gx#syntax-e _%tl111892111978%_)))
                                      (let ((_%hd111894111985%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111893111981%_)))
                                            (_%tl111895111988%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111893111981%_))))
                                        (if (gx#stx-pair? _%tl111895111988%_)
                                            (let ((_%e111896111991%_
                                                   (gx#syntax-e
                                                    _%tl111895111988%_)))
                                              (let ((_%hd111897111995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e111896111991%_)))
                                                    (_%tl111898111998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e111896111991%_))))
                                                (if (gx#stx-null?
                                                     _%tl111898111998%_)
                                                    ((lambda (_%g111864112001%_
                                                              _%g111865112003%_
                                                              _%g111866112004%_
                                                              _%g111867112005%_
                                                              _%g111868112006%_
                                                              _%g111869112007%_
                                                              _%g111870112008%_
                                                              _%g111871112009%_)
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
                                                   (cons (cons _%g111869112007%_
                                                               (cons _%g111867112005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g111870112008%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g111871112009%_
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
                                               (cons _%g111871112009%_
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
                                                       (cons _%g111871112009%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g111867112005%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g111871112009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g111866112004%_ '()))))
               (cons (cons _%g111864112001%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g111871112009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g111867112005%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g111871112009%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g111866112004%_ '()))))
                     (cons (cons _%g111865112003%_ '()) '()))))
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
                                                     (cons (cons (cons _%g111868112006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g111867112005%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g111871112009%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g111867112005%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g111871112009%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g111866112004%_ '()))))
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
                                                     _%hd111897111995%_
                                                     _%hd111894111985%_
                                                     _%hd111891111975%_
                                                     _%hd111888111965%_
                                                     _%hd111885111955%_
                                                     _%hd111882111945%_
                                                     _%hd111879111935%_
                                                     _%hd111876111925%_)
                                                    (_%g111862111904%_
                                                     _%g111863111908%_))))
                                            (_%g111862111904%_
                                             _%g111863111908%_))))
                                    (_%g111862111904%_ _%g111863111908%_))))
                            (_%g111862111904%_ _%g111863111908%_))))
                    (_%g111862111904%_ _%g111863111908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g111862111904%_
                                                     _%g111863111908%_))))
                                            (_%g111862111904%_
                                             _%g111863111908%_))))
                                    (_%g111862111904%_ _%g111863111908%_))))
                            (_%g111862111904%_ _%g111863111908%_))))
                    (_%g111862111904%_ _%g111863111908%_)))))
        (_%g111861112043%_ _%$stx111858%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx112047%_)
      (let* ((_%g112051112097%_
              (lambda (_%g112052112093%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112052112093%_)))
             (_%g112050112250%_
              (lambda (_%g112052112101%_)
                (if (gx#stx-pair? _%g112052112101%_)
                    (let ((_%e112062112104%_ (gx#syntax-e _%g112052112101%_)))
                      (let ((_%hd112063112108%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112062112104%_)))
                            (_%tl112064112111%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112062112104%_))))
                        (if (gx#stx-pair? _%tl112064112111%_)
                            (let ((_%e112065112114%_
                                   (gx#syntax-e _%tl112064112111%_)))
                              (let ((_%hd112066112118%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112065112114%_)))
                                    (_%tl112067112121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112065112114%_))))
                                (if (gx#stx-pair? _%tl112067112121%_)
                                    (let ((_%e112068112124%_
                                           (gx#syntax-e _%tl112067112121%_)))
                                      (let ((_%hd112069112128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112068112124%_)))
                                            (_%tl112070112131%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112068112124%_))))
                                        (if (gx#stx-pair? _%tl112070112131%_)
                                            (let ((_%e112071112134%_
                                                   (gx#syntax-e
                                                    _%tl112070112131%_)))
                                              (let ((_%hd112072112138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112071112134%_)))
                                                    (_%tl112073112141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112071112134%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112073112141%_)
                                                    (let ((_%e112074112144%_
                                                           (gx#syntax-e
                                                            _%tl112073112141%_)))
                                                      (let ((_%hd112075112148%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112074112144%_)))
                    (_%tl112076112151%_
                     (let () (declare (not safe)) (##cdr _%e112074112144%_))))
                (if (gx#stx-pair? _%tl112076112151%_)
                    (let ((_%e112077112154%_ (gx#syntax-e _%tl112076112151%_)))
                      (let ((_%hd112078112158%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112077112154%_)))
                            (_%tl112079112161%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112077112154%_))))
                        (if (gx#stx-pair? _%tl112079112161%_)
                            (let ((_%e112080112164%_
                                   (gx#syntax-e _%tl112079112161%_)))
                              (let ((_%hd112081112168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112080112164%_)))
                                    (_%tl112082112171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112080112164%_))))
                                (if (gx#stx-pair? _%tl112082112171%_)
                                    (let ((_%e112083112174%_
                                           (gx#syntax-e _%tl112082112171%_)))
                                      (let ((_%hd112084112178%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112083112174%_)))
                                            (_%tl112085112181%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112083112174%_))))
                                        (if (gx#stx-pair? _%tl112085112181%_)
                                            (let ((_%e112086112184%_
                                                   (gx#syntax-e
                                                    _%tl112085112181%_)))
                                              (let ((_%hd112087112188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112086112184%_)))
                                                    (_%tl112088112191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112086112184%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112088112191%_)
                                                    (let ((_%e112089112194%_
                                                           (gx#syntax-e
                                                            _%tl112088112191%_)))
                                                      (let ((_%hd112090112198%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112089112194%_)))
                    (_%tl112091112201%_
                     (let () (declare (not safe)) (##cdr _%e112089112194%_))))
                (if (gx#stx-null? _%tl112091112201%_)
                    ((lambda (_%g112053112204%_
                              _%g112054112206%_
                              _%g112055112207%_
                              _%g112056112208%_
                              _%g112057112209%_
                              _%g112058112210%_
                              _%g112059112211%_
                              _%g112060112212%_
                              _%g112061112213%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g112059112211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g112057112209%_ '()))
                         (cons _%g112060112212%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g112061112213%_ '()))
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
                                                       (cons _%g112061112213%_
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
                                                               (cons _%g112061112213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g112057112209%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g112061112213%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g112056112208%_
                                                     (cons _%g112055112207%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g112053112204%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g112061112213%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g112057112209%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g112061112213%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g112056112208%_
                                                           (cons _%g112055112207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g112054112206%_ '()) '()))))
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
                     (cons (cons (cons _%g112058112210%_
                                       (cons _%g112057112209%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g112061112213%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g112057112209%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g112061112213%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g112056112208%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g112061112213%_
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
                     _%hd112090112198%_
                     _%hd112087112188%_
                     _%hd112084112178%_
                     _%hd112081112168%_
                     _%hd112078112158%_
                     _%hd112075112148%_
                     _%hd112072112138%_
                     _%hd112069112128%_
                     _%hd112066112118%_)
                    (_%g112051112097%_ _%g112052112101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112051112097%_
                                                     _%g112052112101%_))))
                                            (_%g112051112097%_
                                             _%g112052112101%_))))
                                    (_%g112051112097%_ _%g112052112101%_))))
                            (_%g112051112097%_ _%g112052112101%_))))
                    (_%g112051112097%_ _%g112052112101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112051112097%_
                                                     _%g112052112101%_))))
                                            (_%g112051112097%_
                                             _%g112052112101%_))))
                                    (_%g112051112097%_ _%g112052112101%_))))
                            (_%g112051112097%_ _%g112052112101%_))))
                    (_%g112051112097%_ _%g112052112101%_)))))
        (_%g112050112250%_ _%$stx112047%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx112254%_)
      (let* ((_%g112258112292%_
              (lambda (_%g112259112288%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112259112288%_)))
             (_%g112257112403%_
              (lambda (_%g112259112296%_)
                (if (gx#stx-pair? _%g112259112296%_)
                    (let ((_%e112266112299%_ (gx#syntax-e _%g112259112296%_)))
                      (let ((_%hd112267112303%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112266112299%_)))
                            (_%tl112268112306%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112266112299%_))))
                        (if (gx#stx-pair? _%tl112268112306%_)
                            (let ((_%e112269112309%_
                                   (gx#syntax-e _%tl112268112306%_)))
                              (let ((_%hd112270112313%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112269112309%_)))
                                    (_%tl112271112316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112269112309%_))))
                                (if (gx#stx-pair? _%tl112271112316%_)
                                    (let ((_%e112272112319%_
                                           (gx#syntax-e _%tl112271112316%_)))
                                      (let ((_%hd112273112323%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112272112319%_)))
                                            (_%tl112274112326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112272112319%_))))
                                        (if (gx#stx-pair? _%tl112274112326%_)
                                            (let ((_%e112275112329%_
                                                   (gx#syntax-e
                                                    _%tl112274112326%_)))
                                              (let ((_%hd112276112333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112275112329%_)))
                                                    (_%tl112277112336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112275112329%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112277112336%_)
                                                    (let ((_%e112278112339%_
                                                           (gx#syntax-e
                                                            _%tl112277112336%_)))
                                                      (let ((_%hd112279112343%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112278112339%_)))
                    (_%tl112280112346%_
                     (let () (declare (not safe)) (##cdr _%e112278112339%_))))
                (if (gx#stx-pair? _%tl112280112346%_)
                    (let ((_%e112281112349%_ (gx#syntax-e _%tl112280112346%_)))
                      (let ((_%hd112282112353%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112281112349%_)))
                            (_%tl112283112356%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112281112349%_))))
                        (if (gx#stx-pair? _%tl112283112356%_)
                            (let ((_%e112284112359%_
                                   (gx#syntax-e _%tl112283112356%_)))
                              (let ((_%hd112285112363%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112284112359%_)))
                                    (_%tl112286112366%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112284112359%_))))
                                (if (gx#stx-null? _%tl112286112366%_)
                                    ((lambda (_%g112260112369%_
                                              _%g112261112371%_
                                              _%g112262112372%_
                                              _%g112263112373%_
                                              _%g112264112374%_
                                              _%g112265112375%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g112263112373%_
                                               (cons _%g112261112371%_ '()))
                                         (cons _%g112264112374%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g112265112375%_ '()))
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
                               (cons _%g112265112375%_
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
                                     (cons (cons (cons _%g112262112372%_
                                                       (cons _%g112261112371%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g112265112375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g112265112375%_
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
                     (cons (cons _%g112260112369%_ '()) '()))))
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
                                     _%hd112285112363%_
                                     _%hd112282112353%_
                                     _%hd112279112343%_
                                     _%hd112276112333%_
                                     _%hd112273112323%_
                                     _%hd112270112313%_)
                                    (_%g112258112292%_ _%g112259112296%_))))
                            (_%g112258112292%_ _%g112259112296%_))))
                    (_%g112258112292%_ _%g112259112296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112258112292%_
                                                     _%g112259112296%_))))
                                            (_%g112258112292%_
                                             _%g112259112296%_))))
                                    (_%g112258112292%_ _%g112259112296%_))))
                            (_%g112258112292%_ _%g112259112296%_))))
                    (_%g112258112292%_ _%g112259112296%_)))))
        (_%g112257112403%_ _%$stx112254%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx112407%_)
      (let* ((_%g112411112429%_
              (lambda (_%g112412112425%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112412112425%_)))
             (_%g112410112484%_
              (lambda (_%g112412112433%_)
                (if (gx#stx-pair? _%g112412112433%_)
                    (let ((_%e112415112436%_ (gx#syntax-e _%g112412112433%_)))
                      (let ((_%hd112416112440%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112415112436%_)))
                            (_%tl112417112443%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112415112436%_))))
                        (if (gx#stx-pair? _%tl112417112443%_)
                            (let ((_%e112418112446%_
                                   (gx#syntax-e _%tl112417112443%_)))
                              (let ((_%hd112419112450%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112418112446%_)))
                                    (_%tl112420112453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112418112446%_))))
                                (if (gx#stx-pair? _%tl112420112453%_)
                                    (let ((_%e112421112456%_
                                           (gx#syntax-e _%tl112420112453%_)))
                                      (let ((_%hd112422112460%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112421112456%_)))
                                            (_%tl112423112463%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112421112456%_))))
                                        (if (gx#stx-null? _%tl112423112463%_)
                                            ((lambda (_%g112413112466%_
                                                      _%g112414112468%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g112414112468%_ '()))
                   (cons _%g112413112466%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd112422112460%_
                                             _%hd112419112450%_)
                                            (_%g112411112429%_
                                             _%g112412112433%_))))
                                    (_%g112411112429%_ _%g112412112433%_))))
                            (_%g112411112429%_ _%g112412112433%_))))
                    (_%g112411112429%_ _%g112412112433%_)))))
        (_%g112410112484%_ _%$stx112407%_)))))

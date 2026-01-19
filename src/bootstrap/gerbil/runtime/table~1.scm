(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx99843%_)
      (let* ((_%g9984799865%_
              (lambda (_%g9984899861%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9984899861%_)))
             (_%g9984699921%_
              (lambda (_%g9984899869%_)
                (if (gx#stx-pair? _%g9984899869%_)
                    (let ((_%e9985199872%_ (gx#syntax-e _%g9984899869%_)))
                      (let ((_%hd9985299876%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9985199872%_)))
                            (_%tl9985399879%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9985199872%_))))
                        (if (gx#stx-pair? _%tl9985399879%_)
                            (let ((_%e9985499882%_
                                   (gx#syntax-e _%tl9985399879%_)))
                              (let ((_%hd9985599886%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9985499882%_)))
                                    (_%tl9985699889%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9985499882%_))))
                                (if (gx#stx-pair? _%tl9985699889%_)
                                    (let ((_%e9985799892%_
                                           (gx#syntax-e _%tl9985699889%_)))
                                      (let ((_%hd9985899896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9985799892%_)))
                                            (_%tl9985999899%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9985799892%_))))
                                        (if (gx#stx-null? _%tl9985999899%_)
                                            ((lambda (_%L99902%_ _%L99904%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%L99904%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%L99902%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9985899896%_
                                             _%hd9985599886%_)
                                            (_%g9984799865%_
                                             _%g9984899869%_))))
                                    (_%g9984799865%_ _%g9984899869%_))))
                            (_%g9984799865%_ _%g9984899869%_))))
                    (_%g9984799865%_ _%g9984899869%_)))))
        (_%g9984699921%_ _%$stx99843%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx99925%_)
      (let* ((_%g9992899950%_
              (lambda (_%g9992999946%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9992999946%_)))
             (_%g99927100263%_
              (lambda (_%g9992999954%_)
                (if (gx#stx-pair? _%g9992999954%_)
                    (let ((_%e9993399957%_ (gx#syntax-e _%g9992999954%_)))
                      (let ((_%hd9993499961%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9993399957%_)))
                            (_%tl9993599964%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9993399957%_))))
                        (if (gx#stx-pair? _%tl9993599964%_)
                            (let ((_%e9993699967%_
                                   (gx#syntax-e _%tl9993599964%_)))
                              (let ((_%hd9993799971%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9993699967%_)))
                                    (_%tl9993899974%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9993699967%_))))
                                (if (gx#stx-pair? _%tl9993899974%_)
                                    (let ((_%e9993999977%_
                                           (gx#syntax-e _%tl9993899974%_)))
                                      (let ((_%hd9994099981%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9993999977%_)))
                                            (_%tl9994199984%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9993999977%_))))
                                        (if (gx#stx-pair? _%tl9994199984%_)
                                            (let ((_%e9994299987%_
                                                   (gx#syntax-e
                                                    _%tl9994199984%_)))
                                              (let ((_%hd9994399991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9994299987%_)))
                                                    (_%tl9994499994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9994299987%_))))
                                                (if (gx#stx-null?
                                                     _%tl9994499994%_)
                                                    ((lambda (_%L99997%_
                                                              _%L99999%_
                                                              _%L100000%_)
                                                       (let* ((_%g100019100074%_
                                                               (lambda (_%g100020100070%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g100020100070%_)))
                      (_%g100018100259%_
                       (lambda (_%g100020100078%_)
                         (if (gx#stx-pair? _%g100020100078%_)
                             (let ((_%e100033100081%_
                                    (gx#syntax-e _%g100020100078%_)))
                               (let ((_%hd100034100085%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100033100081%_)))
                                     (_%tl100035100088%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100033100081%_))))
                                 (if (gx#stx-pair? _%tl100035100088%_)
                                     (let ((_%e100036100091%_
                                            (gx#syntax-e _%tl100035100088%_)))
                                       (let ((_%hd100037100095%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100036100091%_)))
                                             (_%tl100038100098%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100036100091%_))))
                                         (if (gx#stx-pair? _%tl100038100098%_)
                                             (let ((_%e100039100101%_
                                                    (gx#syntax-e
                                                     _%tl100038100098%_)))
                                               (let ((_%hd100040100105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100039100101%_)))
                                                     (_%tl100041100108%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100039100101%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100041100108%_)
                                                     (let ((_%e100042100111%_
                                                            (gx#syntax-e
                                                             _%tl100041100108%_)))
                                                       (let ((_%hd100043100115%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100042100111%_)))
                     (_%tl100044100118%_
                      (let () (declare (not safe)) (##cdr _%e100042100111%_))))
                 (if (gx#stx-pair? _%tl100044100118%_)
                     (let ((_%e100045100121%_
                            (gx#syntax-e _%tl100044100118%_)))
                       (let ((_%hd100046100125%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100045100121%_)))
                             (_%tl100047100128%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100045100121%_))))
                         (if (gx#stx-pair? _%tl100047100128%_)
                             (let ((_%e100048100131%_
                                    (gx#syntax-e _%tl100047100128%_)))
                               (let ((_%hd100049100135%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100048100131%_)))
                                     (_%tl100050100138%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100048100131%_))))
                                 (if (gx#stx-pair? _%tl100050100138%_)
                                     (let ((_%e100051100141%_
                                            (gx#syntax-e _%tl100050100138%_)))
                                       (let ((_%hd100052100145%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100051100141%_)))
                                             (_%tl100053100148%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100051100141%_))))
                                         (if (gx#stx-pair? _%tl100053100148%_)
                                             (let ((_%e100054100151%_
                                                    (gx#syntax-e
                                                     _%tl100053100148%_)))
                                               (let ((_%hd100055100155%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100054100151%_)))
                                                     (_%tl100056100158%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100054100151%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100056100158%_)
                                                     (let ((_%e100057100161%_
                                                            (gx#syntax-e
                                                             _%tl100056100158%_)))
                                                       (let ((_%hd100058100165%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100057100161%_)))
                     (_%tl100059100168%_
                      (let () (declare (not safe)) (##cdr _%e100057100161%_))))
                 (if (gx#stx-pair? _%tl100059100168%_)
                     (let ((_%e100060100171%_
                            (gx#syntax-e _%tl100059100168%_)))
                       (let ((_%hd100061100175%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100060100171%_)))
                             (_%tl100062100178%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100060100171%_))))
                         (if (gx#stx-pair? _%tl100062100178%_)
                             (let ((_%e100063100181%_
                                    (gx#syntax-e _%tl100062100178%_)))
                               (let ((_%hd100064100185%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100063100181%_)))
                                     (_%tl100065100188%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100063100181%_))))
                                 (if (gx#stx-pair? _%tl100065100188%_)
                                     (let ((_%e100066100191%_
                                            (gx#syntax-e _%tl100065100188%_)))
                                       (let ((_%hd100067100195%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100066100191%_)))
                                             (_%tl100068100198%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100066100191%_))))
                                         (if (gx#stx-null? _%tl100068100198%_)
                                             ((lambda (_%L100201%_
                                                       _%L100203%_
                                                       _%L100204%_
                                                       _%L100205%_
                                                       _%L100206%_
                                                       _%L100207%_
                                                       _%L100208%_
                                                       _%L100209%_
                                                       _%L100210%_
                                                       _%L100211%_
                                                       _%L100212%_
                                                       _%L100213%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%L100213%_
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
                                                  (cons _%L99999%_
                                                        (cons _%L99997%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%L100212%_
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
                                                        (cons _%L99999%_
                                                              (cons _%L99997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%L100211%_
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
                                              (cons _%L99999%_
                                                    (cons _%L99997%_
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
                                            (cons (cons _%L100210%_
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
                            (cons (cons _%L100211%_
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
                                                  (cons (cons _%L100209%_
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
                                                          (cons _%L99999%_
                                                                (cons _%L99997%_
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
                                                        (cons (cons _%L100208%_
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
                            (cons (cons _%L100209%_
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
                                                              (cons (cons _%L100207%_
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
                                              (cons (cons _%L100208%_
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
                            (cons (cons _%L100206%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%L100205%_
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
                                    (cons _%L99999%_
                                          (cons _%L99997%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%L100205%_
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
                                  (cons (cons _%L100205%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%L100205%_
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
                                              (cons (cons _%L100206%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%L100205%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%L100204%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%L100205%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%L100205%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%L100205%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%L100203%_
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
                                                      (cons _%L99999%_
                                                            (cons _%L99997%_
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
                                                    (cons (cons _%L100201%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%L100203%_
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
                                              _%hd100067100195%_
                                              _%hd100064100185%_
                                              _%hd100061100175%_
                                              _%hd100058100165%_
                                              _%hd100055100155%_
                                              _%hd100052100145%_
                                              _%hd100049100135%_
                                              _%hd100046100125%_
                                              _%hd100043100115%_
                                              _%hd100040100105%_
                                              _%hd100037100095%_
                                              _%hd100034100085%_)
                                             (_%g100019100074%_
                                              _%g100020100078%_))))
                                     (_%g100019100074%_ _%g100020100078%_))))
                             (_%g100019100074%_ _%g100020100078%_))))
                     (_%g100019100074%_ _%g100020100078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g100019100074%_
                                                      _%g100020100078%_))))
                                             (_%g100019100074%_
                                              _%g100020100078%_))))
                                     (_%g100019100074%_ _%g100020100078%_))))
                             (_%g100019100074%_ _%g100020100078%_))))
                     (_%g100019100074%_ _%g100020100078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g100019100074%_
                                                      _%g100020100078%_))))
                                             (_%g100019100074%_
                                              _%g100020100078%_))))
                                     (_%g100019100074%_ _%g100020100078%_))))
                             (_%g100019100074%_ _%g100020100078%_)))))
                 (_%g100018100259%_
                  (list (gx#stx-identifier _%L100000%_ '"make-" _%L100000%_)
                        (gx#stx-identifier
                         _%L100000%_
                         '"make-"
                         _%L100000%_
                         '"/lock")
                        (gx#stx-identifier _%L100000%_ _%L100000%_ '"-ref")
                        (gx#stx-identifier
                         _%L100000%_
                         _%L100000%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%L100000%_
                         '"__"
                         _%L100000%_
                         '"-set!")
                        (gx#stx-identifier _%L100000%_ _%L100000%_ '"-set!")
                        (gx#stx-identifier
                         _%L100000%_
                         _%L100000%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%L100000%_
                         '"__"
                         _%L100000%_
                         '"-update!")
                        (gx#stx-identifier _%L100000%_ _%L100000%_ '"-update!")
                        (gx#stx-identifier
                         _%L100000%_
                         _%L100000%_
                         '"-update!/lock")
                        (gx#stx-identifier _%L100000%_ _%L100000%_ '"-delete!")
                        (gx#stx-identifier
                         _%L100000%_
                         _%L100000%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9994399991%_
                                                     _%hd9994099981%_
                                                     _%hd9993799971%_)
                                                    (_%g9992899950%_
                                                     _%g9992999954%_))))
                                            (_%g9992899950%_
                                             _%g9992999954%_))))
                                    (_%g9992899950%_ _%g9992999954%_))))
                            (_%g9992899950%_ _%g9992999954%_))))
                    (_%g9992899950%_ _%g9992999954%_)))))
        (_%g99927100263%_ _%stx99925%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx100267%_)
      (let* ((_%g100271100293%_
              (lambda (_%g100272100289%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100272100289%_)))
             (_%g100270100362%_
              (lambda (_%g100272100297%_)
                (if (gx#stx-pair? _%g100272100297%_)
                    (let ((_%e100276100300%_ (gx#syntax-e _%g100272100297%_)))
                      (let ((_%hd100277100304%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100276100300%_)))
                            (_%tl100278100307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100276100300%_))))
                        (if (gx#stx-pair? _%tl100278100307%_)
                            (let ((_%e100279100310%_
                                   (gx#syntax-e _%tl100278100307%_)))
                              (let ((_%hd100280100314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100279100310%_)))
                                    (_%tl100281100317%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100279100310%_))))
                                (if (gx#stx-pair? _%tl100281100317%_)
                                    (let ((_%e100282100320%_
                                           (gx#syntax-e _%tl100281100317%_)))
                                      (let ((_%hd100283100324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100282100320%_)))
                                            (_%tl100284100327%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100282100320%_))))
                                        (if (gx#stx-pair? _%tl100284100327%_)
                                            (let ((_%e100285100330%_
                                                   (gx#syntax-e
                                                    _%tl100284100327%_)))
                                              (let ((_%hd100286100334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100285100330%_)))
                                                    (_%tl100287100337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100285100330%_))))
                                                (if (gx#stx-null?
                                                     _%tl100287100337%_)
                                                    ((lambda (_%L100340%_
                                                              _%L100342%_
                                                              _%L100343%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L100343%_
                                                   (cons _%L100342%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L100342%_ (cons _%L100342%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L100340%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd100286100334%_
                                                     _%hd100283100324%_
                                                     _%hd100280100314%_)
                                                    (_%g100271100293%_
                                                     _%g100272100297%_))))
                                            (_%g100271100293%_
                                             _%g100272100297%_))))
                                    (_%g100271100293%_ _%g100272100297%_))))
                            (_%g100271100293%_ _%g100272100297%_))))
                    (_%g100271100293%_ _%g100272100297%_)))))
        (_%g100270100362%_ _%$stx100267%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx100366%_)
      (let* ((_%g100370100404%_
              (lambda (_%g100371100400%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100371100400%_)))
             (_%g100369100515%_
              (lambda (_%g100371100408%_)
                (if (gx#stx-pair? _%g100371100408%_)
                    (let ((_%e100378100411%_ (gx#syntax-e _%g100371100408%_)))
                      (let ((_%hd100379100415%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100378100411%_)))
                            (_%tl100380100418%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100378100411%_))))
                        (if (gx#stx-pair? _%tl100380100418%_)
                            (let ((_%e100381100421%_
                                   (gx#syntax-e _%tl100380100418%_)))
                              (let ((_%hd100382100425%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100381100421%_)))
                                    (_%tl100383100428%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100381100421%_))))
                                (if (gx#stx-pair? _%tl100383100428%_)
                                    (let ((_%e100384100431%_
                                           (gx#syntax-e _%tl100383100428%_)))
                                      (let ((_%hd100385100435%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100384100431%_)))
                                            (_%tl100386100438%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100384100431%_))))
                                        (if (gx#stx-pair? _%tl100386100438%_)
                                            (let ((_%e100387100441%_
                                                   (gx#syntax-e
                                                    _%tl100386100438%_)))
                                              (let ((_%hd100388100445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100387100441%_)))
                                                    (_%tl100389100448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100387100441%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100389100448%_)
                                                    (let ((_%e100390100451%_
                                                           (gx#syntax-e
                                                            _%tl100389100448%_)))
                                                      (let ((_%hd100391100455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100390100451%_)))
                    (_%tl100392100458%_
                     (let () (declare (not safe)) (##cdr _%e100390100451%_))))
                (if (gx#stx-pair? _%tl100392100458%_)
                    (let ((_%e100393100461%_ (gx#syntax-e _%tl100392100458%_)))
                      (let ((_%hd100394100465%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100393100461%_)))
                            (_%tl100395100468%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100393100461%_))))
                        (if (gx#stx-pair? _%tl100395100468%_)
                            (let ((_%e100396100471%_
                                   (gx#syntax-e _%tl100395100468%_)))
                              (let ((_%hd100397100475%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100396100471%_)))
                                    (_%tl100398100478%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100396100471%_))))
                                (if (gx#stx-null? _%tl100398100478%_)
                                    ((lambda (_%L100481%_
                                              _%L100483%_
                                              _%L100484%_
                                              _%L100485%_
                                              _%L100486%_
                                              _%L100487%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L100485%_
                                               (cons _%L100483%_ '()))
                                         (cons _%L100486%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L100487%_ '()))
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
                               (cons _%L100487%_
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
                                     (cons _%L100481%_ '()))
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
                                     (cons (cons (cons _%L100484%_
                                                       (cons _%L100483%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L100487%_
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
                                     _%hd100397100475%_
                                     _%hd100394100465%_
                                     _%hd100391100455%_
                                     _%hd100388100445%_
                                     _%hd100385100435%_
                                     _%hd100382100425%_)
                                    (_%g100370100404%_ _%g100371100408%_))))
                            (_%g100370100404%_ _%g100371100408%_))))
                    (_%g100370100404%_ _%g100371100408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100370100404%_
                                                     _%g100371100408%_))))
                                            (_%g100370100404%_
                                             _%g100371100408%_))))
                                    (_%g100370100404%_ _%g100371100408%_))))
                            (_%g100370100404%_ _%g100371100408%_))))
                    (_%g100370100404%_ _%g100371100408%_)))))
        (_%g100369100515%_ _%$stx100366%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx100519%_)
      (let* ((_%g100523100565%_
              (lambda (_%g100524100561%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100524100561%_)))
             (_%g100522100704%_
              (lambda (_%g100524100569%_)
                (if (gx#stx-pair? _%g100524100569%_)
                    (let ((_%e100533100572%_ (gx#syntax-e _%g100524100569%_)))
                      (let ((_%hd100534100576%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100533100572%_)))
                            (_%tl100535100579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100533100572%_))))
                        (if (gx#stx-pair? _%tl100535100579%_)
                            (let ((_%e100536100582%_
                                   (gx#syntax-e _%tl100535100579%_)))
                              (let ((_%hd100537100586%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100536100582%_)))
                                    (_%tl100538100589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100536100582%_))))
                                (if (gx#stx-pair? _%tl100538100589%_)
                                    (let ((_%e100539100592%_
                                           (gx#syntax-e _%tl100538100589%_)))
                                      (let ((_%hd100540100596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100539100592%_)))
                                            (_%tl100541100599%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100539100592%_))))
                                        (if (gx#stx-pair? _%tl100541100599%_)
                                            (let ((_%e100542100602%_
                                                   (gx#syntax-e
                                                    _%tl100541100599%_)))
                                              (let ((_%hd100543100606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100542100602%_)))
                                                    (_%tl100544100609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100542100602%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100544100609%_)
                                                    (let ((_%e100545100612%_
                                                           (gx#syntax-e
                                                            _%tl100544100609%_)))
                                                      (let ((_%hd100546100616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100545100612%_)))
                    (_%tl100547100619%_
                     (let () (declare (not safe)) (##cdr _%e100545100612%_))))
                (if (gx#stx-pair? _%tl100547100619%_)
                    (let ((_%e100548100622%_ (gx#syntax-e _%tl100547100619%_)))
                      (let ((_%hd100549100626%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100548100622%_)))
                            (_%tl100550100629%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100548100622%_))))
                        (if (gx#stx-pair? _%tl100550100629%_)
                            (let ((_%e100551100632%_
                                   (gx#syntax-e _%tl100550100629%_)))
                              (let ((_%hd100552100636%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100551100632%_)))
                                    (_%tl100553100639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100551100632%_))))
                                (if (gx#stx-pair? _%tl100553100639%_)
                                    (let ((_%e100554100642%_
                                           (gx#syntax-e _%tl100553100639%_)))
                                      (let ((_%hd100555100646%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100554100642%_)))
                                            (_%tl100556100649%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100554100642%_))))
                                        (if (gx#stx-pair? _%tl100556100649%_)
                                            (let ((_%e100557100652%_
                                                   (gx#syntax-e
                                                    _%tl100556100649%_)))
                                              (let ((_%hd100558100656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100557100652%_)))
                                                    (_%tl100559100659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100557100652%_))))
                                                (if (gx#stx-null?
                                                     _%tl100559100659%_)
                                                    ((lambda (_%L100662%_
                                                              _%L100664%_
                                                              _%L100665%_
                                                              _%L100666%_
                                                              _%L100667%_
                                                              _%L100668%_
                                                              _%L100669%_
                                                              _%L100670%_)
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
                                                   (cons (cons _%L100668%_
                                                               (cons _%L100666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L100669%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L100670%_
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
                                               (cons _%L100670%_
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
                                                       (cons _%L100670%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L100666%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L100670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L100665%_ '()))))
               (cons (cons _%L100662%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L100670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L100666%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L100670%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L100665%_ '()))))
                     (cons (cons _%L100664%_ '()) '()))))
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
                                                     (cons (cons (cons _%L100667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L100666%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L100670%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L100666%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L100670%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L100665%_ '()))))
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
                                                     _%hd100558100656%_
                                                     _%hd100555100646%_
                                                     _%hd100552100636%_
                                                     _%hd100549100626%_
                                                     _%hd100546100616%_
                                                     _%hd100543100606%_
                                                     _%hd100540100596%_
                                                     _%hd100537100586%_)
                                                    (_%g100523100565%_
                                                     _%g100524100569%_))))
                                            (_%g100523100565%_
                                             _%g100524100569%_))))
                                    (_%g100523100565%_ _%g100524100569%_))))
                            (_%g100523100565%_ _%g100524100569%_))))
                    (_%g100523100565%_ _%g100524100569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100523100565%_
                                                     _%g100524100569%_))))
                                            (_%g100523100565%_
                                             _%g100524100569%_))))
                                    (_%g100523100565%_ _%g100524100569%_))))
                            (_%g100523100565%_ _%g100524100569%_))))
                    (_%g100523100565%_ _%g100524100569%_)))))
        (_%g100522100704%_ _%$stx100519%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx100708%_)
      (let* ((_%g100712100758%_
              (lambda (_%g100713100754%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100713100754%_)))
             (_%g100711100911%_
              (lambda (_%g100713100762%_)
                (if (gx#stx-pair? _%g100713100762%_)
                    (let ((_%e100723100765%_ (gx#syntax-e _%g100713100762%_)))
                      (let ((_%hd100724100769%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100723100765%_)))
                            (_%tl100725100772%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100723100765%_))))
                        (if (gx#stx-pair? _%tl100725100772%_)
                            (let ((_%e100726100775%_
                                   (gx#syntax-e _%tl100725100772%_)))
                              (let ((_%hd100727100779%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100726100775%_)))
                                    (_%tl100728100782%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100726100775%_))))
                                (if (gx#stx-pair? _%tl100728100782%_)
                                    (let ((_%e100729100785%_
                                           (gx#syntax-e _%tl100728100782%_)))
                                      (let ((_%hd100730100789%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100729100785%_)))
                                            (_%tl100731100792%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100729100785%_))))
                                        (if (gx#stx-pair? _%tl100731100792%_)
                                            (let ((_%e100732100795%_
                                                   (gx#syntax-e
                                                    _%tl100731100792%_)))
                                              (let ((_%hd100733100799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100732100795%_)))
                                                    (_%tl100734100802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100732100795%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100734100802%_)
                                                    (let ((_%e100735100805%_
                                                           (gx#syntax-e
                                                            _%tl100734100802%_)))
                                                      (let ((_%hd100736100809%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100735100805%_)))
                    (_%tl100737100812%_
                     (let () (declare (not safe)) (##cdr _%e100735100805%_))))
                (if (gx#stx-pair? _%tl100737100812%_)
                    (let ((_%e100738100815%_ (gx#syntax-e _%tl100737100812%_)))
                      (let ((_%hd100739100819%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100738100815%_)))
                            (_%tl100740100822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100738100815%_))))
                        (if (gx#stx-pair? _%tl100740100822%_)
                            (let ((_%e100741100825%_
                                   (gx#syntax-e _%tl100740100822%_)))
                              (let ((_%hd100742100829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100741100825%_)))
                                    (_%tl100743100832%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100741100825%_))))
                                (if (gx#stx-pair? _%tl100743100832%_)
                                    (let ((_%e100744100835%_
                                           (gx#syntax-e _%tl100743100832%_)))
                                      (let ((_%hd100745100839%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100744100835%_)))
                                            (_%tl100746100842%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100744100835%_))))
                                        (if (gx#stx-pair? _%tl100746100842%_)
                                            (let ((_%e100747100845%_
                                                   (gx#syntax-e
                                                    _%tl100746100842%_)))
                                              (let ((_%hd100748100849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100747100845%_)))
                                                    (_%tl100749100852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100747100845%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100749100852%_)
                                                    (let ((_%e100750100855%_
                                                           (gx#syntax-e
                                                            _%tl100749100852%_)))
                                                      (let ((_%hd100751100859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100750100855%_)))
                    (_%tl100752100862%_
                     (let () (declare (not safe)) (##cdr _%e100750100855%_))))
                (if (gx#stx-null? _%tl100752100862%_)
                    ((lambda (_%L100865%_
                              _%L100867%_
                              _%L100868%_
                              _%L100869%_
                              _%L100870%_
                              _%L100871%_
                              _%L100872%_
                              _%L100873%_
                              _%L100874%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L100872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L100870%_ '()))
                         (cons _%L100873%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L100874%_ '()))
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
                                                       (cons _%L100874%_
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
                                                               (cons _%L100874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L100870%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L100874%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L100869%_
                                                     (cons _%L100868%_ '()))
                                               '()))))
                       (cons (cons _%L100865%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L100874%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L100870%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L100874%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L100869%_
                                                           (cons _%L100868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L100867%_ '()) '()))))
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
                     (cons (cons (cons _%L100871%_
                                       (cons _%L100870%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L100874%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L100870%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L100874%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L100869%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L100874%_
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
                     _%hd100751100859%_
                     _%hd100748100849%_
                     _%hd100745100839%_
                     _%hd100742100829%_
                     _%hd100739100819%_
                     _%hd100736100809%_
                     _%hd100733100799%_
                     _%hd100730100789%_
                     _%hd100727100779%_)
                    (_%g100712100758%_ _%g100713100762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100712100758%_
                                                     _%g100713100762%_))))
                                            (_%g100712100758%_
                                             _%g100713100762%_))))
                                    (_%g100712100758%_ _%g100713100762%_))))
                            (_%g100712100758%_ _%g100713100762%_))))
                    (_%g100712100758%_ _%g100713100762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100712100758%_
                                                     _%g100713100762%_))))
                                            (_%g100712100758%_
                                             _%g100713100762%_))))
                                    (_%g100712100758%_ _%g100713100762%_))))
                            (_%g100712100758%_ _%g100713100762%_))))
                    (_%g100712100758%_ _%g100713100762%_)))))
        (_%g100711100911%_ _%$stx100708%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx100915%_)
      (let* ((_%g100919100953%_
              (lambda (_%g100920100949%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100920100949%_)))
             (_%g100918101064%_
              (lambda (_%g100920100957%_)
                (if (gx#stx-pair? _%g100920100957%_)
                    (let ((_%e100927100960%_ (gx#syntax-e _%g100920100957%_)))
                      (let ((_%hd100928100964%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100927100960%_)))
                            (_%tl100929100967%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100927100960%_))))
                        (if (gx#stx-pair? _%tl100929100967%_)
                            (let ((_%e100930100970%_
                                   (gx#syntax-e _%tl100929100967%_)))
                              (let ((_%hd100931100974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100930100970%_)))
                                    (_%tl100932100977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100930100970%_))))
                                (if (gx#stx-pair? _%tl100932100977%_)
                                    (let ((_%e100933100980%_
                                           (gx#syntax-e _%tl100932100977%_)))
                                      (let ((_%hd100934100984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100933100980%_)))
                                            (_%tl100935100987%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100933100980%_))))
                                        (if (gx#stx-pair? _%tl100935100987%_)
                                            (let ((_%e100936100990%_
                                                   (gx#syntax-e
                                                    _%tl100935100987%_)))
                                              (let ((_%hd100937100994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100936100990%_)))
                                                    (_%tl100938100997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100936100990%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100938100997%_)
                                                    (let ((_%e100939101000%_
                                                           (gx#syntax-e
                                                            _%tl100938100997%_)))
                                                      (let ((_%hd100940101004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100939101000%_)))
                    (_%tl100941101007%_
                     (let () (declare (not safe)) (##cdr _%e100939101000%_))))
                (if (gx#stx-pair? _%tl100941101007%_)
                    (let ((_%e100942101010%_ (gx#syntax-e _%tl100941101007%_)))
                      (let ((_%hd100943101014%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100942101010%_)))
                            (_%tl100944101017%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100942101010%_))))
                        (if (gx#stx-pair? _%tl100944101017%_)
                            (let ((_%e100945101020%_
                                   (gx#syntax-e _%tl100944101017%_)))
                              (let ((_%hd100946101024%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100945101020%_)))
                                    (_%tl100947101027%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100945101020%_))))
                                (if (gx#stx-null? _%tl100947101027%_)
                                    ((lambda (_%L101030%_
                                              _%L101032%_
                                              _%L101033%_
                                              _%L101034%_
                                              _%L101035%_
                                              _%L101036%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L101034%_
                                               (cons _%L101032%_ '()))
                                         (cons _%L101035%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L101036%_ '()))
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
                               (cons _%L101036%_
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
                                     (cons (cons (cons _%L101033%_
                                                       (cons _%L101032%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L101036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L101036%_
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
                     (cons (cons _%L101030%_ '()) '()))))
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
                                     _%hd100946101024%_
                                     _%hd100943101014%_
                                     _%hd100940101004%_
                                     _%hd100937100994%_
                                     _%hd100934100984%_
                                     _%hd100931100974%_)
                                    (_%g100919100953%_ _%g100920100957%_))))
                            (_%g100919100953%_ _%g100920100957%_))))
                    (_%g100919100953%_ _%g100920100957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100919100953%_
                                                     _%g100920100957%_))))
                                            (_%g100919100953%_
                                             _%g100920100957%_))))
                                    (_%g100919100953%_ _%g100920100957%_))))
                            (_%g100919100953%_ _%g100920100957%_))))
                    (_%g100919100953%_ _%g100920100957%_)))))
        (_%g100918101064%_ _%$stx100915%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx101068%_)
      (let* ((_%g101072101090%_
              (lambda (_%g101073101086%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101073101086%_)))
             (_%g101071101145%_
              (lambda (_%g101073101094%_)
                (if (gx#stx-pair? _%g101073101094%_)
                    (let ((_%e101076101097%_ (gx#syntax-e _%g101073101094%_)))
                      (let ((_%hd101077101101%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101076101097%_)))
                            (_%tl101078101104%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101076101097%_))))
                        (if (gx#stx-pair? _%tl101078101104%_)
                            (let ((_%e101079101107%_
                                   (gx#syntax-e _%tl101078101104%_)))
                              (let ((_%hd101080101111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101079101107%_)))
                                    (_%tl101081101114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101079101107%_))))
                                (if (gx#stx-pair? _%tl101081101114%_)
                                    (let ((_%e101082101117%_
                                           (gx#syntax-e _%tl101081101114%_)))
                                      (let ((_%hd101083101121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101082101117%_)))
                                            (_%tl101084101124%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101082101117%_))))
                                        (if (gx#stx-null? _%tl101084101124%_)
                                            ((lambda (_%L101127%_ _%L101129%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%L101129%_ '()))
                   (cons _%L101127%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd101083101121%_
                                             _%hd101080101111%_)
                                            (_%g101072101090%_
                                             _%g101073101094%_))))
                                    (_%g101072101090%_ _%g101073101094%_))))
                            (_%g101072101090%_ _%g101073101094%_))))
                    (_%g101072101090%_ _%g101073101094%_)))))
        (_%g101071101145%_ _%$stx101068%_)))))

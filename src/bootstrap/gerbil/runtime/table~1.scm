(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx297584%_)
      (let* ((_%g297588297606%_
              (lambda (_%g297589297602%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g297589297602%_)))
             (_%g297587297662%_
              (lambda (_%g297589297610%_)
                (if (gx#stx-pair? _%g297589297610%_)
                    (let ((_%e297592297613%_ (gx#syntax-e _%g297589297610%_)))
                      (let ((_%hd297593297617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e297592297613%_)))
                            (_%tl297594297620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e297592297613%_))))
                        (if (gx#stx-pair? _%tl297594297620%_)
                            (let ((_%e297595297623%_
                                   (gx#syntax-e _%tl297594297620%_)))
                              (let ((_%hd297596297627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e297595297623%_)))
                                    (_%tl297597297630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e297595297623%_))))
                                (if (gx#stx-pair? _%tl297597297630%_)
                                    (let ((_%e297598297633%_
                                           (gx#syntax-e _%tl297597297630%_)))
                                      (let ((_%hd297599297637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e297598297633%_)))
                                            (_%tl297600297640%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e297598297633%_))))
                                        (if (gx#stx-null? _%tl297600297640%_)
                                            ((lambda (_%g297590297643%_
                                                      _%g297591297645%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g297591297645%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g297590297643%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd297599297637%_
                                             _%hd297596297627%_)
                                            (_%g297588297606%_
                                             _%g297589297610%_))))
                                    (_%g297588297606%_ _%g297589297610%_))))
                            (_%g297588297606%_ _%g297589297610%_))))
                    (_%g297588297606%_ _%g297589297610%_)))))
        (_%g297587297662%_ _%$stx297584%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx297666%_)
      (let* ((_%g297669297691%_
              (lambda (_%g297670297687%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g297670297687%_)))
             (_%g297668298004%_
              (lambda (_%g297670297695%_)
                (if (gx#stx-pair? _%g297670297695%_)
                    (let ((_%e297674297698%_ (gx#syntax-e _%g297670297695%_)))
                      (let ((_%hd297675297702%_
                             (let ()
                               (declare (not safe))
                               (##car _%e297674297698%_)))
                            (_%tl297676297705%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e297674297698%_))))
                        (if (gx#stx-pair? _%tl297676297705%_)
                            (let ((_%e297677297708%_
                                   (gx#syntax-e _%tl297676297705%_)))
                              (let ((_%hd297678297712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e297677297708%_)))
                                    (_%tl297679297715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e297677297708%_))))
                                (if (gx#stx-pair? _%tl297679297715%_)
                                    (let ((_%e297680297718%_
                                           (gx#syntax-e _%tl297679297715%_)))
                                      (let ((_%hd297681297722%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e297680297718%_)))
                                            (_%tl297682297725%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e297680297718%_))))
                                        (if (gx#stx-pair? _%tl297682297725%_)
                                            (let ((_%e297683297728%_
                                                   (gx#syntax-e
                                                    _%tl297682297725%_)))
                                              (let ((_%hd297684297732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e297683297728%_)))
                                                    (_%tl297685297735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e297683297728%_))))
                                                (if (gx#stx-null?
                                                     _%tl297685297735%_)
                                                    ((lambda (_%g297671297738%_
                                                              _%g297672297740%_
                                                              _%g297673297741%_)
                                                       (let* ((_%g297760297815%_
                                                               (lambda (_%g297761297811%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g297761297811%_)))
                      (_%g297759298000%_
                       (lambda (_%g297761297819%_)
                         (if (gx#stx-pair? _%g297761297819%_)
                             (let ((_%e297774297822%_
                                    (gx#syntax-e _%g297761297819%_)))
                               (let ((_%hd297775297826%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e297774297822%_)))
                                     (_%tl297776297829%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e297774297822%_))))
                                 (if (gx#stx-pair? _%tl297776297829%_)
                                     (let ((_%e297777297832%_
                                            (gx#syntax-e _%tl297776297829%_)))
                                       (let ((_%hd297778297836%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e297777297832%_)))
                                             (_%tl297779297839%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e297777297832%_))))
                                         (if (gx#stx-pair? _%tl297779297839%_)
                                             (let ((_%e297780297842%_
                                                    (gx#syntax-e
                                                     _%tl297779297839%_)))
                                               (let ((_%hd297781297846%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e297780297842%_)))
                                                     (_%tl297782297849%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e297780297842%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl297782297849%_)
                                                     (let ((_%e297783297852%_
                                                            (gx#syntax-e
                                                             _%tl297782297849%_)))
                                                       (let ((_%hd297784297856%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e297783297852%_)))
                     (_%tl297785297859%_
                      (let () (declare (not safe)) (##cdr _%e297783297852%_))))
                 (if (gx#stx-pair? _%tl297785297859%_)
                     (let ((_%e297786297862%_
                            (gx#syntax-e _%tl297785297859%_)))
                       (let ((_%hd297787297866%_
                              (let ()
                                (declare (not safe))
                                (##car _%e297786297862%_)))
                             (_%tl297788297869%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e297786297862%_))))
                         (if (gx#stx-pair? _%tl297788297869%_)
                             (let ((_%e297789297872%_
                                    (gx#syntax-e _%tl297788297869%_)))
                               (let ((_%hd297790297876%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e297789297872%_)))
                                     (_%tl297791297879%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e297789297872%_))))
                                 (if (gx#stx-pair? _%tl297791297879%_)
                                     (let ((_%e297792297882%_
                                            (gx#syntax-e _%tl297791297879%_)))
                                       (let ((_%hd297793297886%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e297792297882%_)))
                                             (_%tl297794297889%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e297792297882%_))))
                                         (if (gx#stx-pair? _%tl297794297889%_)
                                             (let ((_%e297795297892%_
                                                    (gx#syntax-e
                                                     _%tl297794297889%_)))
                                               (let ((_%hd297796297896%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e297795297892%_)))
                                                     (_%tl297797297899%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e297795297892%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl297797297899%_)
                                                     (let ((_%e297798297902%_
                                                            (gx#syntax-e
                                                             _%tl297797297899%_)))
                                                       (let ((_%hd297799297906%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e297798297902%_)))
                     (_%tl297800297909%_
                      (let () (declare (not safe)) (##cdr _%e297798297902%_))))
                 (if (gx#stx-pair? _%tl297800297909%_)
                     (let ((_%e297801297912%_
                            (gx#syntax-e _%tl297800297909%_)))
                       (let ((_%hd297802297916%_
                              (let ()
                                (declare (not safe))
                                (##car _%e297801297912%_)))
                             (_%tl297803297919%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e297801297912%_))))
                         (if (gx#stx-pair? _%tl297803297919%_)
                             (let ((_%e297804297922%_
                                    (gx#syntax-e _%tl297803297919%_)))
                               (let ((_%hd297805297926%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e297804297922%_)))
                                     (_%tl297806297929%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e297804297922%_))))
                                 (if (gx#stx-pair? _%tl297806297929%_)
                                     (let ((_%e297807297932%_
                                            (gx#syntax-e _%tl297806297929%_)))
                                       (let ((_%hd297808297936%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e297807297932%_)))
                                             (_%tl297809297939%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e297807297932%_))))
                                         (if (gx#stx-null? _%tl297809297939%_)
                                             ((lambda (_%g297762297942%_
                                                       _%g297763297944%_
                                                       _%g297764297945%_
                                                       _%g297765297946%_
                                                       _%g297766297947%_
                                                       _%g297767297948%_
                                                       _%g297768297949%_
                                                       _%g297769297950%_
                                                       _%g297770297951%_
                                                       _%g297771297952%_
                                                       _%g297772297953%_
                                                       _%g297773297954%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g297773297954%_
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
                                                  (cons _%g297672297740%_
                                                        (cons _%g297671297738%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g297772297953%_
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
                                                        (cons _%g297672297740%_
                                                              (cons _%g297671297738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g297771297952%_
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
                                              (cons _%g297672297740%_
                                                    (cons _%g297671297738%_
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
                                            (cons (cons _%g297770297951%_
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
                            (cons (cons _%g297771297952%_
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
                                                  (cons (cons _%g297769297950%_
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
                                                          (cons _%g297672297740%_
                                                                (cons _%g297671297738%_
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
                                                        (cons (cons _%g297768297949%_
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
                            (cons (cons _%g297769297950%_
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
                                                              (cons (cons _%g297767297948%_
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
                                              (cons (cons _%g297768297949%_
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
                            (cons (cons _%g297766297947%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g297765297946%_
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
                                    (cons _%g297672297740%_
                                          (cons _%g297671297738%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g297765297946%_
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
                                  (cons (cons _%g297765297946%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g297765297946%_
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
                                              (cons (cons _%g297766297947%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g297765297946%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g297764297945%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g297765297946%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g297765297946%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g297765297946%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g297763297944%_
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
                                                      (cons _%g297672297740%_
                                                            (cons _%g297671297738%_
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
                                                    (cons (cons _%g297762297942%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g297763297944%_
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
                                              _%hd297808297936%_
                                              _%hd297805297926%_
                                              _%hd297802297916%_
                                              _%hd297799297906%_
                                              _%hd297796297896%_
                                              _%hd297793297886%_
                                              _%hd297790297876%_
                                              _%hd297787297866%_
                                              _%hd297784297856%_
                                              _%hd297781297846%_
                                              _%hd297778297836%_
                                              _%hd297775297826%_)
                                             (_%g297760297815%_
                                              _%g297761297819%_))))
                                     (_%g297760297815%_ _%g297761297819%_))))
                             (_%g297760297815%_ _%g297761297819%_))))
                     (_%g297760297815%_ _%g297761297819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g297760297815%_
                                                      _%g297761297819%_))))
                                             (_%g297760297815%_
                                              _%g297761297819%_))))
                                     (_%g297760297815%_ _%g297761297819%_))))
                             (_%g297760297815%_ _%g297761297819%_))))
                     (_%g297760297815%_ _%g297761297819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g297760297815%_
                                                      _%g297761297819%_))))
                                             (_%g297760297815%_
                                              _%g297761297819%_))))
                                     (_%g297760297815%_ _%g297761297819%_))))
                             (_%g297760297815%_ _%g297761297819%_)))))
                 (_%g297759298000%_
                  (list (gx#stx-identifier
                         _%g297673297741%_
                         '"make-"
                         _%g297673297741%_)
                        (gx#stx-identifier
                         _%g297673297741%_
                         '"make-"
                         _%g297673297741%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g297673297741%_
                         '"__"
                         _%g297673297741%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g297673297741%_
                         '"__"
                         _%g297673297741%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g297673297741%_
                         _%g297673297741%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd297684297732%_
                                                     _%hd297681297722%_
                                                     _%hd297678297712%_)
                                                    (_%g297669297691%_
                                                     _%g297670297695%_))))
                                            (_%g297669297691%_
                                             _%g297670297695%_))))
                                    (_%g297669297691%_ _%g297670297695%_))))
                            (_%g297669297691%_ _%g297670297695%_))))
                    (_%g297669297691%_ _%g297670297695%_)))))
        (_%g297668298004%_ _%stx297666%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx298008%_)
      (let* ((_%g298012298034%_
              (lambda (_%g298013298030%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g298013298030%_)))
             (_%g298011298103%_
              (lambda (_%g298013298038%_)
                (if (gx#stx-pair? _%g298013298038%_)
                    (let ((_%e298017298041%_ (gx#syntax-e _%g298013298038%_)))
                      (let ((_%hd298018298045%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298017298041%_)))
                            (_%tl298019298048%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298017298041%_))))
                        (if (gx#stx-pair? _%tl298019298048%_)
                            (let ((_%e298020298051%_
                                   (gx#syntax-e _%tl298019298048%_)))
                              (let ((_%hd298021298055%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298020298051%_)))
                                    (_%tl298022298058%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298020298051%_))))
                                (if (gx#stx-pair? _%tl298022298058%_)
                                    (let ((_%e298023298061%_
                                           (gx#syntax-e _%tl298022298058%_)))
                                      (let ((_%hd298024298065%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298023298061%_)))
                                            (_%tl298025298068%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298023298061%_))))
                                        (if (gx#stx-pair? _%tl298025298068%_)
                                            (let ((_%e298026298071%_
                                                   (gx#syntax-e
                                                    _%tl298025298068%_)))
                                              (let ((_%hd298027298075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298026298071%_)))
                                                    (_%tl298028298078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298026298071%_))))
                                                (if (gx#stx-null?
                                                     _%tl298028298078%_)
                                                    ((lambda (_%g298014298081%_
                                                              _%g298015298083%_
                                                              _%g298016298084%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g298016298084%_
                                                   (cons _%g298015298083%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g298015298083%_
                                   (cons _%g298015298083%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g298014298081%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd298027298075%_
                                                     _%hd298024298065%_
                                                     _%hd298021298055%_)
                                                    (_%g298012298034%_
                                                     _%g298013298038%_))))
                                            (_%g298012298034%_
                                             _%g298013298038%_))))
                                    (_%g298012298034%_ _%g298013298038%_))))
                            (_%g298012298034%_ _%g298013298038%_))))
                    (_%g298012298034%_ _%g298013298038%_)))))
        (_%g298011298103%_ _%$stx298008%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx298107%_)
      (let* ((_%g298111298145%_
              (lambda (_%g298112298141%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g298112298141%_)))
             (_%g298110298256%_
              (lambda (_%g298112298149%_)
                (if (gx#stx-pair? _%g298112298149%_)
                    (let ((_%e298119298152%_ (gx#syntax-e _%g298112298149%_)))
                      (let ((_%hd298120298156%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298119298152%_)))
                            (_%tl298121298159%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298119298152%_))))
                        (if (gx#stx-pair? _%tl298121298159%_)
                            (let ((_%e298122298162%_
                                   (gx#syntax-e _%tl298121298159%_)))
                              (let ((_%hd298123298166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298122298162%_)))
                                    (_%tl298124298169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298122298162%_))))
                                (if (gx#stx-pair? _%tl298124298169%_)
                                    (let ((_%e298125298172%_
                                           (gx#syntax-e _%tl298124298169%_)))
                                      (let ((_%hd298126298176%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298125298172%_)))
                                            (_%tl298127298179%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298125298172%_))))
                                        (if (gx#stx-pair? _%tl298127298179%_)
                                            (let ((_%e298128298182%_
                                                   (gx#syntax-e
                                                    _%tl298127298179%_)))
                                              (let ((_%hd298129298186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298128298182%_)))
                                                    (_%tl298130298189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298128298182%_))))
                                                (if (gx#stx-pair?
                                                     _%tl298130298189%_)
                                                    (let ((_%e298131298192%_
                                                           (gx#syntax-e
                                                            _%tl298130298189%_)))
                                                      (let ((_%hd298132298196%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e298131298192%_)))
                    (_%tl298133298199%_
                     (let () (declare (not safe)) (##cdr _%e298131298192%_))))
                (if (gx#stx-pair? _%tl298133298199%_)
                    (let ((_%e298134298202%_ (gx#syntax-e _%tl298133298199%_)))
                      (let ((_%hd298135298206%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298134298202%_)))
                            (_%tl298136298209%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298134298202%_))))
                        (if (gx#stx-pair? _%tl298136298209%_)
                            (let ((_%e298137298212%_
                                   (gx#syntax-e _%tl298136298209%_)))
                              (let ((_%hd298138298216%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298137298212%_)))
                                    (_%tl298139298219%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298137298212%_))))
                                (if (gx#stx-null? _%tl298139298219%_)
                                    ((lambda (_%g298113298222%_
                                              _%g298114298224%_
                                              _%g298115298225%_
                                              _%g298116298226%_
                                              _%g298117298227%_
                                              _%g298118298228%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g298116298226%_
                                               (cons _%g298114298224%_ '()))
                                         (cons _%g298117298227%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g298118298228%_ '()))
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
                               (cons _%g298118298228%_
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
                                     (cons _%g298113298222%_ '()))
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
                                     (cons (cons (cons _%g298115298225%_
                                                       (cons _%g298114298224%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g298118298228%_
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
                                     _%hd298138298216%_
                                     _%hd298135298206%_
                                     _%hd298132298196%_
                                     _%hd298129298186%_
                                     _%hd298126298176%_
                                     _%hd298123298166%_)
                                    (_%g298111298145%_ _%g298112298149%_))))
                            (_%g298111298145%_ _%g298112298149%_))))
                    (_%g298111298145%_ _%g298112298149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g298111298145%_
                                                     _%g298112298149%_))))
                                            (_%g298111298145%_
                                             _%g298112298149%_))))
                                    (_%g298111298145%_ _%g298112298149%_))))
                            (_%g298111298145%_ _%g298112298149%_))))
                    (_%g298111298145%_ _%g298112298149%_)))))
        (_%g298110298256%_ _%$stx298107%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx298260%_)
      (let* ((_%g298264298306%_
              (lambda (_%g298265298302%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g298265298302%_)))
             (_%g298263298445%_
              (lambda (_%g298265298310%_)
                (if (gx#stx-pair? _%g298265298310%_)
                    (let ((_%e298274298313%_ (gx#syntax-e _%g298265298310%_)))
                      (let ((_%hd298275298317%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298274298313%_)))
                            (_%tl298276298320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298274298313%_))))
                        (if (gx#stx-pair? _%tl298276298320%_)
                            (let ((_%e298277298323%_
                                   (gx#syntax-e _%tl298276298320%_)))
                              (let ((_%hd298278298327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298277298323%_)))
                                    (_%tl298279298330%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298277298323%_))))
                                (if (gx#stx-pair? _%tl298279298330%_)
                                    (let ((_%e298280298333%_
                                           (gx#syntax-e _%tl298279298330%_)))
                                      (let ((_%hd298281298337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298280298333%_)))
                                            (_%tl298282298340%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298280298333%_))))
                                        (if (gx#stx-pair? _%tl298282298340%_)
                                            (let ((_%e298283298343%_
                                                   (gx#syntax-e
                                                    _%tl298282298340%_)))
                                              (let ((_%hd298284298347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298283298343%_)))
                                                    (_%tl298285298350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298283298343%_))))
                                                (if (gx#stx-pair?
                                                     _%tl298285298350%_)
                                                    (let ((_%e298286298353%_
                                                           (gx#syntax-e
                                                            _%tl298285298350%_)))
                                                      (let ((_%hd298287298357%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e298286298353%_)))
                    (_%tl298288298360%_
                     (let () (declare (not safe)) (##cdr _%e298286298353%_))))
                (if (gx#stx-pair? _%tl298288298360%_)
                    (let ((_%e298289298363%_ (gx#syntax-e _%tl298288298360%_)))
                      (let ((_%hd298290298367%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298289298363%_)))
                            (_%tl298291298370%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298289298363%_))))
                        (if (gx#stx-pair? _%tl298291298370%_)
                            (let ((_%e298292298373%_
                                   (gx#syntax-e _%tl298291298370%_)))
                              (let ((_%hd298293298377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298292298373%_)))
                                    (_%tl298294298380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298292298373%_))))
                                (if (gx#stx-pair? _%tl298294298380%_)
                                    (let ((_%e298295298383%_
                                           (gx#syntax-e _%tl298294298380%_)))
                                      (let ((_%hd298296298387%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298295298383%_)))
                                            (_%tl298297298390%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298295298383%_))))
                                        (if (gx#stx-pair? _%tl298297298390%_)
                                            (let ((_%e298298298393%_
                                                   (gx#syntax-e
                                                    _%tl298297298390%_)))
                                              (let ((_%hd298299298397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298298298393%_)))
                                                    (_%tl298300298400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298298298393%_))))
                                                (if (gx#stx-null?
                                                     _%tl298300298400%_)
                                                    ((lambda (_%g298266298403%_
                                                              _%g298267298405%_
                                                              _%g298268298406%_
                                                              _%g298269298407%_
                                                              _%g298270298408%_
                                                              _%g298271298409%_
                                                              _%g298272298410%_
                                                              _%g298273298411%_)
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
                                                   (cons (cons _%g298271298409%_
                                                               (cons _%g298269298407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g298272298410%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g298273298411%_
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
                                               (cons _%g298273298411%_
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
                                                       (cons _%g298273298411%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g298269298407%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g298273298411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g298268298406%_ '()))))
               (cons (cons _%g298266298403%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g298273298411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g298269298407%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g298273298411%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g298268298406%_ '()))))
                     (cons (cons _%g298267298405%_ '()) '()))))
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
                                                     (cons (cons (cons _%g298270298408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g298269298407%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g298273298411%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g298269298407%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g298273298411%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g298268298406%_ '()))))
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
                                                     _%hd298299298397%_
                                                     _%hd298296298387%_
                                                     _%hd298293298377%_
                                                     _%hd298290298367%_
                                                     _%hd298287298357%_
                                                     _%hd298284298347%_
                                                     _%hd298281298337%_
                                                     _%hd298278298327%_)
                                                    (_%g298264298306%_
                                                     _%g298265298310%_))))
                                            (_%g298264298306%_
                                             _%g298265298310%_))))
                                    (_%g298264298306%_ _%g298265298310%_))))
                            (_%g298264298306%_ _%g298265298310%_))))
                    (_%g298264298306%_ _%g298265298310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g298264298306%_
                                                     _%g298265298310%_))))
                                            (_%g298264298306%_
                                             _%g298265298310%_))))
                                    (_%g298264298306%_ _%g298265298310%_))))
                            (_%g298264298306%_ _%g298265298310%_))))
                    (_%g298264298306%_ _%g298265298310%_)))))
        (_%g298263298445%_ _%$stx298260%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx298449%_)
      (let* ((_%g298453298499%_
              (lambda (_%g298454298495%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g298454298495%_)))
             (_%g298452298652%_
              (lambda (_%g298454298503%_)
                (if (gx#stx-pair? _%g298454298503%_)
                    (let ((_%e298464298506%_ (gx#syntax-e _%g298454298503%_)))
                      (let ((_%hd298465298510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298464298506%_)))
                            (_%tl298466298513%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298464298506%_))))
                        (if (gx#stx-pair? _%tl298466298513%_)
                            (let ((_%e298467298516%_
                                   (gx#syntax-e _%tl298466298513%_)))
                              (let ((_%hd298468298520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298467298516%_)))
                                    (_%tl298469298523%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298467298516%_))))
                                (if (gx#stx-pair? _%tl298469298523%_)
                                    (let ((_%e298470298526%_
                                           (gx#syntax-e _%tl298469298523%_)))
                                      (let ((_%hd298471298530%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298470298526%_)))
                                            (_%tl298472298533%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298470298526%_))))
                                        (if (gx#stx-pair? _%tl298472298533%_)
                                            (let ((_%e298473298536%_
                                                   (gx#syntax-e
                                                    _%tl298472298533%_)))
                                              (let ((_%hd298474298540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298473298536%_)))
                                                    (_%tl298475298543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298473298536%_))))
                                                (if (gx#stx-pair?
                                                     _%tl298475298543%_)
                                                    (let ((_%e298476298546%_
                                                           (gx#syntax-e
                                                            _%tl298475298543%_)))
                                                      (let ((_%hd298477298550%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e298476298546%_)))
                    (_%tl298478298553%_
                     (let () (declare (not safe)) (##cdr _%e298476298546%_))))
                (if (gx#stx-pair? _%tl298478298553%_)
                    (let ((_%e298479298556%_ (gx#syntax-e _%tl298478298553%_)))
                      (let ((_%hd298480298560%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298479298556%_)))
                            (_%tl298481298563%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298479298556%_))))
                        (if (gx#stx-pair? _%tl298481298563%_)
                            (let ((_%e298482298566%_
                                   (gx#syntax-e _%tl298481298563%_)))
                              (let ((_%hd298483298570%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298482298566%_)))
                                    (_%tl298484298573%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298482298566%_))))
                                (if (gx#stx-pair? _%tl298484298573%_)
                                    (let ((_%e298485298576%_
                                           (gx#syntax-e _%tl298484298573%_)))
                                      (let ((_%hd298486298580%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298485298576%_)))
                                            (_%tl298487298583%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298485298576%_))))
                                        (if (gx#stx-pair? _%tl298487298583%_)
                                            (let ((_%e298488298586%_
                                                   (gx#syntax-e
                                                    _%tl298487298583%_)))
                                              (let ((_%hd298489298590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298488298586%_)))
                                                    (_%tl298490298593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298488298586%_))))
                                                (if (gx#stx-pair?
                                                     _%tl298490298593%_)
                                                    (let ((_%e298491298596%_
                                                           (gx#syntax-e
                                                            _%tl298490298593%_)))
                                                      (let ((_%hd298492298600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e298491298596%_)))
                    (_%tl298493298603%_
                     (let () (declare (not safe)) (##cdr _%e298491298596%_))))
                (if (gx#stx-null? _%tl298493298603%_)
                    ((lambda (_%g298455298606%_
                              _%g298456298608%_
                              _%g298457298609%_
                              _%g298458298610%_
                              _%g298459298611%_
                              _%g298460298612%_
                              _%g298461298613%_
                              _%g298462298614%_
                              _%g298463298615%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g298461298613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g298459298611%_ '()))
                         (cons _%g298462298614%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g298463298615%_ '()))
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
                                                       (cons _%g298463298615%_
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
                                                               (cons _%g298463298615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g298459298611%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g298463298615%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g298458298610%_
                                                     (cons _%g298457298609%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g298455298606%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g298463298615%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g298459298611%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g298463298615%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g298458298610%_
                                                           (cons _%g298457298609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g298456298608%_ '()) '()))))
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
                     (cons (cons (cons _%g298460298612%_
                                       (cons _%g298459298611%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g298463298615%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g298459298611%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g298463298615%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g298458298610%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g298463298615%_
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
                     _%hd298492298600%_
                     _%hd298489298590%_
                     _%hd298486298580%_
                     _%hd298483298570%_
                     _%hd298480298560%_
                     _%hd298477298550%_
                     _%hd298474298540%_
                     _%hd298471298530%_
                     _%hd298468298520%_)
                    (_%g298453298499%_ _%g298454298503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g298453298499%_
                                                     _%g298454298503%_))))
                                            (_%g298453298499%_
                                             _%g298454298503%_))))
                                    (_%g298453298499%_ _%g298454298503%_))))
                            (_%g298453298499%_ _%g298454298503%_))))
                    (_%g298453298499%_ _%g298454298503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g298453298499%_
                                                     _%g298454298503%_))))
                                            (_%g298453298499%_
                                             _%g298454298503%_))))
                                    (_%g298453298499%_ _%g298454298503%_))))
                            (_%g298453298499%_ _%g298454298503%_))))
                    (_%g298453298499%_ _%g298454298503%_)))))
        (_%g298452298652%_ _%$stx298449%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx298656%_)
      (let* ((_%g298660298694%_
              (lambda (_%g298661298690%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g298661298690%_)))
             (_%g298659298805%_
              (lambda (_%g298661298698%_)
                (if (gx#stx-pair? _%g298661298698%_)
                    (let ((_%e298668298701%_ (gx#syntax-e _%g298661298698%_)))
                      (let ((_%hd298669298705%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298668298701%_)))
                            (_%tl298670298708%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298668298701%_))))
                        (if (gx#stx-pair? _%tl298670298708%_)
                            (let ((_%e298671298711%_
                                   (gx#syntax-e _%tl298670298708%_)))
                              (let ((_%hd298672298715%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298671298711%_)))
                                    (_%tl298673298718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298671298711%_))))
                                (if (gx#stx-pair? _%tl298673298718%_)
                                    (let ((_%e298674298721%_
                                           (gx#syntax-e _%tl298673298718%_)))
                                      (let ((_%hd298675298725%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298674298721%_)))
                                            (_%tl298676298728%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298674298721%_))))
                                        (if (gx#stx-pair? _%tl298676298728%_)
                                            (let ((_%e298677298731%_
                                                   (gx#syntax-e
                                                    _%tl298676298728%_)))
                                              (let ((_%hd298678298735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e298677298731%_)))
                                                    (_%tl298679298738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e298677298731%_))))
                                                (if (gx#stx-pair?
                                                     _%tl298679298738%_)
                                                    (let ((_%e298680298741%_
                                                           (gx#syntax-e
                                                            _%tl298679298738%_)))
                                                      (let ((_%hd298681298745%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e298680298741%_)))
                    (_%tl298682298748%_
                     (let () (declare (not safe)) (##cdr _%e298680298741%_))))
                (if (gx#stx-pair? _%tl298682298748%_)
                    (let ((_%e298683298751%_ (gx#syntax-e _%tl298682298748%_)))
                      (let ((_%hd298684298755%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298683298751%_)))
                            (_%tl298685298758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298683298751%_))))
                        (if (gx#stx-pair? _%tl298685298758%_)
                            (let ((_%e298686298761%_
                                   (gx#syntax-e _%tl298685298758%_)))
                              (let ((_%hd298687298765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298686298761%_)))
                                    (_%tl298688298768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298686298761%_))))
                                (if (gx#stx-null? _%tl298688298768%_)
                                    ((lambda (_%g298662298771%_
                                              _%g298663298773%_
                                              _%g298664298774%_
                                              _%g298665298775%_
                                              _%g298666298776%_
                                              _%g298667298777%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g298665298775%_
                                               (cons _%g298663298773%_ '()))
                                         (cons _%g298666298776%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g298667298777%_ '()))
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
                               (cons _%g298667298777%_
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
                                     (cons (cons (cons _%g298664298774%_
                                                       (cons _%g298663298773%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g298667298777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g298667298777%_
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
                     (cons (cons _%g298662298771%_ '()) '()))))
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
                                     _%hd298687298765%_
                                     _%hd298684298755%_
                                     _%hd298681298745%_
                                     _%hd298678298735%_
                                     _%hd298675298725%_
                                     _%hd298672298715%_)
                                    (_%g298660298694%_ _%g298661298698%_))))
                            (_%g298660298694%_ _%g298661298698%_))))
                    (_%g298660298694%_ _%g298661298698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g298660298694%_
                                                     _%g298661298698%_))))
                                            (_%g298660298694%_
                                             _%g298661298698%_))))
                                    (_%g298660298694%_ _%g298661298698%_))))
                            (_%g298660298694%_ _%g298661298698%_))))
                    (_%g298660298694%_ _%g298661298698%_)))))
        (_%g298659298805%_ _%$stx298656%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx298809%_)
      (let* ((_%g298813298831%_
              (lambda (_%g298814298827%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g298814298827%_)))
             (_%g298812298886%_
              (lambda (_%g298814298835%_)
                (if (gx#stx-pair? _%g298814298835%_)
                    (let ((_%e298817298838%_ (gx#syntax-e _%g298814298835%_)))
                      (let ((_%hd298818298842%_
                             (let ()
                               (declare (not safe))
                               (##car _%e298817298838%_)))
                            (_%tl298819298845%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e298817298838%_))))
                        (if (gx#stx-pair? _%tl298819298845%_)
                            (let ((_%e298820298848%_
                                   (gx#syntax-e _%tl298819298845%_)))
                              (let ((_%hd298821298852%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e298820298848%_)))
                                    (_%tl298822298855%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e298820298848%_))))
                                (if (gx#stx-pair? _%tl298822298855%_)
                                    (let ((_%e298823298858%_
                                           (gx#syntax-e _%tl298822298855%_)))
                                      (let ((_%hd298824298862%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e298823298858%_)))
                                            (_%tl298825298865%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e298823298858%_))))
                                        (if (gx#stx-null? _%tl298825298865%_)
                                            ((lambda (_%g298815298868%_
                                                      _%g298816298870%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g298816298870%_ '()))
                   (cons _%g298815298868%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd298824298862%_
                                             _%hd298821298852%_)
                                            (_%g298813298831%_
                                             _%g298814298835%_))))
                                    (_%g298813298831%_ _%g298814298835%_))))
                            (_%g298813298831%_ _%g298814298835%_))))
                    (_%g298813298831%_ _%g298814298835%_)))))
        (_%g298812298886%_ _%$stx298809%_)))))

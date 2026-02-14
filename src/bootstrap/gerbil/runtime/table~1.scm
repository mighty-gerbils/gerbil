(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx123769%_)
      (let* ((_%g123773123791%_
              (lambda (_%g123774123787%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g123774123787%_)))
             (_%g123772123847%_
              (lambda (_%g123774123795%_)
                (if (gx#stx-pair? _%g123774123795%_)
                    (let ((_%e123777123798%_ (gx#syntax-e _%g123774123795%_)))
                      (let ((_%hd123778123802%_
                             (let ()
                               (declare (not safe))
                               (##car _%e123777123798%_)))
                            (_%tl123779123805%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e123777123798%_))))
                        (if (gx#stx-pair? _%tl123779123805%_)
                            (let ((_%e123780123808%_
                                   (gx#syntax-e _%tl123779123805%_)))
                              (let ((_%hd123781123812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e123780123808%_)))
                                    (_%tl123782123815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e123780123808%_))))
                                (if (gx#stx-pair? _%tl123782123815%_)
                                    (let ((_%e123783123818%_
                                           (gx#syntax-e _%tl123782123815%_)))
                                      (let ((_%hd123784123822%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e123783123818%_)))
                                            (_%tl123785123825%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e123783123818%_))))
                                        (if (gx#stx-null? _%tl123785123825%_)
                                            ((lambda (_%g123775123828%_
                                                      _%g123776123830%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g123776123830%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g123775123828%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd123784123822%_
                                             _%hd123781123812%_)
                                            (_%g123773123791%_
                                             _%g123774123795%_))))
                                    (_%g123773123791%_ _%g123774123795%_))))
                            (_%g123773123791%_ _%g123774123795%_))))
                    (_%g123773123791%_ _%g123774123795%_)))))
        (_%g123772123847%_ _%$stx123769%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx123851%_)
      (let* ((_%g123854123876%_
              (lambda (_%g123855123872%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g123855123872%_)))
             (_%g123853124189%_
              (lambda (_%g123855123880%_)
                (if (gx#stx-pair? _%g123855123880%_)
                    (let ((_%e123859123883%_ (gx#syntax-e _%g123855123880%_)))
                      (let ((_%hd123860123887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e123859123883%_)))
                            (_%tl123861123890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e123859123883%_))))
                        (if (gx#stx-pair? _%tl123861123890%_)
                            (let ((_%e123862123893%_
                                   (gx#syntax-e _%tl123861123890%_)))
                              (let ((_%hd123863123897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e123862123893%_)))
                                    (_%tl123864123900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e123862123893%_))))
                                (if (gx#stx-pair? _%tl123864123900%_)
                                    (let ((_%e123865123903%_
                                           (gx#syntax-e _%tl123864123900%_)))
                                      (let ((_%hd123866123907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e123865123903%_)))
                                            (_%tl123867123910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e123865123903%_))))
                                        (if (gx#stx-pair? _%tl123867123910%_)
                                            (let ((_%e123868123913%_
                                                   (gx#syntax-e
                                                    _%tl123867123910%_)))
                                              (let ((_%hd123869123917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e123868123913%_)))
                                                    (_%tl123870123920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e123868123913%_))))
                                                (if (gx#stx-null?
                                                     _%tl123870123920%_)
                                                    ((lambda (_%g123856123923%_
                                                              _%g123857123925%_
                                                              _%g123858123926%_)
                                                       (let* ((_%g123945124000%_
                                                               (lambda (_%g123946123996%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g123946123996%_)))
                      (_%g123944124185%_
                       (lambda (_%g123946124004%_)
                         (if (gx#stx-pair? _%g123946124004%_)
                             (let ((_%e123959124007%_
                                    (gx#syntax-e _%g123946124004%_)))
                               (let ((_%hd123960124011%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e123959124007%_)))
                                     (_%tl123961124014%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e123959124007%_))))
                                 (if (gx#stx-pair? _%tl123961124014%_)
                                     (let ((_%e123962124017%_
                                            (gx#syntax-e _%tl123961124014%_)))
                                       (let ((_%hd123963124021%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e123962124017%_)))
                                             (_%tl123964124024%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e123962124017%_))))
                                         (if (gx#stx-pair? _%tl123964124024%_)
                                             (let ((_%e123965124027%_
                                                    (gx#syntax-e
                                                     _%tl123964124024%_)))
                                               (let ((_%hd123966124031%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e123965124027%_)))
                                                     (_%tl123967124034%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e123965124027%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl123967124034%_)
                                                     (let ((_%e123968124037%_
                                                            (gx#syntax-e
                                                             _%tl123967124034%_)))
                                                       (let ((_%hd123969124041%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e123968124037%_)))
                     (_%tl123970124044%_
                      (let () (declare (not safe)) (##cdr _%e123968124037%_))))
                 (if (gx#stx-pair? _%tl123970124044%_)
                     (let ((_%e123971124047%_
                            (gx#syntax-e _%tl123970124044%_)))
                       (let ((_%hd123972124051%_
                              (let ()
                                (declare (not safe))
                                (##car _%e123971124047%_)))
                             (_%tl123973124054%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e123971124047%_))))
                         (if (gx#stx-pair? _%tl123973124054%_)
                             (let ((_%e123974124057%_
                                    (gx#syntax-e _%tl123973124054%_)))
                               (let ((_%hd123975124061%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e123974124057%_)))
                                     (_%tl123976124064%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e123974124057%_))))
                                 (if (gx#stx-pair? _%tl123976124064%_)
                                     (let ((_%e123977124067%_
                                            (gx#syntax-e _%tl123976124064%_)))
                                       (let ((_%hd123978124071%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e123977124067%_)))
                                             (_%tl123979124074%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e123977124067%_))))
                                         (if (gx#stx-pair? _%tl123979124074%_)
                                             (let ((_%e123980124077%_
                                                    (gx#syntax-e
                                                     _%tl123979124074%_)))
                                               (let ((_%hd123981124081%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e123980124077%_)))
                                                     (_%tl123982124084%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e123980124077%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl123982124084%_)
                                                     (let ((_%e123983124087%_
                                                            (gx#syntax-e
                                                             _%tl123982124084%_)))
                                                       (let ((_%hd123984124091%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e123983124087%_)))
                     (_%tl123985124094%_
                      (let () (declare (not safe)) (##cdr _%e123983124087%_))))
                 (if (gx#stx-pair? _%tl123985124094%_)
                     (let ((_%e123986124097%_
                            (gx#syntax-e _%tl123985124094%_)))
                       (let ((_%hd123987124101%_
                              (let ()
                                (declare (not safe))
                                (##car _%e123986124097%_)))
                             (_%tl123988124104%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e123986124097%_))))
                         (if (gx#stx-pair? _%tl123988124104%_)
                             (let ((_%e123989124107%_
                                    (gx#syntax-e _%tl123988124104%_)))
                               (let ((_%hd123990124111%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e123989124107%_)))
                                     (_%tl123991124114%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e123989124107%_))))
                                 (if (gx#stx-pair? _%tl123991124114%_)
                                     (let ((_%e123992124117%_
                                            (gx#syntax-e _%tl123991124114%_)))
                                       (let ((_%hd123993124121%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e123992124117%_)))
                                             (_%tl123994124124%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e123992124117%_))))
                                         (if (gx#stx-null? _%tl123994124124%_)
                                             ((lambda (_%g123947124127%_
                                                       _%g123948124129%_
                                                       _%g123949124130%_
                                                       _%g123950124131%_
                                                       _%g123951124132%_
                                                       _%g123952124133%_
                                                       _%g123953124134%_
                                                       _%g123954124135%_
                                                       _%g123955124136%_
                                                       _%g123956124137%_
                                                       _%g123957124138%_
                                                       _%g123958124139%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g123958124139%_
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
                                                  (cons _%g123857123925%_
                                                        (cons _%g123856123923%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g123957124138%_
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
                                                        (cons _%g123857123925%_
                                                              (cons _%g123856123923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g123956124137%_
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
                                              (cons _%g123857123925%_
                                                    (cons _%g123856123923%_
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
                                            (cons (cons _%g123955124136%_
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
                            (cons (cons _%g123956124137%_
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
                                                  (cons (cons _%g123954124135%_
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
                                                          (cons _%g123857123925%_
                                                                (cons _%g123856123923%_
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
                                                        (cons (cons _%g123953124134%_
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
                            (cons (cons _%g123954124135%_
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
                                                              (cons (cons _%g123952124133%_
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
                                              (cons (cons _%g123953124134%_
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
                            (cons (cons _%g123951124132%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g123950124131%_
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
                                    (cons _%g123857123925%_
                                          (cons _%g123856123923%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g123950124131%_
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
                                  (cons (cons _%g123950124131%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g123950124131%_
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
                                              (cons (cons _%g123951124132%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g123950124131%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g123949124130%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g123950124131%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g123950124131%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g123950124131%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g123948124129%_
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
                                                      (cons _%g123857123925%_
                                                            (cons _%g123856123923%_
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
                                                    (cons (cons _%g123947124127%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g123948124129%_
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
                                              _%hd123993124121%_
                                              _%hd123990124111%_
                                              _%hd123987124101%_
                                              _%hd123984124091%_
                                              _%hd123981124081%_
                                              _%hd123978124071%_
                                              _%hd123975124061%_
                                              _%hd123972124051%_
                                              _%hd123969124041%_
                                              _%hd123966124031%_
                                              _%hd123963124021%_
                                              _%hd123960124011%_)
                                             (_%g123945124000%_
                                              _%g123946124004%_))))
                                     (_%g123945124000%_ _%g123946124004%_))))
                             (_%g123945124000%_ _%g123946124004%_))))
                     (_%g123945124000%_ _%g123946124004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g123945124000%_
                                                      _%g123946124004%_))))
                                             (_%g123945124000%_
                                              _%g123946124004%_))))
                                     (_%g123945124000%_ _%g123946124004%_))))
                             (_%g123945124000%_ _%g123946124004%_))))
                     (_%g123945124000%_ _%g123946124004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g123945124000%_
                                                      _%g123946124004%_))))
                                             (_%g123945124000%_
                                              _%g123946124004%_))))
                                     (_%g123945124000%_ _%g123946124004%_))))
                             (_%g123945124000%_ _%g123946124004%_)))))
                 (_%g123944124185%_
                  (list (gx#stx-identifier
                         _%g123858123926%_
                         '"make-"
                         _%g123858123926%_)
                        (gx#stx-identifier
                         _%g123858123926%_
                         '"make-"
                         _%g123858123926%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g123858123926%_
                         '"__"
                         _%g123858123926%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g123858123926%_
                         '"__"
                         _%g123858123926%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g123858123926%_
                         _%g123858123926%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd123869123917%_
                                                     _%hd123866123907%_
                                                     _%hd123863123897%_)
                                                    (_%g123854123876%_
                                                     _%g123855123880%_))))
                                            (_%g123854123876%_
                                             _%g123855123880%_))))
                                    (_%g123854123876%_ _%g123855123880%_))))
                            (_%g123854123876%_ _%g123855123880%_))))
                    (_%g123854123876%_ _%g123855123880%_)))))
        (_%g123853124189%_ _%stx123851%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx124193%_)
      (let* ((_%g124197124219%_
              (lambda (_%g124198124215%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g124198124215%_)))
             (_%g124196124288%_
              (lambda (_%g124198124223%_)
                (if (gx#stx-pair? _%g124198124223%_)
                    (let ((_%e124202124226%_ (gx#syntax-e _%g124198124223%_)))
                      (let ((_%hd124203124230%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124202124226%_)))
                            (_%tl124204124233%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124202124226%_))))
                        (if (gx#stx-pair? _%tl124204124233%_)
                            (let ((_%e124205124236%_
                                   (gx#syntax-e _%tl124204124233%_)))
                              (let ((_%hd124206124240%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124205124236%_)))
                                    (_%tl124207124243%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124205124236%_))))
                                (if (gx#stx-pair? _%tl124207124243%_)
                                    (let ((_%e124208124246%_
                                           (gx#syntax-e _%tl124207124243%_)))
                                      (let ((_%hd124209124250%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124208124246%_)))
                                            (_%tl124210124253%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124208124246%_))))
                                        (if (gx#stx-pair? _%tl124210124253%_)
                                            (let ((_%e124211124256%_
                                                   (gx#syntax-e
                                                    _%tl124210124253%_)))
                                              (let ((_%hd124212124260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124211124256%_)))
                                                    (_%tl124213124263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124211124256%_))))
                                                (if (gx#stx-null?
                                                     _%tl124213124263%_)
                                                    ((lambda (_%g124199124266%_
                                                              _%g124200124268%_
                                                              _%g124201124269%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g124201124269%_
                                                   (cons _%g124200124268%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g124200124268%_
                                   (cons _%g124200124268%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g124199124266%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd124212124260%_
                                                     _%hd124209124250%_
                                                     _%hd124206124240%_)
                                                    (_%g124197124219%_
                                                     _%g124198124223%_))))
                                            (_%g124197124219%_
                                             _%g124198124223%_))))
                                    (_%g124197124219%_ _%g124198124223%_))))
                            (_%g124197124219%_ _%g124198124223%_))))
                    (_%g124197124219%_ _%g124198124223%_)))))
        (_%g124196124288%_ _%$stx124193%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx124292%_)
      (let* ((_%g124296124330%_
              (lambda (_%g124297124326%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g124297124326%_)))
             (_%g124295124441%_
              (lambda (_%g124297124334%_)
                (if (gx#stx-pair? _%g124297124334%_)
                    (let ((_%e124304124337%_ (gx#syntax-e _%g124297124334%_)))
                      (let ((_%hd124305124341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124304124337%_)))
                            (_%tl124306124344%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124304124337%_))))
                        (if (gx#stx-pair? _%tl124306124344%_)
                            (let ((_%e124307124347%_
                                   (gx#syntax-e _%tl124306124344%_)))
                              (let ((_%hd124308124351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124307124347%_)))
                                    (_%tl124309124354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124307124347%_))))
                                (if (gx#stx-pair? _%tl124309124354%_)
                                    (let ((_%e124310124357%_
                                           (gx#syntax-e _%tl124309124354%_)))
                                      (let ((_%hd124311124361%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124310124357%_)))
                                            (_%tl124312124364%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124310124357%_))))
                                        (if (gx#stx-pair? _%tl124312124364%_)
                                            (let ((_%e124313124367%_
                                                   (gx#syntax-e
                                                    _%tl124312124364%_)))
                                              (let ((_%hd124314124371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124313124367%_)))
                                                    (_%tl124315124374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124313124367%_))))
                                                (if (gx#stx-pair?
                                                     _%tl124315124374%_)
                                                    (let ((_%e124316124377%_
                                                           (gx#syntax-e
                                                            _%tl124315124374%_)))
                                                      (let ((_%hd124317124381%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e124316124377%_)))
                    (_%tl124318124384%_
                     (let () (declare (not safe)) (##cdr _%e124316124377%_))))
                (if (gx#stx-pair? _%tl124318124384%_)
                    (let ((_%e124319124387%_ (gx#syntax-e _%tl124318124384%_)))
                      (let ((_%hd124320124391%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124319124387%_)))
                            (_%tl124321124394%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124319124387%_))))
                        (if (gx#stx-pair? _%tl124321124394%_)
                            (let ((_%e124322124397%_
                                   (gx#syntax-e _%tl124321124394%_)))
                              (let ((_%hd124323124401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124322124397%_)))
                                    (_%tl124324124404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124322124397%_))))
                                (if (gx#stx-null? _%tl124324124404%_)
                                    ((lambda (_%g124298124407%_
                                              _%g124299124409%_
                                              _%g124300124410%_
                                              _%g124301124411%_
                                              _%g124302124412%_
                                              _%g124303124413%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g124301124411%_
                                               (cons _%g124299124409%_ '()))
                                         (cons _%g124302124412%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g124303124413%_ '()))
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
                               (cons _%g124303124413%_
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
                                     (cons _%g124298124407%_ '()))
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
                                     (cons (cons (cons _%g124300124410%_
                                                       (cons _%g124299124409%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g124303124413%_
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
                                     _%hd124323124401%_
                                     _%hd124320124391%_
                                     _%hd124317124381%_
                                     _%hd124314124371%_
                                     _%hd124311124361%_
                                     _%hd124308124351%_)
                                    (_%g124296124330%_ _%g124297124334%_))))
                            (_%g124296124330%_ _%g124297124334%_))))
                    (_%g124296124330%_ _%g124297124334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g124296124330%_
                                                     _%g124297124334%_))))
                                            (_%g124296124330%_
                                             _%g124297124334%_))))
                                    (_%g124296124330%_ _%g124297124334%_))))
                            (_%g124296124330%_ _%g124297124334%_))))
                    (_%g124296124330%_ _%g124297124334%_)))))
        (_%g124295124441%_ _%$stx124292%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx124445%_)
      (let* ((_%g124449124491%_
              (lambda (_%g124450124487%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g124450124487%_)))
             (_%g124448124630%_
              (lambda (_%g124450124495%_)
                (if (gx#stx-pair? _%g124450124495%_)
                    (let ((_%e124459124498%_ (gx#syntax-e _%g124450124495%_)))
                      (let ((_%hd124460124502%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124459124498%_)))
                            (_%tl124461124505%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124459124498%_))))
                        (if (gx#stx-pair? _%tl124461124505%_)
                            (let ((_%e124462124508%_
                                   (gx#syntax-e _%tl124461124505%_)))
                              (let ((_%hd124463124512%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124462124508%_)))
                                    (_%tl124464124515%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124462124508%_))))
                                (if (gx#stx-pair? _%tl124464124515%_)
                                    (let ((_%e124465124518%_
                                           (gx#syntax-e _%tl124464124515%_)))
                                      (let ((_%hd124466124522%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124465124518%_)))
                                            (_%tl124467124525%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124465124518%_))))
                                        (if (gx#stx-pair? _%tl124467124525%_)
                                            (let ((_%e124468124528%_
                                                   (gx#syntax-e
                                                    _%tl124467124525%_)))
                                              (let ((_%hd124469124532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124468124528%_)))
                                                    (_%tl124470124535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124468124528%_))))
                                                (if (gx#stx-pair?
                                                     _%tl124470124535%_)
                                                    (let ((_%e124471124538%_
                                                           (gx#syntax-e
                                                            _%tl124470124535%_)))
                                                      (let ((_%hd124472124542%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e124471124538%_)))
                    (_%tl124473124545%_
                     (let () (declare (not safe)) (##cdr _%e124471124538%_))))
                (if (gx#stx-pair? _%tl124473124545%_)
                    (let ((_%e124474124548%_ (gx#syntax-e _%tl124473124545%_)))
                      (let ((_%hd124475124552%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124474124548%_)))
                            (_%tl124476124555%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124474124548%_))))
                        (if (gx#stx-pair? _%tl124476124555%_)
                            (let ((_%e124477124558%_
                                   (gx#syntax-e _%tl124476124555%_)))
                              (let ((_%hd124478124562%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124477124558%_)))
                                    (_%tl124479124565%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124477124558%_))))
                                (if (gx#stx-pair? _%tl124479124565%_)
                                    (let ((_%e124480124568%_
                                           (gx#syntax-e _%tl124479124565%_)))
                                      (let ((_%hd124481124572%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124480124568%_)))
                                            (_%tl124482124575%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124480124568%_))))
                                        (if (gx#stx-pair? _%tl124482124575%_)
                                            (let ((_%e124483124578%_
                                                   (gx#syntax-e
                                                    _%tl124482124575%_)))
                                              (let ((_%hd124484124582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124483124578%_)))
                                                    (_%tl124485124585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124483124578%_))))
                                                (if (gx#stx-null?
                                                     _%tl124485124585%_)
                                                    ((lambda (_%g124451124588%_
                                                              _%g124452124590%_
                                                              _%g124453124591%_
                                                              _%g124454124592%_
                                                              _%g124455124593%_
                                                              _%g124456124594%_
                                                              _%g124457124595%_
                                                              _%g124458124596%_)
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
                                                   (cons (cons _%g124456124594%_
                                                               (cons _%g124454124592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g124457124595%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g124458124596%_
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
                                               (cons _%g124458124596%_
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
                                                       (cons _%g124458124596%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g124454124592%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g124458124596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g124453124591%_ '()))))
               (cons (cons _%g124451124588%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g124458124596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g124454124592%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g124458124596%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g124453124591%_ '()))))
                     (cons (cons _%g124452124590%_ '()) '()))))
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
                                                     (cons (cons (cons _%g124455124593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g124454124592%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g124458124596%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g124454124592%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g124458124596%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g124453124591%_ '()))))
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
                                                     _%hd124484124582%_
                                                     _%hd124481124572%_
                                                     _%hd124478124562%_
                                                     _%hd124475124552%_
                                                     _%hd124472124542%_
                                                     _%hd124469124532%_
                                                     _%hd124466124522%_
                                                     _%hd124463124512%_)
                                                    (_%g124449124491%_
                                                     _%g124450124495%_))))
                                            (_%g124449124491%_
                                             _%g124450124495%_))))
                                    (_%g124449124491%_ _%g124450124495%_))))
                            (_%g124449124491%_ _%g124450124495%_))))
                    (_%g124449124491%_ _%g124450124495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g124449124491%_
                                                     _%g124450124495%_))))
                                            (_%g124449124491%_
                                             _%g124450124495%_))))
                                    (_%g124449124491%_ _%g124450124495%_))))
                            (_%g124449124491%_ _%g124450124495%_))))
                    (_%g124449124491%_ _%g124450124495%_)))))
        (_%g124448124630%_ _%$stx124445%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx124634%_)
      (let* ((_%g124638124684%_
              (lambda (_%g124639124680%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g124639124680%_)))
             (_%g124637124837%_
              (lambda (_%g124639124688%_)
                (if (gx#stx-pair? _%g124639124688%_)
                    (let ((_%e124649124691%_ (gx#syntax-e _%g124639124688%_)))
                      (let ((_%hd124650124695%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124649124691%_)))
                            (_%tl124651124698%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124649124691%_))))
                        (if (gx#stx-pair? _%tl124651124698%_)
                            (let ((_%e124652124701%_
                                   (gx#syntax-e _%tl124651124698%_)))
                              (let ((_%hd124653124705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124652124701%_)))
                                    (_%tl124654124708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124652124701%_))))
                                (if (gx#stx-pair? _%tl124654124708%_)
                                    (let ((_%e124655124711%_
                                           (gx#syntax-e _%tl124654124708%_)))
                                      (let ((_%hd124656124715%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124655124711%_)))
                                            (_%tl124657124718%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124655124711%_))))
                                        (if (gx#stx-pair? _%tl124657124718%_)
                                            (let ((_%e124658124721%_
                                                   (gx#syntax-e
                                                    _%tl124657124718%_)))
                                              (let ((_%hd124659124725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124658124721%_)))
                                                    (_%tl124660124728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124658124721%_))))
                                                (if (gx#stx-pair?
                                                     _%tl124660124728%_)
                                                    (let ((_%e124661124731%_
                                                           (gx#syntax-e
                                                            _%tl124660124728%_)))
                                                      (let ((_%hd124662124735%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e124661124731%_)))
                    (_%tl124663124738%_
                     (let () (declare (not safe)) (##cdr _%e124661124731%_))))
                (if (gx#stx-pair? _%tl124663124738%_)
                    (let ((_%e124664124741%_ (gx#syntax-e _%tl124663124738%_)))
                      (let ((_%hd124665124745%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124664124741%_)))
                            (_%tl124666124748%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124664124741%_))))
                        (if (gx#stx-pair? _%tl124666124748%_)
                            (let ((_%e124667124751%_
                                   (gx#syntax-e _%tl124666124748%_)))
                              (let ((_%hd124668124755%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124667124751%_)))
                                    (_%tl124669124758%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124667124751%_))))
                                (if (gx#stx-pair? _%tl124669124758%_)
                                    (let ((_%e124670124761%_
                                           (gx#syntax-e _%tl124669124758%_)))
                                      (let ((_%hd124671124765%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124670124761%_)))
                                            (_%tl124672124768%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124670124761%_))))
                                        (if (gx#stx-pair? _%tl124672124768%_)
                                            (let ((_%e124673124771%_
                                                   (gx#syntax-e
                                                    _%tl124672124768%_)))
                                              (let ((_%hd124674124775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124673124771%_)))
                                                    (_%tl124675124778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124673124771%_))))
                                                (if (gx#stx-pair?
                                                     _%tl124675124778%_)
                                                    (let ((_%e124676124781%_
                                                           (gx#syntax-e
                                                            _%tl124675124778%_)))
                                                      (let ((_%hd124677124785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e124676124781%_)))
                    (_%tl124678124788%_
                     (let () (declare (not safe)) (##cdr _%e124676124781%_))))
                (if (gx#stx-null? _%tl124678124788%_)
                    ((lambda (_%g124640124791%_
                              _%g124641124793%_
                              _%g124642124794%_
                              _%g124643124795%_
                              _%g124644124796%_
                              _%g124645124797%_
                              _%g124646124798%_
                              _%g124647124799%_
                              _%g124648124800%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g124646124798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g124644124796%_ '()))
                         (cons _%g124647124799%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g124648124800%_ '()))
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
                                                       (cons _%g124648124800%_
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
                                                               (cons _%g124648124800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g124644124796%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g124648124800%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g124643124795%_
                                                     (cons _%g124642124794%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g124640124791%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g124648124800%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g124644124796%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g124648124800%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g124643124795%_
                                                           (cons _%g124642124794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g124641124793%_ '()) '()))))
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
                     (cons (cons (cons _%g124645124797%_
                                       (cons _%g124644124796%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g124648124800%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g124644124796%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g124648124800%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g124643124795%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g124648124800%_
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
                     _%hd124677124785%_
                     _%hd124674124775%_
                     _%hd124671124765%_
                     _%hd124668124755%_
                     _%hd124665124745%_
                     _%hd124662124735%_
                     _%hd124659124725%_
                     _%hd124656124715%_
                     _%hd124653124705%_)
                    (_%g124638124684%_ _%g124639124688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g124638124684%_
                                                     _%g124639124688%_))))
                                            (_%g124638124684%_
                                             _%g124639124688%_))))
                                    (_%g124638124684%_ _%g124639124688%_))))
                            (_%g124638124684%_ _%g124639124688%_))))
                    (_%g124638124684%_ _%g124639124688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g124638124684%_
                                                     _%g124639124688%_))))
                                            (_%g124638124684%_
                                             _%g124639124688%_))))
                                    (_%g124638124684%_ _%g124639124688%_))))
                            (_%g124638124684%_ _%g124639124688%_))))
                    (_%g124638124684%_ _%g124639124688%_)))))
        (_%g124637124837%_ _%$stx124634%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx124841%_)
      (let* ((_%g124845124879%_
              (lambda (_%g124846124875%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g124846124875%_)))
             (_%g124844124990%_
              (lambda (_%g124846124883%_)
                (if (gx#stx-pair? _%g124846124883%_)
                    (let ((_%e124853124886%_ (gx#syntax-e _%g124846124883%_)))
                      (let ((_%hd124854124890%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124853124886%_)))
                            (_%tl124855124893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124853124886%_))))
                        (if (gx#stx-pair? _%tl124855124893%_)
                            (let ((_%e124856124896%_
                                   (gx#syntax-e _%tl124855124893%_)))
                              (let ((_%hd124857124900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124856124896%_)))
                                    (_%tl124858124903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124856124896%_))))
                                (if (gx#stx-pair? _%tl124858124903%_)
                                    (let ((_%e124859124906%_
                                           (gx#syntax-e _%tl124858124903%_)))
                                      (let ((_%hd124860124910%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e124859124906%_)))
                                            (_%tl124861124913%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e124859124906%_))))
                                        (if (gx#stx-pair? _%tl124861124913%_)
                                            (let ((_%e124862124916%_
                                                   (gx#syntax-e
                                                    _%tl124861124913%_)))
                                              (let ((_%hd124863124920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e124862124916%_)))
                                                    (_%tl124864124923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e124862124916%_))))
                                                (if (gx#stx-pair?
                                                     _%tl124864124923%_)
                                                    (let ((_%e124865124926%_
                                                           (gx#syntax-e
                                                            _%tl124864124923%_)))
                                                      (let ((_%hd124866124930%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e124865124926%_)))
                    (_%tl124867124933%_
                     (let () (declare (not safe)) (##cdr _%e124865124926%_))))
                (if (gx#stx-pair? _%tl124867124933%_)
                    (let ((_%e124868124936%_ (gx#syntax-e _%tl124867124933%_)))
                      (let ((_%hd124869124940%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124868124936%_)))
                            (_%tl124870124943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124868124936%_))))
                        (if (gx#stx-pair? _%tl124870124943%_)
                            (let ((_%e124871124946%_
                                   (gx#syntax-e _%tl124870124943%_)))
                              (let ((_%hd124872124950%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e124871124946%_)))
                                    (_%tl124873124953%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e124871124946%_))))
                                (if (gx#stx-null? _%tl124873124953%_)
                                    ((lambda (_%g124847124956%_
                                              _%g124848124958%_
                                              _%g124849124959%_
                                              _%g124850124960%_
                                              _%g124851124961%_
                                              _%g124852124962%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g124850124960%_
                                               (cons _%g124848124958%_ '()))
                                         (cons _%g124851124961%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g124852124962%_ '()))
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
                               (cons _%g124852124962%_
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
                                     (cons (cons (cons _%g124849124959%_
                                                       (cons _%g124848124958%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g124852124962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g124852124962%_
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
                     (cons (cons _%g124847124956%_ '()) '()))))
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
                                     _%hd124872124950%_
                                     _%hd124869124940%_
                                     _%hd124866124930%_
                                     _%hd124863124920%_
                                     _%hd124860124910%_
                                     _%hd124857124900%_)
                                    (_%g124845124879%_ _%g124846124883%_))))
                            (_%g124845124879%_ _%g124846124883%_))))
                    (_%g124845124879%_ _%g124846124883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g124845124879%_
                                                     _%g124846124883%_))))
                                            (_%g124845124879%_
                                             _%g124846124883%_))))
                                    (_%g124845124879%_ _%g124846124883%_))))
                            (_%g124845124879%_ _%g124846124883%_))))
                    (_%g124845124879%_ _%g124846124883%_)))))
        (_%g124844124990%_ _%$stx124841%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx124994%_)
      (let* ((_%g124998125016%_
              (lambda (_%g124999125012%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g124999125012%_)))
             (_%g124997125071%_
              (lambda (_%g124999125020%_)
                (if (gx#stx-pair? _%g124999125020%_)
                    (let ((_%e125002125023%_ (gx#syntax-e _%g124999125020%_)))
                      (let ((_%hd125003125027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e125002125023%_)))
                            (_%tl125004125030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e125002125023%_))))
                        (if (gx#stx-pair? _%tl125004125030%_)
                            (let ((_%e125005125033%_
                                   (gx#syntax-e _%tl125004125030%_)))
                              (let ((_%hd125006125037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e125005125033%_)))
                                    (_%tl125007125040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e125005125033%_))))
                                (if (gx#stx-pair? _%tl125007125040%_)
                                    (let ((_%e125008125043%_
                                           (gx#syntax-e _%tl125007125040%_)))
                                      (let ((_%hd125009125047%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e125008125043%_)))
                                            (_%tl125010125050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e125008125043%_))))
                                        (if (gx#stx-null? _%tl125010125050%_)
                                            ((lambda (_%g125000125053%_
                                                      _%g125001125055%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g125001125055%_ '()))
                   (cons _%g125000125053%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd125009125047%_
                                             _%hd125006125037%_)
                                            (_%g124998125016%_
                                             _%g124999125020%_))))
                                    (_%g124998125016%_ _%g124999125020%_))))
                            (_%g124998125016%_ _%g124999125020%_))))
                    (_%g124998125016%_ _%g124999125020%_)))))
        (_%g124997125071%_ _%$stx124994%_)))))

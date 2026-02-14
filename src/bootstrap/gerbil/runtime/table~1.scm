(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx114762%_)
      (let* ((_%g114766114784%_
              (lambda (_%g114767114780%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114767114780%_)))
             (_%g114765114840%_
              (lambda (_%g114767114788%_)
                (if (gx#stx-pair? _%g114767114788%_)
                    (let ((_%e114770114791%_ (gx#syntax-e _%g114767114788%_)))
                      (let ((_%hd114771114795%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114770114791%_)))
                            (_%tl114772114798%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114770114791%_))))
                        (if (gx#stx-pair? _%tl114772114798%_)
                            (let ((_%e114773114801%_
                                   (gx#syntax-e _%tl114772114798%_)))
                              (let ((_%hd114774114805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114773114801%_)))
                                    (_%tl114775114808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114773114801%_))))
                                (if (gx#stx-pair? _%tl114775114808%_)
                                    (let ((_%e114776114811%_
                                           (gx#syntax-e _%tl114775114808%_)))
                                      (let ((_%hd114777114815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114776114811%_)))
                                            (_%tl114778114818%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114776114811%_))))
                                        (if (gx#stx-null? _%tl114778114818%_)
                                            ((lambda (_%g114768114821%_
                                                      _%g114769114823%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g114769114823%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g114768114821%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd114777114815%_
                                             _%hd114774114805%_)
                                            (_%g114766114784%_
                                             _%g114767114788%_))))
                                    (_%g114766114784%_ _%g114767114788%_))))
                            (_%g114766114784%_ _%g114767114788%_))))
                    (_%g114766114784%_ _%g114767114788%_)))))
        (_%g114765114840%_ _%$stx114762%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx114844%_)
      (let* ((_%g114847114869%_
              (lambda (_%g114848114865%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114848114865%_)))
             (_%g114846115182%_
              (lambda (_%g114848114873%_)
                (if (gx#stx-pair? _%g114848114873%_)
                    (let ((_%e114852114876%_ (gx#syntax-e _%g114848114873%_)))
                      (let ((_%hd114853114880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114852114876%_)))
                            (_%tl114854114883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114852114876%_))))
                        (if (gx#stx-pair? _%tl114854114883%_)
                            (let ((_%e114855114886%_
                                   (gx#syntax-e _%tl114854114883%_)))
                              (let ((_%hd114856114890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114855114886%_)))
                                    (_%tl114857114893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114855114886%_))))
                                (if (gx#stx-pair? _%tl114857114893%_)
                                    (let ((_%e114858114896%_
                                           (gx#syntax-e _%tl114857114893%_)))
                                      (let ((_%hd114859114900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114858114896%_)))
                                            (_%tl114860114903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114858114896%_))))
                                        (if (gx#stx-pair? _%tl114860114903%_)
                                            (let ((_%e114861114906%_
                                                   (gx#syntax-e
                                                    _%tl114860114903%_)))
                                              (let ((_%hd114862114910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114861114906%_)))
                                                    (_%tl114863114913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114861114906%_))))
                                                (if (gx#stx-null?
                                                     _%tl114863114913%_)
                                                    ((lambda (_%g114849114916%_
                                                              _%g114850114918%_
                                                              _%g114851114919%_)
                                                       (let* ((_%g114938114993%_
                                                               (lambda (_%g114939114989%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114939114989%_)))
                      (_%g114937115178%_
                       (lambda (_%g114939114997%_)
                         (if (gx#stx-pair? _%g114939114997%_)
                             (let ((_%e114952115000%_
                                    (gx#syntax-e _%g114939114997%_)))
                               (let ((_%hd114953115004%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114952115000%_)))
                                     (_%tl114954115007%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114952115000%_))))
                                 (if (gx#stx-pair? _%tl114954115007%_)
                                     (let ((_%e114955115010%_
                                            (gx#syntax-e _%tl114954115007%_)))
                                       (let ((_%hd114956115014%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114955115010%_)))
                                             (_%tl114957115017%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114955115010%_))))
                                         (if (gx#stx-pair? _%tl114957115017%_)
                                             (let ((_%e114958115020%_
                                                    (gx#syntax-e
                                                     _%tl114957115017%_)))
                                               (let ((_%hd114959115024%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e114958115020%_)))
                                                     (_%tl114960115027%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e114958115020%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl114960115027%_)
                                                     (let ((_%e114961115030%_
                                                            (gx#syntax-e
                                                             _%tl114960115027%_)))
                                                       (let ((_%hd114962115034%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e114961115030%_)))
                     (_%tl114963115037%_
                      (let () (declare (not safe)) (##cdr _%e114961115030%_))))
                 (if (gx#stx-pair? _%tl114963115037%_)
                     (let ((_%e114964115040%_
                            (gx#syntax-e _%tl114963115037%_)))
                       (let ((_%hd114965115044%_
                              (let ()
                                (declare (not safe))
                                (##car _%e114964115040%_)))
                             (_%tl114966115047%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e114964115040%_))))
                         (if (gx#stx-pair? _%tl114966115047%_)
                             (let ((_%e114967115050%_
                                    (gx#syntax-e _%tl114966115047%_)))
                               (let ((_%hd114968115054%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114967115050%_)))
                                     (_%tl114969115057%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114967115050%_))))
                                 (if (gx#stx-pair? _%tl114969115057%_)
                                     (let ((_%e114970115060%_
                                            (gx#syntax-e _%tl114969115057%_)))
                                       (let ((_%hd114971115064%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114970115060%_)))
                                             (_%tl114972115067%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114970115060%_))))
                                         (if (gx#stx-pair? _%tl114972115067%_)
                                             (let ((_%e114973115070%_
                                                    (gx#syntax-e
                                                     _%tl114972115067%_)))
                                               (let ((_%hd114974115074%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e114973115070%_)))
                                                     (_%tl114975115077%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e114973115070%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl114975115077%_)
                                                     (let ((_%e114976115080%_
                                                            (gx#syntax-e
                                                             _%tl114975115077%_)))
                                                       (let ((_%hd114977115084%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e114976115080%_)))
                     (_%tl114978115087%_
                      (let () (declare (not safe)) (##cdr _%e114976115080%_))))
                 (if (gx#stx-pair? _%tl114978115087%_)
                     (let ((_%e114979115090%_
                            (gx#syntax-e _%tl114978115087%_)))
                       (let ((_%hd114980115094%_
                              (let ()
                                (declare (not safe))
                                (##car _%e114979115090%_)))
                             (_%tl114981115097%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e114979115090%_))))
                         (if (gx#stx-pair? _%tl114981115097%_)
                             (let ((_%e114982115100%_
                                    (gx#syntax-e _%tl114981115097%_)))
                               (let ((_%hd114983115104%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114982115100%_)))
                                     (_%tl114984115107%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114982115100%_))))
                                 (if (gx#stx-pair? _%tl114984115107%_)
                                     (let ((_%e114985115110%_
                                            (gx#syntax-e _%tl114984115107%_)))
                                       (let ((_%hd114986115114%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114985115110%_)))
                                             (_%tl114987115117%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114985115110%_))))
                                         (if (gx#stx-null? _%tl114987115117%_)
                                             ((lambda (_%g114940115120%_
                                                       _%g114941115122%_
                                                       _%g114942115123%_
                                                       _%g114943115124%_
                                                       _%g114944115125%_
                                                       _%g114945115126%_
                                                       _%g114946115127%_
                                                       _%g114947115128%_
                                                       _%g114948115129%_
                                                       _%g114949115130%_
                                                       _%g114950115131%_
                                                       _%g114951115132%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g114951115132%_
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
                                                  (cons _%g114850114918%_
                                                        (cons _%g114849114916%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g114950115131%_
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
                                                        (cons _%g114850114918%_
                                                              (cons _%g114849114916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g114949115130%_
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
                                              (cons _%g114850114918%_
                                                    (cons _%g114849114916%_
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
                                            (cons (cons _%g114948115129%_
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
                            (cons (cons _%g114949115130%_
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
                                                  (cons (cons _%g114947115128%_
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
                                                          (cons _%g114850114918%_
                                                                (cons _%g114849114916%_
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
                                                        (cons (cons _%g114946115127%_
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
                            (cons (cons _%g114947115128%_
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
                                                              (cons (cons _%g114945115126%_
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
                                              (cons (cons _%g114946115127%_
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
                            (cons (cons _%g114944115125%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g114943115124%_
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
                                    (cons _%g114850114918%_
                                          (cons _%g114849114916%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g114943115124%_
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
                                  (cons (cons _%g114943115124%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g114943115124%_
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
                                              (cons (cons _%g114944115125%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g114943115124%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g114942115123%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g114943115124%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g114943115124%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g114943115124%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g114941115122%_
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
                                                      (cons _%g114850114918%_
                                                            (cons _%g114849114916%_
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
                                                    (cons (cons _%g114940115120%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g114941115122%_
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
                                              _%hd114986115114%_
                                              _%hd114983115104%_
                                              _%hd114980115094%_
                                              _%hd114977115084%_
                                              _%hd114974115074%_
                                              _%hd114971115064%_
                                              _%hd114968115054%_
                                              _%hd114965115044%_
                                              _%hd114962115034%_
                                              _%hd114959115024%_
                                              _%hd114956115014%_
                                              _%hd114953115004%_)
                                             (_%g114938114993%_
                                              _%g114939114997%_))))
                                     (_%g114938114993%_ _%g114939114997%_))))
                             (_%g114938114993%_ _%g114939114997%_))))
                     (_%g114938114993%_ _%g114939114997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114938114993%_
                                                      _%g114939114997%_))))
                                             (_%g114938114993%_
                                              _%g114939114997%_))))
                                     (_%g114938114993%_ _%g114939114997%_))))
                             (_%g114938114993%_ _%g114939114997%_))))
                     (_%g114938114993%_ _%g114939114997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114938114993%_
                                                      _%g114939114997%_))))
                                             (_%g114938114993%_
                                              _%g114939114997%_))))
                                     (_%g114938114993%_ _%g114939114997%_))))
                             (_%g114938114993%_ _%g114939114997%_)))))
                 (_%g114937115178%_
                  (list (gx#stx-identifier
                         _%g114851114919%_
                         '"make-"
                         _%g114851114919%_)
                        (gx#stx-identifier
                         _%g114851114919%_
                         '"make-"
                         _%g114851114919%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g114851114919%_
                         '"__"
                         _%g114851114919%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g114851114919%_
                         '"__"
                         _%g114851114919%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g114851114919%_
                         _%g114851114919%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd114862114910%_
                                                     _%hd114859114900%_
                                                     _%hd114856114890%_)
                                                    (_%g114847114869%_
                                                     _%g114848114873%_))))
                                            (_%g114847114869%_
                                             _%g114848114873%_))))
                                    (_%g114847114869%_ _%g114848114873%_))))
                            (_%g114847114869%_ _%g114848114873%_))))
                    (_%g114847114869%_ _%g114848114873%_)))))
        (_%g114846115182%_ _%stx114844%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx115186%_)
      (let* ((_%g115190115212%_
              (lambda (_%g115191115208%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115191115208%_)))
             (_%g115189115281%_
              (lambda (_%g115191115216%_)
                (if (gx#stx-pair? _%g115191115216%_)
                    (let ((_%e115195115219%_ (gx#syntax-e _%g115191115216%_)))
                      (let ((_%hd115196115223%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115195115219%_)))
                            (_%tl115197115226%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115195115219%_))))
                        (if (gx#stx-pair? _%tl115197115226%_)
                            (let ((_%e115198115229%_
                                   (gx#syntax-e _%tl115197115226%_)))
                              (let ((_%hd115199115233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115198115229%_)))
                                    (_%tl115200115236%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115198115229%_))))
                                (if (gx#stx-pair? _%tl115200115236%_)
                                    (let ((_%e115201115239%_
                                           (gx#syntax-e _%tl115200115236%_)))
                                      (let ((_%hd115202115243%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115201115239%_)))
                                            (_%tl115203115246%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115201115239%_))))
                                        (if (gx#stx-pair? _%tl115203115246%_)
                                            (let ((_%e115204115249%_
                                                   (gx#syntax-e
                                                    _%tl115203115246%_)))
                                              (let ((_%hd115205115253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115204115249%_)))
                                                    (_%tl115206115256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115204115249%_))))
                                                (if (gx#stx-null?
                                                     _%tl115206115256%_)
                                                    ((lambda (_%g115192115259%_
                                                              _%g115193115261%_
                                                              _%g115194115262%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g115194115262%_
                                                   (cons _%g115193115261%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g115193115261%_
                                   (cons _%g115193115261%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g115192115259%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd115205115253%_
                                                     _%hd115202115243%_
                                                     _%hd115199115233%_)
                                                    (_%g115190115212%_
                                                     _%g115191115216%_))))
                                            (_%g115190115212%_
                                             _%g115191115216%_))))
                                    (_%g115190115212%_ _%g115191115216%_))))
                            (_%g115190115212%_ _%g115191115216%_))))
                    (_%g115190115212%_ _%g115191115216%_)))))
        (_%g115189115281%_ _%$stx115186%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx115285%_)
      (let* ((_%g115289115323%_
              (lambda (_%g115290115319%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115290115319%_)))
             (_%g115288115434%_
              (lambda (_%g115290115327%_)
                (if (gx#stx-pair? _%g115290115327%_)
                    (let ((_%e115297115330%_ (gx#syntax-e _%g115290115327%_)))
                      (let ((_%hd115298115334%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115297115330%_)))
                            (_%tl115299115337%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115297115330%_))))
                        (if (gx#stx-pair? _%tl115299115337%_)
                            (let ((_%e115300115340%_
                                   (gx#syntax-e _%tl115299115337%_)))
                              (let ((_%hd115301115344%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115300115340%_)))
                                    (_%tl115302115347%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115300115340%_))))
                                (if (gx#stx-pair? _%tl115302115347%_)
                                    (let ((_%e115303115350%_
                                           (gx#syntax-e _%tl115302115347%_)))
                                      (let ((_%hd115304115354%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115303115350%_)))
                                            (_%tl115305115357%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115303115350%_))))
                                        (if (gx#stx-pair? _%tl115305115357%_)
                                            (let ((_%e115306115360%_
                                                   (gx#syntax-e
                                                    _%tl115305115357%_)))
                                              (let ((_%hd115307115364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115306115360%_)))
                                                    (_%tl115308115367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115306115360%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115308115367%_)
                                                    (let ((_%e115309115370%_
                                                           (gx#syntax-e
                                                            _%tl115308115367%_)))
                                                      (let ((_%hd115310115374%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115309115370%_)))
                    (_%tl115311115377%_
                     (let () (declare (not safe)) (##cdr _%e115309115370%_))))
                (if (gx#stx-pair? _%tl115311115377%_)
                    (let ((_%e115312115380%_ (gx#syntax-e _%tl115311115377%_)))
                      (let ((_%hd115313115384%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115312115380%_)))
                            (_%tl115314115387%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115312115380%_))))
                        (if (gx#stx-pair? _%tl115314115387%_)
                            (let ((_%e115315115390%_
                                   (gx#syntax-e _%tl115314115387%_)))
                              (let ((_%hd115316115394%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115315115390%_)))
                                    (_%tl115317115397%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115315115390%_))))
                                (if (gx#stx-null? _%tl115317115397%_)
                                    ((lambda (_%g115291115400%_
                                              _%g115292115402%_
                                              _%g115293115403%_
                                              _%g115294115404%_
                                              _%g115295115405%_
                                              _%g115296115406%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115294115404%_
                                               (cons _%g115292115402%_ '()))
                                         (cons _%g115295115405%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115296115406%_ '()))
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
                               (cons _%g115296115406%_
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
                                     (cons _%g115291115400%_ '()))
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
                                     (cons (cons (cons _%g115293115403%_
                                                       (cons _%g115292115402%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g115296115406%_
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
                                     _%hd115316115394%_
                                     _%hd115313115384%_
                                     _%hd115310115374%_
                                     _%hd115307115364%_
                                     _%hd115304115354%_
                                     _%hd115301115344%_)
                                    (_%g115289115323%_ _%g115290115327%_))))
                            (_%g115289115323%_ _%g115290115327%_))))
                    (_%g115289115323%_ _%g115290115327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115289115323%_
                                                     _%g115290115327%_))))
                                            (_%g115289115323%_
                                             _%g115290115327%_))))
                                    (_%g115289115323%_ _%g115290115327%_))))
                            (_%g115289115323%_ _%g115290115327%_))))
                    (_%g115289115323%_ _%g115290115327%_)))))
        (_%g115288115434%_ _%$stx115285%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx115438%_)
      (let* ((_%g115442115484%_
              (lambda (_%g115443115480%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115443115480%_)))
             (_%g115441115623%_
              (lambda (_%g115443115488%_)
                (if (gx#stx-pair? _%g115443115488%_)
                    (let ((_%e115452115491%_ (gx#syntax-e _%g115443115488%_)))
                      (let ((_%hd115453115495%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115452115491%_)))
                            (_%tl115454115498%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115452115491%_))))
                        (if (gx#stx-pair? _%tl115454115498%_)
                            (let ((_%e115455115501%_
                                   (gx#syntax-e _%tl115454115498%_)))
                              (let ((_%hd115456115505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115455115501%_)))
                                    (_%tl115457115508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115455115501%_))))
                                (if (gx#stx-pair? _%tl115457115508%_)
                                    (let ((_%e115458115511%_
                                           (gx#syntax-e _%tl115457115508%_)))
                                      (let ((_%hd115459115515%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115458115511%_)))
                                            (_%tl115460115518%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115458115511%_))))
                                        (if (gx#stx-pair? _%tl115460115518%_)
                                            (let ((_%e115461115521%_
                                                   (gx#syntax-e
                                                    _%tl115460115518%_)))
                                              (let ((_%hd115462115525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115461115521%_)))
                                                    (_%tl115463115528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115461115521%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115463115528%_)
                                                    (let ((_%e115464115531%_
                                                           (gx#syntax-e
                                                            _%tl115463115528%_)))
                                                      (let ((_%hd115465115535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115464115531%_)))
                    (_%tl115466115538%_
                     (let () (declare (not safe)) (##cdr _%e115464115531%_))))
                (if (gx#stx-pair? _%tl115466115538%_)
                    (let ((_%e115467115541%_ (gx#syntax-e _%tl115466115538%_)))
                      (let ((_%hd115468115545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115467115541%_)))
                            (_%tl115469115548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115467115541%_))))
                        (if (gx#stx-pair? _%tl115469115548%_)
                            (let ((_%e115470115551%_
                                   (gx#syntax-e _%tl115469115548%_)))
                              (let ((_%hd115471115555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115470115551%_)))
                                    (_%tl115472115558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115470115551%_))))
                                (if (gx#stx-pair? _%tl115472115558%_)
                                    (let ((_%e115473115561%_
                                           (gx#syntax-e _%tl115472115558%_)))
                                      (let ((_%hd115474115565%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115473115561%_)))
                                            (_%tl115475115568%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115473115561%_))))
                                        (if (gx#stx-pair? _%tl115475115568%_)
                                            (let ((_%e115476115571%_
                                                   (gx#syntax-e
                                                    _%tl115475115568%_)))
                                              (let ((_%hd115477115575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115476115571%_)))
                                                    (_%tl115478115578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115476115571%_))))
                                                (if (gx#stx-null?
                                                     _%tl115478115578%_)
                                                    ((lambda (_%g115444115581%_
                                                              _%g115445115583%_
                                                              _%g115446115584%_
                                                              _%g115447115585%_
                                                              _%g115448115586%_
                                                              _%g115449115587%_
                                                              _%g115450115588%_
                                                              _%g115451115589%_)
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
                                                   (cons (cons _%g115449115587%_
                                                               (cons _%g115447115585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g115450115588%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g115451115589%_
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
                                               (cons _%g115451115589%_
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
                                                       (cons _%g115451115589%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g115447115585%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115451115589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g115446115584%_ '()))))
               (cons (cons _%g115444115581%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115451115589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g115447115585%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g115451115589%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g115446115584%_ '()))))
                     (cons (cons _%g115445115583%_ '()) '()))))
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
                                                     (cons (cons (cons _%g115448115586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g115447115585%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g115451115589%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g115447115585%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g115451115589%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g115446115584%_ '()))))
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
                                                     _%hd115477115575%_
                                                     _%hd115474115565%_
                                                     _%hd115471115555%_
                                                     _%hd115468115545%_
                                                     _%hd115465115535%_
                                                     _%hd115462115525%_
                                                     _%hd115459115515%_
                                                     _%hd115456115505%_)
                                                    (_%g115442115484%_
                                                     _%g115443115488%_))))
                                            (_%g115442115484%_
                                             _%g115443115488%_))))
                                    (_%g115442115484%_ _%g115443115488%_))))
                            (_%g115442115484%_ _%g115443115488%_))))
                    (_%g115442115484%_ _%g115443115488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115442115484%_
                                                     _%g115443115488%_))))
                                            (_%g115442115484%_
                                             _%g115443115488%_))))
                                    (_%g115442115484%_ _%g115443115488%_))))
                            (_%g115442115484%_ _%g115443115488%_))))
                    (_%g115442115484%_ _%g115443115488%_)))))
        (_%g115441115623%_ _%$stx115438%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx115627%_)
      (let* ((_%g115631115677%_
              (lambda (_%g115632115673%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115632115673%_)))
             (_%g115630115830%_
              (lambda (_%g115632115681%_)
                (if (gx#stx-pair? _%g115632115681%_)
                    (let ((_%e115642115684%_ (gx#syntax-e _%g115632115681%_)))
                      (let ((_%hd115643115688%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115642115684%_)))
                            (_%tl115644115691%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115642115684%_))))
                        (if (gx#stx-pair? _%tl115644115691%_)
                            (let ((_%e115645115694%_
                                   (gx#syntax-e _%tl115644115691%_)))
                              (let ((_%hd115646115698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115645115694%_)))
                                    (_%tl115647115701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115645115694%_))))
                                (if (gx#stx-pair? _%tl115647115701%_)
                                    (let ((_%e115648115704%_
                                           (gx#syntax-e _%tl115647115701%_)))
                                      (let ((_%hd115649115708%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115648115704%_)))
                                            (_%tl115650115711%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115648115704%_))))
                                        (if (gx#stx-pair? _%tl115650115711%_)
                                            (let ((_%e115651115714%_
                                                   (gx#syntax-e
                                                    _%tl115650115711%_)))
                                              (let ((_%hd115652115718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115651115714%_)))
                                                    (_%tl115653115721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115651115714%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115653115721%_)
                                                    (let ((_%e115654115724%_
                                                           (gx#syntax-e
                                                            _%tl115653115721%_)))
                                                      (let ((_%hd115655115728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115654115724%_)))
                    (_%tl115656115731%_
                     (let () (declare (not safe)) (##cdr _%e115654115724%_))))
                (if (gx#stx-pair? _%tl115656115731%_)
                    (let ((_%e115657115734%_ (gx#syntax-e _%tl115656115731%_)))
                      (let ((_%hd115658115738%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115657115734%_)))
                            (_%tl115659115741%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115657115734%_))))
                        (if (gx#stx-pair? _%tl115659115741%_)
                            (let ((_%e115660115744%_
                                   (gx#syntax-e _%tl115659115741%_)))
                              (let ((_%hd115661115748%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115660115744%_)))
                                    (_%tl115662115751%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115660115744%_))))
                                (if (gx#stx-pair? _%tl115662115751%_)
                                    (let ((_%e115663115754%_
                                           (gx#syntax-e _%tl115662115751%_)))
                                      (let ((_%hd115664115758%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115663115754%_)))
                                            (_%tl115665115761%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115663115754%_))))
                                        (if (gx#stx-pair? _%tl115665115761%_)
                                            (let ((_%e115666115764%_
                                                   (gx#syntax-e
                                                    _%tl115665115761%_)))
                                              (let ((_%hd115667115768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115666115764%_)))
                                                    (_%tl115668115771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115666115764%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115668115771%_)
                                                    (let ((_%e115669115774%_
                                                           (gx#syntax-e
                                                            _%tl115668115771%_)))
                                                      (let ((_%hd115670115778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115669115774%_)))
                    (_%tl115671115781%_
                     (let () (declare (not safe)) (##cdr _%e115669115774%_))))
                (if (gx#stx-null? _%tl115671115781%_)
                    ((lambda (_%g115633115784%_
                              _%g115634115786%_
                              _%g115635115787%_
                              _%g115636115788%_
                              _%g115637115789%_
                              _%g115638115790%_
                              _%g115639115791%_
                              _%g115640115792%_
                              _%g115641115793%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g115639115791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g115637115789%_ '()))
                         (cons _%g115640115792%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g115641115793%_ '()))
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
                                                       (cons _%g115641115793%_
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
                                                               (cons _%g115641115793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g115637115789%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g115641115793%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g115636115788%_
                                                     (cons _%g115635115787%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g115633115784%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g115641115793%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g115637115789%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g115641115793%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g115636115788%_
                                                           (cons _%g115635115787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g115634115786%_ '()) '()))))
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
                     (cons (cons (cons _%g115638115790%_
                                       (cons _%g115637115789%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g115641115793%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g115637115789%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g115641115793%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g115636115788%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g115641115793%_
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
                     _%hd115670115778%_
                     _%hd115667115768%_
                     _%hd115664115758%_
                     _%hd115661115748%_
                     _%hd115658115738%_
                     _%hd115655115728%_
                     _%hd115652115718%_
                     _%hd115649115708%_
                     _%hd115646115698%_)
                    (_%g115631115677%_ _%g115632115681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115631115677%_
                                                     _%g115632115681%_))))
                                            (_%g115631115677%_
                                             _%g115632115681%_))))
                                    (_%g115631115677%_ _%g115632115681%_))))
                            (_%g115631115677%_ _%g115632115681%_))))
                    (_%g115631115677%_ _%g115632115681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115631115677%_
                                                     _%g115632115681%_))))
                                            (_%g115631115677%_
                                             _%g115632115681%_))))
                                    (_%g115631115677%_ _%g115632115681%_))))
                            (_%g115631115677%_ _%g115632115681%_))))
                    (_%g115631115677%_ _%g115632115681%_)))))
        (_%g115630115830%_ _%$stx115627%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx115834%_)
      (let* ((_%g115838115872%_
              (lambda (_%g115839115868%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115839115868%_)))
             (_%g115837115983%_
              (lambda (_%g115839115876%_)
                (if (gx#stx-pair? _%g115839115876%_)
                    (let ((_%e115846115879%_ (gx#syntax-e _%g115839115876%_)))
                      (let ((_%hd115847115883%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115846115879%_)))
                            (_%tl115848115886%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115846115879%_))))
                        (if (gx#stx-pair? _%tl115848115886%_)
                            (let ((_%e115849115889%_
                                   (gx#syntax-e _%tl115848115886%_)))
                              (let ((_%hd115850115893%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115849115889%_)))
                                    (_%tl115851115896%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115849115889%_))))
                                (if (gx#stx-pair? _%tl115851115896%_)
                                    (let ((_%e115852115899%_
                                           (gx#syntax-e _%tl115851115896%_)))
                                      (let ((_%hd115853115903%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115852115899%_)))
                                            (_%tl115854115906%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115852115899%_))))
                                        (if (gx#stx-pair? _%tl115854115906%_)
                                            (let ((_%e115855115909%_
                                                   (gx#syntax-e
                                                    _%tl115854115906%_)))
                                              (let ((_%hd115856115913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115855115909%_)))
                                                    (_%tl115857115916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115855115909%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115857115916%_)
                                                    (let ((_%e115858115919%_
                                                           (gx#syntax-e
                                                            _%tl115857115916%_)))
                                                      (let ((_%hd115859115923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115858115919%_)))
                    (_%tl115860115926%_
                     (let () (declare (not safe)) (##cdr _%e115858115919%_))))
                (if (gx#stx-pair? _%tl115860115926%_)
                    (let ((_%e115861115929%_ (gx#syntax-e _%tl115860115926%_)))
                      (let ((_%hd115862115933%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115861115929%_)))
                            (_%tl115863115936%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115861115929%_))))
                        (if (gx#stx-pair? _%tl115863115936%_)
                            (let ((_%e115864115939%_
                                   (gx#syntax-e _%tl115863115936%_)))
                              (let ((_%hd115865115943%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115864115939%_)))
                                    (_%tl115866115946%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115864115939%_))))
                                (if (gx#stx-null? _%tl115866115946%_)
                                    ((lambda (_%g115840115949%_
                                              _%g115841115951%_
                                              _%g115842115952%_
                                              _%g115843115953%_
                                              _%g115844115954%_
                                              _%g115845115955%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115843115953%_
                                               (cons _%g115841115951%_ '()))
                                         (cons _%g115844115954%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115845115955%_ '()))
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
                               (cons _%g115845115955%_
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
                                     (cons (cons (cons _%g115842115952%_
                                                       (cons _%g115841115951%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115845115955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g115845115955%_
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
                     (cons (cons _%g115840115949%_ '()) '()))))
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
                                     _%hd115865115943%_
                                     _%hd115862115933%_
                                     _%hd115859115923%_
                                     _%hd115856115913%_
                                     _%hd115853115903%_
                                     _%hd115850115893%_)
                                    (_%g115838115872%_ _%g115839115876%_))))
                            (_%g115838115872%_ _%g115839115876%_))))
                    (_%g115838115872%_ _%g115839115876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115838115872%_
                                                     _%g115839115876%_))))
                                            (_%g115838115872%_
                                             _%g115839115876%_))))
                                    (_%g115838115872%_ _%g115839115876%_))))
                            (_%g115838115872%_ _%g115839115876%_))))
                    (_%g115838115872%_ _%g115839115876%_)))))
        (_%g115837115983%_ _%$stx115834%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx115987%_)
      (let* ((_%g115991116009%_
              (lambda (_%g115992116005%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115992116005%_)))
             (_%g115990116064%_
              (lambda (_%g115992116013%_)
                (if (gx#stx-pair? _%g115992116013%_)
                    (let ((_%e115995116016%_ (gx#syntax-e _%g115992116013%_)))
                      (let ((_%hd115996116020%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115995116016%_)))
                            (_%tl115997116023%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115995116016%_))))
                        (if (gx#stx-pair? _%tl115997116023%_)
                            (let ((_%e115998116026%_
                                   (gx#syntax-e _%tl115997116023%_)))
                              (let ((_%hd115999116030%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115998116026%_)))
                                    (_%tl116000116033%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115998116026%_))))
                                (if (gx#stx-pair? _%tl116000116033%_)
                                    (let ((_%e116001116036%_
                                           (gx#syntax-e _%tl116000116033%_)))
                                      (let ((_%hd116002116040%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116001116036%_)))
                                            (_%tl116003116043%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116001116036%_))))
                                        (if (gx#stx-null? _%tl116003116043%_)
                                            ((lambda (_%g115993116046%_
                                                      _%g115994116048%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g115994116048%_ '()))
                   (cons _%g115993116046%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd116002116040%_
                                             _%hd115999116030%_)
                                            (_%g115991116009%_
                                             _%g115992116013%_))))
                                    (_%g115991116009%_ _%g115992116013%_))))
                            (_%g115991116009%_ _%g115992116013%_))))
                    (_%g115991116009%_ _%g115992116013%_)))))
        (_%g115990116064%_ _%$stx115987%_)))))

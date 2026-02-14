(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx114781%_)
      (let* ((_%g114785114803%_
              (lambda (_%g114786114799%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114786114799%_)))
             (_%g114784114859%_
              (lambda (_%g114786114807%_)
                (if (gx#stx-pair? _%g114786114807%_)
                    (let ((_%e114789114810%_ (gx#syntax-e _%g114786114807%_)))
                      (let ((_%hd114790114814%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114789114810%_)))
                            (_%tl114791114817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114789114810%_))))
                        (if (gx#stx-pair? _%tl114791114817%_)
                            (let ((_%e114792114820%_
                                   (gx#syntax-e _%tl114791114817%_)))
                              (let ((_%hd114793114824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114792114820%_)))
                                    (_%tl114794114827%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114792114820%_))))
                                (if (gx#stx-pair? _%tl114794114827%_)
                                    (let ((_%e114795114830%_
                                           (gx#syntax-e _%tl114794114827%_)))
                                      (let ((_%hd114796114834%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114795114830%_)))
                                            (_%tl114797114837%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114795114830%_))))
                                        (if (gx#stx-null? _%tl114797114837%_)
                                            ((lambda (_%g114787114840%_
                                                      _%g114788114842%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g114788114842%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g114787114840%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd114796114834%_
                                             _%hd114793114824%_)
                                            (_%g114785114803%_
                                             _%g114786114807%_))))
                                    (_%g114785114803%_ _%g114786114807%_))))
                            (_%g114785114803%_ _%g114786114807%_))))
                    (_%g114785114803%_ _%g114786114807%_)))))
        (_%g114784114859%_ _%$stx114781%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx114863%_)
      (let* ((_%g114866114888%_
              (lambda (_%g114867114884%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114867114884%_)))
             (_%g114865115201%_
              (lambda (_%g114867114892%_)
                (if (gx#stx-pair? _%g114867114892%_)
                    (let ((_%e114871114895%_ (gx#syntax-e _%g114867114892%_)))
                      (let ((_%hd114872114899%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114871114895%_)))
                            (_%tl114873114902%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114871114895%_))))
                        (if (gx#stx-pair? _%tl114873114902%_)
                            (let ((_%e114874114905%_
                                   (gx#syntax-e _%tl114873114902%_)))
                              (let ((_%hd114875114909%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114874114905%_)))
                                    (_%tl114876114912%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114874114905%_))))
                                (if (gx#stx-pair? _%tl114876114912%_)
                                    (let ((_%e114877114915%_
                                           (gx#syntax-e _%tl114876114912%_)))
                                      (let ((_%hd114878114919%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114877114915%_)))
                                            (_%tl114879114922%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114877114915%_))))
                                        (if (gx#stx-pair? _%tl114879114922%_)
                                            (let ((_%e114880114925%_
                                                   (gx#syntax-e
                                                    _%tl114879114922%_)))
                                              (let ((_%hd114881114929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114880114925%_)))
                                                    (_%tl114882114932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114880114925%_))))
                                                (if (gx#stx-null?
                                                     _%tl114882114932%_)
                                                    ((lambda (_%g114868114935%_
                                                              _%g114869114937%_
                                                              _%g114870114938%_)
                                                       (let* ((_%g114957115012%_
                                                               (lambda (_%g114958115008%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114958115008%_)))
                      (_%g114956115197%_
                       (lambda (_%g114958115016%_)
                         (if (gx#stx-pair? _%g114958115016%_)
                             (let ((_%e114971115019%_
                                    (gx#syntax-e _%g114958115016%_)))
                               (let ((_%hd114972115023%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114971115019%_)))
                                     (_%tl114973115026%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114971115019%_))))
                                 (if (gx#stx-pair? _%tl114973115026%_)
                                     (let ((_%e114974115029%_
                                            (gx#syntax-e _%tl114973115026%_)))
                                       (let ((_%hd114975115033%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114974115029%_)))
                                             (_%tl114976115036%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114974115029%_))))
                                         (if (gx#stx-pair? _%tl114976115036%_)
                                             (let ((_%e114977115039%_
                                                    (gx#syntax-e
                                                     _%tl114976115036%_)))
                                               (let ((_%hd114978115043%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e114977115039%_)))
                                                     (_%tl114979115046%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e114977115039%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl114979115046%_)
                                                     (let ((_%e114980115049%_
                                                            (gx#syntax-e
                                                             _%tl114979115046%_)))
                                                       (let ((_%hd114981115053%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e114980115049%_)))
                     (_%tl114982115056%_
                      (let () (declare (not safe)) (##cdr _%e114980115049%_))))
                 (if (gx#stx-pair? _%tl114982115056%_)
                     (let ((_%e114983115059%_
                            (gx#syntax-e _%tl114982115056%_)))
                       (let ((_%hd114984115063%_
                              (let ()
                                (declare (not safe))
                                (##car _%e114983115059%_)))
                             (_%tl114985115066%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e114983115059%_))))
                         (if (gx#stx-pair? _%tl114985115066%_)
                             (let ((_%e114986115069%_
                                    (gx#syntax-e _%tl114985115066%_)))
                               (let ((_%hd114987115073%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114986115069%_)))
                                     (_%tl114988115076%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114986115069%_))))
                                 (if (gx#stx-pair? _%tl114988115076%_)
                                     (let ((_%e114989115079%_
                                            (gx#syntax-e _%tl114988115076%_)))
                                       (let ((_%hd114990115083%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114989115079%_)))
                                             (_%tl114991115086%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114989115079%_))))
                                         (if (gx#stx-pair? _%tl114991115086%_)
                                             (let ((_%e114992115089%_
                                                    (gx#syntax-e
                                                     _%tl114991115086%_)))
                                               (let ((_%hd114993115093%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e114992115089%_)))
                                                     (_%tl114994115096%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e114992115089%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl114994115096%_)
                                                     (let ((_%e114995115099%_
                                                            (gx#syntax-e
                                                             _%tl114994115096%_)))
                                                       (let ((_%hd114996115103%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e114995115099%_)))
                     (_%tl114997115106%_
                      (let () (declare (not safe)) (##cdr _%e114995115099%_))))
                 (if (gx#stx-pair? _%tl114997115106%_)
                     (let ((_%e114998115109%_
                            (gx#syntax-e _%tl114997115106%_)))
                       (let ((_%hd114999115113%_
                              (let ()
                                (declare (not safe))
                                (##car _%e114998115109%_)))
                             (_%tl115000115116%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e114998115109%_))))
                         (if (gx#stx-pair? _%tl115000115116%_)
                             (let ((_%e115001115119%_
                                    (gx#syntax-e _%tl115000115116%_)))
                               (let ((_%hd115002115123%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e115001115119%_)))
                                     (_%tl115003115126%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e115001115119%_))))
                                 (if (gx#stx-pair? _%tl115003115126%_)
                                     (let ((_%e115004115129%_
                                            (gx#syntax-e _%tl115003115126%_)))
                                       (let ((_%hd115005115133%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e115004115129%_)))
                                             (_%tl115006115136%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e115004115129%_))))
                                         (if (gx#stx-null? _%tl115006115136%_)
                                             ((lambda (_%g114959115139%_
                                                       _%g114960115141%_
                                                       _%g114961115142%_
                                                       _%g114962115143%_
                                                       _%g114963115144%_
                                                       _%g114964115145%_
                                                       _%g114965115146%_
                                                       _%g114966115147%_
                                                       _%g114967115148%_
                                                       _%g114968115149%_
                                                       _%g114969115150%_
                                                       _%g114970115151%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g114970115151%_
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
                                                  (cons _%g114869114937%_
                                                        (cons _%g114868114935%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g114969115150%_
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
                                                        (cons _%g114869114937%_
                                                              (cons _%g114868114935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g114968115149%_
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
                                              (cons _%g114869114937%_
                                                    (cons _%g114868114935%_
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
                                            (cons (cons _%g114967115148%_
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
                            (cons (cons _%g114968115149%_
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
                                                  (cons (cons _%g114966115147%_
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
                                                          (cons _%g114869114937%_
                                                                (cons _%g114868114935%_
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
                                                        (cons (cons _%g114965115146%_
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
                            (cons (cons _%g114966115147%_
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
                                                              (cons (cons _%g114964115145%_
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
                                              (cons (cons _%g114965115146%_
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
                            (cons (cons _%g114963115144%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g114962115143%_
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
                                    (cons _%g114869114937%_
                                          (cons _%g114868114935%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g114962115143%_
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
                                  (cons (cons _%g114962115143%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g114962115143%_
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
                                              (cons (cons _%g114963115144%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g114962115143%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g114961115142%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g114962115143%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g114962115143%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g114962115143%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g114960115141%_
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
                                                      (cons _%g114869114937%_
                                                            (cons _%g114868114935%_
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
                                                    (cons (cons _%g114959115139%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g114960115141%_
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
                                              _%hd115005115133%_
                                              _%hd115002115123%_
                                              _%hd114999115113%_
                                              _%hd114996115103%_
                                              _%hd114993115093%_
                                              _%hd114990115083%_
                                              _%hd114987115073%_
                                              _%hd114984115063%_
                                              _%hd114981115053%_
                                              _%hd114978115043%_
                                              _%hd114975115033%_
                                              _%hd114972115023%_)
                                             (_%g114957115012%_
                                              _%g114958115016%_))))
                                     (_%g114957115012%_ _%g114958115016%_))))
                             (_%g114957115012%_ _%g114958115016%_))))
                     (_%g114957115012%_ _%g114958115016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114957115012%_
                                                      _%g114958115016%_))))
                                             (_%g114957115012%_
                                              _%g114958115016%_))))
                                     (_%g114957115012%_ _%g114958115016%_))))
                             (_%g114957115012%_ _%g114958115016%_))))
                     (_%g114957115012%_ _%g114958115016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114957115012%_
                                                      _%g114958115016%_))))
                                             (_%g114957115012%_
                                              _%g114958115016%_))))
                                     (_%g114957115012%_ _%g114958115016%_))))
                             (_%g114957115012%_ _%g114958115016%_)))))
                 (_%g114956115197%_
                  (list (gx#stx-identifier
                         _%g114870114938%_
                         '"make-"
                         _%g114870114938%_)
                        (gx#stx-identifier
                         _%g114870114938%_
                         '"make-"
                         _%g114870114938%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g114870114938%_
                         '"__"
                         _%g114870114938%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g114870114938%_
                         '"__"
                         _%g114870114938%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g114870114938%_
                         _%g114870114938%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd114881114929%_
                                                     _%hd114878114919%_
                                                     _%hd114875114909%_)
                                                    (_%g114866114888%_
                                                     _%g114867114892%_))))
                                            (_%g114866114888%_
                                             _%g114867114892%_))))
                                    (_%g114866114888%_ _%g114867114892%_))))
                            (_%g114866114888%_ _%g114867114892%_))))
                    (_%g114866114888%_ _%g114867114892%_)))))
        (_%g114865115201%_ _%stx114863%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx115205%_)
      (let* ((_%g115209115231%_
              (lambda (_%g115210115227%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115210115227%_)))
             (_%g115208115300%_
              (lambda (_%g115210115235%_)
                (if (gx#stx-pair? _%g115210115235%_)
                    (let ((_%e115214115238%_ (gx#syntax-e _%g115210115235%_)))
                      (let ((_%hd115215115242%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115214115238%_)))
                            (_%tl115216115245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115214115238%_))))
                        (if (gx#stx-pair? _%tl115216115245%_)
                            (let ((_%e115217115248%_
                                   (gx#syntax-e _%tl115216115245%_)))
                              (let ((_%hd115218115252%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115217115248%_)))
                                    (_%tl115219115255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115217115248%_))))
                                (if (gx#stx-pair? _%tl115219115255%_)
                                    (let ((_%e115220115258%_
                                           (gx#syntax-e _%tl115219115255%_)))
                                      (let ((_%hd115221115262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115220115258%_)))
                                            (_%tl115222115265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115220115258%_))))
                                        (if (gx#stx-pair? _%tl115222115265%_)
                                            (let ((_%e115223115268%_
                                                   (gx#syntax-e
                                                    _%tl115222115265%_)))
                                              (let ((_%hd115224115272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115223115268%_)))
                                                    (_%tl115225115275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115223115268%_))))
                                                (if (gx#stx-null?
                                                     _%tl115225115275%_)
                                                    ((lambda (_%g115211115278%_
                                                              _%g115212115280%_
                                                              _%g115213115281%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g115213115281%_
                                                   (cons _%g115212115280%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g115212115280%_
                                   (cons _%g115212115280%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g115211115278%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd115224115272%_
                                                     _%hd115221115262%_
                                                     _%hd115218115252%_)
                                                    (_%g115209115231%_
                                                     _%g115210115235%_))))
                                            (_%g115209115231%_
                                             _%g115210115235%_))))
                                    (_%g115209115231%_ _%g115210115235%_))))
                            (_%g115209115231%_ _%g115210115235%_))))
                    (_%g115209115231%_ _%g115210115235%_)))))
        (_%g115208115300%_ _%$stx115205%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx115304%_)
      (let* ((_%g115308115342%_
              (lambda (_%g115309115338%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115309115338%_)))
             (_%g115307115453%_
              (lambda (_%g115309115346%_)
                (if (gx#stx-pair? _%g115309115346%_)
                    (let ((_%e115316115349%_ (gx#syntax-e _%g115309115346%_)))
                      (let ((_%hd115317115353%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115316115349%_)))
                            (_%tl115318115356%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115316115349%_))))
                        (if (gx#stx-pair? _%tl115318115356%_)
                            (let ((_%e115319115359%_
                                   (gx#syntax-e _%tl115318115356%_)))
                              (let ((_%hd115320115363%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115319115359%_)))
                                    (_%tl115321115366%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115319115359%_))))
                                (if (gx#stx-pair? _%tl115321115366%_)
                                    (let ((_%e115322115369%_
                                           (gx#syntax-e _%tl115321115366%_)))
                                      (let ((_%hd115323115373%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115322115369%_)))
                                            (_%tl115324115376%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115322115369%_))))
                                        (if (gx#stx-pair? _%tl115324115376%_)
                                            (let ((_%e115325115379%_
                                                   (gx#syntax-e
                                                    _%tl115324115376%_)))
                                              (let ((_%hd115326115383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115325115379%_)))
                                                    (_%tl115327115386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115325115379%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115327115386%_)
                                                    (let ((_%e115328115389%_
                                                           (gx#syntax-e
                                                            _%tl115327115386%_)))
                                                      (let ((_%hd115329115393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115328115389%_)))
                    (_%tl115330115396%_
                     (let () (declare (not safe)) (##cdr _%e115328115389%_))))
                (if (gx#stx-pair? _%tl115330115396%_)
                    (let ((_%e115331115399%_ (gx#syntax-e _%tl115330115396%_)))
                      (let ((_%hd115332115403%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115331115399%_)))
                            (_%tl115333115406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115331115399%_))))
                        (if (gx#stx-pair? _%tl115333115406%_)
                            (let ((_%e115334115409%_
                                   (gx#syntax-e _%tl115333115406%_)))
                              (let ((_%hd115335115413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115334115409%_)))
                                    (_%tl115336115416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115334115409%_))))
                                (if (gx#stx-null? _%tl115336115416%_)
                                    ((lambda (_%g115310115419%_
                                              _%g115311115421%_
                                              _%g115312115422%_
                                              _%g115313115423%_
                                              _%g115314115424%_
                                              _%g115315115425%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115313115423%_
                                               (cons _%g115311115421%_ '()))
                                         (cons _%g115314115424%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115315115425%_ '()))
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
                               (cons _%g115315115425%_
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
                                     (cons _%g115310115419%_ '()))
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
                                     (cons (cons (cons _%g115312115422%_
                                                       (cons _%g115311115421%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g115315115425%_
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
                                     _%hd115335115413%_
                                     _%hd115332115403%_
                                     _%hd115329115393%_
                                     _%hd115326115383%_
                                     _%hd115323115373%_
                                     _%hd115320115363%_)
                                    (_%g115308115342%_ _%g115309115346%_))))
                            (_%g115308115342%_ _%g115309115346%_))))
                    (_%g115308115342%_ _%g115309115346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115308115342%_
                                                     _%g115309115346%_))))
                                            (_%g115308115342%_
                                             _%g115309115346%_))))
                                    (_%g115308115342%_ _%g115309115346%_))))
                            (_%g115308115342%_ _%g115309115346%_))))
                    (_%g115308115342%_ _%g115309115346%_)))))
        (_%g115307115453%_ _%$stx115304%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx115457%_)
      (let* ((_%g115461115503%_
              (lambda (_%g115462115499%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115462115499%_)))
             (_%g115460115642%_
              (lambda (_%g115462115507%_)
                (if (gx#stx-pair? _%g115462115507%_)
                    (let ((_%e115471115510%_ (gx#syntax-e _%g115462115507%_)))
                      (let ((_%hd115472115514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115471115510%_)))
                            (_%tl115473115517%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115471115510%_))))
                        (if (gx#stx-pair? _%tl115473115517%_)
                            (let ((_%e115474115520%_
                                   (gx#syntax-e _%tl115473115517%_)))
                              (let ((_%hd115475115524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115474115520%_)))
                                    (_%tl115476115527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115474115520%_))))
                                (if (gx#stx-pair? _%tl115476115527%_)
                                    (let ((_%e115477115530%_
                                           (gx#syntax-e _%tl115476115527%_)))
                                      (let ((_%hd115478115534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115477115530%_)))
                                            (_%tl115479115537%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115477115530%_))))
                                        (if (gx#stx-pair? _%tl115479115537%_)
                                            (let ((_%e115480115540%_
                                                   (gx#syntax-e
                                                    _%tl115479115537%_)))
                                              (let ((_%hd115481115544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115480115540%_)))
                                                    (_%tl115482115547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115480115540%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115482115547%_)
                                                    (let ((_%e115483115550%_
                                                           (gx#syntax-e
                                                            _%tl115482115547%_)))
                                                      (let ((_%hd115484115554%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115483115550%_)))
                    (_%tl115485115557%_
                     (let () (declare (not safe)) (##cdr _%e115483115550%_))))
                (if (gx#stx-pair? _%tl115485115557%_)
                    (let ((_%e115486115560%_ (gx#syntax-e _%tl115485115557%_)))
                      (let ((_%hd115487115564%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115486115560%_)))
                            (_%tl115488115567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115486115560%_))))
                        (if (gx#stx-pair? _%tl115488115567%_)
                            (let ((_%e115489115570%_
                                   (gx#syntax-e _%tl115488115567%_)))
                              (let ((_%hd115490115574%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115489115570%_)))
                                    (_%tl115491115577%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115489115570%_))))
                                (if (gx#stx-pair? _%tl115491115577%_)
                                    (let ((_%e115492115580%_
                                           (gx#syntax-e _%tl115491115577%_)))
                                      (let ((_%hd115493115584%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115492115580%_)))
                                            (_%tl115494115587%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115492115580%_))))
                                        (if (gx#stx-pair? _%tl115494115587%_)
                                            (let ((_%e115495115590%_
                                                   (gx#syntax-e
                                                    _%tl115494115587%_)))
                                              (let ((_%hd115496115594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115495115590%_)))
                                                    (_%tl115497115597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115495115590%_))))
                                                (if (gx#stx-null?
                                                     _%tl115497115597%_)
                                                    ((lambda (_%g115463115600%_
                                                              _%g115464115602%_
                                                              _%g115465115603%_
                                                              _%g115466115604%_
                                                              _%g115467115605%_
                                                              _%g115468115606%_
                                                              _%g115469115607%_
                                                              _%g115470115608%_)
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
                                                   (cons (cons _%g115468115606%_
                                                               (cons _%g115466115604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g115469115607%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g115470115608%_
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
                                               (cons _%g115470115608%_
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
                                                       (cons _%g115470115608%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g115466115604%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115470115608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g115465115603%_ '()))))
               (cons (cons _%g115463115600%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115470115608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g115466115604%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g115470115608%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g115465115603%_ '()))))
                     (cons (cons _%g115464115602%_ '()) '()))))
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
                                                     (cons (cons (cons _%g115467115605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g115466115604%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g115470115608%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g115466115604%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g115470115608%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g115465115603%_ '()))))
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
                                                     _%hd115496115594%_
                                                     _%hd115493115584%_
                                                     _%hd115490115574%_
                                                     _%hd115487115564%_
                                                     _%hd115484115554%_
                                                     _%hd115481115544%_
                                                     _%hd115478115534%_
                                                     _%hd115475115524%_)
                                                    (_%g115461115503%_
                                                     _%g115462115507%_))))
                                            (_%g115461115503%_
                                             _%g115462115507%_))))
                                    (_%g115461115503%_ _%g115462115507%_))))
                            (_%g115461115503%_ _%g115462115507%_))))
                    (_%g115461115503%_ _%g115462115507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115461115503%_
                                                     _%g115462115507%_))))
                                            (_%g115461115503%_
                                             _%g115462115507%_))))
                                    (_%g115461115503%_ _%g115462115507%_))))
                            (_%g115461115503%_ _%g115462115507%_))))
                    (_%g115461115503%_ _%g115462115507%_)))))
        (_%g115460115642%_ _%$stx115457%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx115646%_)
      (let* ((_%g115650115696%_
              (lambda (_%g115651115692%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115651115692%_)))
             (_%g115649115849%_
              (lambda (_%g115651115700%_)
                (if (gx#stx-pair? _%g115651115700%_)
                    (let ((_%e115661115703%_ (gx#syntax-e _%g115651115700%_)))
                      (let ((_%hd115662115707%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115661115703%_)))
                            (_%tl115663115710%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115661115703%_))))
                        (if (gx#stx-pair? _%tl115663115710%_)
                            (let ((_%e115664115713%_
                                   (gx#syntax-e _%tl115663115710%_)))
                              (let ((_%hd115665115717%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115664115713%_)))
                                    (_%tl115666115720%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115664115713%_))))
                                (if (gx#stx-pair? _%tl115666115720%_)
                                    (let ((_%e115667115723%_
                                           (gx#syntax-e _%tl115666115720%_)))
                                      (let ((_%hd115668115727%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115667115723%_)))
                                            (_%tl115669115730%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115667115723%_))))
                                        (if (gx#stx-pair? _%tl115669115730%_)
                                            (let ((_%e115670115733%_
                                                   (gx#syntax-e
                                                    _%tl115669115730%_)))
                                              (let ((_%hd115671115737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115670115733%_)))
                                                    (_%tl115672115740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115670115733%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115672115740%_)
                                                    (let ((_%e115673115743%_
                                                           (gx#syntax-e
                                                            _%tl115672115740%_)))
                                                      (let ((_%hd115674115747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115673115743%_)))
                    (_%tl115675115750%_
                     (let () (declare (not safe)) (##cdr _%e115673115743%_))))
                (if (gx#stx-pair? _%tl115675115750%_)
                    (let ((_%e115676115753%_ (gx#syntax-e _%tl115675115750%_)))
                      (let ((_%hd115677115757%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115676115753%_)))
                            (_%tl115678115760%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115676115753%_))))
                        (if (gx#stx-pair? _%tl115678115760%_)
                            (let ((_%e115679115763%_
                                   (gx#syntax-e _%tl115678115760%_)))
                              (let ((_%hd115680115767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115679115763%_)))
                                    (_%tl115681115770%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115679115763%_))))
                                (if (gx#stx-pair? _%tl115681115770%_)
                                    (let ((_%e115682115773%_
                                           (gx#syntax-e _%tl115681115770%_)))
                                      (let ((_%hd115683115777%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115682115773%_)))
                                            (_%tl115684115780%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115682115773%_))))
                                        (if (gx#stx-pair? _%tl115684115780%_)
                                            (let ((_%e115685115783%_
                                                   (gx#syntax-e
                                                    _%tl115684115780%_)))
                                              (let ((_%hd115686115787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115685115783%_)))
                                                    (_%tl115687115790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115685115783%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115687115790%_)
                                                    (let ((_%e115688115793%_
                                                           (gx#syntax-e
                                                            _%tl115687115790%_)))
                                                      (let ((_%hd115689115797%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115688115793%_)))
                    (_%tl115690115800%_
                     (let () (declare (not safe)) (##cdr _%e115688115793%_))))
                (if (gx#stx-null? _%tl115690115800%_)
                    ((lambda (_%g115652115803%_
                              _%g115653115805%_
                              _%g115654115806%_
                              _%g115655115807%_
                              _%g115656115808%_
                              _%g115657115809%_
                              _%g115658115810%_
                              _%g115659115811%_
                              _%g115660115812%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g115658115810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g115656115808%_ '()))
                         (cons _%g115659115811%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g115660115812%_ '()))
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
                                                       (cons _%g115660115812%_
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
                                                               (cons _%g115660115812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g115656115808%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g115660115812%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g115655115807%_
                                                     (cons _%g115654115806%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g115652115803%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g115660115812%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g115656115808%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g115660115812%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g115655115807%_
                                                           (cons _%g115654115806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g115653115805%_ '()) '()))))
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
                     (cons (cons (cons _%g115657115809%_
                                       (cons _%g115656115808%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g115660115812%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g115656115808%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g115660115812%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g115655115807%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g115660115812%_
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
                     _%hd115689115797%_
                     _%hd115686115787%_
                     _%hd115683115777%_
                     _%hd115680115767%_
                     _%hd115677115757%_
                     _%hd115674115747%_
                     _%hd115671115737%_
                     _%hd115668115727%_
                     _%hd115665115717%_)
                    (_%g115650115696%_ _%g115651115700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115650115696%_
                                                     _%g115651115700%_))))
                                            (_%g115650115696%_
                                             _%g115651115700%_))))
                                    (_%g115650115696%_ _%g115651115700%_))))
                            (_%g115650115696%_ _%g115651115700%_))))
                    (_%g115650115696%_ _%g115651115700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115650115696%_
                                                     _%g115651115700%_))))
                                            (_%g115650115696%_
                                             _%g115651115700%_))))
                                    (_%g115650115696%_ _%g115651115700%_))))
                            (_%g115650115696%_ _%g115651115700%_))))
                    (_%g115650115696%_ _%g115651115700%_)))))
        (_%g115649115849%_ _%$stx115646%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx115853%_)
      (let* ((_%g115857115891%_
              (lambda (_%g115858115887%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115858115887%_)))
             (_%g115856116002%_
              (lambda (_%g115858115895%_)
                (if (gx#stx-pair? _%g115858115895%_)
                    (let ((_%e115865115898%_ (gx#syntax-e _%g115858115895%_)))
                      (let ((_%hd115866115902%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115865115898%_)))
                            (_%tl115867115905%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115865115898%_))))
                        (if (gx#stx-pair? _%tl115867115905%_)
                            (let ((_%e115868115908%_
                                   (gx#syntax-e _%tl115867115905%_)))
                              (let ((_%hd115869115912%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115868115908%_)))
                                    (_%tl115870115915%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115868115908%_))))
                                (if (gx#stx-pair? _%tl115870115915%_)
                                    (let ((_%e115871115918%_
                                           (gx#syntax-e _%tl115870115915%_)))
                                      (let ((_%hd115872115922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115871115918%_)))
                                            (_%tl115873115925%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115871115918%_))))
                                        (if (gx#stx-pair? _%tl115873115925%_)
                                            (let ((_%e115874115928%_
                                                   (gx#syntax-e
                                                    _%tl115873115925%_)))
                                              (let ((_%hd115875115932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115874115928%_)))
                                                    (_%tl115876115935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115874115928%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115876115935%_)
                                                    (let ((_%e115877115938%_
                                                           (gx#syntax-e
                                                            _%tl115876115935%_)))
                                                      (let ((_%hd115878115942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115877115938%_)))
                    (_%tl115879115945%_
                     (let () (declare (not safe)) (##cdr _%e115877115938%_))))
                (if (gx#stx-pair? _%tl115879115945%_)
                    (let ((_%e115880115948%_ (gx#syntax-e _%tl115879115945%_)))
                      (let ((_%hd115881115952%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115880115948%_)))
                            (_%tl115882115955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115880115948%_))))
                        (if (gx#stx-pair? _%tl115882115955%_)
                            (let ((_%e115883115958%_
                                   (gx#syntax-e _%tl115882115955%_)))
                              (let ((_%hd115884115962%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115883115958%_)))
                                    (_%tl115885115965%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115883115958%_))))
                                (if (gx#stx-null? _%tl115885115965%_)
                                    ((lambda (_%g115859115968%_
                                              _%g115860115970%_
                                              _%g115861115971%_
                                              _%g115862115972%_
                                              _%g115863115973%_
                                              _%g115864115974%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115862115972%_
                                               (cons _%g115860115970%_ '()))
                                         (cons _%g115863115973%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115864115974%_ '()))
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
                               (cons _%g115864115974%_
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
                                     (cons (cons (cons _%g115861115971%_
                                                       (cons _%g115860115970%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115864115974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g115864115974%_
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
                     (cons (cons _%g115859115968%_ '()) '()))))
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
                                     _%hd115884115962%_
                                     _%hd115881115952%_
                                     _%hd115878115942%_
                                     _%hd115875115932%_
                                     _%hd115872115922%_
                                     _%hd115869115912%_)
                                    (_%g115857115891%_ _%g115858115895%_))))
                            (_%g115857115891%_ _%g115858115895%_))))
                    (_%g115857115891%_ _%g115858115895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115857115891%_
                                                     _%g115858115895%_))))
                                            (_%g115857115891%_
                                             _%g115858115895%_))))
                                    (_%g115857115891%_ _%g115858115895%_))))
                            (_%g115857115891%_ _%g115858115895%_))))
                    (_%g115857115891%_ _%g115858115895%_)))))
        (_%g115856116002%_ _%$stx115853%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx116006%_)
      (let* ((_%g116010116028%_
              (lambda (_%g116011116024%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116011116024%_)))
             (_%g116009116083%_
              (lambda (_%g116011116032%_)
                (if (gx#stx-pair? _%g116011116032%_)
                    (let ((_%e116014116035%_ (gx#syntax-e _%g116011116032%_)))
                      (let ((_%hd116015116039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116014116035%_)))
                            (_%tl116016116042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116014116035%_))))
                        (if (gx#stx-pair? _%tl116016116042%_)
                            (let ((_%e116017116045%_
                                   (gx#syntax-e _%tl116016116042%_)))
                              (let ((_%hd116018116049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116017116045%_)))
                                    (_%tl116019116052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116017116045%_))))
                                (if (gx#stx-pair? _%tl116019116052%_)
                                    (let ((_%e116020116055%_
                                           (gx#syntax-e _%tl116019116052%_)))
                                      (let ((_%hd116021116059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116020116055%_)))
                                            (_%tl116022116062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116020116055%_))))
                                        (if (gx#stx-null? _%tl116022116062%_)
                                            ((lambda (_%g116012116065%_
                                                      _%g116013116067%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g116013116067%_ '()))
                   (cons _%g116012116065%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd116021116059%_
                                             _%hd116018116049%_)
                                            (_%g116010116028%_
                                             _%g116011116032%_))))
                                    (_%g116010116028%_ _%g116011116032%_))))
                            (_%g116010116028%_ _%g116011116032%_))))
                    (_%g116010116028%_ _%g116011116032%_)))))
        (_%g116009116083%_ _%$stx116006%_)))))

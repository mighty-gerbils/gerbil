(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx104742%_)
      (let* ((_%g104746104764%_
              (lambda (_%g104747104760%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g104747104760%_)))
             (_%g104745104820%_
              (lambda (_%g104747104768%_)
                (if (gx#stx-pair? _%g104747104768%_)
                    (let ((_%e104750104771%_ (gx#syntax-e _%g104747104768%_)))
                      (let ((_%hd104751104775%_
                             (let ()
                               (declare (not safe))
                               (##car _%e104750104771%_)))
                            (_%tl104752104778%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e104750104771%_))))
                        (if (gx#stx-pair? _%tl104752104778%_)
                            (let ((_%e104753104781%_
                                   (gx#syntax-e _%tl104752104778%_)))
                              (let ((_%hd104754104785%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e104753104781%_)))
                                    (_%tl104755104788%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e104753104781%_))))
                                (if (gx#stx-pair? _%tl104755104788%_)
                                    (let ((_%e104756104791%_
                                           (gx#syntax-e _%tl104755104788%_)))
                                      (let ((_%hd104757104795%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e104756104791%_)))
                                            (_%tl104758104798%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e104756104791%_))))
                                        (if (gx#stx-null? _%tl104758104798%_)
                                            ((lambda (_%g104748104801%_
                                                      _%g104749104803%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g104749104803%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g104748104801%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd104757104795%_
                                             _%hd104754104785%_)
                                            (_%g104746104764%_
                                             _%g104747104768%_))))
                                    (_%g104746104764%_ _%g104747104768%_))))
                            (_%g104746104764%_ _%g104747104768%_))))
                    (_%g104746104764%_ _%g104747104768%_)))))
        (_%g104745104820%_ _%$stx104742%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx104824%_)
      (let* ((_%g104827104849%_
              (lambda (_%g104828104845%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g104828104845%_)))
             (_%g104826105162%_
              (lambda (_%g104828104853%_)
                (if (gx#stx-pair? _%g104828104853%_)
                    (let ((_%e104832104856%_ (gx#syntax-e _%g104828104853%_)))
                      (let ((_%hd104833104860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e104832104856%_)))
                            (_%tl104834104863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e104832104856%_))))
                        (if (gx#stx-pair? _%tl104834104863%_)
                            (let ((_%e104835104866%_
                                   (gx#syntax-e _%tl104834104863%_)))
                              (let ((_%hd104836104870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e104835104866%_)))
                                    (_%tl104837104873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e104835104866%_))))
                                (if (gx#stx-pair? _%tl104837104873%_)
                                    (let ((_%e104838104876%_
                                           (gx#syntax-e _%tl104837104873%_)))
                                      (let ((_%hd104839104880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e104838104876%_)))
                                            (_%tl104840104883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e104838104876%_))))
                                        (if (gx#stx-pair? _%tl104840104883%_)
                                            (let ((_%e104841104886%_
                                                   (gx#syntax-e
                                                    _%tl104840104883%_)))
                                              (let ((_%hd104842104890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e104841104886%_)))
                                                    (_%tl104843104893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e104841104886%_))))
                                                (if (gx#stx-null?
                                                     _%tl104843104893%_)
                                                    ((lambda (_%g104829104896%_
                                                              _%g104830104898%_
                                                              _%g104831104899%_)
                                                       (let* ((_%g104918104973%_
                                                               (lambda (_%g104919104969%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g104919104969%_)))
                      (_%g104917105158%_
                       (lambda (_%g104919104977%_)
                         (if (gx#stx-pair? _%g104919104977%_)
                             (let ((_%e104932104980%_
                                    (gx#syntax-e _%g104919104977%_)))
                               (let ((_%hd104933104984%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e104932104980%_)))
                                     (_%tl104934104987%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e104932104980%_))))
                                 (if (gx#stx-pair? _%tl104934104987%_)
                                     (let ((_%e104935104990%_
                                            (gx#syntax-e _%tl104934104987%_)))
                                       (let ((_%hd104936104994%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e104935104990%_)))
                                             (_%tl104937104997%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e104935104990%_))))
                                         (if (gx#stx-pair? _%tl104937104997%_)
                                             (let ((_%e104938105000%_
                                                    (gx#syntax-e
                                                     _%tl104937104997%_)))
                                               (let ((_%hd104939105004%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e104938105000%_)))
                                                     (_%tl104940105007%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e104938105000%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl104940105007%_)
                                                     (let ((_%e104941105010%_
                                                            (gx#syntax-e
                                                             _%tl104940105007%_)))
                                                       (let ((_%hd104942105014%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e104941105010%_)))
                     (_%tl104943105017%_
                      (let () (declare (not safe)) (##cdr _%e104941105010%_))))
                 (if (gx#stx-pair? _%tl104943105017%_)
                     (let ((_%e104944105020%_
                            (gx#syntax-e _%tl104943105017%_)))
                       (let ((_%hd104945105024%_
                              (let ()
                                (declare (not safe))
                                (##car _%e104944105020%_)))
                             (_%tl104946105027%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e104944105020%_))))
                         (if (gx#stx-pair? _%tl104946105027%_)
                             (let ((_%e104947105030%_
                                    (gx#syntax-e _%tl104946105027%_)))
                               (let ((_%hd104948105034%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e104947105030%_)))
                                     (_%tl104949105037%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e104947105030%_))))
                                 (if (gx#stx-pair? _%tl104949105037%_)
                                     (let ((_%e104950105040%_
                                            (gx#syntax-e _%tl104949105037%_)))
                                       (let ((_%hd104951105044%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e104950105040%_)))
                                             (_%tl104952105047%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e104950105040%_))))
                                         (if (gx#stx-pair? _%tl104952105047%_)
                                             (let ((_%e104953105050%_
                                                    (gx#syntax-e
                                                     _%tl104952105047%_)))
                                               (let ((_%hd104954105054%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e104953105050%_)))
                                                     (_%tl104955105057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e104953105050%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl104955105057%_)
                                                     (let ((_%e104956105060%_
                                                            (gx#syntax-e
                                                             _%tl104955105057%_)))
                                                       (let ((_%hd104957105064%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e104956105060%_)))
                     (_%tl104958105067%_
                      (let () (declare (not safe)) (##cdr _%e104956105060%_))))
                 (if (gx#stx-pair? _%tl104958105067%_)
                     (let ((_%e104959105070%_
                            (gx#syntax-e _%tl104958105067%_)))
                       (let ((_%hd104960105074%_
                              (let ()
                                (declare (not safe))
                                (##car _%e104959105070%_)))
                             (_%tl104961105077%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e104959105070%_))))
                         (if (gx#stx-pair? _%tl104961105077%_)
                             (let ((_%e104962105080%_
                                    (gx#syntax-e _%tl104961105077%_)))
                               (let ((_%hd104963105084%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e104962105080%_)))
                                     (_%tl104964105087%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e104962105080%_))))
                                 (if (gx#stx-pair? _%tl104964105087%_)
                                     (let ((_%e104965105090%_
                                            (gx#syntax-e _%tl104964105087%_)))
                                       (let ((_%hd104966105094%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e104965105090%_)))
                                             (_%tl104967105097%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e104965105090%_))))
                                         (if (gx#stx-null? _%tl104967105097%_)
                                             ((lambda (_%g104920105100%_
                                                       _%g104921105102%_
                                                       _%g104922105103%_
                                                       _%g104923105104%_
                                                       _%g104924105105%_
                                                       _%g104925105106%_
                                                       _%g104926105107%_
                                                       _%g104927105108%_
                                                       _%g104928105109%_
                                                       _%g104929105110%_
                                                       _%g104930105111%_
                                                       _%g104931105112%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g104931105112%_
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
                                                  (cons _%g104830104898%_
                                                        (cons _%g104829104896%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g104930105111%_
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
                                                        (cons _%g104830104898%_
                                                              (cons _%g104829104896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g104929105110%_
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
                                              (cons _%g104830104898%_
                                                    (cons _%g104829104896%_
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
                                            (cons (cons _%g104928105109%_
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
                            (cons (cons _%g104929105110%_
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
                                                  (cons (cons _%g104927105108%_
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
                                                          (cons _%g104830104898%_
                                                                (cons _%g104829104896%_
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
                                                        (cons (cons _%g104926105107%_
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
                            (cons (cons _%g104927105108%_
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
                                                              (cons (cons _%g104925105106%_
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
                                              (cons (cons _%g104926105107%_
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
                            (cons (cons _%g104924105105%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g104923105104%_
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
                                    (cons _%g104830104898%_
                                          (cons _%g104829104896%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g104923105104%_
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
                                  (cons (cons _%g104923105104%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g104923105104%_
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
                                              (cons (cons _%g104924105105%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g104923105104%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g104922105103%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g104923105104%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g104923105104%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g104923105104%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g104921105102%_
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
                                                      (cons _%g104830104898%_
                                                            (cons _%g104829104896%_
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
                                                    (cons (cons _%g104920105100%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g104921105102%_
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
                                              _%hd104966105094%_
                                              _%hd104963105084%_
                                              _%hd104960105074%_
                                              _%hd104957105064%_
                                              _%hd104954105054%_
                                              _%hd104951105044%_
                                              _%hd104948105034%_
                                              _%hd104945105024%_
                                              _%hd104942105014%_
                                              _%hd104939105004%_
                                              _%hd104936104994%_
                                              _%hd104933104984%_)
                                             (_%g104918104973%_
                                              _%g104919104977%_))))
                                     (_%g104918104973%_ _%g104919104977%_))))
                             (_%g104918104973%_ _%g104919104977%_))))
                     (_%g104918104973%_ _%g104919104977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g104918104973%_
                                                      _%g104919104977%_))))
                                             (_%g104918104973%_
                                              _%g104919104977%_))))
                                     (_%g104918104973%_ _%g104919104977%_))))
                             (_%g104918104973%_ _%g104919104977%_))))
                     (_%g104918104973%_ _%g104919104977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g104918104973%_
                                                      _%g104919104977%_))))
                                             (_%g104918104973%_
                                              _%g104919104977%_))))
                                     (_%g104918104973%_ _%g104919104977%_))))
                             (_%g104918104973%_ _%g104919104977%_)))))
                 (_%g104917105158%_
                  (list (gx#stx-identifier
                         _%g104831104899%_
                         '"make-"
                         _%g104831104899%_)
                        (gx#stx-identifier
                         _%g104831104899%_
                         '"make-"
                         _%g104831104899%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g104831104899%_
                         '"__"
                         _%g104831104899%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g104831104899%_
                         '"__"
                         _%g104831104899%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g104831104899%_
                         _%g104831104899%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd104842104890%_
                                                     _%hd104839104880%_
                                                     _%hd104836104870%_)
                                                    (_%g104827104849%_
                                                     _%g104828104853%_))))
                                            (_%g104827104849%_
                                             _%g104828104853%_))))
                                    (_%g104827104849%_ _%g104828104853%_))))
                            (_%g104827104849%_ _%g104828104853%_))))
                    (_%g104827104849%_ _%g104828104853%_)))))
        (_%g104826105162%_ _%stx104824%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx105166%_)
      (let* ((_%g105170105192%_
              (lambda (_%g105171105188%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105171105188%_)))
             (_%g105169105261%_
              (lambda (_%g105171105196%_)
                (if (gx#stx-pair? _%g105171105196%_)
                    (let ((_%e105175105199%_ (gx#syntax-e _%g105171105196%_)))
                      (let ((_%hd105176105203%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105175105199%_)))
                            (_%tl105177105206%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105175105199%_))))
                        (if (gx#stx-pair? _%tl105177105206%_)
                            (let ((_%e105178105209%_
                                   (gx#syntax-e _%tl105177105206%_)))
                              (let ((_%hd105179105213%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105178105209%_)))
                                    (_%tl105180105216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105178105209%_))))
                                (if (gx#stx-pair? _%tl105180105216%_)
                                    (let ((_%e105181105219%_
                                           (gx#syntax-e _%tl105180105216%_)))
                                      (let ((_%hd105182105223%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105181105219%_)))
                                            (_%tl105183105226%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105181105219%_))))
                                        (if (gx#stx-pair? _%tl105183105226%_)
                                            (let ((_%e105184105229%_
                                                   (gx#syntax-e
                                                    _%tl105183105226%_)))
                                              (let ((_%hd105185105233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105184105229%_)))
                                                    (_%tl105186105236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105184105229%_))))
                                                (if (gx#stx-null?
                                                     _%tl105186105236%_)
                                                    ((lambda (_%g105172105239%_
                                                              _%g105173105241%_
                                                              _%g105174105242%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g105174105242%_
                                                   (cons _%g105173105241%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g105173105241%_
                                   (cons _%g105173105241%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g105172105239%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd105185105233%_
                                                     _%hd105182105223%_
                                                     _%hd105179105213%_)
                                                    (_%g105170105192%_
                                                     _%g105171105196%_))))
                                            (_%g105170105192%_
                                             _%g105171105196%_))))
                                    (_%g105170105192%_ _%g105171105196%_))))
                            (_%g105170105192%_ _%g105171105196%_))))
                    (_%g105170105192%_ _%g105171105196%_)))))
        (_%g105169105261%_ _%$stx105166%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx105265%_)
      (let* ((_%g105269105303%_
              (lambda (_%g105270105299%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105270105299%_)))
             (_%g105268105414%_
              (lambda (_%g105270105307%_)
                (if (gx#stx-pair? _%g105270105307%_)
                    (let ((_%e105277105310%_ (gx#syntax-e _%g105270105307%_)))
                      (let ((_%hd105278105314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105277105310%_)))
                            (_%tl105279105317%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105277105310%_))))
                        (if (gx#stx-pair? _%tl105279105317%_)
                            (let ((_%e105280105320%_
                                   (gx#syntax-e _%tl105279105317%_)))
                              (let ((_%hd105281105324%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105280105320%_)))
                                    (_%tl105282105327%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105280105320%_))))
                                (if (gx#stx-pair? _%tl105282105327%_)
                                    (let ((_%e105283105330%_
                                           (gx#syntax-e _%tl105282105327%_)))
                                      (let ((_%hd105284105334%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105283105330%_)))
                                            (_%tl105285105337%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105283105330%_))))
                                        (if (gx#stx-pair? _%tl105285105337%_)
                                            (let ((_%e105286105340%_
                                                   (gx#syntax-e
                                                    _%tl105285105337%_)))
                                              (let ((_%hd105287105344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105286105340%_)))
                                                    (_%tl105288105347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105286105340%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105288105347%_)
                                                    (let ((_%e105289105350%_
                                                           (gx#syntax-e
                                                            _%tl105288105347%_)))
                                                      (let ((_%hd105290105354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105289105350%_)))
                    (_%tl105291105357%_
                     (let () (declare (not safe)) (##cdr _%e105289105350%_))))
                (if (gx#stx-pair? _%tl105291105357%_)
                    (let ((_%e105292105360%_ (gx#syntax-e _%tl105291105357%_)))
                      (let ((_%hd105293105364%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105292105360%_)))
                            (_%tl105294105367%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105292105360%_))))
                        (if (gx#stx-pair? _%tl105294105367%_)
                            (let ((_%e105295105370%_
                                   (gx#syntax-e _%tl105294105367%_)))
                              (let ((_%hd105296105374%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105295105370%_)))
                                    (_%tl105297105377%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105295105370%_))))
                                (if (gx#stx-null? _%tl105297105377%_)
                                    ((lambda (_%g105271105380%_
                                              _%g105272105382%_
                                              _%g105273105383%_
                                              _%g105274105384%_
                                              _%g105275105385%_
                                              _%g105276105386%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g105274105384%_
                                               (cons _%g105272105382%_ '()))
                                         (cons _%g105275105385%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g105276105386%_ '()))
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
                               (cons _%g105276105386%_
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
                                     (cons _%g105271105380%_ '()))
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
                                     (cons (cons (cons _%g105273105383%_
                                                       (cons _%g105272105382%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g105276105386%_
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
                                     _%hd105296105374%_
                                     _%hd105293105364%_
                                     _%hd105290105354%_
                                     _%hd105287105344%_
                                     _%hd105284105334%_
                                     _%hd105281105324%_)
                                    (_%g105269105303%_ _%g105270105307%_))))
                            (_%g105269105303%_ _%g105270105307%_))))
                    (_%g105269105303%_ _%g105270105307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105269105303%_
                                                     _%g105270105307%_))))
                                            (_%g105269105303%_
                                             _%g105270105307%_))))
                                    (_%g105269105303%_ _%g105270105307%_))))
                            (_%g105269105303%_ _%g105270105307%_))))
                    (_%g105269105303%_ _%g105270105307%_)))))
        (_%g105268105414%_ _%$stx105265%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx105418%_)
      (let* ((_%g105422105464%_
              (lambda (_%g105423105460%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105423105460%_)))
             (_%g105421105603%_
              (lambda (_%g105423105468%_)
                (if (gx#stx-pair? _%g105423105468%_)
                    (let ((_%e105432105471%_ (gx#syntax-e _%g105423105468%_)))
                      (let ((_%hd105433105475%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105432105471%_)))
                            (_%tl105434105478%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105432105471%_))))
                        (if (gx#stx-pair? _%tl105434105478%_)
                            (let ((_%e105435105481%_
                                   (gx#syntax-e _%tl105434105478%_)))
                              (let ((_%hd105436105485%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105435105481%_)))
                                    (_%tl105437105488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105435105481%_))))
                                (if (gx#stx-pair? _%tl105437105488%_)
                                    (let ((_%e105438105491%_
                                           (gx#syntax-e _%tl105437105488%_)))
                                      (let ((_%hd105439105495%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105438105491%_)))
                                            (_%tl105440105498%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105438105491%_))))
                                        (if (gx#stx-pair? _%tl105440105498%_)
                                            (let ((_%e105441105501%_
                                                   (gx#syntax-e
                                                    _%tl105440105498%_)))
                                              (let ((_%hd105442105505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105441105501%_)))
                                                    (_%tl105443105508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105441105501%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105443105508%_)
                                                    (let ((_%e105444105511%_
                                                           (gx#syntax-e
                                                            _%tl105443105508%_)))
                                                      (let ((_%hd105445105515%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105444105511%_)))
                    (_%tl105446105518%_
                     (let () (declare (not safe)) (##cdr _%e105444105511%_))))
                (if (gx#stx-pair? _%tl105446105518%_)
                    (let ((_%e105447105521%_ (gx#syntax-e _%tl105446105518%_)))
                      (let ((_%hd105448105525%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105447105521%_)))
                            (_%tl105449105528%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105447105521%_))))
                        (if (gx#stx-pair? _%tl105449105528%_)
                            (let ((_%e105450105531%_
                                   (gx#syntax-e _%tl105449105528%_)))
                              (let ((_%hd105451105535%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105450105531%_)))
                                    (_%tl105452105538%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105450105531%_))))
                                (if (gx#stx-pair? _%tl105452105538%_)
                                    (let ((_%e105453105541%_
                                           (gx#syntax-e _%tl105452105538%_)))
                                      (let ((_%hd105454105545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105453105541%_)))
                                            (_%tl105455105548%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105453105541%_))))
                                        (if (gx#stx-pair? _%tl105455105548%_)
                                            (let ((_%e105456105551%_
                                                   (gx#syntax-e
                                                    _%tl105455105548%_)))
                                              (let ((_%hd105457105555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105456105551%_)))
                                                    (_%tl105458105558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105456105551%_))))
                                                (if (gx#stx-null?
                                                     _%tl105458105558%_)
                                                    ((lambda (_%g105424105561%_
                                                              _%g105425105563%_
                                                              _%g105426105564%_
                                                              _%g105427105565%_
                                                              _%g105428105566%_
                                                              _%g105429105567%_
                                                              _%g105430105568%_
                                                              _%g105431105569%_)
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
                                                   (cons (cons _%g105429105567%_
                                                               (cons _%g105427105565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g105430105568%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g105431105569%_
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
                                               (cons _%g105431105569%_
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
                                                       (cons _%g105431105569%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g105427105565%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g105431105569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g105426105564%_ '()))))
               (cons (cons _%g105424105561%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g105431105569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g105427105565%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g105431105569%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g105426105564%_ '()))))
                     (cons (cons _%g105425105563%_ '()) '()))))
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
                                                     (cons (cons (cons _%g105428105566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g105427105565%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g105431105569%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g105427105565%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g105431105569%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g105426105564%_ '()))))
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
                                                     _%hd105457105555%_
                                                     _%hd105454105545%_
                                                     _%hd105451105535%_
                                                     _%hd105448105525%_
                                                     _%hd105445105515%_
                                                     _%hd105442105505%_
                                                     _%hd105439105495%_
                                                     _%hd105436105485%_)
                                                    (_%g105422105464%_
                                                     _%g105423105468%_))))
                                            (_%g105422105464%_
                                             _%g105423105468%_))))
                                    (_%g105422105464%_ _%g105423105468%_))))
                            (_%g105422105464%_ _%g105423105468%_))))
                    (_%g105422105464%_ _%g105423105468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105422105464%_
                                                     _%g105423105468%_))))
                                            (_%g105422105464%_
                                             _%g105423105468%_))))
                                    (_%g105422105464%_ _%g105423105468%_))))
                            (_%g105422105464%_ _%g105423105468%_))))
                    (_%g105422105464%_ _%g105423105468%_)))))
        (_%g105421105603%_ _%$stx105418%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx105607%_)
      (let* ((_%g105611105657%_
              (lambda (_%g105612105653%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105612105653%_)))
             (_%g105610105810%_
              (lambda (_%g105612105661%_)
                (if (gx#stx-pair? _%g105612105661%_)
                    (let ((_%e105622105664%_ (gx#syntax-e _%g105612105661%_)))
                      (let ((_%hd105623105668%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105622105664%_)))
                            (_%tl105624105671%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105622105664%_))))
                        (if (gx#stx-pair? _%tl105624105671%_)
                            (let ((_%e105625105674%_
                                   (gx#syntax-e _%tl105624105671%_)))
                              (let ((_%hd105626105678%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105625105674%_)))
                                    (_%tl105627105681%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105625105674%_))))
                                (if (gx#stx-pair? _%tl105627105681%_)
                                    (let ((_%e105628105684%_
                                           (gx#syntax-e _%tl105627105681%_)))
                                      (let ((_%hd105629105688%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105628105684%_)))
                                            (_%tl105630105691%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105628105684%_))))
                                        (if (gx#stx-pair? _%tl105630105691%_)
                                            (let ((_%e105631105694%_
                                                   (gx#syntax-e
                                                    _%tl105630105691%_)))
                                              (let ((_%hd105632105698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105631105694%_)))
                                                    (_%tl105633105701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105631105694%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105633105701%_)
                                                    (let ((_%e105634105704%_
                                                           (gx#syntax-e
                                                            _%tl105633105701%_)))
                                                      (let ((_%hd105635105708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105634105704%_)))
                    (_%tl105636105711%_
                     (let () (declare (not safe)) (##cdr _%e105634105704%_))))
                (if (gx#stx-pair? _%tl105636105711%_)
                    (let ((_%e105637105714%_ (gx#syntax-e _%tl105636105711%_)))
                      (let ((_%hd105638105718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105637105714%_)))
                            (_%tl105639105721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105637105714%_))))
                        (if (gx#stx-pair? _%tl105639105721%_)
                            (let ((_%e105640105724%_
                                   (gx#syntax-e _%tl105639105721%_)))
                              (let ((_%hd105641105728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105640105724%_)))
                                    (_%tl105642105731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105640105724%_))))
                                (if (gx#stx-pair? _%tl105642105731%_)
                                    (let ((_%e105643105734%_
                                           (gx#syntax-e _%tl105642105731%_)))
                                      (let ((_%hd105644105738%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105643105734%_)))
                                            (_%tl105645105741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105643105734%_))))
                                        (if (gx#stx-pair? _%tl105645105741%_)
                                            (let ((_%e105646105744%_
                                                   (gx#syntax-e
                                                    _%tl105645105741%_)))
                                              (let ((_%hd105647105748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105646105744%_)))
                                                    (_%tl105648105751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105646105744%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105648105751%_)
                                                    (let ((_%e105649105754%_
                                                           (gx#syntax-e
                                                            _%tl105648105751%_)))
                                                      (let ((_%hd105650105758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105649105754%_)))
                    (_%tl105651105761%_
                     (let () (declare (not safe)) (##cdr _%e105649105754%_))))
                (if (gx#stx-null? _%tl105651105761%_)
                    ((lambda (_%g105613105764%_
                              _%g105614105766%_
                              _%g105615105767%_
                              _%g105616105768%_
                              _%g105617105769%_
                              _%g105618105770%_
                              _%g105619105771%_
                              _%g105620105772%_
                              _%g105621105773%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g105619105771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g105617105769%_ '()))
                         (cons _%g105620105772%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g105621105773%_ '()))
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
                                                       (cons _%g105621105773%_
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
                                                               (cons _%g105621105773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g105617105769%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g105621105773%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g105616105768%_
                                                     (cons _%g105615105767%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g105613105764%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g105621105773%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g105617105769%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g105621105773%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g105616105768%_
                                                           (cons _%g105615105767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g105614105766%_ '()) '()))))
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
                     (cons (cons (cons _%g105618105770%_
                                       (cons _%g105617105769%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g105621105773%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g105617105769%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g105621105773%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g105616105768%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g105621105773%_
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
                     _%hd105650105758%_
                     _%hd105647105748%_
                     _%hd105644105738%_
                     _%hd105641105728%_
                     _%hd105638105718%_
                     _%hd105635105708%_
                     _%hd105632105698%_
                     _%hd105629105688%_
                     _%hd105626105678%_)
                    (_%g105611105657%_ _%g105612105661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105611105657%_
                                                     _%g105612105661%_))))
                                            (_%g105611105657%_
                                             _%g105612105661%_))))
                                    (_%g105611105657%_ _%g105612105661%_))))
                            (_%g105611105657%_ _%g105612105661%_))))
                    (_%g105611105657%_ _%g105612105661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105611105657%_
                                                     _%g105612105661%_))))
                                            (_%g105611105657%_
                                             _%g105612105661%_))))
                                    (_%g105611105657%_ _%g105612105661%_))))
                            (_%g105611105657%_ _%g105612105661%_))))
                    (_%g105611105657%_ _%g105612105661%_)))))
        (_%g105610105810%_ _%$stx105607%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx105814%_)
      (let* ((_%g105818105852%_
              (lambda (_%g105819105848%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105819105848%_)))
             (_%g105817105963%_
              (lambda (_%g105819105856%_)
                (if (gx#stx-pair? _%g105819105856%_)
                    (let ((_%e105826105859%_ (gx#syntax-e _%g105819105856%_)))
                      (let ((_%hd105827105863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105826105859%_)))
                            (_%tl105828105866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105826105859%_))))
                        (if (gx#stx-pair? _%tl105828105866%_)
                            (let ((_%e105829105869%_
                                   (gx#syntax-e _%tl105828105866%_)))
                              (let ((_%hd105830105873%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105829105869%_)))
                                    (_%tl105831105876%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105829105869%_))))
                                (if (gx#stx-pair? _%tl105831105876%_)
                                    (let ((_%e105832105879%_
                                           (gx#syntax-e _%tl105831105876%_)))
                                      (let ((_%hd105833105883%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105832105879%_)))
                                            (_%tl105834105886%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105832105879%_))))
                                        (if (gx#stx-pair? _%tl105834105886%_)
                                            (let ((_%e105835105889%_
                                                   (gx#syntax-e
                                                    _%tl105834105886%_)))
                                              (let ((_%hd105836105893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105835105889%_)))
                                                    (_%tl105837105896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105835105889%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105837105896%_)
                                                    (let ((_%e105838105899%_
                                                           (gx#syntax-e
                                                            _%tl105837105896%_)))
                                                      (let ((_%hd105839105903%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105838105899%_)))
                    (_%tl105840105906%_
                     (let () (declare (not safe)) (##cdr _%e105838105899%_))))
                (if (gx#stx-pair? _%tl105840105906%_)
                    (let ((_%e105841105909%_ (gx#syntax-e _%tl105840105906%_)))
                      (let ((_%hd105842105913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105841105909%_)))
                            (_%tl105843105916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105841105909%_))))
                        (if (gx#stx-pair? _%tl105843105916%_)
                            (let ((_%e105844105919%_
                                   (gx#syntax-e _%tl105843105916%_)))
                              (let ((_%hd105845105923%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105844105919%_)))
                                    (_%tl105846105926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105844105919%_))))
                                (if (gx#stx-null? _%tl105846105926%_)
                                    ((lambda (_%g105820105929%_
                                              _%g105821105931%_
                                              _%g105822105932%_
                                              _%g105823105933%_
                                              _%g105824105934%_
                                              _%g105825105935%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g105823105933%_
                                               (cons _%g105821105931%_ '()))
                                         (cons _%g105824105934%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g105825105935%_ '()))
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
                               (cons _%g105825105935%_
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
                                     (cons (cons (cons _%g105822105932%_
                                                       (cons _%g105821105931%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g105825105935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g105825105935%_
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
                     (cons (cons _%g105820105929%_ '()) '()))))
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
                                     _%hd105845105923%_
                                     _%hd105842105913%_
                                     _%hd105839105903%_
                                     _%hd105836105893%_
                                     _%hd105833105883%_
                                     _%hd105830105873%_)
                                    (_%g105818105852%_ _%g105819105856%_))))
                            (_%g105818105852%_ _%g105819105856%_))))
                    (_%g105818105852%_ _%g105819105856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105818105852%_
                                                     _%g105819105856%_))))
                                            (_%g105818105852%_
                                             _%g105819105856%_))))
                                    (_%g105818105852%_ _%g105819105856%_))))
                            (_%g105818105852%_ _%g105819105856%_))))
                    (_%g105818105852%_ _%g105819105856%_)))))
        (_%g105817105963%_ _%$stx105814%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx105967%_)
      (let* ((_%g105971105989%_
              (lambda (_%g105972105985%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105972105985%_)))
             (_%g105970106044%_
              (lambda (_%g105972105993%_)
                (if (gx#stx-pair? _%g105972105993%_)
                    (let ((_%e105975105996%_ (gx#syntax-e _%g105972105993%_)))
                      (let ((_%hd105976106000%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105975105996%_)))
                            (_%tl105977106003%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105975105996%_))))
                        (if (gx#stx-pair? _%tl105977106003%_)
                            (let ((_%e105978106006%_
                                   (gx#syntax-e _%tl105977106003%_)))
                              (let ((_%hd105979106010%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105978106006%_)))
                                    (_%tl105980106013%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105978106006%_))))
                                (if (gx#stx-pair? _%tl105980106013%_)
                                    (let ((_%e105981106016%_
                                           (gx#syntax-e _%tl105980106013%_)))
                                      (let ((_%hd105982106020%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105981106016%_)))
                                            (_%tl105983106023%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105981106016%_))))
                                        (if (gx#stx-null? _%tl105983106023%_)
                                            ((lambda (_%g105973106026%_
                                                      _%g105974106028%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g105974106028%_ '()))
                   (cons _%g105973106026%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd105982106020%_
                                             _%hd105979106010%_)
                                            (_%g105971105989%_
                                             _%g105972105993%_))))
                                    (_%g105971105989%_ _%g105972105993%_))))
                            (_%g105971105989%_ _%g105972105993%_))))
                    (_%g105971105989%_ _%g105972105993%_)))))
        (_%g105970106044%_ _%$stx105967%_)))))

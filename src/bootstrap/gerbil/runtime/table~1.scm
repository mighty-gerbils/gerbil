(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx112356%_)
      (let* ((_%g112360112378%_
              (lambda (_%g112361112374%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112361112374%_)))
             (_%g112359112434%_
              (lambda (_%g112361112382%_)
                (if (gx#stx-pair? _%g112361112382%_)
                    (let ((_%e112364112385%_ (gx#syntax-e _%g112361112382%_)))
                      (let ((_%hd112365112389%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112364112385%_)))
                            (_%tl112366112392%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112364112385%_))))
                        (if (gx#stx-pair? _%tl112366112392%_)
                            (let ((_%e112367112395%_
                                   (gx#syntax-e _%tl112366112392%_)))
                              (let ((_%hd112368112399%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112367112395%_)))
                                    (_%tl112369112402%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112367112395%_))))
                                (if (gx#stx-pair? _%tl112369112402%_)
                                    (let ((_%e112370112405%_
                                           (gx#syntax-e _%tl112369112402%_)))
                                      (let ((_%hd112371112409%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112370112405%_)))
                                            (_%tl112372112412%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112370112405%_))))
                                        (if (gx#stx-null? _%tl112372112412%_)
                                            ((lambda (_%g112362112415%_
                                                      _%g112363112417%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g112363112417%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g112362112415%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd112371112409%_
                                             _%hd112368112399%_)
                                            (_%g112360112378%_
                                             _%g112361112382%_))))
                                    (_%g112360112378%_ _%g112361112382%_))))
                            (_%g112360112378%_ _%g112361112382%_))))
                    (_%g112360112378%_ _%g112361112382%_)))))
        (_%g112359112434%_ _%$stx112356%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx112438%_)
      (let* ((_%g112441112463%_
              (lambda (_%g112442112459%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112442112459%_)))
             (_%g112440112776%_
              (lambda (_%g112442112467%_)
                (if (gx#stx-pair? _%g112442112467%_)
                    (let ((_%e112446112470%_ (gx#syntax-e _%g112442112467%_)))
                      (let ((_%hd112447112474%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112446112470%_)))
                            (_%tl112448112477%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112446112470%_))))
                        (if (gx#stx-pair? _%tl112448112477%_)
                            (let ((_%e112449112480%_
                                   (gx#syntax-e _%tl112448112477%_)))
                              (let ((_%hd112450112484%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112449112480%_)))
                                    (_%tl112451112487%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112449112480%_))))
                                (if (gx#stx-pair? _%tl112451112487%_)
                                    (let ((_%e112452112490%_
                                           (gx#syntax-e _%tl112451112487%_)))
                                      (let ((_%hd112453112494%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112452112490%_)))
                                            (_%tl112454112497%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112452112490%_))))
                                        (if (gx#stx-pair? _%tl112454112497%_)
                                            (let ((_%e112455112500%_
                                                   (gx#syntax-e
                                                    _%tl112454112497%_)))
                                              (let ((_%hd112456112504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112455112500%_)))
                                                    (_%tl112457112507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112455112500%_))))
                                                (if (gx#stx-null?
                                                     _%tl112457112507%_)
                                                    ((lambda (_%g112443112510%_
                                                              _%g112444112512%_
                                                              _%g112445112513%_)
                                                       (let* ((_%g112532112587%_
                                                               (lambda (_%g112533112583%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112533112583%_)))
                      (_%g112531112772%_
                       (lambda (_%g112533112591%_)
                         (if (gx#stx-pair? _%g112533112591%_)
                             (let ((_%e112546112594%_
                                    (gx#syntax-e _%g112533112591%_)))
                               (let ((_%hd112547112598%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112546112594%_)))
                                     (_%tl112548112601%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112546112594%_))))
                                 (if (gx#stx-pair? _%tl112548112601%_)
                                     (let ((_%e112549112604%_
                                            (gx#syntax-e _%tl112548112601%_)))
                                       (let ((_%hd112550112608%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112549112604%_)))
                                             (_%tl112551112611%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112549112604%_))))
                                         (if (gx#stx-pair? _%tl112551112611%_)
                                             (let ((_%e112552112614%_
                                                    (gx#syntax-e
                                                     _%tl112551112611%_)))
                                               (let ((_%hd112553112618%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112552112614%_)))
                                                     (_%tl112554112621%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112552112614%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112554112621%_)
                                                     (let ((_%e112555112624%_
                                                            (gx#syntax-e
                                                             _%tl112554112621%_)))
                                                       (let ((_%hd112556112628%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112555112624%_)))
                     (_%tl112557112631%_
                      (let () (declare (not safe)) (##cdr _%e112555112624%_))))
                 (if (gx#stx-pair? _%tl112557112631%_)
                     (let ((_%e112558112634%_
                            (gx#syntax-e _%tl112557112631%_)))
                       (let ((_%hd112559112638%_
                              (let ()
                                (declare (not safe))
                                (##car _%e112558112634%_)))
                             (_%tl112560112641%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e112558112634%_))))
                         (if (gx#stx-pair? _%tl112560112641%_)
                             (let ((_%e112561112644%_
                                    (gx#syntax-e _%tl112560112641%_)))
                               (let ((_%hd112562112648%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112561112644%_)))
                                     (_%tl112563112651%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112561112644%_))))
                                 (if (gx#stx-pair? _%tl112563112651%_)
                                     (let ((_%e112564112654%_
                                            (gx#syntax-e _%tl112563112651%_)))
                                       (let ((_%hd112565112658%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112564112654%_)))
                                             (_%tl112566112661%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112564112654%_))))
                                         (if (gx#stx-pair? _%tl112566112661%_)
                                             (let ((_%e112567112664%_
                                                    (gx#syntax-e
                                                     _%tl112566112661%_)))
                                               (let ((_%hd112568112668%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112567112664%_)))
                                                     (_%tl112569112671%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112567112664%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112569112671%_)
                                                     (let ((_%e112570112674%_
                                                            (gx#syntax-e
                                                             _%tl112569112671%_)))
                                                       (let ((_%hd112571112678%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112570112674%_)))
                     (_%tl112572112681%_
                      (let () (declare (not safe)) (##cdr _%e112570112674%_))))
                 (if (gx#stx-pair? _%tl112572112681%_)
                     (let ((_%e112573112684%_
                            (gx#syntax-e _%tl112572112681%_)))
                       (let ((_%hd112574112688%_
                              (let ()
                                (declare (not safe))
                                (##car _%e112573112684%_)))
                             (_%tl112575112691%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e112573112684%_))))
                         (if (gx#stx-pair? _%tl112575112691%_)
                             (let ((_%e112576112694%_
                                    (gx#syntax-e _%tl112575112691%_)))
                               (let ((_%hd112577112698%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112576112694%_)))
                                     (_%tl112578112701%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112576112694%_))))
                                 (if (gx#stx-pair? _%tl112578112701%_)
                                     (let ((_%e112579112704%_
                                            (gx#syntax-e _%tl112578112701%_)))
                                       (let ((_%hd112580112708%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112579112704%_)))
                                             (_%tl112581112711%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112579112704%_))))
                                         (if (gx#stx-null? _%tl112581112711%_)
                                             ((lambda (_%g112534112714%_
                                                       _%g112535112716%_
                                                       _%g112536112717%_
                                                       _%g112537112718%_
                                                       _%g112538112719%_
                                                       _%g112539112720%_
                                                       _%g112540112721%_
                                                       _%g112541112722%_
                                                       _%g112542112723%_
                                                       _%g112543112724%_
                                                       _%g112544112725%_
                                                       _%g112545112726%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g112545112726%_
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
                                                  (cons _%g112444112512%_
                                                        (cons _%g112443112510%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g112544112725%_
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
                                                        (cons _%g112444112512%_
                                                              (cons _%g112443112510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g112543112724%_
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
                                              (cons _%g112444112512%_
                                                    (cons _%g112443112510%_
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
                                            (cons (cons _%g112542112723%_
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
                            (cons (cons _%g112543112724%_
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
                                                  (cons (cons _%g112541112722%_
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
                                                          (cons _%g112444112512%_
                                                                (cons _%g112443112510%_
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
                                                        (cons (cons _%g112540112721%_
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
                            (cons (cons _%g112541112722%_
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
                                                              (cons (cons _%g112539112720%_
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
                                              (cons (cons _%g112540112721%_
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
                            (cons (cons _%g112538112719%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g112537112718%_
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
                                    (cons _%g112444112512%_
                                          (cons _%g112443112510%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g112537112718%_
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
                                  (cons (cons _%g112537112718%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g112537112718%_
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
                                              (cons (cons _%g112538112719%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g112537112718%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g112536112717%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g112537112718%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g112537112718%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g112537112718%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g112535112716%_
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
                                                      (cons _%g112444112512%_
                                                            (cons _%g112443112510%_
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
                                                    (cons (cons _%g112534112714%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g112535112716%_
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
                                              _%hd112580112708%_
                                              _%hd112577112698%_
                                              _%hd112574112688%_
                                              _%hd112571112678%_
                                              _%hd112568112668%_
                                              _%hd112565112658%_
                                              _%hd112562112648%_
                                              _%hd112559112638%_
                                              _%hd112556112628%_
                                              _%hd112553112618%_
                                              _%hd112550112608%_
                                              _%hd112547112598%_)
                                             (_%g112532112587%_
                                              _%g112533112591%_))))
                                     (_%g112532112587%_ _%g112533112591%_))))
                             (_%g112532112587%_ _%g112533112591%_))))
                     (_%g112532112587%_ _%g112533112591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112532112587%_
                                                      _%g112533112591%_))))
                                             (_%g112532112587%_
                                              _%g112533112591%_))))
                                     (_%g112532112587%_ _%g112533112591%_))))
                             (_%g112532112587%_ _%g112533112591%_))))
                     (_%g112532112587%_ _%g112533112591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112532112587%_
                                                      _%g112533112591%_))))
                                             (_%g112532112587%_
                                              _%g112533112591%_))))
                                     (_%g112532112587%_ _%g112533112591%_))))
                             (_%g112532112587%_ _%g112533112591%_)))))
                 (_%g112531112772%_
                  (list (gx#stx-identifier
                         _%g112445112513%_
                         '"make-"
                         _%g112445112513%_)
                        (gx#stx-identifier
                         _%g112445112513%_
                         '"make-"
                         _%g112445112513%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g112445112513%_
                         '"__"
                         _%g112445112513%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g112445112513%_
                         '"__"
                         _%g112445112513%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g112445112513%_
                         _%g112445112513%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd112456112504%_
                                                     _%hd112453112494%_
                                                     _%hd112450112484%_)
                                                    (_%g112441112463%_
                                                     _%g112442112467%_))))
                                            (_%g112441112463%_
                                             _%g112442112467%_))))
                                    (_%g112441112463%_ _%g112442112467%_))))
                            (_%g112441112463%_ _%g112442112467%_))))
                    (_%g112441112463%_ _%g112442112467%_)))))
        (_%g112440112776%_ _%stx112438%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx112780%_)
      (let* ((_%g112784112806%_
              (lambda (_%g112785112802%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112785112802%_)))
             (_%g112783112875%_
              (lambda (_%g112785112810%_)
                (if (gx#stx-pair? _%g112785112810%_)
                    (let ((_%e112789112813%_ (gx#syntax-e _%g112785112810%_)))
                      (let ((_%hd112790112817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112789112813%_)))
                            (_%tl112791112820%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112789112813%_))))
                        (if (gx#stx-pair? _%tl112791112820%_)
                            (let ((_%e112792112823%_
                                   (gx#syntax-e _%tl112791112820%_)))
                              (let ((_%hd112793112827%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112792112823%_)))
                                    (_%tl112794112830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112792112823%_))))
                                (if (gx#stx-pair? _%tl112794112830%_)
                                    (let ((_%e112795112833%_
                                           (gx#syntax-e _%tl112794112830%_)))
                                      (let ((_%hd112796112837%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112795112833%_)))
                                            (_%tl112797112840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112795112833%_))))
                                        (if (gx#stx-pair? _%tl112797112840%_)
                                            (let ((_%e112798112843%_
                                                   (gx#syntax-e
                                                    _%tl112797112840%_)))
                                              (let ((_%hd112799112847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112798112843%_)))
                                                    (_%tl112800112850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112798112843%_))))
                                                (if (gx#stx-null?
                                                     _%tl112800112850%_)
                                                    ((lambda (_%g112786112853%_
                                                              _%g112787112855%_
                                                              _%g112788112856%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g112788112856%_
                                                   (cons _%g112787112855%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g112787112855%_
                                   (cons _%g112787112855%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g112786112853%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd112799112847%_
                                                     _%hd112796112837%_
                                                     _%hd112793112827%_)
                                                    (_%g112784112806%_
                                                     _%g112785112810%_))))
                                            (_%g112784112806%_
                                             _%g112785112810%_))))
                                    (_%g112784112806%_ _%g112785112810%_))))
                            (_%g112784112806%_ _%g112785112810%_))))
                    (_%g112784112806%_ _%g112785112810%_)))))
        (_%g112783112875%_ _%$stx112780%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx112879%_)
      (let* ((_%g112883112917%_
              (lambda (_%g112884112913%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112884112913%_)))
             (_%g112882113028%_
              (lambda (_%g112884112921%_)
                (if (gx#stx-pair? _%g112884112921%_)
                    (let ((_%e112891112924%_ (gx#syntax-e _%g112884112921%_)))
                      (let ((_%hd112892112928%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112891112924%_)))
                            (_%tl112893112931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112891112924%_))))
                        (if (gx#stx-pair? _%tl112893112931%_)
                            (let ((_%e112894112934%_
                                   (gx#syntax-e _%tl112893112931%_)))
                              (let ((_%hd112895112938%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112894112934%_)))
                                    (_%tl112896112941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112894112934%_))))
                                (if (gx#stx-pair? _%tl112896112941%_)
                                    (let ((_%e112897112944%_
                                           (gx#syntax-e _%tl112896112941%_)))
                                      (let ((_%hd112898112948%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112897112944%_)))
                                            (_%tl112899112951%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112897112944%_))))
                                        (if (gx#stx-pair? _%tl112899112951%_)
                                            (let ((_%e112900112954%_
                                                   (gx#syntax-e
                                                    _%tl112899112951%_)))
                                              (let ((_%hd112901112958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112900112954%_)))
                                                    (_%tl112902112961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112900112954%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112902112961%_)
                                                    (let ((_%e112903112964%_
                                                           (gx#syntax-e
                                                            _%tl112902112961%_)))
                                                      (let ((_%hd112904112968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112903112964%_)))
                    (_%tl112905112971%_
                     (let () (declare (not safe)) (##cdr _%e112903112964%_))))
                (if (gx#stx-pair? _%tl112905112971%_)
                    (let ((_%e112906112974%_ (gx#syntax-e _%tl112905112971%_)))
                      (let ((_%hd112907112978%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112906112974%_)))
                            (_%tl112908112981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112906112974%_))))
                        (if (gx#stx-pair? _%tl112908112981%_)
                            (let ((_%e112909112984%_
                                   (gx#syntax-e _%tl112908112981%_)))
                              (let ((_%hd112910112988%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112909112984%_)))
                                    (_%tl112911112991%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112909112984%_))))
                                (if (gx#stx-null? _%tl112911112991%_)
                                    ((lambda (_%g112885112994%_
                                              _%g112886112996%_
                                              _%g112887112997%_
                                              _%g112888112998%_
                                              _%g112889112999%_
                                              _%g112890113000%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g112888112998%_
                                               (cons _%g112886112996%_ '()))
                                         (cons _%g112889112999%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g112890113000%_ '()))
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
                               (cons _%g112890113000%_
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
                                     (cons _%g112885112994%_ '()))
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
                                     (cons (cons (cons _%g112887112997%_
                                                       (cons _%g112886112996%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g112890113000%_
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
                                     _%hd112910112988%_
                                     _%hd112907112978%_
                                     _%hd112904112968%_
                                     _%hd112901112958%_
                                     _%hd112898112948%_
                                     _%hd112895112938%_)
                                    (_%g112883112917%_ _%g112884112921%_))))
                            (_%g112883112917%_ _%g112884112921%_))))
                    (_%g112883112917%_ _%g112884112921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112883112917%_
                                                     _%g112884112921%_))))
                                            (_%g112883112917%_
                                             _%g112884112921%_))))
                                    (_%g112883112917%_ _%g112884112921%_))))
                            (_%g112883112917%_ _%g112884112921%_))))
                    (_%g112883112917%_ _%g112884112921%_)))))
        (_%g112882113028%_ _%$stx112879%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx113032%_)
      (let* ((_%g113036113078%_
              (lambda (_%g113037113074%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113037113074%_)))
             (_%g113035113217%_
              (lambda (_%g113037113082%_)
                (if (gx#stx-pair? _%g113037113082%_)
                    (let ((_%e113046113085%_ (gx#syntax-e _%g113037113082%_)))
                      (let ((_%hd113047113089%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113046113085%_)))
                            (_%tl113048113092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113046113085%_))))
                        (if (gx#stx-pair? _%tl113048113092%_)
                            (let ((_%e113049113095%_
                                   (gx#syntax-e _%tl113048113092%_)))
                              (let ((_%hd113050113099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113049113095%_)))
                                    (_%tl113051113102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113049113095%_))))
                                (if (gx#stx-pair? _%tl113051113102%_)
                                    (let ((_%e113052113105%_
                                           (gx#syntax-e _%tl113051113102%_)))
                                      (let ((_%hd113053113109%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113052113105%_)))
                                            (_%tl113054113112%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113052113105%_))))
                                        (if (gx#stx-pair? _%tl113054113112%_)
                                            (let ((_%e113055113115%_
                                                   (gx#syntax-e
                                                    _%tl113054113112%_)))
                                              (let ((_%hd113056113119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113055113115%_)))
                                                    (_%tl113057113122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113055113115%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113057113122%_)
                                                    (let ((_%e113058113125%_
                                                           (gx#syntax-e
                                                            _%tl113057113122%_)))
                                                      (let ((_%hd113059113129%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113058113125%_)))
                    (_%tl113060113132%_
                     (let () (declare (not safe)) (##cdr _%e113058113125%_))))
                (if (gx#stx-pair? _%tl113060113132%_)
                    (let ((_%e113061113135%_ (gx#syntax-e _%tl113060113132%_)))
                      (let ((_%hd113062113139%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113061113135%_)))
                            (_%tl113063113142%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113061113135%_))))
                        (if (gx#stx-pair? _%tl113063113142%_)
                            (let ((_%e113064113145%_
                                   (gx#syntax-e _%tl113063113142%_)))
                              (let ((_%hd113065113149%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113064113145%_)))
                                    (_%tl113066113152%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113064113145%_))))
                                (if (gx#stx-pair? _%tl113066113152%_)
                                    (let ((_%e113067113155%_
                                           (gx#syntax-e _%tl113066113152%_)))
                                      (let ((_%hd113068113159%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113067113155%_)))
                                            (_%tl113069113162%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113067113155%_))))
                                        (if (gx#stx-pair? _%tl113069113162%_)
                                            (let ((_%e113070113165%_
                                                   (gx#syntax-e
                                                    _%tl113069113162%_)))
                                              (let ((_%hd113071113169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113070113165%_)))
                                                    (_%tl113072113172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113070113165%_))))
                                                (if (gx#stx-null?
                                                     _%tl113072113172%_)
                                                    ((lambda (_%g113038113175%_
                                                              _%g113039113177%_
                                                              _%g113040113178%_
                                                              _%g113041113179%_
                                                              _%g113042113180%_
                                                              _%g113043113181%_
                                                              _%g113044113182%_
                                                              _%g113045113183%_)
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
                                                   (cons (cons _%g113043113181%_
                                                               (cons _%g113041113179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g113044113182%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g113045113183%_
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
                                               (cons _%g113045113183%_
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
                                                       (cons _%g113045113183%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g113041113179%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g113045113183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g113040113178%_ '()))))
               (cons (cons _%g113038113175%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g113045113183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g113041113179%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g113045113183%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g113040113178%_ '()))))
                     (cons (cons _%g113039113177%_ '()) '()))))
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
                                                     (cons (cons (cons _%g113042113180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g113041113179%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g113045113183%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g113041113179%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g113045113183%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g113040113178%_ '()))))
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
                                                     _%hd113071113169%_
                                                     _%hd113068113159%_
                                                     _%hd113065113149%_
                                                     _%hd113062113139%_
                                                     _%hd113059113129%_
                                                     _%hd113056113119%_
                                                     _%hd113053113109%_
                                                     _%hd113050113099%_)
                                                    (_%g113036113078%_
                                                     _%g113037113082%_))))
                                            (_%g113036113078%_
                                             _%g113037113082%_))))
                                    (_%g113036113078%_ _%g113037113082%_))))
                            (_%g113036113078%_ _%g113037113082%_))))
                    (_%g113036113078%_ _%g113037113082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113036113078%_
                                                     _%g113037113082%_))))
                                            (_%g113036113078%_
                                             _%g113037113082%_))))
                                    (_%g113036113078%_ _%g113037113082%_))))
                            (_%g113036113078%_ _%g113037113082%_))))
                    (_%g113036113078%_ _%g113037113082%_)))))
        (_%g113035113217%_ _%$stx113032%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx113221%_)
      (let* ((_%g113225113271%_
              (lambda (_%g113226113267%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113226113267%_)))
             (_%g113224113424%_
              (lambda (_%g113226113275%_)
                (if (gx#stx-pair? _%g113226113275%_)
                    (let ((_%e113236113278%_ (gx#syntax-e _%g113226113275%_)))
                      (let ((_%hd113237113282%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113236113278%_)))
                            (_%tl113238113285%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113236113278%_))))
                        (if (gx#stx-pair? _%tl113238113285%_)
                            (let ((_%e113239113288%_
                                   (gx#syntax-e _%tl113238113285%_)))
                              (let ((_%hd113240113292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113239113288%_)))
                                    (_%tl113241113295%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113239113288%_))))
                                (if (gx#stx-pair? _%tl113241113295%_)
                                    (let ((_%e113242113298%_
                                           (gx#syntax-e _%tl113241113295%_)))
                                      (let ((_%hd113243113302%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113242113298%_)))
                                            (_%tl113244113305%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113242113298%_))))
                                        (if (gx#stx-pair? _%tl113244113305%_)
                                            (let ((_%e113245113308%_
                                                   (gx#syntax-e
                                                    _%tl113244113305%_)))
                                              (let ((_%hd113246113312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113245113308%_)))
                                                    (_%tl113247113315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113245113308%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113247113315%_)
                                                    (let ((_%e113248113318%_
                                                           (gx#syntax-e
                                                            _%tl113247113315%_)))
                                                      (let ((_%hd113249113322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113248113318%_)))
                    (_%tl113250113325%_
                     (let () (declare (not safe)) (##cdr _%e113248113318%_))))
                (if (gx#stx-pair? _%tl113250113325%_)
                    (let ((_%e113251113328%_ (gx#syntax-e _%tl113250113325%_)))
                      (let ((_%hd113252113332%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113251113328%_)))
                            (_%tl113253113335%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113251113328%_))))
                        (if (gx#stx-pair? _%tl113253113335%_)
                            (let ((_%e113254113338%_
                                   (gx#syntax-e _%tl113253113335%_)))
                              (let ((_%hd113255113342%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113254113338%_)))
                                    (_%tl113256113345%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113254113338%_))))
                                (if (gx#stx-pair? _%tl113256113345%_)
                                    (let ((_%e113257113348%_
                                           (gx#syntax-e _%tl113256113345%_)))
                                      (let ((_%hd113258113352%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113257113348%_)))
                                            (_%tl113259113355%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113257113348%_))))
                                        (if (gx#stx-pair? _%tl113259113355%_)
                                            (let ((_%e113260113358%_
                                                   (gx#syntax-e
                                                    _%tl113259113355%_)))
                                              (let ((_%hd113261113362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113260113358%_)))
                                                    (_%tl113262113365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113260113358%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113262113365%_)
                                                    (let ((_%e113263113368%_
                                                           (gx#syntax-e
                                                            _%tl113262113365%_)))
                                                      (let ((_%hd113264113372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113263113368%_)))
                    (_%tl113265113375%_
                     (let () (declare (not safe)) (##cdr _%e113263113368%_))))
                (if (gx#stx-null? _%tl113265113375%_)
                    ((lambda (_%g113227113378%_
                              _%g113228113380%_
                              _%g113229113381%_
                              _%g113230113382%_
                              _%g113231113383%_
                              _%g113232113384%_
                              _%g113233113385%_
                              _%g113234113386%_
                              _%g113235113387%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g113233113385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g113231113383%_ '()))
                         (cons _%g113234113386%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g113235113387%_ '()))
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
                                                       (cons _%g113235113387%_
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
                                                               (cons _%g113235113387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g113231113383%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g113235113387%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g113230113382%_
                                                     (cons _%g113229113381%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g113227113378%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g113235113387%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g113231113383%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g113235113387%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g113230113382%_
                                                           (cons _%g113229113381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g113228113380%_ '()) '()))))
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
                     (cons (cons (cons _%g113232113384%_
                                       (cons _%g113231113383%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g113235113387%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g113231113383%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g113235113387%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g113230113382%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g113235113387%_
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
                     _%hd113264113372%_
                     _%hd113261113362%_
                     _%hd113258113352%_
                     _%hd113255113342%_
                     _%hd113252113332%_
                     _%hd113249113322%_
                     _%hd113246113312%_
                     _%hd113243113302%_
                     _%hd113240113292%_)
                    (_%g113225113271%_ _%g113226113275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113225113271%_
                                                     _%g113226113275%_))))
                                            (_%g113225113271%_
                                             _%g113226113275%_))))
                                    (_%g113225113271%_ _%g113226113275%_))))
                            (_%g113225113271%_ _%g113226113275%_))))
                    (_%g113225113271%_ _%g113226113275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113225113271%_
                                                     _%g113226113275%_))))
                                            (_%g113225113271%_
                                             _%g113226113275%_))))
                                    (_%g113225113271%_ _%g113226113275%_))))
                            (_%g113225113271%_ _%g113226113275%_))))
                    (_%g113225113271%_ _%g113226113275%_)))))
        (_%g113224113424%_ _%$stx113221%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx113428%_)
      (let* ((_%g113432113466%_
              (lambda (_%g113433113462%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113433113462%_)))
             (_%g113431113577%_
              (lambda (_%g113433113470%_)
                (if (gx#stx-pair? _%g113433113470%_)
                    (let ((_%e113440113473%_ (gx#syntax-e _%g113433113470%_)))
                      (let ((_%hd113441113477%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113440113473%_)))
                            (_%tl113442113480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113440113473%_))))
                        (if (gx#stx-pair? _%tl113442113480%_)
                            (let ((_%e113443113483%_
                                   (gx#syntax-e _%tl113442113480%_)))
                              (let ((_%hd113444113487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113443113483%_)))
                                    (_%tl113445113490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113443113483%_))))
                                (if (gx#stx-pair? _%tl113445113490%_)
                                    (let ((_%e113446113493%_
                                           (gx#syntax-e _%tl113445113490%_)))
                                      (let ((_%hd113447113497%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113446113493%_)))
                                            (_%tl113448113500%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113446113493%_))))
                                        (if (gx#stx-pair? _%tl113448113500%_)
                                            (let ((_%e113449113503%_
                                                   (gx#syntax-e
                                                    _%tl113448113500%_)))
                                              (let ((_%hd113450113507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113449113503%_)))
                                                    (_%tl113451113510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113449113503%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113451113510%_)
                                                    (let ((_%e113452113513%_
                                                           (gx#syntax-e
                                                            _%tl113451113510%_)))
                                                      (let ((_%hd113453113517%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113452113513%_)))
                    (_%tl113454113520%_
                     (let () (declare (not safe)) (##cdr _%e113452113513%_))))
                (if (gx#stx-pair? _%tl113454113520%_)
                    (let ((_%e113455113523%_ (gx#syntax-e _%tl113454113520%_)))
                      (let ((_%hd113456113527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113455113523%_)))
                            (_%tl113457113530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113455113523%_))))
                        (if (gx#stx-pair? _%tl113457113530%_)
                            (let ((_%e113458113533%_
                                   (gx#syntax-e _%tl113457113530%_)))
                              (let ((_%hd113459113537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113458113533%_)))
                                    (_%tl113460113540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113458113533%_))))
                                (if (gx#stx-null? _%tl113460113540%_)
                                    ((lambda (_%g113434113543%_
                                              _%g113435113545%_
                                              _%g113436113546%_
                                              _%g113437113547%_
                                              _%g113438113548%_
                                              _%g113439113549%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g113437113547%_
                                               (cons _%g113435113545%_ '()))
                                         (cons _%g113438113548%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g113439113549%_ '()))
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
                               (cons _%g113439113549%_
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
                                     (cons (cons (cons _%g113436113546%_
                                                       (cons _%g113435113545%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g113439113549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g113439113549%_
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
                     (cons (cons _%g113434113543%_ '()) '()))))
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
                                     _%hd113459113537%_
                                     _%hd113456113527%_
                                     _%hd113453113517%_
                                     _%hd113450113507%_
                                     _%hd113447113497%_
                                     _%hd113444113487%_)
                                    (_%g113432113466%_ _%g113433113470%_))))
                            (_%g113432113466%_ _%g113433113470%_))))
                    (_%g113432113466%_ _%g113433113470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113432113466%_
                                                     _%g113433113470%_))))
                                            (_%g113432113466%_
                                             _%g113433113470%_))))
                                    (_%g113432113466%_ _%g113433113470%_))))
                            (_%g113432113466%_ _%g113433113470%_))))
                    (_%g113432113466%_ _%g113433113470%_)))))
        (_%g113431113577%_ _%$stx113428%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx113581%_)
      (let* ((_%g113585113603%_
              (lambda (_%g113586113599%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113586113599%_)))
             (_%g113584113658%_
              (lambda (_%g113586113607%_)
                (if (gx#stx-pair? _%g113586113607%_)
                    (let ((_%e113589113610%_ (gx#syntax-e _%g113586113607%_)))
                      (let ((_%hd113590113614%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113589113610%_)))
                            (_%tl113591113617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113589113610%_))))
                        (if (gx#stx-pair? _%tl113591113617%_)
                            (let ((_%e113592113620%_
                                   (gx#syntax-e _%tl113591113617%_)))
                              (let ((_%hd113593113624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113592113620%_)))
                                    (_%tl113594113627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113592113620%_))))
                                (if (gx#stx-pair? _%tl113594113627%_)
                                    (let ((_%e113595113630%_
                                           (gx#syntax-e _%tl113594113627%_)))
                                      (let ((_%hd113596113634%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113595113630%_)))
                                            (_%tl113597113637%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113595113630%_))))
                                        (if (gx#stx-null? _%tl113597113637%_)
                                            ((lambda (_%g113587113640%_
                                                      _%g113588113642%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g113588113642%_ '()))
                   (cons _%g113587113640%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd113596113634%_
                                             _%hd113593113624%_)
                                            (_%g113585113603%_
                                             _%g113586113607%_))))
                                    (_%g113585113603%_ _%g113586113607%_))))
                            (_%g113585113603%_ _%g113586113607%_))))
                    (_%g113585113603%_ _%g113586113607%_)))))
        (_%g113584113658%_ _%$stx113581%_)))))

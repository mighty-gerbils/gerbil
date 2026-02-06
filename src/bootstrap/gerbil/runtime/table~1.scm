(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx112266%_)
      (let* ((_%g112270112288%_
              (lambda (_%g112271112284%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112271112284%_)))
             (_%g112269112344%_
              (lambda (_%g112271112292%_)
                (if (gx#stx-pair? _%g112271112292%_)
                    (let ((_%e112274112295%_ (gx#syntax-e _%g112271112292%_)))
                      (let ((_%hd112275112299%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112274112295%_)))
                            (_%tl112276112302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112274112295%_))))
                        (if (gx#stx-pair? _%tl112276112302%_)
                            (let ((_%e112277112305%_
                                   (gx#syntax-e _%tl112276112302%_)))
                              (let ((_%hd112278112309%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112277112305%_)))
                                    (_%tl112279112312%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112277112305%_))))
                                (if (gx#stx-pair? _%tl112279112312%_)
                                    (let ((_%e112280112315%_
                                           (gx#syntax-e _%tl112279112312%_)))
                                      (let ((_%hd112281112319%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112280112315%_)))
                                            (_%tl112282112322%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112280112315%_))))
                                        (if (gx#stx-null? _%tl112282112322%_)
                                            ((lambda (_%g112272112325%_
                                                      _%g112273112327%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g112273112327%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g112272112325%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd112281112319%_
                                             _%hd112278112309%_)
                                            (_%g112270112288%_
                                             _%g112271112292%_))))
                                    (_%g112270112288%_ _%g112271112292%_))))
                            (_%g112270112288%_ _%g112271112292%_))))
                    (_%g112270112288%_ _%g112271112292%_)))))
        (_%g112269112344%_ _%$stx112266%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx112348%_)
      (let* ((_%g112351112373%_
              (lambda (_%g112352112369%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112352112369%_)))
             (_%g112350112686%_
              (lambda (_%g112352112377%_)
                (if (gx#stx-pair? _%g112352112377%_)
                    (let ((_%e112356112380%_ (gx#syntax-e _%g112352112377%_)))
                      (let ((_%hd112357112384%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112356112380%_)))
                            (_%tl112358112387%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112356112380%_))))
                        (if (gx#stx-pair? _%tl112358112387%_)
                            (let ((_%e112359112390%_
                                   (gx#syntax-e _%tl112358112387%_)))
                              (let ((_%hd112360112394%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112359112390%_)))
                                    (_%tl112361112397%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112359112390%_))))
                                (if (gx#stx-pair? _%tl112361112397%_)
                                    (let ((_%e112362112400%_
                                           (gx#syntax-e _%tl112361112397%_)))
                                      (let ((_%hd112363112404%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112362112400%_)))
                                            (_%tl112364112407%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112362112400%_))))
                                        (if (gx#stx-pair? _%tl112364112407%_)
                                            (let ((_%e112365112410%_
                                                   (gx#syntax-e
                                                    _%tl112364112407%_)))
                                              (let ((_%hd112366112414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112365112410%_)))
                                                    (_%tl112367112417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112365112410%_))))
                                                (if (gx#stx-null?
                                                     _%tl112367112417%_)
                                                    ((lambda (_%g112353112420%_
                                                              _%g112354112422%_
                                                              _%g112355112423%_)
                                                       (let* ((_%g112442112497%_
                                                               (lambda (_%g112443112493%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112443112493%_)))
                      (_%g112441112682%_
                       (lambda (_%g112443112501%_)
                         (if (gx#stx-pair? _%g112443112501%_)
                             (let ((_%e112456112504%_
                                    (gx#syntax-e _%g112443112501%_)))
                               (let ((_%hd112457112508%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112456112504%_)))
                                     (_%tl112458112511%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112456112504%_))))
                                 (if (gx#stx-pair? _%tl112458112511%_)
                                     (let ((_%e112459112514%_
                                            (gx#syntax-e _%tl112458112511%_)))
                                       (let ((_%hd112460112518%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112459112514%_)))
                                             (_%tl112461112521%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112459112514%_))))
                                         (if (gx#stx-pair? _%tl112461112521%_)
                                             (let ((_%e112462112524%_
                                                    (gx#syntax-e
                                                     _%tl112461112521%_)))
                                               (let ((_%hd112463112528%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112462112524%_)))
                                                     (_%tl112464112531%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112462112524%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112464112531%_)
                                                     (let ((_%e112465112534%_
                                                            (gx#syntax-e
                                                             _%tl112464112531%_)))
                                                       (let ((_%hd112466112538%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112465112534%_)))
                     (_%tl112467112541%_
                      (let () (declare (not safe)) (##cdr _%e112465112534%_))))
                 (if (gx#stx-pair? _%tl112467112541%_)
                     (let ((_%e112468112544%_
                            (gx#syntax-e _%tl112467112541%_)))
                       (let ((_%hd112469112548%_
                              (let ()
                                (declare (not safe))
                                (##car _%e112468112544%_)))
                             (_%tl112470112551%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e112468112544%_))))
                         (if (gx#stx-pair? _%tl112470112551%_)
                             (let ((_%e112471112554%_
                                    (gx#syntax-e _%tl112470112551%_)))
                               (let ((_%hd112472112558%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112471112554%_)))
                                     (_%tl112473112561%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112471112554%_))))
                                 (if (gx#stx-pair? _%tl112473112561%_)
                                     (let ((_%e112474112564%_
                                            (gx#syntax-e _%tl112473112561%_)))
                                       (let ((_%hd112475112568%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112474112564%_)))
                                             (_%tl112476112571%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112474112564%_))))
                                         (if (gx#stx-pair? _%tl112476112571%_)
                                             (let ((_%e112477112574%_
                                                    (gx#syntax-e
                                                     _%tl112476112571%_)))
                                               (let ((_%hd112478112578%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112477112574%_)))
                                                     (_%tl112479112581%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112477112574%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112479112581%_)
                                                     (let ((_%e112480112584%_
                                                            (gx#syntax-e
                                                             _%tl112479112581%_)))
                                                       (let ((_%hd112481112588%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112480112584%_)))
                     (_%tl112482112591%_
                      (let () (declare (not safe)) (##cdr _%e112480112584%_))))
                 (if (gx#stx-pair? _%tl112482112591%_)
                     (let ((_%e112483112594%_
                            (gx#syntax-e _%tl112482112591%_)))
                       (let ((_%hd112484112598%_
                              (let ()
                                (declare (not safe))
                                (##car _%e112483112594%_)))
                             (_%tl112485112601%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e112483112594%_))))
                         (if (gx#stx-pair? _%tl112485112601%_)
                             (let ((_%e112486112604%_
                                    (gx#syntax-e _%tl112485112601%_)))
                               (let ((_%hd112487112608%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e112486112604%_)))
                                     (_%tl112488112611%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e112486112604%_))))
                                 (if (gx#stx-pair? _%tl112488112611%_)
                                     (let ((_%e112489112614%_
                                            (gx#syntax-e _%tl112488112611%_)))
                                       (let ((_%hd112490112618%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e112489112614%_)))
                                             (_%tl112491112621%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e112489112614%_))))
                                         (if (gx#stx-null? _%tl112491112621%_)
                                             ((lambda (_%g112444112624%_
                                                       _%g112445112626%_
                                                       _%g112446112627%_
                                                       _%g112447112628%_
                                                       _%g112448112629%_
                                                       _%g112449112630%_
                                                       _%g112450112631%_
                                                       _%g112451112632%_
                                                       _%g112452112633%_
                                                       _%g112453112634%_
                                                       _%g112454112635%_
                                                       _%g112455112636%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g112455112636%_
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
                                                  (cons _%g112354112422%_
                                                        (cons _%g112353112420%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g112454112635%_
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
                                                        (cons _%g112354112422%_
                                                              (cons _%g112353112420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g112453112634%_
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
                                              (cons _%g112354112422%_
                                                    (cons _%g112353112420%_
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
                                            (cons (cons _%g112452112633%_
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
                            (cons (cons _%g112453112634%_
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
                                                  (cons (cons _%g112451112632%_
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
                                                          (cons _%g112354112422%_
                                                                (cons _%g112353112420%_
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
                                                        (cons (cons _%g112450112631%_
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
                            (cons (cons _%g112451112632%_
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
                                                              (cons (cons _%g112449112630%_
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
                                              (cons (cons _%g112450112631%_
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
                            (cons (cons _%g112448112629%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g112447112628%_
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
                                    (cons _%g112354112422%_
                                          (cons _%g112353112420%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g112447112628%_
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
                                  (cons (cons _%g112447112628%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g112447112628%_
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
                                              (cons (cons _%g112448112629%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g112447112628%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g112446112627%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g112447112628%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g112447112628%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g112447112628%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g112445112626%_
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
                                                      (cons _%g112354112422%_
                                                            (cons _%g112353112420%_
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
                                                    (cons (cons _%g112444112624%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g112445112626%_
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
                                              _%hd112490112618%_
                                              _%hd112487112608%_
                                              _%hd112484112598%_
                                              _%hd112481112588%_
                                              _%hd112478112578%_
                                              _%hd112475112568%_
                                              _%hd112472112558%_
                                              _%hd112469112548%_
                                              _%hd112466112538%_
                                              _%hd112463112528%_
                                              _%hd112460112518%_
                                              _%hd112457112508%_)
                                             (_%g112442112497%_
                                              _%g112443112501%_))))
                                     (_%g112442112497%_ _%g112443112501%_))))
                             (_%g112442112497%_ _%g112443112501%_))))
                     (_%g112442112497%_ _%g112443112501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112442112497%_
                                                      _%g112443112501%_))))
                                             (_%g112442112497%_
                                              _%g112443112501%_))))
                                     (_%g112442112497%_ _%g112443112501%_))))
                             (_%g112442112497%_ _%g112443112501%_))))
                     (_%g112442112497%_ _%g112443112501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112442112497%_
                                                      _%g112443112501%_))))
                                             (_%g112442112497%_
                                              _%g112443112501%_))))
                                     (_%g112442112497%_ _%g112443112501%_))))
                             (_%g112442112497%_ _%g112443112501%_)))))
                 (_%g112441112682%_
                  (list (gx#stx-identifier
                         _%g112355112423%_
                         '"make-"
                         _%g112355112423%_)
                        (gx#stx-identifier
                         _%g112355112423%_
                         '"make-"
                         _%g112355112423%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g112355112423%_
                         '"__"
                         _%g112355112423%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g112355112423%_
                         '"__"
                         _%g112355112423%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g112355112423%_
                         _%g112355112423%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd112366112414%_
                                                     _%hd112363112404%_
                                                     _%hd112360112394%_)
                                                    (_%g112351112373%_
                                                     _%g112352112377%_))))
                                            (_%g112351112373%_
                                             _%g112352112377%_))))
                                    (_%g112351112373%_ _%g112352112377%_))))
                            (_%g112351112373%_ _%g112352112377%_))))
                    (_%g112351112373%_ _%g112352112377%_)))))
        (_%g112350112686%_ _%stx112348%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx112690%_)
      (let* ((_%g112694112716%_
              (lambda (_%g112695112712%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112695112712%_)))
             (_%g112693112785%_
              (lambda (_%g112695112720%_)
                (if (gx#stx-pair? _%g112695112720%_)
                    (let ((_%e112699112723%_ (gx#syntax-e _%g112695112720%_)))
                      (let ((_%hd112700112727%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112699112723%_)))
                            (_%tl112701112730%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112699112723%_))))
                        (if (gx#stx-pair? _%tl112701112730%_)
                            (let ((_%e112702112733%_
                                   (gx#syntax-e _%tl112701112730%_)))
                              (let ((_%hd112703112737%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112702112733%_)))
                                    (_%tl112704112740%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112702112733%_))))
                                (if (gx#stx-pair? _%tl112704112740%_)
                                    (let ((_%e112705112743%_
                                           (gx#syntax-e _%tl112704112740%_)))
                                      (let ((_%hd112706112747%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112705112743%_)))
                                            (_%tl112707112750%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112705112743%_))))
                                        (if (gx#stx-pair? _%tl112707112750%_)
                                            (let ((_%e112708112753%_
                                                   (gx#syntax-e
                                                    _%tl112707112750%_)))
                                              (let ((_%hd112709112757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112708112753%_)))
                                                    (_%tl112710112760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112708112753%_))))
                                                (if (gx#stx-null?
                                                     _%tl112710112760%_)
                                                    ((lambda (_%g112696112763%_
                                                              _%g112697112765%_
                                                              _%g112698112766%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g112698112766%_
                                                   (cons _%g112697112765%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g112697112765%_
                                   (cons _%g112697112765%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g112696112763%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd112709112757%_
                                                     _%hd112706112747%_
                                                     _%hd112703112737%_)
                                                    (_%g112694112716%_
                                                     _%g112695112720%_))))
                                            (_%g112694112716%_
                                             _%g112695112720%_))))
                                    (_%g112694112716%_ _%g112695112720%_))))
                            (_%g112694112716%_ _%g112695112720%_))))
                    (_%g112694112716%_ _%g112695112720%_)))))
        (_%g112693112785%_ _%$stx112690%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx112789%_)
      (let* ((_%g112793112827%_
              (lambda (_%g112794112823%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112794112823%_)))
             (_%g112792112938%_
              (lambda (_%g112794112831%_)
                (if (gx#stx-pair? _%g112794112831%_)
                    (let ((_%e112801112834%_ (gx#syntax-e _%g112794112831%_)))
                      (let ((_%hd112802112838%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112801112834%_)))
                            (_%tl112803112841%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112801112834%_))))
                        (if (gx#stx-pair? _%tl112803112841%_)
                            (let ((_%e112804112844%_
                                   (gx#syntax-e _%tl112803112841%_)))
                              (let ((_%hd112805112848%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112804112844%_)))
                                    (_%tl112806112851%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112804112844%_))))
                                (if (gx#stx-pair? _%tl112806112851%_)
                                    (let ((_%e112807112854%_
                                           (gx#syntax-e _%tl112806112851%_)))
                                      (let ((_%hd112808112858%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112807112854%_)))
                                            (_%tl112809112861%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112807112854%_))))
                                        (if (gx#stx-pair? _%tl112809112861%_)
                                            (let ((_%e112810112864%_
                                                   (gx#syntax-e
                                                    _%tl112809112861%_)))
                                              (let ((_%hd112811112868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112810112864%_)))
                                                    (_%tl112812112871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112810112864%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112812112871%_)
                                                    (let ((_%e112813112874%_
                                                           (gx#syntax-e
                                                            _%tl112812112871%_)))
                                                      (let ((_%hd112814112878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112813112874%_)))
                    (_%tl112815112881%_
                     (let () (declare (not safe)) (##cdr _%e112813112874%_))))
                (if (gx#stx-pair? _%tl112815112881%_)
                    (let ((_%e112816112884%_ (gx#syntax-e _%tl112815112881%_)))
                      (let ((_%hd112817112888%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112816112884%_)))
                            (_%tl112818112891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112816112884%_))))
                        (if (gx#stx-pair? _%tl112818112891%_)
                            (let ((_%e112819112894%_
                                   (gx#syntax-e _%tl112818112891%_)))
                              (let ((_%hd112820112898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112819112894%_)))
                                    (_%tl112821112901%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112819112894%_))))
                                (if (gx#stx-null? _%tl112821112901%_)
                                    ((lambda (_%g112795112904%_
                                              _%g112796112906%_
                                              _%g112797112907%_
                                              _%g112798112908%_
                                              _%g112799112909%_
                                              _%g112800112910%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g112798112908%_
                                               (cons _%g112796112906%_ '()))
                                         (cons _%g112799112909%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g112800112910%_ '()))
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
                               (cons _%g112800112910%_
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
                                     (cons _%g112795112904%_ '()))
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
                                     (cons (cons (cons _%g112797112907%_
                                                       (cons _%g112796112906%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g112800112910%_
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
                                     _%hd112820112898%_
                                     _%hd112817112888%_
                                     _%hd112814112878%_
                                     _%hd112811112868%_
                                     _%hd112808112858%_
                                     _%hd112805112848%_)
                                    (_%g112793112827%_ _%g112794112831%_))))
                            (_%g112793112827%_ _%g112794112831%_))))
                    (_%g112793112827%_ _%g112794112831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112793112827%_
                                                     _%g112794112831%_))))
                                            (_%g112793112827%_
                                             _%g112794112831%_))))
                                    (_%g112793112827%_ _%g112794112831%_))))
                            (_%g112793112827%_ _%g112794112831%_))))
                    (_%g112793112827%_ _%g112794112831%_)))))
        (_%g112792112938%_ _%$stx112789%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx112942%_)
      (let* ((_%g112946112988%_
              (lambda (_%g112947112984%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112947112984%_)))
             (_%g112945113127%_
              (lambda (_%g112947112992%_)
                (if (gx#stx-pair? _%g112947112992%_)
                    (let ((_%e112956112995%_ (gx#syntax-e _%g112947112992%_)))
                      (let ((_%hd112957112999%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112956112995%_)))
                            (_%tl112958113002%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112956112995%_))))
                        (if (gx#stx-pair? _%tl112958113002%_)
                            (let ((_%e112959113005%_
                                   (gx#syntax-e _%tl112958113002%_)))
                              (let ((_%hd112960113009%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112959113005%_)))
                                    (_%tl112961113012%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112959113005%_))))
                                (if (gx#stx-pair? _%tl112961113012%_)
                                    (let ((_%e112962113015%_
                                           (gx#syntax-e _%tl112961113012%_)))
                                      (let ((_%hd112963113019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112962113015%_)))
                                            (_%tl112964113022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112962113015%_))))
                                        (if (gx#stx-pair? _%tl112964113022%_)
                                            (let ((_%e112965113025%_
                                                   (gx#syntax-e
                                                    _%tl112964113022%_)))
                                              (let ((_%hd112966113029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112965113025%_)))
                                                    (_%tl112967113032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112965113025%_))))
                                                (if (gx#stx-pair?
                                                     _%tl112967113032%_)
                                                    (let ((_%e112968113035%_
                                                           (gx#syntax-e
                                                            _%tl112967113032%_)))
                                                      (let ((_%hd112969113039%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e112968113035%_)))
                    (_%tl112970113042%_
                     (let () (declare (not safe)) (##cdr _%e112968113035%_))))
                (if (gx#stx-pair? _%tl112970113042%_)
                    (let ((_%e112971113045%_ (gx#syntax-e _%tl112970113042%_)))
                      (let ((_%hd112972113049%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112971113045%_)))
                            (_%tl112973113052%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112971113045%_))))
                        (if (gx#stx-pair? _%tl112973113052%_)
                            (let ((_%e112974113055%_
                                   (gx#syntax-e _%tl112973113052%_)))
                              (let ((_%hd112975113059%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112974113055%_)))
                                    (_%tl112976113062%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112974113055%_))))
                                (if (gx#stx-pair? _%tl112976113062%_)
                                    (let ((_%e112977113065%_
                                           (gx#syntax-e _%tl112976113062%_)))
                                      (let ((_%hd112978113069%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112977113065%_)))
                                            (_%tl112979113072%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112977113065%_))))
                                        (if (gx#stx-pair? _%tl112979113072%_)
                                            (let ((_%e112980113075%_
                                                   (gx#syntax-e
                                                    _%tl112979113072%_)))
                                              (let ((_%hd112981113079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112980113075%_)))
                                                    (_%tl112982113082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112980113075%_))))
                                                (if (gx#stx-null?
                                                     _%tl112982113082%_)
                                                    ((lambda (_%g112948113085%_
                                                              _%g112949113087%_
                                                              _%g112950113088%_
                                                              _%g112951113089%_
                                                              _%g112952113090%_
                                                              _%g112953113091%_
                                                              _%g112954113092%_
                                                              _%g112955113093%_)
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
                                                   (cons (cons _%g112953113091%_
                                                               (cons _%g112951113089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g112954113092%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g112955113093%_
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
                                               (cons _%g112955113093%_
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
                                                       (cons _%g112955113093%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g112951113089%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g112955113093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g112950113088%_ '()))))
               (cons (cons _%g112948113085%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g112955113093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g112951113089%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g112955113093%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g112950113088%_ '()))))
                     (cons (cons _%g112949113087%_ '()) '()))))
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
                                                     (cons (cons (cons _%g112952113090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g112951113089%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g112955113093%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g112951113089%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g112955113093%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g112950113088%_ '()))))
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
                                                     _%hd112981113079%_
                                                     _%hd112978113069%_
                                                     _%hd112975113059%_
                                                     _%hd112972113049%_
                                                     _%hd112969113039%_
                                                     _%hd112966113029%_
                                                     _%hd112963113019%_
                                                     _%hd112960113009%_)
                                                    (_%g112946112988%_
                                                     _%g112947112992%_))))
                                            (_%g112946112988%_
                                             _%g112947112992%_))))
                                    (_%g112946112988%_ _%g112947112992%_))))
                            (_%g112946112988%_ _%g112947112992%_))))
                    (_%g112946112988%_ _%g112947112992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112946112988%_
                                                     _%g112947112992%_))))
                                            (_%g112946112988%_
                                             _%g112947112992%_))))
                                    (_%g112946112988%_ _%g112947112992%_))))
                            (_%g112946112988%_ _%g112947112992%_))))
                    (_%g112946112988%_ _%g112947112992%_)))))
        (_%g112945113127%_ _%$stx112942%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx113131%_)
      (let* ((_%g113135113181%_
              (lambda (_%g113136113177%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113136113177%_)))
             (_%g113134113334%_
              (lambda (_%g113136113185%_)
                (if (gx#stx-pair? _%g113136113185%_)
                    (let ((_%e113146113188%_ (gx#syntax-e _%g113136113185%_)))
                      (let ((_%hd113147113192%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113146113188%_)))
                            (_%tl113148113195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113146113188%_))))
                        (if (gx#stx-pair? _%tl113148113195%_)
                            (let ((_%e113149113198%_
                                   (gx#syntax-e _%tl113148113195%_)))
                              (let ((_%hd113150113202%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113149113198%_)))
                                    (_%tl113151113205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113149113198%_))))
                                (if (gx#stx-pair? _%tl113151113205%_)
                                    (let ((_%e113152113208%_
                                           (gx#syntax-e _%tl113151113205%_)))
                                      (let ((_%hd113153113212%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113152113208%_)))
                                            (_%tl113154113215%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113152113208%_))))
                                        (if (gx#stx-pair? _%tl113154113215%_)
                                            (let ((_%e113155113218%_
                                                   (gx#syntax-e
                                                    _%tl113154113215%_)))
                                              (let ((_%hd113156113222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113155113218%_)))
                                                    (_%tl113157113225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113155113218%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113157113225%_)
                                                    (let ((_%e113158113228%_
                                                           (gx#syntax-e
                                                            _%tl113157113225%_)))
                                                      (let ((_%hd113159113232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113158113228%_)))
                    (_%tl113160113235%_
                     (let () (declare (not safe)) (##cdr _%e113158113228%_))))
                (if (gx#stx-pair? _%tl113160113235%_)
                    (let ((_%e113161113238%_ (gx#syntax-e _%tl113160113235%_)))
                      (let ((_%hd113162113242%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113161113238%_)))
                            (_%tl113163113245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113161113238%_))))
                        (if (gx#stx-pair? _%tl113163113245%_)
                            (let ((_%e113164113248%_
                                   (gx#syntax-e _%tl113163113245%_)))
                              (let ((_%hd113165113252%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113164113248%_)))
                                    (_%tl113166113255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113164113248%_))))
                                (if (gx#stx-pair? _%tl113166113255%_)
                                    (let ((_%e113167113258%_
                                           (gx#syntax-e _%tl113166113255%_)))
                                      (let ((_%hd113168113262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113167113258%_)))
                                            (_%tl113169113265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113167113258%_))))
                                        (if (gx#stx-pair? _%tl113169113265%_)
                                            (let ((_%e113170113268%_
                                                   (gx#syntax-e
                                                    _%tl113169113265%_)))
                                              (let ((_%hd113171113272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113170113268%_)))
                                                    (_%tl113172113275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113170113268%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113172113275%_)
                                                    (let ((_%e113173113278%_
                                                           (gx#syntax-e
                                                            _%tl113172113275%_)))
                                                      (let ((_%hd113174113282%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113173113278%_)))
                    (_%tl113175113285%_
                     (let () (declare (not safe)) (##cdr _%e113173113278%_))))
                (if (gx#stx-null? _%tl113175113285%_)
                    ((lambda (_%g113137113288%_
                              _%g113138113290%_
                              _%g113139113291%_
                              _%g113140113292%_
                              _%g113141113293%_
                              _%g113142113294%_
                              _%g113143113295%_
                              _%g113144113296%_
                              _%g113145113297%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g113143113295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g113141113293%_ '()))
                         (cons _%g113144113296%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g113145113297%_ '()))
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
                                                       (cons _%g113145113297%_
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
                                                               (cons _%g113145113297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g113141113293%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g113145113297%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g113140113292%_
                                                     (cons _%g113139113291%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g113137113288%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g113145113297%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g113141113293%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g113145113297%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g113140113292%_
                                                           (cons _%g113139113291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g113138113290%_ '()) '()))))
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
                     (cons (cons (cons _%g113142113294%_
                                       (cons _%g113141113293%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g113145113297%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g113141113293%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g113145113297%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g113140113292%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g113145113297%_
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
                     _%hd113174113282%_
                     _%hd113171113272%_
                     _%hd113168113262%_
                     _%hd113165113252%_
                     _%hd113162113242%_
                     _%hd113159113232%_
                     _%hd113156113222%_
                     _%hd113153113212%_
                     _%hd113150113202%_)
                    (_%g113135113181%_ _%g113136113185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113135113181%_
                                                     _%g113136113185%_))))
                                            (_%g113135113181%_
                                             _%g113136113185%_))))
                                    (_%g113135113181%_ _%g113136113185%_))))
                            (_%g113135113181%_ _%g113136113185%_))))
                    (_%g113135113181%_ _%g113136113185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113135113181%_
                                                     _%g113136113185%_))))
                                            (_%g113135113181%_
                                             _%g113136113185%_))))
                                    (_%g113135113181%_ _%g113136113185%_))))
                            (_%g113135113181%_ _%g113136113185%_))))
                    (_%g113135113181%_ _%g113136113185%_)))))
        (_%g113134113334%_ _%$stx113131%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx113338%_)
      (let* ((_%g113342113376%_
              (lambda (_%g113343113372%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113343113372%_)))
             (_%g113341113487%_
              (lambda (_%g113343113380%_)
                (if (gx#stx-pair? _%g113343113380%_)
                    (let ((_%e113350113383%_ (gx#syntax-e _%g113343113380%_)))
                      (let ((_%hd113351113387%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113350113383%_)))
                            (_%tl113352113390%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113350113383%_))))
                        (if (gx#stx-pair? _%tl113352113390%_)
                            (let ((_%e113353113393%_
                                   (gx#syntax-e _%tl113352113390%_)))
                              (let ((_%hd113354113397%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113353113393%_)))
                                    (_%tl113355113400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113353113393%_))))
                                (if (gx#stx-pair? _%tl113355113400%_)
                                    (let ((_%e113356113403%_
                                           (gx#syntax-e _%tl113355113400%_)))
                                      (let ((_%hd113357113407%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113356113403%_)))
                                            (_%tl113358113410%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113356113403%_))))
                                        (if (gx#stx-pair? _%tl113358113410%_)
                                            (let ((_%e113359113413%_
                                                   (gx#syntax-e
                                                    _%tl113358113410%_)))
                                              (let ((_%hd113360113417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113359113413%_)))
                                                    (_%tl113361113420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113359113413%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113361113420%_)
                                                    (let ((_%e113362113423%_
                                                           (gx#syntax-e
                                                            _%tl113361113420%_)))
                                                      (let ((_%hd113363113427%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113362113423%_)))
                    (_%tl113364113430%_
                     (let () (declare (not safe)) (##cdr _%e113362113423%_))))
                (if (gx#stx-pair? _%tl113364113430%_)
                    (let ((_%e113365113433%_ (gx#syntax-e _%tl113364113430%_)))
                      (let ((_%hd113366113437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113365113433%_)))
                            (_%tl113367113440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113365113433%_))))
                        (if (gx#stx-pair? _%tl113367113440%_)
                            (let ((_%e113368113443%_
                                   (gx#syntax-e _%tl113367113440%_)))
                              (let ((_%hd113369113447%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113368113443%_)))
                                    (_%tl113370113450%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113368113443%_))))
                                (if (gx#stx-null? _%tl113370113450%_)
                                    ((lambda (_%g113344113453%_
                                              _%g113345113455%_
                                              _%g113346113456%_
                                              _%g113347113457%_
                                              _%g113348113458%_
                                              _%g113349113459%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g113347113457%_
                                               (cons _%g113345113455%_ '()))
                                         (cons _%g113348113458%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g113349113459%_ '()))
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
                               (cons _%g113349113459%_
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
                                     (cons (cons (cons _%g113346113456%_
                                                       (cons _%g113345113455%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g113349113459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g113349113459%_
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
                     (cons (cons _%g113344113453%_ '()) '()))))
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
                                     _%hd113369113447%_
                                     _%hd113366113437%_
                                     _%hd113363113427%_
                                     _%hd113360113417%_
                                     _%hd113357113407%_
                                     _%hd113354113397%_)
                                    (_%g113342113376%_ _%g113343113380%_))))
                            (_%g113342113376%_ _%g113343113380%_))))
                    (_%g113342113376%_ _%g113343113380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113342113376%_
                                                     _%g113343113380%_))))
                                            (_%g113342113376%_
                                             _%g113343113380%_))))
                                    (_%g113342113376%_ _%g113343113380%_))))
                            (_%g113342113376%_ _%g113343113380%_))))
                    (_%g113342113376%_ _%g113343113380%_)))))
        (_%g113341113487%_ _%$stx113338%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx113491%_)
      (let* ((_%g113495113513%_
              (lambda (_%g113496113509%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113496113509%_)))
             (_%g113494113568%_
              (lambda (_%g113496113517%_)
                (if (gx#stx-pair? _%g113496113517%_)
                    (let ((_%e113499113520%_ (gx#syntax-e _%g113496113517%_)))
                      (let ((_%hd113500113524%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113499113520%_)))
                            (_%tl113501113527%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113499113520%_))))
                        (if (gx#stx-pair? _%tl113501113527%_)
                            (let ((_%e113502113530%_
                                   (gx#syntax-e _%tl113501113527%_)))
                              (let ((_%hd113503113534%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113502113530%_)))
                                    (_%tl113504113537%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113502113530%_))))
                                (if (gx#stx-pair? _%tl113504113537%_)
                                    (let ((_%e113505113540%_
                                           (gx#syntax-e _%tl113504113537%_)))
                                      (let ((_%hd113506113544%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113505113540%_)))
                                            (_%tl113507113547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113505113540%_))))
                                        (if (gx#stx-null? _%tl113507113547%_)
                                            ((lambda (_%g113497113550%_
                                                      _%g113498113552%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g113498113552%_ '()))
                   (cons _%g113497113550%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd113506113544%_
                                             _%hd113503113534%_)
                                            (_%g113495113513%_
                                             _%g113496113517%_))))
                                    (_%g113495113513%_ _%g113496113517%_))))
                            (_%g113495113513%_ _%g113496113517%_))))
                    (_%g113495113513%_ _%g113496113517%_)))))
        (_%g113494113568%_ _%$stx113491%_)))))

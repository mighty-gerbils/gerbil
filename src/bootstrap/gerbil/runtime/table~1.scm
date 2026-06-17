(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx116961%_)
      (let* ((_%$%g116965116983%_
              (lambda (_%$%g116966116979%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g116966116979%_)))
             (_%$%g116964117039%_
              (lambda (_%$%g116966116987%_)
                (if (gx#stx-pair? _%$%g116966116987%_)
                    (let ((_%$%e116969116990%_
                           (gx#syntax-e _%$%g116966116987%_)))
                      (let ((_%$%hd116970116994%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e116969116990%_)))
                            (_%$%tl116971116997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e116969116990%_))))
                        (if (gx#stx-pair? _%$%tl116971116997%_)
                            (let ((_%$%e116972117000%_
                                   (gx#syntax-e _%$%tl116971116997%_)))
                              (let ((_%$%hd116973117004%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e116972117000%_)))
                                    (_%$%tl116974117007%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e116972117000%_))))
                                (if (gx#stx-pair? _%$%tl116974117007%_)
                                    (let ((_%$%e116975117010%_
                                           (gx#syntax-e _%$%tl116974117007%_)))
                                      (let ((_%$%hd116976117014%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e116975117010%_)))
                                            (_%$%tl116977117017%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e116975117010%_))))
                                        (if (gx#stx-null? _%$%tl116977117017%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd116973117004%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd116976117014%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g116965116983%_
                                             _%$%g116966116987%_))))
                                    (_%$%g116965116983%_
                                     _%$%g116966116987%_))))
                            (_%$%g116965116983%_ _%$%g116966116987%_))))
                    (_%$%g116965116983%_ _%$%g116966116987%_)))))
        (_%$%g116964117039%_ _%$stx116961%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx117043%_)
      (let* ((_%$%g117046117068%_
              (lambda (_%$%g117047117064%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117047117064%_)))
             (_%$%g117045117381%_
              (lambda (_%$%g117047117072%_)
                (if (gx#stx-pair? _%$%g117047117072%_)
                    (let ((_%$%e117051117075%_
                           (gx#syntax-e _%$%g117047117072%_)))
                      (let ((_%$%hd117052117079%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117051117075%_)))
                            (_%$%tl117053117082%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117051117075%_))))
                        (if (gx#stx-pair? _%$%tl117053117082%_)
                            (let ((_%$%e117054117085%_
                                   (gx#syntax-e _%$%tl117053117082%_)))
                              (let ((_%$%hd117055117089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117054117085%_)))
                                    (_%$%tl117056117092%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117054117085%_))))
                                (if (gx#stx-pair? _%$%tl117056117092%_)
                                    (let ((_%$%e117057117095%_
                                           (gx#syntax-e _%$%tl117056117092%_)))
                                      (let ((_%$%hd117058117099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117057117095%_)))
                                            (_%$%tl117059117102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117057117095%_))))
                                        (if (gx#stx-pair? _%$%tl117059117102%_)
                                            (let ((_%$%e117060117105%_
                                                   (gx#syntax-e
                                                    _%$%tl117059117102%_)))
                                              (let ((_%$%hd117061117109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117060117105%_)))
                                                    (_%$%tl117062117112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117060117105%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl117062117112%_)
                                                    (let* ((_%$%g117137117192%_
                                                            (lambda (_%$%g117138117188%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g117138117188%_)))
                                                           (_%$%g117136117377%_
                                                            (lambda (_%$%g117138117196%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g117138117196%_)
                          (let ((_%$%e117151117199%_
                                 (gx#syntax-e _%$%g117138117196%_)))
                            (let ((_%$%hd117152117203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e117151117199%_)))
                                  (_%$%tl117153117206%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e117151117199%_))))
                              (if (gx#stx-pair? _%$%tl117153117206%_)
                                  (let ((_%$%e117154117209%_
                                         (gx#syntax-e _%$%tl117153117206%_)))
                                    (let ((_%$%hd117155117213%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e117154117209%_)))
                                          (_%$%tl117156117216%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e117154117209%_))))
                                      (if (gx#stx-pair? _%$%tl117156117216%_)
                                          (let ((_%$%e117157117219%_
                                                 (gx#syntax-e
                                                  _%$%tl117156117216%_)))
                                            (let ((_%$%hd117158117223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e117157117219%_)))
                                                  (_%$%tl117159117226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e117157117219%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl117159117226%_)
                                                  (let ((_%$%e117160117229%_
                                                         (gx#syntax-e
                                                          _%$%tl117159117226%_)))
                                                    (let ((_%$%hd117161117233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e117160117229%_)))
                                                          (_%$%tl117162117236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e117160117229%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl117162117236%_)
                                                          (let ((_%$%e117163117239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl117162117236%_)))
                    (let ((_%$%hd117164117243%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e117163117239%_)))
                          (_%$%tl117165117246%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e117163117239%_))))
                      (if (gx#stx-pair? _%$%tl117165117246%_)
                          (let ((_%$%e117166117249%_
                                 (gx#syntax-e _%$%tl117165117246%_)))
                            (let ((_%$%hd117167117253%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e117166117249%_)))
                                  (_%$%tl117168117256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e117166117249%_))))
                              (if (gx#stx-pair? _%$%tl117168117256%_)
                                  (let ((_%$%e117169117259%_
                                         (gx#syntax-e _%$%tl117168117256%_)))
                                    (let ((_%$%hd117170117263%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e117169117259%_)))
                                          (_%$%tl117171117266%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e117169117259%_))))
                                      (if (gx#stx-pair? _%$%tl117171117266%_)
                                          (let ((_%$%e117172117269%_
                                                 (gx#syntax-e
                                                  _%$%tl117171117266%_)))
                                            (let ((_%$%hd117173117273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e117172117269%_)))
                                                  (_%$%tl117174117276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e117172117269%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl117174117276%_)
                                                  (let ((_%$%e117175117279%_
                                                         (gx#syntax-e
                                                          _%$%tl117174117276%_)))
                                                    (let ((_%$%hd117176117283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e117175117279%_)))
                                                          (_%$%tl117177117286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e117175117279%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl117177117286%_)
                                                          (let ((_%$%e117178117289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl117177117286%_)))
                    (let ((_%$%hd117179117293%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e117178117289%_)))
                          (_%$%tl117180117296%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e117178117289%_))))
                      (if (gx#stx-pair? _%$%tl117180117296%_)
                          (let ((_%$%e117181117299%_
                                 (gx#syntax-e _%$%tl117180117296%_)))
                            (let ((_%$%hd117182117303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e117181117299%_)))
                                  (_%$%tl117183117306%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e117181117299%_))))
                              (if (gx#stx-pair? _%$%tl117183117306%_)
                                  (let ((_%$%e117184117309%_
                                         (gx#syntax-e _%$%tl117183117306%_)))
                                    (let ((_%$%hd117185117313%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e117184117309%_)))
                                          (_%$%tl117186117316%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e117184117309%_))))
                                      (if (gx#stx-null? _%$%tl117186117316%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd117152117203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd117058117099%_
                                                  (cons _%$%hd117061117109%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd117155117213%_
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
                                                  (cons _%$%hd117058117099%_
                                                        (cons _%$%hd117061117109%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd117158117223%_
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
                                        (cons _%$%hd117058117099%_
                                              (cons _%$%hd117061117109%_
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
                                      (cons (cons _%$%hd117161117233%_
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
                                                              (cons (cons _%$%hd117158117223%_
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
                                            (cons (cons _%$%hd117164117243%_
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
                                                    (cons _%$%hd117058117099%_
                                                          (cons _%$%hd117061117109%_
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
                                                  (cons (cons _%$%hd117167117253%_
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
                      (cons (cons _%$%hd117164117243%_
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
                                                        (cons (cons _%$%hd117170117263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd117167117253%_
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
                                                              (cons (cons _%$%hd117173117273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd117176117283%_
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
                              (cons _%$%hd117058117099%_
                                    (cons _%$%hd117061117109%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd117176117283%_
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
                            (cons (cons _%$%hd117176117283%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd117176117283%_
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
                                        (cons (cons _%$%hd117173117273%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd117176117283%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd117179117293%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd117176117283%_
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
                                                          (cons (cons _%$%hd117176117283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd117176117283%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd117182117303%_
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
                                                (cons _%$%hd117058117099%_
                                                      (cons _%$%hd117061117109%_
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
                                              (cons (cons _%$%hd117185117313%_
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
                              (cons (cons _%$%hd117182117303%_
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
                                          (_%$%g117137117192%_
                                           _%$%g117138117196%_))))
                                  (_%$%g117137117192%_ _%$%g117138117196%_))))
                          (_%$%g117137117192%_ _%$%g117138117196%_))))
                  (_%$%g117137117192%_ _%$%g117138117196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g117137117192%_
                                                   _%$%g117138117196%_))))
                                          (_%$%g117137117192%_
                                           _%$%g117138117196%_))))
                                  (_%$%g117137117192%_ _%$%g117138117196%_))))
                          (_%$%g117137117192%_ _%$%g117138117196%_))))
                  (_%$%g117137117192%_ _%$%g117138117196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g117137117192%_
                                                   _%$%g117138117196%_))))
                                          (_%$%g117137117192%_
                                           _%$%g117138117196%_))))
                                  (_%$%g117137117192%_ _%$%g117138117196%_))))
                          (_%$%g117137117192%_ _%$%g117138117196%_)))))
              (_%$%g117136117377%_
               (list (gx#stx-identifier
                      _%$%hd117055117089%_
                      '"make-"
                      _%$%hd117055117089%_)
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      '"make-"
                      _%$%hd117055117089%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      '"__"
                      _%$%hd117055117089%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      '"__"
                      _%$%hd117055117089%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd117055117089%_
                      _%$%hd117055117089%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117046117068%_
                                                     _%$%g117047117072%_))))
                                            (_%$%g117046117068%_
                                             _%$%g117047117072%_))))
                                    (_%$%g117046117068%_
                                     _%$%g117047117072%_))))
                            (_%$%g117046117068%_ _%$%g117047117072%_))))
                    (_%$%g117046117068%_ _%$%g117047117072%_)))))
        (_%$%g117045117381%_ _%stx117043%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx117385%_)
      (let* ((_%$%g117389117411%_
              (lambda (_%$%g117390117407%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117390117407%_)))
             (_%$%g117388117480%_
              (lambda (_%$%g117390117415%_)
                (if (gx#stx-pair? _%$%g117390117415%_)
                    (let ((_%$%e117394117418%_
                           (gx#syntax-e _%$%g117390117415%_)))
                      (let ((_%$%hd117395117422%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117394117418%_)))
                            (_%$%tl117396117425%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117394117418%_))))
                        (if (gx#stx-pair? _%$%tl117396117425%_)
                            (let ((_%$%e117397117428%_
                                   (gx#syntax-e _%$%tl117396117425%_)))
                              (let ((_%$%hd117398117432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117397117428%_)))
                                    (_%$%tl117399117435%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117397117428%_))))
                                (if (gx#stx-pair? _%$%tl117399117435%_)
                                    (let ((_%$%e117400117438%_
                                           (gx#syntax-e _%$%tl117399117435%_)))
                                      (let ((_%$%hd117401117442%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117400117438%_)))
                                            (_%$%tl117402117445%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117400117438%_))))
                                        (if (gx#stx-pair? _%$%tl117402117445%_)
                                            (let ((_%$%e117403117448%_
                                                   (gx#syntax-e
                                                    _%$%tl117402117445%_)))
                                              (let ((_%$%hd117404117452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117403117448%_)))
                                                    (_%$%tl117405117455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117403117448%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl117405117455%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd117398117432%_
                                                (cons _%$%hd117401117442%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd117401117442%_
                                (cons _%$%hd117401117442%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd117404117452%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117389117411%_
                                                     _%$%g117390117415%_))))
                                            (_%$%g117389117411%_
                                             _%$%g117390117415%_))))
                                    (_%$%g117389117411%_
                                     _%$%g117390117415%_))))
                            (_%$%g117389117411%_ _%$%g117390117415%_))))
                    (_%$%g117389117411%_ _%$%g117390117415%_)))))
        (_%$%g117388117480%_ _%$stx117385%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx117484%_)
      (let* ((_%$%g117488117522%_
              (lambda (_%$%g117489117518%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117489117518%_)))
             (_%$%g117487117633%_
              (lambda (_%$%g117489117526%_)
                (if (gx#stx-pair? _%$%g117489117526%_)
                    (let ((_%$%e117496117529%_
                           (gx#syntax-e _%$%g117489117526%_)))
                      (let ((_%$%hd117497117533%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117496117529%_)))
                            (_%$%tl117498117536%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117496117529%_))))
                        (if (gx#stx-pair? _%$%tl117498117536%_)
                            (let ((_%$%e117499117539%_
                                   (gx#syntax-e _%$%tl117498117536%_)))
                              (let ((_%$%hd117500117543%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117499117539%_)))
                                    (_%$%tl117501117546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117499117539%_))))
                                (if (gx#stx-pair? _%$%tl117501117546%_)
                                    (let ((_%$%e117502117549%_
                                           (gx#syntax-e _%$%tl117501117546%_)))
                                      (let ((_%$%hd117503117553%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117502117549%_)))
                                            (_%$%tl117504117556%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117502117549%_))))
                                        (if (gx#stx-pair? _%$%tl117504117556%_)
                                            (let ((_%$%e117505117559%_
                                                   (gx#syntax-e
                                                    _%$%tl117504117556%_)))
                                              (let ((_%$%hd117506117563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117505117559%_)))
                                                    (_%$%tl117507117566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117505117559%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl117507117566%_)
                                                    (let ((_%$%e117508117569%_
                                                           (gx#syntax-e
                                                            _%$%tl117507117566%_)))
                                                      (let ((_%$%hd117509117573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e117508117569%_)))
                    (_%$%tl117510117576%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e117508117569%_))))
                (if (gx#stx-pair? _%$%tl117510117576%_)
                    (let ((_%$%e117511117579%_
                           (gx#syntax-e _%$%tl117510117576%_)))
                      (let ((_%$%hd117512117583%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117511117579%_)))
                            (_%$%tl117513117586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117511117579%_))))
                        (if (gx#stx-pair? _%$%tl117513117586%_)
                            (let ((_%$%e117514117589%_
                                   (gx#syntax-e _%$%tl117513117586%_)))
                              (let ((_%$%hd117515117593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117514117589%_)))
                                    (_%$%tl117516117596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117514117589%_))))
                                (if (gx#stx-null? _%$%tl117516117596%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd117506117563%_
                                            (cons _%$%hd117512117583%_ '()))
                                      (cons _%$%hd117503117553%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd117500117543%_ '()))
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
                            (cons _%$%hd117500117543%_
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
                                  (cons _%$%hd117515117593%_ '()))
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
                                  (cons (cons (cons _%$%hd117509117573%_
                                                    (cons _%$%hd117512117583%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd117500117543%_
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
                                    (_%$%g117488117522%_
                                     _%$%g117489117526%_))))
                            (_%$%g117488117522%_ _%$%g117489117526%_))))
                    (_%$%g117488117522%_ _%$%g117489117526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117488117522%_
                                                     _%$%g117489117526%_))))
                                            (_%$%g117488117522%_
                                             _%$%g117489117526%_))))
                                    (_%$%g117488117522%_
                                     _%$%g117489117526%_))))
                            (_%$%g117488117522%_ _%$%g117489117526%_))))
                    (_%$%g117488117522%_ _%$%g117489117526%_)))))
        (_%$%g117487117633%_ _%$stx117484%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx117637%_)
      (let* ((_%$%g117641117683%_
              (lambda (_%$%g117642117679%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117642117679%_)))
             (_%$%g117640117822%_
              (lambda (_%$%g117642117687%_)
                (if (gx#stx-pair? _%$%g117642117687%_)
                    (let ((_%$%e117651117690%_
                           (gx#syntax-e _%$%g117642117687%_)))
                      (let ((_%$%hd117652117694%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117651117690%_)))
                            (_%$%tl117653117697%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117651117690%_))))
                        (if (gx#stx-pair? _%$%tl117653117697%_)
                            (let ((_%$%e117654117700%_
                                   (gx#syntax-e _%$%tl117653117697%_)))
                              (let ((_%$%hd117655117704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117654117700%_)))
                                    (_%$%tl117656117707%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117654117700%_))))
                                (if (gx#stx-pair? _%$%tl117656117707%_)
                                    (let ((_%$%e117657117710%_
                                           (gx#syntax-e _%$%tl117656117707%_)))
                                      (let ((_%$%hd117658117714%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117657117710%_)))
                                            (_%$%tl117659117717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117657117710%_))))
                                        (if (gx#stx-pair? _%$%tl117659117717%_)
                                            (let ((_%$%e117660117720%_
                                                   (gx#syntax-e
                                                    _%$%tl117659117717%_)))
                                              (let ((_%$%hd117661117724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117660117720%_)))
                                                    (_%$%tl117662117727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117660117720%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl117662117727%_)
                                                    (let ((_%$%e117663117730%_
                                                           (gx#syntax-e
                                                            _%$%tl117662117727%_)))
                                                      (let ((_%$%hd117664117734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e117663117730%_)))
                    (_%$%tl117665117737%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e117663117730%_))))
                (if (gx#stx-pair? _%$%tl117665117737%_)
                    (let ((_%$%e117666117740%_
                           (gx#syntax-e _%$%tl117665117737%_)))
                      (let ((_%$%hd117667117744%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117666117740%_)))
                            (_%$%tl117668117747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117666117740%_))))
                        (if (gx#stx-pair? _%$%tl117668117747%_)
                            (let ((_%$%e117669117750%_
                                   (gx#syntax-e _%$%tl117668117747%_)))
                              (let ((_%$%hd117670117754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117669117750%_)))
                                    (_%$%tl117671117757%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117669117750%_))))
                                (if (gx#stx-pair? _%$%tl117671117757%_)
                                    (let ((_%$%e117672117760%_
                                           (gx#syntax-e _%$%tl117671117757%_)))
                                      (let ((_%$%hd117673117764%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117672117760%_)))
                                            (_%$%tl117674117767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117672117760%_))))
                                        (if (gx#stx-pair? _%$%tl117674117767%_)
                                            (let ((_%$%e117675117770%_
                                                   (gx#syntax-e
                                                    _%$%tl117674117767%_)))
                                              (let ((_%$%hd117676117774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117675117770%_)))
                                                    (_%$%tl117677117777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117675117770%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl117677117777%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd117661117724%_
                                                            (cons _%$%hd117667117744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd117658117714%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd117655117704%_
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
                                            (cons _%$%hd117655117704%_
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
                                                    (cons _%$%hd117655117704%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd117667117744%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd117655117704%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd117670117754%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd117676117774%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd117655117704%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd117667117744%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd117655117704%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd117670117754%_ '()))))
                  (cons (cons _%$%hd117673117764%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd117664117734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd117667117744%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd117655117704%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd117667117744%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd117655117704%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd117670117754%_
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
                                                    (_%$%g117641117683%_
                                                     _%$%g117642117687%_))))
                                            (_%$%g117641117683%_
                                             _%$%g117642117687%_))))
                                    (_%$%g117641117683%_
                                     _%$%g117642117687%_))))
                            (_%$%g117641117683%_ _%$%g117642117687%_))))
                    (_%$%g117641117683%_ _%$%g117642117687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117641117683%_
                                                     _%$%g117642117687%_))))
                                            (_%$%g117641117683%_
                                             _%$%g117642117687%_))))
                                    (_%$%g117641117683%_
                                     _%$%g117642117687%_))))
                            (_%$%g117641117683%_ _%$%g117642117687%_))))
                    (_%$%g117641117683%_ _%$%g117642117687%_)))))
        (_%$%g117640117822%_ _%$stx117637%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx117826%_)
      (let* ((_%$%g117830117876%_
              (lambda (_%$%g117831117872%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g117831117872%_)))
             (_%$%g117829118029%_
              (lambda (_%$%g117831117880%_)
                (if (gx#stx-pair? _%$%g117831117880%_)
                    (let ((_%$%e117841117883%_
                           (gx#syntax-e _%$%g117831117880%_)))
                      (let ((_%$%hd117842117887%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117841117883%_)))
                            (_%$%tl117843117890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117841117883%_))))
                        (if (gx#stx-pair? _%$%tl117843117890%_)
                            (let ((_%$%e117844117893%_
                                   (gx#syntax-e _%$%tl117843117890%_)))
                              (let ((_%$%hd117845117897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117844117893%_)))
                                    (_%$%tl117846117900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117844117893%_))))
                                (if (gx#stx-pair? _%$%tl117846117900%_)
                                    (let ((_%$%e117847117903%_
                                           (gx#syntax-e _%$%tl117846117900%_)))
                                      (let ((_%$%hd117848117907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117847117903%_)))
                                            (_%$%tl117849117910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117847117903%_))))
                                        (if (gx#stx-pair? _%$%tl117849117910%_)
                                            (let ((_%$%e117850117913%_
                                                   (gx#syntax-e
                                                    _%$%tl117849117910%_)))
                                              (let ((_%$%hd117851117917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117850117913%_)))
                                                    (_%$%tl117852117920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117850117913%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl117852117920%_)
                                                    (let ((_%$%e117853117923%_
                                                           (gx#syntax-e
                                                            _%$%tl117852117920%_)))
                                                      (let ((_%$%hd117854117927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e117853117923%_)))
                    (_%$%tl117855117930%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e117853117923%_))))
                (if (gx#stx-pair? _%$%tl117855117930%_)
                    (let ((_%$%e117856117933%_
                           (gx#syntax-e _%$%tl117855117930%_)))
                      (let ((_%$%hd117857117937%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e117856117933%_)))
                            (_%$%tl117858117940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e117856117933%_))))
                        (if (gx#stx-pair? _%$%tl117858117940%_)
                            (let ((_%$%e117859117943%_
                                   (gx#syntax-e _%$%tl117858117940%_)))
                              (let ((_%$%hd117860117947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e117859117943%_)))
                                    (_%$%tl117861117950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e117859117943%_))))
                                (if (gx#stx-pair? _%$%tl117861117950%_)
                                    (let ((_%$%e117862117953%_
                                           (gx#syntax-e _%$%tl117861117950%_)))
                                      (let ((_%$%hd117863117957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e117862117953%_)))
                                            (_%$%tl117864117960%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e117862117953%_))))
                                        (if (gx#stx-pair? _%$%tl117864117960%_)
                                            (let ((_%$%e117865117963%_
                                                   (gx#syntax-e
                                                    _%$%tl117864117960%_)))
                                              (let ((_%$%hd117866117967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e117865117963%_)))
                                                    (_%$%tl117867117970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e117865117963%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl117867117970%_)
                                                    (let ((_%$%e117868117973%_
                                                           (gx#syntax-e
                                                            _%$%tl117867117970%_)))
                                                      (let ((_%$%hd117869117977%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e117868117973%_)))
                    (_%$%tl117870117980%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e117868117973%_))))
                (if (gx#stx-null? _%$%tl117870117980%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd117851117917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd117857117937%_ '()))
                      (cons _%$%hd117848117907%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd117845117897%_
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
                                                    (cons _%$%hd117845117897%_
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
                                                            (cons _%$%hd117845117897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd117857117937%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd117845117897%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd117860117947%_
                                                  (cons _%$%hd117863117957%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd117869117977%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd117845117897%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd117857117937%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd117845117897%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd117860117947%_
                                                        (cons _%$%hd117863117957%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd117866117967%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd117854117927%_
                                    (cons _%$%hd117857117937%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd117845117897%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd117857117937%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd117845117897%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd117860117947%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd117845117897%_
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
                    (_%$%g117830117876%_ _%$%g117831117880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117830117876%_
                                                     _%$%g117831117880%_))))
                                            (_%$%g117830117876%_
                                             _%$%g117831117880%_))))
                                    (_%$%g117830117876%_
                                     _%$%g117831117880%_))))
                            (_%$%g117830117876%_ _%$%g117831117880%_))))
                    (_%$%g117830117876%_ _%$%g117831117880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g117830117876%_
                                                     _%$%g117831117880%_))))
                                            (_%$%g117830117876%_
                                             _%$%g117831117880%_))))
                                    (_%$%g117830117876%_
                                     _%$%g117831117880%_))))
                            (_%$%g117830117876%_ _%$%g117831117880%_))))
                    (_%$%g117830117876%_ _%$%g117831117880%_)))))
        (_%$%g117829118029%_ _%$stx117826%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx118033%_)
      (let* ((_%$%g118037118071%_
              (lambda (_%$%g118038118067%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118038118067%_)))
             (_%$%g118036118182%_
              (lambda (_%$%g118038118075%_)
                (if (gx#stx-pair? _%$%g118038118075%_)
                    (let ((_%$%e118045118078%_
                           (gx#syntax-e _%$%g118038118075%_)))
                      (let ((_%$%hd118046118082%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118045118078%_)))
                            (_%$%tl118047118085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118045118078%_))))
                        (if (gx#stx-pair? _%$%tl118047118085%_)
                            (let ((_%$%e118048118088%_
                                   (gx#syntax-e _%$%tl118047118085%_)))
                              (let ((_%$%hd118049118092%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118048118088%_)))
                                    (_%$%tl118050118095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118048118088%_))))
                                (if (gx#stx-pair? _%$%tl118050118095%_)
                                    (let ((_%$%e118051118098%_
                                           (gx#syntax-e _%$%tl118050118095%_)))
                                      (let ((_%$%hd118052118102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118051118098%_)))
                                            (_%$%tl118053118105%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118051118098%_))))
                                        (if (gx#stx-pair? _%$%tl118053118105%_)
                                            (let ((_%$%e118054118108%_
                                                   (gx#syntax-e
                                                    _%$%tl118053118105%_)))
                                              (let ((_%$%hd118055118112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e118054118108%_)))
                                                    (_%$%tl118056118115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e118054118108%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl118056118115%_)
                                                    (let ((_%$%e118057118118%_
                                                           (gx#syntax-e
                                                            _%$%tl118056118115%_)))
                                                      (let ((_%$%hd118058118122%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e118057118118%_)))
                    (_%$%tl118059118125%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e118057118118%_))))
                (if (gx#stx-pair? _%$%tl118059118125%_)
                    (let ((_%$%e118060118128%_
                           (gx#syntax-e _%$%tl118059118125%_)))
                      (let ((_%$%hd118061118132%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118060118128%_)))
                            (_%$%tl118062118135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118060118128%_))))
                        (if (gx#stx-pair? _%$%tl118062118135%_)
                            (let ((_%$%e118063118138%_
                                   (gx#syntax-e _%$%tl118062118135%_)))
                              (let ((_%$%hd118064118142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118063118138%_)))
                                    (_%$%tl118065118145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118063118138%_))))
                                (if (gx#stx-null? _%$%tl118065118145%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd118055118112%_
                                            (cons _%$%hd118061118132%_ '()))
                                      (cons _%$%hd118052118102%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd118049118092%_ '()))
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
                            (cons _%$%hd118049118092%_
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
                                  (cons (cons (cons _%$%hd118058118122%_
                                                    (cons _%$%hd118061118132%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd118049118092%_
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
                        (cons _%$%hd118049118092%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd118064118142%_ '()) '()))))
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
                                    (_%$%g118037118071%_
                                     _%$%g118038118075%_))))
                            (_%$%g118037118071%_ _%$%g118038118075%_))))
                    (_%$%g118037118071%_ _%$%g118038118075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g118037118071%_
                                                     _%$%g118038118075%_))))
                                            (_%$%g118037118071%_
                                             _%$%g118038118075%_))))
                                    (_%$%g118037118071%_
                                     _%$%g118038118075%_))))
                            (_%$%g118037118071%_ _%$%g118038118075%_))))
                    (_%$%g118037118071%_ _%$%g118038118075%_)))))
        (_%$%g118036118182%_ _%$stx118033%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx118186%_)
      (let* ((_%$%g118190118208%_
              (lambda (_%$%g118191118204%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g118191118204%_)))
             (_%$%g118189118263%_
              (lambda (_%$%g118191118212%_)
                (if (gx#stx-pair? _%$%g118191118212%_)
                    (let ((_%$%e118194118215%_
                           (gx#syntax-e _%$%g118191118212%_)))
                      (let ((_%$%hd118195118219%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e118194118215%_)))
                            (_%$%tl118196118222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e118194118215%_))))
                        (if (gx#stx-pair? _%$%tl118196118222%_)
                            (let ((_%$%e118197118225%_
                                   (gx#syntax-e _%$%tl118196118222%_)))
                              (let ((_%$%hd118198118229%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e118197118225%_)))
                                    (_%$%tl118199118232%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e118197118225%_))))
                                (if (gx#stx-pair? _%$%tl118199118232%_)
                                    (let ((_%$%e118200118235%_
                                           (gx#syntax-e _%$%tl118199118232%_)))
                                      (let ((_%$%hd118201118239%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e118200118235%_)))
                                            (_%$%tl118202118242%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e118200118235%_))))
                                        (if (gx#stx-null? _%$%tl118202118242%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd118198118229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd118201118239%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g118190118208%_
                                             _%$%g118191118212%_))))
                                    (_%$%g118190118208%_
                                     _%$%g118191118212%_))))
                            (_%$%g118190118208%_ _%$%g118191118212%_))))
                    (_%$%g118190118208%_ _%$%g118191118212%_)))))
        (_%$%g118189118263%_ _%$stx118186%_)))))

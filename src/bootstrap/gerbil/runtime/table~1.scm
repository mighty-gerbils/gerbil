(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx114172%_)
      (let* ((_%g114176114194%_
              (lambda (_%g114177114190%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114177114190%_)))
             (_%g114175114250%_
              (lambda (_%g114177114198%_)
                (if (gx#stx-pair? _%g114177114198%_)
                    (let ((_%e114180114201%_ (gx#syntax-e _%g114177114198%_)))
                      (let ((_%hd114181114205%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114180114201%_)))
                            (_%tl114182114208%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114180114201%_))))
                        (if (gx#stx-pair? _%tl114182114208%_)
                            (let ((_%e114183114211%_
                                   (gx#syntax-e _%tl114182114208%_)))
                              (let ((_%hd114184114215%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114183114211%_)))
                                    (_%tl114185114218%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114183114211%_))))
                                (if (gx#stx-pair? _%tl114185114218%_)
                                    (let ((_%e114186114221%_
                                           (gx#syntax-e _%tl114185114218%_)))
                                      (let ((_%hd114187114225%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114186114221%_)))
                                            (_%tl114188114228%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114186114221%_))))
                                        (if (gx#stx-null? _%tl114188114228%_)
                                            ((lambda (_%g114178114231%_
                                                      _%g114179114233%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g114179114233%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g114178114231%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd114187114225%_
                                             _%hd114184114215%_)
                                            (_%g114176114194%_
                                             _%g114177114198%_))))
                                    (_%g114176114194%_ _%g114177114198%_))))
                            (_%g114176114194%_ _%g114177114198%_))))
                    (_%g114176114194%_ _%g114177114198%_)))))
        (_%g114175114250%_ _%$stx114172%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx114254%_)
      (let* ((_%g114257114279%_
              (lambda (_%g114258114275%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114258114275%_)))
             (_%g114256114592%_
              (lambda (_%g114258114283%_)
                (if (gx#stx-pair? _%g114258114283%_)
                    (let ((_%e114262114286%_ (gx#syntax-e _%g114258114283%_)))
                      (let ((_%hd114263114290%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114262114286%_)))
                            (_%tl114264114293%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114262114286%_))))
                        (if (gx#stx-pair? _%tl114264114293%_)
                            (let ((_%e114265114296%_
                                   (gx#syntax-e _%tl114264114293%_)))
                              (let ((_%hd114266114300%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114265114296%_)))
                                    (_%tl114267114303%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114265114296%_))))
                                (if (gx#stx-pair? _%tl114267114303%_)
                                    (let ((_%e114268114306%_
                                           (gx#syntax-e _%tl114267114303%_)))
                                      (let ((_%hd114269114310%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114268114306%_)))
                                            (_%tl114270114313%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114268114306%_))))
                                        (if (gx#stx-pair? _%tl114270114313%_)
                                            (let ((_%e114271114316%_
                                                   (gx#syntax-e
                                                    _%tl114270114313%_)))
                                              (let ((_%hd114272114320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114271114316%_)))
                                                    (_%tl114273114323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114271114316%_))))
                                                (if (gx#stx-null?
                                                     _%tl114273114323%_)
                                                    ((lambda (_%g114259114326%_
                                                              _%g114260114328%_
                                                              _%g114261114329%_)
                                                       (let* ((_%g114348114403%_
                                                               (lambda (_%g114349114399%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114349114399%_)))
                      (_%g114347114588%_
                       (lambda (_%g114349114407%_)
                         (if (gx#stx-pair? _%g114349114407%_)
                             (let ((_%e114362114410%_
                                    (gx#syntax-e _%g114349114407%_)))
                               (let ((_%hd114363114414%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114362114410%_)))
                                     (_%tl114364114417%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114362114410%_))))
                                 (if (gx#stx-pair? _%tl114364114417%_)
                                     (let ((_%e114365114420%_
                                            (gx#syntax-e _%tl114364114417%_)))
                                       (let ((_%hd114366114424%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114365114420%_)))
                                             (_%tl114367114427%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114365114420%_))))
                                         (if (gx#stx-pair? _%tl114367114427%_)
                                             (let ((_%e114368114430%_
                                                    (gx#syntax-e
                                                     _%tl114367114427%_)))
                                               (let ((_%hd114369114434%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e114368114430%_)))
                                                     (_%tl114370114437%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e114368114430%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl114370114437%_)
                                                     (let ((_%e114371114440%_
                                                            (gx#syntax-e
                                                             _%tl114370114437%_)))
                                                       (let ((_%hd114372114444%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e114371114440%_)))
                     (_%tl114373114447%_
                      (let () (declare (not safe)) (##cdr _%e114371114440%_))))
                 (if (gx#stx-pair? _%tl114373114447%_)
                     (let ((_%e114374114450%_
                            (gx#syntax-e _%tl114373114447%_)))
                       (let ((_%hd114375114454%_
                              (let ()
                                (declare (not safe))
                                (##car _%e114374114450%_)))
                             (_%tl114376114457%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e114374114450%_))))
                         (if (gx#stx-pair? _%tl114376114457%_)
                             (let ((_%e114377114460%_
                                    (gx#syntax-e _%tl114376114457%_)))
                               (let ((_%hd114378114464%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114377114460%_)))
                                     (_%tl114379114467%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114377114460%_))))
                                 (if (gx#stx-pair? _%tl114379114467%_)
                                     (let ((_%e114380114470%_
                                            (gx#syntax-e _%tl114379114467%_)))
                                       (let ((_%hd114381114474%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114380114470%_)))
                                             (_%tl114382114477%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114380114470%_))))
                                         (if (gx#stx-pair? _%tl114382114477%_)
                                             (let ((_%e114383114480%_
                                                    (gx#syntax-e
                                                     _%tl114382114477%_)))
                                               (let ((_%hd114384114484%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e114383114480%_)))
                                                     (_%tl114385114487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e114383114480%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl114385114487%_)
                                                     (let ((_%e114386114490%_
                                                            (gx#syntax-e
                                                             _%tl114385114487%_)))
                                                       (let ((_%hd114387114494%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e114386114490%_)))
                     (_%tl114388114497%_
                      (let () (declare (not safe)) (##cdr _%e114386114490%_))))
                 (if (gx#stx-pair? _%tl114388114497%_)
                     (let ((_%e114389114500%_
                            (gx#syntax-e _%tl114388114497%_)))
                       (let ((_%hd114390114504%_
                              (let ()
                                (declare (not safe))
                                (##car _%e114389114500%_)))
                             (_%tl114391114507%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e114389114500%_))))
                         (if (gx#stx-pair? _%tl114391114507%_)
                             (let ((_%e114392114510%_
                                    (gx#syntax-e _%tl114391114507%_)))
                               (let ((_%hd114393114514%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e114392114510%_)))
                                     (_%tl114394114517%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e114392114510%_))))
                                 (if (gx#stx-pair? _%tl114394114517%_)
                                     (let ((_%e114395114520%_
                                            (gx#syntax-e _%tl114394114517%_)))
                                       (let ((_%hd114396114524%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e114395114520%_)))
                                             (_%tl114397114527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e114395114520%_))))
                                         (if (gx#stx-null? _%tl114397114527%_)
                                             ((lambda (_%g114350114530%_
                                                       _%g114351114532%_
                                                       _%g114352114533%_
                                                       _%g114353114534%_
                                                       _%g114354114535%_
                                                       _%g114355114536%_
                                                       _%g114356114537%_
                                                       _%g114357114538%_
                                                       _%g114358114539%_
                                                       _%g114359114540%_
                                                       _%g114360114541%_
                                                       _%g114361114542%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g114361114542%_
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
                                                  (cons _%g114260114328%_
                                                        (cons _%g114259114326%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g114360114541%_
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
                                                        (cons _%g114260114328%_
                                                              (cons _%g114259114326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g114359114540%_
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
                                              (cons _%g114260114328%_
                                                    (cons _%g114259114326%_
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
                                            (cons (cons _%g114358114539%_
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
                            (cons (cons _%g114359114540%_
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
                                                  (cons (cons _%g114357114538%_
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
                                                          (cons _%g114260114328%_
                                                                (cons _%g114259114326%_
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
                                                        (cons (cons _%g114356114537%_
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
                            (cons (cons _%g114357114538%_
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
                                                              (cons (cons _%g114355114536%_
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
                                              (cons (cons _%g114356114537%_
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
                            (cons (cons _%g114354114535%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g114353114534%_
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
                                    (cons _%g114260114328%_
                                          (cons _%g114259114326%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g114353114534%_
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
                                  (cons (cons _%g114353114534%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g114353114534%_
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
                                              (cons (cons _%g114354114535%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g114353114534%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g114352114533%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g114353114534%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g114353114534%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g114353114534%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g114351114532%_
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
                                                      (cons _%g114260114328%_
                                                            (cons _%g114259114326%_
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
                                                    (cons (cons _%g114350114530%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g114351114532%_
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
                                              _%hd114396114524%_
                                              _%hd114393114514%_
                                              _%hd114390114504%_
                                              _%hd114387114494%_
                                              _%hd114384114484%_
                                              _%hd114381114474%_
                                              _%hd114378114464%_
                                              _%hd114375114454%_
                                              _%hd114372114444%_
                                              _%hd114369114434%_
                                              _%hd114366114424%_
                                              _%hd114363114414%_)
                                             (_%g114348114403%_
                                              _%g114349114407%_))))
                                     (_%g114348114403%_ _%g114349114407%_))))
                             (_%g114348114403%_ _%g114349114407%_))))
                     (_%g114348114403%_ _%g114349114407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114348114403%_
                                                      _%g114349114407%_))))
                                             (_%g114348114403%_
                                              _%g114349114407%_))))
                                     (_%g114348114403%_ _%g114349114407%_))))
                             (_%g114348114403%_ _%g114349114407%_))))
                     (_%g114348114403%_ _%g114349114407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114348114403%_
                                                      _%g114349114407%_))))
                                             (_%g114348114403%_
                                              _%g114349114407%_))))
                                     (_%g114348114403%_ _%g114349114407%_))))
                             (_%g114348114403%_ _%g114349114407%_)))))
                 (_%g114347114588%_
                  (list (gx#stx-identifier
                         _%g114261114329%_
                         '"make-"
                         _%g114261114329%_)
                        (gx#stx-identifier
                         _%g114261114329%_
                         '"make-"
                         _%g114261114329%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g114261114329%_
                         '"__"
                         _%g114261114329%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g114261114329%_
                         '"__"
                         _%g114261114329%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g114261114329%_
                         _%g114261114329%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd114272114320%_
                                                     _%hd114269114310%_
                                                     _%hd114266114300%_)
                                                    (_%g114257114279%_
                                                     _%g114258114283%_))))
                                            (_%g114257114279%_
                                             _%g114258114283%_))))
                                    (_%g114257114279%_ _%g114258114283%_))))
                            (_%g114257114279%_ _%g114258114283%_))))
                    (_%g114257114279%_ _%g114258114283%_)))))
        (_%g114256114592%_ _%stx114254%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx114596%_)
      (let* ((_%g114600114622%_
              (lambda (_%g114601114618%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114601114618%_)))
             (_%g114599114691%_
              (lambda (_%g114601114626%_)
                (if (gx#stx-pair? _%g114601114626%_)
                    (let ((_%e114605114629%_ (gx#syntax-e _%g114601114626%_)))
                      (let ((_%hd114606114633%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114605114629%_)))
                            (_%tl114607114636%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114605114629%_))))
                        (if (gx#stx-pair? _%tl114607114636%_)
                            (let ((_%e114608114639%_
                                   (gx#syntax-e _%tl114607114636%_)))
                              (let ((_%hd114609114643%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114608114639%_)))
                                    (_%tl114610114646%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114608114639%_))))
                                (if (gx#stx-pair? _%tl114610114646%_)
                                    (let ((_%e114611114649%_
                                           (gx#syntax-e _%tl114610114646%_)))
                                      (let ((_%hd114612114653%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114611114649%_)))
                                            (_%tl114613114656%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114611114649%_))))
                                        (if (gx#stx-pair? _%tl114613114656%_)
                                            (let ((_%e114614114659%_
                                                   (gx#syntax-e
                                                    _%tl114613114656%_)))
                                              (let ((_%hd114615114663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114614114659%_)))
                                                    (_%tl114616114666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114614114659%_))))
                                                (if (gx#stx-null?
                                                     _%tl114616114666%_)
                                                    ((lambda (_%g114602114669%_
                                                              _%g114603114671%_
                                                              _%g114604114672%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g114604114672%_
                                                   (cons _%g114603114671%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g114603114671%_
                                   (cons _%g114603114671%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g114602114669%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd114615114663%_
                                                     _%hd114612114653%_
                                                     _%hd114609114643%_)
                                                    (_%g114600114622%_
                                                     _%g114601114626%_))))
                                            (_%g114600114622%_
                                             _%g114601114626%_))))
                                    (_%g114600114622%_ _%g114601114626%_))))
                            (_%g114600114622%_ _%g114601114626%_))))
                    (_%g114600114622%_ _%g114601114626%_)))))
        (_%g114599114691%_ _%$stx114596%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx114695%_)
      (let* ((_%g114699114733%_
              (lambda (_%g114700114729%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114700114729%_)))
             (_%g114698114844%_
              (lambda (_%g114700114737%_)
                (if (gx#stx-pair? _%g114700114737%_)
                    (let ((_%e114707114740%_ (gx#syntax-e _%g114700114737%_)))
                      (let ((_%hd114708114744%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114707114740%_)))
                            (_%tl114709114747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114707114740%_))))
                        (if (gx#stx-pair? _%tl114709114747%_)
                            (let ((_%e114710114750%_
                                   (gx#syntax-e _%tl114709114747%_)))
                              (let ((_%hd114711114754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114710114750%_)))
                                    (_%tl114712114757%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114710114750%_))))
                                (if (gx#stx-pair? _%tl114712114757%_)
                                    (let ((_%e114713114760%_
                                           (gx#syntax-e _%tl114712114757%_)))
                                      (let ((_%hd114714114764%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114713114760%_)))
                                            (_%tl114715114767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114713114760%_))))
                                        (if (gx#stx-pair? _%tl114715114767%_)
                                            (let ((_%e114716114770%_
                                                   (gx#syntax-e
                                                    _%tl114715114767%_)))
                                              (let ((_%hd114717114774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114716114770%_)))
                                                    (_%tl114718114777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114716114770%_))))
                                                (if (gx#stx-pair?
                                                     _%tl114718114777%_)
                                                    (let ((_%e114719114780%_
                                                           (gx#syntax-e
                                                            _%tl114718114777%_)))
                                                      (let ((_%hd114720114784%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e114719114780%_)))
                    (_%tl114721114787%_
                     (let () (declare (not safe)) (##cdr _%e114719114780%_))))
                (if (gx#stx-pair? _%tl114721114787%_)
                    (let ((_%e114722114790%_ (gx#syntax-e _%tl114721114787%_)))
                      (let ((_%hd114723114794%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114722114790%_)))
                            (_%tl114724114797%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114722114790%_))))
                        (if (gx#stx-pair? _%tl114724114797%_)
                            (let ((_%e114725114800%_
                                   (gx#syntax-e _%tl114724114797%_)))
                              (let ((_%hd114726114804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114725114800%_)))
                                    (_%tl114727114807%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114725114800%_))))
                                (if (gx#stx-null? _%tl114727114807%_)
                                    ((lambda (_%g114701114810%_
                                              _%g114702114812%_
                                              _%g114703114813%_
                                              _%g114704114814%_
                                              _%g114705114815%_
                                              _%g114706114816%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g114704114814%_
                                               (cons _%g114702114812%_ '()))
                                         (cons _%g114705114815%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g114706114816%_ '()))
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
                               (cons _%g114706114816%_
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
                                     (cons _%g114701114810%_ '()))
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
                                     (cons (cons (cons _%g114703114813%_
                                                       (cons _%g114702114812%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g114706114816%_
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
                                     _%hd114726114804%_
                                     _%hd114723114794%_
                                     _%hd114720114784%_
                                     _%hd114717114774%_
                                     _%hd114714114764%_
                                     _%hd114711114754%_)
                                    (_%g114699114733%_ _%g114700114737%_))))
                            (_%g114699114733%_ _%g114700114737%_))))
                    (_%g114699114733%_ _%g114700114737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g114699114733%_
                                                     _%g114700114737%_))))
                                            (_%g114699114733%_
                                             _%g114700114737%_))))
                                    (_%g114699114733%_ _%g114700114737%_))))
                            (_%g114699114733%_ _%g114700114737%_))))
                    (_%g114699114733%_ _%g114700114737%_)))))
        (_%g114698114844%_ _%$stx114695%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx114848%_)
      (let* ((_%g114852114894%_
              (lambda (_%g114853114890%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114853114890%_)))
             (_%g114851115033%_
              (lambda (_%g114853114898%_)
                (if (gx#stx-pair? _%g114853114898%_)
                    (let ((_%e114862114901%_ (gx#syntax-e _%g114853114898%_)))
                      (let ((_%hd114863114905%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114862114901%_)))
                            (_%tl114864114908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114862114901%_))))
                        (if (gx#stx-pair? _%tl114864114908%_)
                            (let ((_%e114865114911%_
                                   (gx#syntax-e _%tl114864114908%_)))
                              (let ((_%hd114866114915%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114865114911%_)))
                                    (_%tl114867114918%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114865114911%_))))
                                (if (gx#stx-pair? _%tl114867114918%_)
                                    (let ((_%e114868114921%_
                                           (gx#syntax-e _%tl114867114918%_)))
                                      (let ((_%hd114869114925%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114868114921%_)))
                                            (_%tl114870114928%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114868114921%_))))
                                        (if (gx#stx-pair? _%tl114870114928%_)
                                            (let ((_%e114871114931%_
                                                   (gx#syntax-e
                                                    _%tl114870114928%_)))
                                              (let ((_%hd114872114935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114871114931%_)))
                                                    (_%tl114873114938%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114871114931%_))))
                                                (if (gx#stx-pair?
                                                     _%tl114873114938%_)
                                                    (let ((_%e114874114941%_
                                                           (gx#syntax-e
                                                            _%tl114873114938%_)))
                                                      (let ((_%hd114875114945%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e114874114941%_)))
                    (_%tl114876114948%_
                     (let () (declare (not safe)) (##cdr _%e114874114941%_))))
                (if (gx#stx-pair? _%tl114876114948%_)
                    (let ((_%e114877114951%_ (gx#syntax-e _%tl114876114948%_)))
                      (let ((_%hd114878114955%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114877114951%_)))
                            (_%tl114879114958%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114877114951%_))))
                        (if (gx#stx-pair? _%tl114879114958%_)
                            (let ((_%e114880114961%_
                                   (gx#syntax-e _%tl114879114958%_)))
                              (let ((_%hd114881114965%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114880114961%_)))
                                    (_%tl114882114968%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114880114961%_))))
                                (if (gx#stx-pair? _%tl114882114968%_)
                                    (let ((_%e114883114971%_
                                           (gx#syntax-e _%tl114882114968%_)))
                                      (let ((_%hd114884114975%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114883114971%_)))
                                            (_%tl114885114978%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114883114971%_))))
                                        (if (gx#stx-pair? _%tl114885114978%_)
                                            (let ((_%e114886114981%_
                                                   (gx#syntax-e
                                                    _%tl114885114978%_)))
                                              (let ((_%hd114887114985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114886114981%_)))
                                                    (_%tl114888114988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114886114981%_))))
                                                (if (gx#stx-null?
                                                     _%tl114888114988%_)
                                                    ((lambda (_%g114854114991%_
                                                              _%g114855114993%_
                                                              _%g114856114994%_
                                                              _%g114857114995%_
                                                              _%g114858114996%_
                                                              _%g114859114997%_
                                                              _%g114860114998%_
                                                              _%g114861114999%_)
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
                                                   (cons (cons _%g114859114997%_
                                                               (cons _%g114857114995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g114860114998%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g114861114999%_
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
                                               (cons _%g114861114999%_
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
                                                       (cons _%g114861114999%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g114857114995%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g114861114999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g114856114994%_ '()))))
               (cons (cons _%g114854114991%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g114861114999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g114857114995%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g114861114999%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g114856114994%_ '()))))
                     (cons (cons _%g114855114993%_ '()) '()))))
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
                                                     (cons (cons (cons _%g114858114996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g114857114995%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g114861114999%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g114857114995%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g114861114999%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g114856114994%_ '()))))
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
                                                     _%hd114887114985%_
                                                     _%hd114884114975%_
                                                     _%hd114881114965%_
                                                     _%hd114878114955%_
                                                     _%hd114875114945%_
                                                     _%hd114872114935%_
                                                     _%hd114869114925%_
                                                     _%hd114866114915%_)
                                                    (_%g114852114894%_
                                                     _%g114853114898%_))))
                                            (_%g114852114894%_
                                             _%g114853114898%_))))
                                    (_%g114852114894%_ _%g114853114898%_))))
                            (_%g114852114894%_ _%g114853114898%_))))
                    (_%g114852114894%_ _%g114853114898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g114852114894%_
                                                     _%g114853114898%_))))
                                            (_%g114852114894%_
                                             _%g114853114898%_))))
                                    (_%g114852114894%_ _%g114853114898%_))))
                            (_%g114852114894%_ _%g114853114898%_))))
                    (_%g114852114894%_ _%g114853114898%_)))))
        (_%g114851115033%_ _%$stx114848%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx115037%_)
      (let* ((_%g115041115087%_
              (lambda (_%g115042115083%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115042115083%_)))
             (_%g115040115240%_
              (lambda (_%g115042115091%_)
                (if (gx#stx-pair? _%g115042115091%_)
                    (let ((_%e115052115094%_ (gx#syntax-e _%g115042115091%_)))
                      (let ((_%hd115053115098%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115052115094%_)))
                            (_%tl115054115101%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115052115094%_))))
                        (if (gx#stx-pair? _%tl115054115101%_)
                            (let ((_%e115055115104%_
                                   (gx#syntax-e _%tl115054115101%_)))
                              (let ((_%hd115056115108%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115055115104%_)))
                                    (_%tl115057115111%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115055115104%_))))
                                (if (gx#stx-pair? _%tl115057115111%_)
                                    (let ((_%e115058115114%_
                                           (gx#syntax-e _%tl115057115111%_)))
                                      (let ((_%hd115059115118%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115058115114%_)))
                                            (_%tl115060115121%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115058115114%_))))
                                        (if (gx#stx-pair? _%tl115060115121%_)
                                            (let ((_%e115061115124%_
                                                   (gx#syntax-e
                                                    _%tl115060115121%_)))
                                              (let ((_%hd115062115128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115061115124%_)))
                                                    (_%tl115063115131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115061115124%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115063115131%_)
                                                    (let ((_%e115064115134%_
                                                           (gx#syntax-e
                                                            _%tl115063115131%_)))
                                                      (let ((_%hd115065115138%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115064115134%_)))
                    (_%tl115066115141%_
                     (let () (declare (not safe)) (##cdr _%e115064115134%_))))
                (if (gx#stx-pair? _%tl115066115141%_)
                    (let ((_%e115067115144%_ (gx#syntax-e _%tl115066115141%_)))
                      (let ((_%hd115068115148%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115067115144%_)))
                            (_%tl115069115151%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115067115144%_))))
                        (if (gx#stx-pair? _%tl115069115151%_)
                            (let ((_%e115070115154%_
                                   (gx#syntax-e _%tl115069115151%_)))
                              (let ((_%hd115071115158%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115070115154%_)))
                                    (_%tl115072115161%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115070115154%_))))
                                (if (gx#stx-pair? _%tl115072115161%_)
                                    (let ((_%e115073115164%_
                                           (gx#syntax-e _%tl115072115161%_)))
                                      (let ((_%hd115074115168%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115073115164%_)))
                                            (_%tl115075115171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115073115164%_))))
                                        (if (gx#stx-pair? _%tl115075115171%_)
                                            (let ((_%e115076115174%_
                                                   (gx#syntax-e
                                                    _%tl115075115171%_)))
                                              (let ((_%hd115077115178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115076115174%_)))
                                                    (_%tl115078115181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115076115174%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115078115181%_)
                                                    (let ((_%e115079115184%_
                                                           (gx#syntax-e
                                                            _%tl115078115181%_)))
                                                      (let ((_%hd115080115188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115079115184%_)))
                    (_%tl115081115191%_
                     (let () (declare (not safe)) (##cdr _%e115079115184%_))))
                (if (gx#stx-null? _%tl115081115191%_)
                    ((lambda (_%g115043115194%_
                              _%g115044115196%_
                              _%g115045115197%_
                              _%g115046115198%_
                              _%g115047115199%_
                              _%g115048115200%_
                              _%g115049115201%_
                              _%g115050115202%_
                              _%g115051115203%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g115049115201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g115047115199%_ '()))
                         (cons _%g115050115202%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g115051115203%_ '()))
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
                                                       (cons _%g115051115203%_
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
                                                               (cons _%g115051115203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g115047115199%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g115051115203%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g115046115198%_
                                                     (cons _%g115045115197%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g115043115194%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g115051115203%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g115047115199%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g115051115203%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g115046115198%_
                                                           (cons _%g115045115197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g115044115196%_ '()) '()))))
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
                     (cons (cons (cons _%g115048115200%_
                                       (cons _%g115047115199%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g115051115203%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g115047115199%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g115051115203%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g115046115198%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g115051115203%_
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
                     _%hd115080115188%_
                     _%hd115077115178%_
                     _%hd115074115168%_
                     _%hd115071115158%_
                     _%hd115068115148%_
                     _%hd115065115138%_
                     _%hd115062115128%_
                     _%hd115059115118%_
                     _%hd115056115108%_)
                    (_%g115041115087%_ _%g115042115091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115041115087%_
                                                     _%g115042115091%_))))
                                            (_%g115041115087%_
                                             _%g115042115091%_))))
                                    (_%g115041115087%_ _%g115042115091%_))))
                            (_%g115041115087%_ _%g115042115091%_))))
                    (_%g115041115087%_ _%g115042115091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115041115087%_
                                                     _%g115042115091%_))))
                                            (_%g115041115087%_
                                             _%g115042115091%_))))
                                    (_%g115041115087%_ _%g115042115091%_))))
                            (_%g115041115087%_ _%g115042115091%_))))
                    (_%g115041115087%_ _%g115042115091%_)))))
        (_%g115040115240%_ _%$stx115037%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx115244%_)
      (let* ((_%g115248115282%_
              (lambda (_%g115249115278%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115249115278%_)))
             (_%g115247115393%_
              (lambda (_%g115249115286%_)
                (if (gx#stx-pair? _%g115249115286%_)
                    (let ((_%e115256115289%_ (gx#syntax-e _%g115249115286%_)))
                      (let ((_%hd115257115293%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115256115289%_)))
                            (_%tl115258115296%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115256115289%_))))
                        (if (gx#stx-pair? _%tl115258115296%_)
                            (let ((_%e115259115299%_
                                   (gx#syntax-e _%tl115258115296%_)))
                              (let ((_%hd115260115303%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115259115299%_)))
                                    (_%tl115261115306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115259115299%_))))
                                (if (gx#stx-pair? _%tl115261115306%_)
                                    (let ((_%e115262115309%_
                                           (gx#syntax-e _%tl115261115306%_)))
                                      (let ((_%hd115263115313%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115262115309%_)))
                                            (_%tl115264115316%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115262115309%_))))
                                        (if (gx#stx-pair? _%tl115264115316%_)
                                            (let ((_%e115265115319%_
                                                   (gx#syntax-e
                                                    _%tl115264115316%_)))
                                              (let ((_%hd115266115323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115265115319%_)))
                                                    (_%tl115267115326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115265115319%_))))
                                                (if (gx#stx-pair?
                                                     _%tl115267115326%_)
                                                    (let ((_%e115268115329%_
                                                           (gx#syntax-e
                                                            _%tl115267115326%_)))
                                                      (let ((_%hd115269115333%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e115268115329%_)))
                    (_%tl115270115336%_
                     (let () (declare (not safe)) (##cdr _%e115268115329%_))))
                (if (gx#stx-pair? _%tl115270115336%_)
                    (let ((_%e115271115339%_ (gx#syntax-e _%tl115270115336%_)))
                      (let ((_%hd115272115343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115271115339%_)))
                            (_%tl115273115346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115271115339%_))))
                        (if (gx#stx-pair? _%tl115273115346%_)
                            (let ((_%e115274115349%_
                                   (gx#syntax-e _%tl115273115346%_)))
                              (let ((_%hd115275115353%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115274115349%_)))
                                    (_%tl115276115356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115274115349%_))))
                                (if (gx#stx-null? _%tl115276115356%_)
                                    ((lambda (_%g115250115359%_
                                              _%g115251115361%_
                                              _%g115252115362%_
                                              _%g115253115363%_
                                              _%g115254115364%_
                                              _%g115255115365%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g115253115363%_
                                               (cons _%g115251115361%_ '()))
                                         (cons _%g115254115364%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g115255115365%_ '()))
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
                               (cons _%g115255115365%_
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
                                     (cons (cons (cons _%g115252115362%_
                                                       (cons _%g115251115361%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g115255115365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g115255115365%_
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
                     (cons (cons _%g115250115359%_ '()) '()))))
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
                                     _%hd115275115353%_
                                     _%hd115272115343%_
                                     _%hd115269115333%_
                                     _%hd115266115323%_
                                     _%hd115263115313%_
                                     _%hd115260115303%_)
                                    (_%g115248115282%_ _%g115249115286%_))))
                            (_%g115248115282%_ _%g115249115286%_))))
                    (_%g115248115282%_ _%g115249115286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115248115282%_
                                                     _%g115249115286%_))))
                                            (_%g115248115282%_
                                             _%g115249115286%_))))
                                    (_%g115248115282%_ _%g115249115286%_))))
                            (_%g115248115282%_ _%g115249115286%_))))
                    (_%g115248115282%_ _%g115249115286%_)))))
        (_%g115247115393%_ _%$stx115244%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx115397%_)
      (let* ((_%g115401115419%_
              (lambda (_%g115402115415%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115402115415%_)))
             (_%g115400115474%_
              (lambda (_%g115402115423%_)
                (if (gx#stx-pair? _%g115402115423%_)
                    (let ((_%e115405115426%_ (gx#syntax-e _%g115402115423%_)))
                      (let ((_%hd115406115430%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115405115426%_)))
                            (_%tl115407115433%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115405115426%_))))
                        (if (gx#stx-pair? _%tl115407115433%_)
                            (let ((_%e115408115436%_
                                   (gx#syntax-e _%tl115407115433%_)))
                              (let ((_%hd115409115440%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115408115436%_)))
                                    (_%tl115410115443%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115408115436%_))))
                                (if (gx#stx-pair? _%tl115410115443%_)
                                    (let ((_%e115411115446%_
                                           (gx#syntax-e _%tl115410115443%_)))
                                      (let ((_%hd115412115450%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115411115446%_)))
                                            (_%tl115413115453%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115411115446%_))))
                                        (if (gx#stx-null? _%tl115413115453%_)
                                            ((lambda (_%g115403115456%_
                                                      _%g115404115458%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g115404115458%_ '()))
                   (cons _%g115403115456%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd115412115450%_
                                             _%hd115409115440%_)
                                            (_%g115401115419%_
                                             _%g115402115423%_))))
                                    (_%g115401115419%_ _%g115402115423%_))))
                            (_%g115401115419%_ _%g115402115423%_))))
                    (_%g115401115419%_ _%g115402115423%_)))))
        (_%g115400115474%_ _%$stx115397%_)))))

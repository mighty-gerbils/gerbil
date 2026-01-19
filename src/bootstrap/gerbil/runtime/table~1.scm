(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx99816%_)
      (let* ((_%g9982099838%_
              (lambda (_%g9982199834%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9982199834%_)))
             (_%g9981999894%_
              (lambda (_%g9982199842%_)
                (if (gx#stx-pair? _%g9982199842%_)
                    (let ((_%e9982499845%_ (gx#syntax-e _%g9982199842%_)))
                      (let ((_%hd9982599849%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9982499845%_)))
                            (_%tl9982699852%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9982499845%_))))
                        (if (gx#stx-pair? _%tl9982699852%_)
                            (let ((_%e9982799855%_
                                   (gx#syntax-e _%tl9982699852%_)))
                              (let ((_%hd9982899859%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9982799855%_)))
                                    (_%tl9982999862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9982799855%_))))
                                (if (gx#stx-pair? _%tl9982999862%_)
                                    (let ((_%e9983099865%_
                                           (gx#syntax-e _%tl9982999862%_)))
                                      (let ((_%hd9983199869%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9983099865%_)))
                                            (_%tl9983299872%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9983099865%_))))
                                        (if (gx#stx-null? _%tl9983299872%_)
                                            ((lambda (_%L99875%_ _%L99877%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%L99877%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%L99875%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9983199869%_
                                             _%hd9982899859%_)
                                            (_%g9982099838%_
                                             _%g9982199842%_))))
                                    (_%g9982099838%_ _%g9982199842%_))))
                            (_%g9982099838%_ _%g9982199842%_))))
                    (_%g9982099838%_ _%g9982199842%_)))))
        (_%g9981999894%_ _%$stx99816%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx99898%_)
      (let* ((_%g9990199923%_
              (lambda (_%g9990299919%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9990299919%_)))
             (_%g99900100236%_
              (lambda (_%g9990299927%_)
                (if (gx#stx-pair? _%g9990299927%_)
                    (let ((_%e9990699930%_ (gx#syntax-e _%g9990299927%_)))
                      (let ((_%hd9990799934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9990699930%_)))
                            (_%tl9990899937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9990699930%_))))
                        (if (gx#stx-pair? _%tl9990899937%_)
                            (let ((_%e9990999940%_
                                   (gx#syntax-e _%tl9990899937%_)))
                              (let ((_%hd9991099944%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9990999940%_)))
                                    (_%tl9991199947%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9990999940%_))))
                                (if (gx#stx-pair? _%tl9991199947%_)
                                    (let ((_%e9991299950%_
                                           (gx#syntax-e _%tl9991199947%_)))
                                      (let ((_%hd9991399954%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9991299950%_)))
                                            (_%tl9991499957%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9991299950%_))))
                                        (if (gx#stx-pair? _%tl9991499957%_)
                                            (let ((_%e9991599960%_
                                                   (gx#syntax-e
                                                    _%tl9991499957%_)))
                                              (let ((_%hd9991699964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9991599960%_)))
                                                    (_%tl9991799967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9991599960%_))))
                                                (if (gx#stx-null?
                                                     _%tl9991799967%_)
                                                    ((lambda (_%L99970%_
                                                              _%L99972%_
                                                              _%L99973%_)
                                                       (let* ((_%g99992100047%_
                                                               (lambda (_%g99993100043%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g99993100043%_)))
                      (_%g99991100232%_
                       (lambda (_%g99993100051%_)
                         (if (gx#stx-pair? _%g99993100051%_)
                             (let ((_%e100006100054%_
                                    (gx#syntax-e _%g99993100051%_)))
                               (let ((_%hd100007100058%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100006100054%_)))
                                     (_%tl100008100061%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100006100054%_))))
                                 (if (gx#stx-pair? _%tl100008100061%_)
                                     (let ((_%e100009100064%_
                                            (gx#syntax-e _%tl100008100061%_)))
                                       (let ((_%hd100010100068%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100009100064%_)))
                                             (_%tl100011100071%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100009100064%_))))
                                         (if (gx#stx-pair? _%tl100011100071%_)
                                             (let ((_%e100012100074%_
                                                    (gx#syntax-e
                                                     _%tl100011100071%_)))
                                               (let ((_%hd100013100078%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100012100074%_)))
                                                     (_%tl100014100081%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100012100074%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100014100081%_)
                                                     (let ((_%e100015100084%_
                                                            (gx#syntax-e
                                                             _%tl100014100081%_)))
                                                       (let ((_%hd100016100088%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100015100084%_)))
                     (_%tl100017100091%_
                      (let () (declare (not safe)) (##cdr _%e100015100084%_))))
                 (if (gx#stx-pair? _%tl100017100091%_)
                     (let ((_%e100018100094%_
                            (gx#syntax-e _%tl100017100091%_)))
                       (let ((_%hd100019100098%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100018100094%_)))
                             (_%tl100020100101%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100018100094%_))))
                         (if (gx#stx-pair? _%tl100020100101%_)
                             (let ((_%e100021100104%_
                                    (gx#syntax-e _%tl100020100101%_)))
                               (let ((_%hd100022100108%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100021100104%_)))
                                     (_%tl100023100111%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100021100104%_))))
                                 (if (gx#stx-pair? _%tl100023100111%_)
                                     (let ((_%e100024100114%_
                                            (gx#syntax-e _%tl100023100111%_)))
                                       (let ((_%hd100025100118%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100024100114%_)))
                                             (_%tl100026100121%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100024100114%_))))
                                         (if (gx#stx-pair? _%tl100026100121%_)
                                             (let ((_%e100027100124%_
                                                    (gx#syntax-e
                                                     _%tl100026100121%_)))
                                               (let ((_%hd100028100128%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e100027100124%_)))
                                                     (_%tl100029100131%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e100027100124%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl100029100131%_)
                                                     (let ((_%e100030100134%_
                                                            (gx#syntax-e
                                                             _%tl100029100131%_)))
                                                       (let ((_%hd100031100138%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e100030100134%_)))
                     (_%tl100032100141%_
                      (let () (declare (not safe)) (##cdr _%e100030100134%_))))
                 (if (gx#stx-pair? _%tl100032100141%_)
                     (let ((_%e100033100144%_
                            (gx#syntax-e _%tl100032100141%_)))
                       (let ((_%hd100034100148%_
                              (let ()
                                (declare (not safe))
                                (##car _%e100033100144%_)))
                             (_%tl100035100151%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e100033100144%_))))
                         (if (gx#stx-pair? _%tl100035100151%_)
                             (let ((_%e100036100154%_
                                    (gx#syntax-e _%tl100035100151%_)))
                               (let ((_%hd100037100158%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e100036100154%_)))
                                     (_%tl100038100161%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e100036100154%_))))
                                 (if (gx#stx-pair? _%tl100038100161%_)
                                     (let ((_%e100039100164%_
                                            (gx#syntax-e _%tl100038100161%_)))
                                       (let ((_%hd100040100168%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e100039100164%_)))
                                             (_%tl100041100171%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e100039100164%_))))
                                         (if (gx#stx-null? _%tl100041100171%_)
                                             ((lambda (_%L100174%_
                                                       _%L100176%_
                                                       _%L100177%_
                                                       _%L100178%_
                                                       _%L100179%_
                                                       _%L100180%_
                                                       _%L100181%_
                                                       _%L100182%_
                                                       _%L100183%_
                                                       _%L100184%_
                                                       _%L100185%_
                                                       _%L100186%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%L100186%_
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
                                                  (cons _%L99972%_
                                                        (cons _%L99970%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%L100185%_
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
                                                        (cons _%L99972%_
                                                              (cons _%L99970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%L100184%_
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
                                              (cons _%L99972%_
                                                    (cons _%L99970%_
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
                                            (cons (cons _%L100183%_
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
                            (cons (cons _%L100184%_
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
                                                  (cons (cons _%L100182%_
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
                                                          (cons _%L99972%_
                                                                (cons _%L99970%_
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
                                                        (cons (cons _%L100181%_
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
                            (cons (cons _%L100182%_
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
                                                              (cons (cons _%L100180%_
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
                                              (cons (cons _%L100181%_
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
                            (cons (cons _%L100179%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%L100178%_
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
                                    (cons _%L99972%_
                                          (cons _%L99970%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%L100178%_
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
                                  (cons (cons _%L100178%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%L100178%_
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
                                              (cons (cons _%L100179%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%L100178%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%L100177%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%L100178%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%L100178%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%L100178%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%L100176%_
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
                                                      (cons _%L99972%_
                                                            (cons _%L99970%_
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
                                                    (cons (cons _%L100174%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%L100176%_
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
                                              _%hd100040100168%_
                                              _%hd100037100158%_
                                              _%hd100034100148%_
                                              _%hd100031100138%_
                                              _%hd100028100128%_
                                              _%hd100025100118%_
                                              _%hd100022100108%_
                                              _%hd100019100098%_
                                              _%hd100016100088%_
                                              _%hd100013100078%_
                                              _%hd100010100068%_
                                              _%hd100007100058%_)
                                             (_%g99992100047%_
                                              _%g99993100051%_))))
                                     (_%g99992100047%_ _%g99993100051%_))))
                             (_%g99992100047%_ _%g99993100051%_))))
                     (_%g99992100047%_ _%g99993100051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g99992100047%_
                                                      _%g99993100051%_))))
                                             (_%g99992100047%_
                                              _%g99993100051%_))))
                                     (_%g99992100047%_ _%g99993100051%_))))
                             (_%g99992100047%_ _%g99993100051%_))))
                     (_%g99992100047%_ _%g99993100051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g99992100047%_
                                                      _%g99993100051%_))))
                                             (_%g99992100047%_
                                              _%g99993100051%_))))
                                     (_%g99992100047%_ _%g99993100051%_))))
                             (_%g99992100047%_ _%g99993100051%_)))))
                 (_%g99991100232%_
                  (list (gx#stx-identifier _%L99973%_ '"make-" _%L99973%_)
                        (gx#stx-identifier
                         _%L99973%_
                         '"make-"
                         _%L99973%_
                         '"/lock")
                        (gx#stx-identifier _%L99973%_ _%L99973%_ '"-ref")
                        (gx#stx-identifier _%L99973%_ _%L99973%_ '"-ref/lock")
                        (gx#stx-identifier
                         _%L99973%_
                         '"__"
                         _%L99973%_
                         '"-set!")
                        (gx#stx-identifier _%L99973%_ _%L99973%_ '"-set!")
                        (gx#stx-identifier _%L99973%_ _%L99973%_ '"-set!/lock")
                        (gx#stx-identifier
                         _%L99973%_
                         '"__"
                         _%L99973%_
                         '"-update!")
                        (gx#stx-identifier _%L99973%_ _%L99973%_ '"-update!")
                        (gx#stx-identifier
                         _%L99973%_
                         _%L99973%_
                         '"-update!/lock")
                        (gx#stx-identifier _%L99973%_ _%L99973%_ '"-delete!")
                        (gx#stx-identifier
                         _%L99973%_
                         _%L99973%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9991699964%_
                                                     _%hd9991399954%_
                                                     _%hd9991099944%_)
                                                    (_%g9990199923%_
                                                     _%g9990299927%_))))
                                            (_%g9990199923%_
                                             _%g9990299927%_))))
                                    (_%g9990199923%_ _%g9990299927%_))))
                            (_%g9990199923%_ _%g9990299927%_))))
                    (_%g9990199923%_ _%g9990299927%_)))))
        (_%g99900100236%_ _%stx99898%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx100240%_)
      (let* ((_%g100244100266%_
              (lambda (_%g100245100262%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100245100262%_)))
             (_%g100243100335%_
              (lambda (_%g100245100270%_)
                (if (gx#stx-pair? _%g100245100270%_)
                    (let ((_%e100249100273%_ (gx#syntax-e _%g100245100270%_)))
                      (let ((_%hd100250100277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100249100273%_)))
                            (_%tl100251100280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100249100273%_))))
                        (if (gx#stx-pair? _%tl100251100280%_)
                            (let ((_%e100252100283%_
                                   (gx#syntax-e _%tl100251100280%_)))
                              (let ((_%hd100253100287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100252100283%_)))
                                    (_%tl100254100290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100252100283%_))))
                                (if (gx#stx-pair? _%tl100254100290%_)
                                    (let ((_%e100255100293%_
                                           (gx#syntax-e _%tl100254100290%_)))
                                      (let ((_%hd100256100297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100255100293%_)))
                                            (_%tl100257100300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100255100293%_))))
                                        (if (gx#stx-pair? _%tl100257100300%_)
                                            (let ((_%e100258100303%_
                                                   (gx#syntax-e
                                                    _%tl100257100300%_)))
                                              (let ((_%hd100259100307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100258100303%_)))
                                                    (_%tl100260100310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100258100303%_))))
                                                (if (gx#stx-null?
                                                     _%tl100260100310%_)
                                                    ((lambda (_%L100313%_
                                                              _%L100315%_
                                                              _%L100316%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L100316%_
                                                   (cons _%L100315%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L100315%_ (cons _%L100315%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L100313%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd100259100307%_
                                                     _%hd100256100297%_
                                                     _%hd100253100287%_)
                                                    (_%g100244100266%_
                                                     _%g100245100270%_))))
                                            (_%g100244100266%_
                                             _%g100245100270%_))))
                                    (_%g100244100266%_ _%g100245100270%_))))
                            (_%g100244100266%_ _%g100245100270%_))))
                    (_%g100244100266%_ _%g100245100270%_)))))
        (_%g100243100335%_ _%$stx100240%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx100339%_)
      (let* ((_%g100343100377%_
              (lambda (_%g100344100373%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100344100373%_)))
             (_%g100342100488%_
              (lambda (_%g100344100381%_)
                (if (gx#stx-pair? _%g100344100381%_)
                    (let ((_%e100351100384%_ (gx#syntax-e _%g100344100381%_)))
                      (let ((_%hd100352100388%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100351100384%_)))
                            (_%tl100353100391%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100351100384%_))))
                        (if (gx#stx-pair? _%tl100353100391%_)
                            (let ((_%e100354100394%_
                                   (gx#syntax-e _%tl100353100391%_)))
                              (let ((_%hd100355100398%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100354100394%_)))
                                    (_%tl100356100401%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100354100394%_))))
                                (if (gx#stx-pair? _%tl100356100401%_)
                                    (let ((_%e100357100404%_
                                           (gx#syntax-e _%tl100356100401%_)))
                                      (let ((_%hd100358100408%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100357100404%_)))
                                            (_%tl100359100411%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100357100404%_))))
                                        (if (gx#stx-pair? _%tl100359100411%_)
                                            (let ((_%e100360100414%_
                                                   (gx#syntax-e
                                                    _%tl100359100411%_)))
                                              (let ((_%hd100361100418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100360100414%_)))
                                                    (_%tl100362100421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100360100414%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100362100421%_)
                                                    (let ((_%e100363100424%_
                                                           (gx#syntax-e
                                                            _%tl100362100421%_)))
                                                      (let ((_%hd100364100428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100363100424%_)))
                    (_%tl100365100431%_
                     (let () (declare (not safe)) (##cdr _%e100363100424%_))))
                (if (gx#stx-pair? _%tl100365100431%_)
                    (let ((_%e100366100434%_ (gx#syntax-e _%tl100365100431%_)))
                      (let ((_%hd100367100438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100366100434%_)))
                            (_%tl100368100441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100366100434%_))))
                        (if (gx#stx-pair? _%tl100368100441%_)
                            (let ((_%e100369100444%_
                                   (gx#syntax-e _%tl100368100441%_)))
                              (let ((_%hd100370100448%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100369100444%_)))
                                    (_%tl100371100451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100369100444%_))))
                                (if (gx#stx-null? _%tl100371100451%_)
                                    ((lambda (_%L100454%_
                                              _%L100456%_
                                              _%L100457%_
                                              _%L100458%_
                                              _%L100459%_
                                              _%L100460%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L100458%_
                                               (cons _%L100456%_ '()))
                                         (cons _%L100459%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L100460%_ '()))
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
                               (cons _%L100460%_
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
                                     (cons _%L100454%_ '()))
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
                                     (cons (cons (cons _%L100457%_
                                                       (cons _%L100456%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L100460%_
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
                                     _%hd100370100448%_
                                     _%hd100367100438%_
                                     _%hd100364100428%_
                                     _%hd100361100418%_
                                     _%hd100358100408%_
                                     _%hd100355100398%_)
                                    (_%g100343100377%_ _%g100344100381%_))))
                            (_%g100343100377%_ _%g100344100381%_))))
                    (_%g100343100377%_ _%g100344100381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100343100377%_
                                                     _%g100344100381%_))))
                                            (_%g100343100377%_
                                             _%g100344100381%_))))
                                    (_%g100343100377%_ _%g100344100381%_))))
                            (_%g100343100377%_ _%g100344100381%_))))
                    (_%g100343100377%_ _%g100344100381%_)))))
        (_%g100342100488%_ _%$stx100339%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx100492%_)
      (let* ((_%g100496100538%_
              (lambda (_%g100497100534%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100497100534%_)))
             (_%g100495100677%_
              (lambda (_%g100497100542%_)
                (if (gx#stx-pair? _%g100497100542%_)
                    (let ((_%e100506100545%_ (gx#syntax-e _%g100497100542%_)))
                      (let ((_%hd100507100549%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100506100545%_)))
                            (_%tl100508100552%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100506100545%_))))
                        (if (gx#stx-pair? _%tl100508100552%_)
                            (let ((_%e100509100555%_
                                   (gx#syntax-e _%tl100508100552%_)))
                              (let ((_%hd100510100559%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100509100555%_)))
                                    (_%tl100511100562%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100509100555%_))))
                                (if (gx#stx-pair? _%tl100511100562%_)
                                    (let ((_%e100512100565%_
                                           (gx#syntax-e _%tl100511100562%_)))
                                      (let ((_%hd100513100569%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100512100565%_)))
                                            (_%tl100514100572%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100512100565%_))))
                                        (if (gx#stx-pair? _%tl100514100572%_)
                                            (let ((_%e100515100575%_
                                                   (gx#syntax-e
                                                    _%tl100514100572%_)))
                                              (let ((_%hd100516100579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100515100575%_)))
                                                    (_%tl100517100582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100515100575%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100517100582%_)
                                                    (let ((_%e100518100585%_
                                                           (gx#syntax-e
                                                            _%tl100517100582%_)))
                                                      (let ((_%hd100519100589%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100518100585%_)))
                    (_%tl100520100592%_
                     (let () (declare (not safe)) (##cdr _%e100518100585%_))))
                (if (gx#stx-pair? _%tl100520100592%_)
                    (let ((_%e100521100595%_ (gx#syntax-e _%tl100520100592%_)))
                      (let ((_%hd100522100599%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100521100595%_)))
                            (_%tl100523100602%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100521100595%_))))
                        (if (gx#stx-pair? _%tl100523100602%_)
                            (let ((_%e100524100605%_
                                   (gx#syntax-e _%tl100523100602%_)))
                              (let ((_%hd100525100609%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100524100605%_)))
                                    (_%tl100526100612%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100524100605%_))))
                                (if (gx#stx-pair? _%tl100526100612%_)
                                    (let ((_%e100527100615%_
                                           (gx#syntax-e _%tl100526100612%_)))
                                      (let ((_%hd100528100619%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100527100615%_)))
                                            (_%tl100529100622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100527100615%_))))
                                        (if (gx#stx-pair? _%tl100529100622%_)
                                            (let ((_%e100530100625%_
                                                   (gx#syntax-e
                                                    _%tl100529100622%_)))
                                              (let ((_%hd100531100629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100530100625%_)))
                                                    (_%tl100532100632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100530100625%_))))
                                                (if (gx#stx-null?
                                                     _%tl100532100632%_)
                                                    ((lambda (_%L100635%_
                                                              _%L100637%_
                                                              _%L100638%_
                                                              _%L100639%_
                                                              _%L100640%_
                                                              _%L100641%_
                                                              _%L100642%_
                                                              _%L100643%_)
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
                                                   (cons (cons _%L100641%_
                                                               (cons _%L100639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L100642%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L100643%_
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
                                               (cons _%L100643%_
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
                                                       (cons _%L100643%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L100639%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L100643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L100638%_ '()))))
               (cons (cons _%L100635%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L100643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L100639%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L100643%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L100638%_ '()))))
                     (cons (cons _%L100637%_ '()) '()))))
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
                                                     (cons (cons (cons _%L100640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L100639%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L100643%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L100639%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L100643%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L100638%_ '()))))
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
                                                     _%hd100531100629%_
                                                     _%hd100528100619%_
                                                     _%hd100525100609%_
                                                     _%hd100522100599%_
                                                     _%hd100519100589%_
                                                     _%hd100516100579%_
                                                     _%hd100513100569%_
                                                     _%hd100510100559%_)
                                                    (_%g100496100538%_
                                                     _%g100497100542%_))))
                                            (_%g100496100538%_
                                             _%g100497100542%_))))
                                    (_%g100496100538%_ _%g100497100542%_))))
                            (_%g100496100538%_ _%g100497100542%_))))
                    (_%g100496100538%_ _%g100497100542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100496100538%_
                                                     _%g100497100542%_))))
                                            (_%g100496100538%_
                                             _%g100497100542%_))))
                                    (_%g100496100538%_ _%g100497100542%_))))
                            (_%g100496100538%_ _%g100497100542%_))))
                    (_%g100496100538%_ _%g100497100542%_)))))
        (_%g100495100677%_ _%$stx100492%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx100681%_)
      (let* ((_%g100685100731%_
              (lambda (_%g100686100727%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100686100727%_)))
             (_%g100684100884%_
              (lambda (_%g100686100735%_)
                (if (gx#stx-pair? _%g100686100735%_)
                    (let ((_%e100696100738%_ (gx#syntax-e _%g100686100735%_)))
                      (let ((_%hd100697100742%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100696100738%_)))
                            (_%tl100698100745%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100696100738%_))))
                        (if (gx#stx-pair? _%tl100698100745%_)
                            (let ((_%e100699100748%_
                                   (gx#syntax-e _%tl100698100745%_)))
                              (let ((_%hd100700100752%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100699100748%_)))
                                    (_%tl100701100755%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100699100748%_))))
                                (if (gx#stx-pair? _%tl100701100755%_)
                                    (let ((_%e100702100758%_
                                           (gx#syntax-e _%tl100701100755%_)))
                                      (let ((_%hd100703100762%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100702100758%_)))
                                            (_%tl100704100765%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100702100758%_))))
                                        (if (gx#stx-pair? _%tl100704100765%_)
                                            (let ((_%e100705100768%_
                                                   (gx#syntax-e
                                                    _%tl100704100765%_)))
                                              (let ((_%hd100706100772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100705100768%_)))
                                                    (_%tl100707100775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100705100768%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100707100775%_)
                                                    (let ((_%e100708100778%_
                                                           (gx#syntax-e
                                                            _%tl100707100775%_)))
                                                      (let ((_%hd100709100782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100708100778%_)))
                    (_%tl100710100785%_
                     (let () (declare (not safe)) (##cdr _%e100708100778%_))))
                (if (gx#stx-pair? _%tl100710100785%_)
                    (let ((_%e100711100788%_ (gx#syntax-e _%tl100710100785%_)))
                      (let ((_%hd100712100792%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100711100788%_)))
                            (_%tl100713100795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100711100788%_))))
                        (if (gx#stx-pair? _%tl100713100795%_)
                            (let ((_%e100714100798%_
                                   (gx#syntax-e _%tl100713100795%_)))
                              (let ((_%hd100715100802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100714100798%_)))
                                    (_%tl100716100805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100714100798%_))))
                                (if (gx#stx-pair? _%tl100716100805%_)
                                    (let ((_%e100717100808%_
                                           (gx#syntax-e _%tl100716100805%_)))
                                      (let ((_%hd100718100812%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100717100808%_)))
                                            (_%tl100719100815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100717100808%_))))
                                        (if (gx#stx-pair? _%tl100719100815%_)
                                            (let ((_%e100720100818%_
                                                   (gx#syntax-e
                                                    _%tl100719100815%_)))
                                              (let ((_%hd100721100822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100720100818%_)))
                                                    (_%tl100722100825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100720100818%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100722100825%_)
                                                    (let ((_%e100723100828%_
                                                           (gx#syntax-e
                                                            _%tl100722100825%_)))
                                                      (let ((_%hd100724100832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100723100828%_)))
                    (_%tl100725100835%_
                     (let () (declare (not safe)) (##cdr _%e100723100828%_))))
                (if (gx#stx-null? _%tl100725100835%_)
                    ((lambda (_%L100838%_
                              _%L100840%_
                              _%L100841%_
                              _%L100842%_
                              _%L100843%_
                              _%L100844%_
                              _%L100845%_
                              _%L100846%_
                              _%L100847%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L100845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L100843%_ '()))
                         (cons _%L100846%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L100847%_ '()))
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
                                                       (cons _%L100847%_
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
                                                               (cons _%L100847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L100843%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L100847%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L100842%_
                                                     (cons _%L100841%_ '()))
                                               '()))))
                       (cons (cons _%L100838%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L100847%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L100843%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L100847%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L100842%_
                                                           (cons _%L100841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L100840%_ '()) '()))))
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
                     (cons (cons (cons _%L100844%_
                                       (cons _%L100843%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L100847%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L100843%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L100847%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L100842%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L100847%_
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
                     _%hd100724100832%_
                     _%hd100721100822%_
                     _%hd100718100812%_
                     _%hd100715100802%_
                     _%hd100712100792%_
                     _%hd100709100782%_
                     _%hd100706100772%_
                     _%hd100703100762%_
                     _%hd100700100752%_)
                    (_%g100685100731%_ _%g100686100735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100685100731%_
                                                     _%g100686100735%_))))
                                            (_%g100685100731%_
                                             _%g100686100735%_))))
                                    (_%g100685100731%_ _%g100686100735%_))))
                            (_%g100685100731%_ _%g100686100735%_))))
                    (_%g100685100731%_ _%g100686100735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100685100731%_
                                                     _%g100686100735%_))))
                                            (_%g100685100731%_
                                             _%g100686100735%_))))
                                    (_%g100685100731%_ _%g100686100735%_))))
                            (_%g100685100731%_ _%g100686100735%_))))
                    (_%g100685100731%_ _%g100686100735%_)))))
        (_%g100684100884%_ _%$stx100681%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx100888%_)
      (let* ((_%g100892100926%_
              (lambda (_%g100893100922%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100893100922%_)))
             (_%g100891101037%_
              (lambda (_%g100893100930%_)
                (if (gx#stx-pair? _%g100893100930%_)
                    (let ((_%e100900100933%_ (gx#syntax-e _%g100893100930%_)))
                      (let ((_%hd100901100937%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100900100933%_)))
                            (_%tl100902100940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100900100933%_))))
                        (if (gx#stx-pair? _%tl100902100940%_)
                            (let ((_%e100903100943%_
                                   (gx#syntax-e _%tl100902100940%_)))
                              (let ((_%hd100904100947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100903100943%_)))
                                    (_%tl100905100950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100903100943%_))))
                                (if (gx#stx-pair? _%tl100905100950%_)
                                    (let ((_%e100906100953%_
                                           (gx#syntax-e _%tl100905100950%_)))
                                      (let ((_%hd100907100957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100906100953%_)))
                                            (_%tl100908100960%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100906100953%_))))
                                        (if (gx#stx-pair? _%tl100908100960%_)
                                            (let ((_%e100909100963%_
                                                   (gx#syntax-e
                                                    _%tl100908100960%_)))
                                              (let ((_%hd100910100967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100909100963%_)))
                                                    (_%tl100911100970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100909100963%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100911100970%_)
                                                    (let ((_%e100912100973%_
                                                           (gx#syntax-e
                                                            _%tl100911100970%_)))
                                                      (let ((_%hd100913100977%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100912100973%_)))
                    (_%tl100914100980%_
                     (let () (declare (not safe)) (##cdr _%e100912100973%_))))
                (if (gx#stx-pair? _%tl100914100980%_)
                    (let ((_%e100915100983%_ (gx#syntax-e _%tl100914100980%_)))
                      (let ((_%hd100916100987%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100915100983%_)))
                            (_%tl100917100990%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100915100983%_))))
                        (if (gx#stx-pair? _%tl100917100990%_)
                            (let ((_%e100918100993%_
                                   (gx#syntax-e _%tl100917100990%_)))
                              (let ((_%hd100919100997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100918100993%_)))
                                    (_%tl100920101000%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100918100993%_))))
                                (if (gx#stx-null? _%tl100920101000%_)
                                    ((lambda (_%L101003%_
                                              _%L101005%_
                                              _%L101006%_
                                              _%L101007%_
                                              _%L101008%_
                                              _%L101009%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L101007%_
                                               (cons _%L101005%_ '()))
                                         (cons _%L101008%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L101009%_ '()))
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
                               (cons _%L101009%_
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
                                     (cons (cons (cons _%L101006%_
                                                       (cons _%L101005%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L101009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L101009%_
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
                     (cons (cons _%L101003%_ '()) '()))))
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
                                     _%hd100919100997%_
                                     _%hd100916100987%_
                                     _%hd100913100977%_
                                     _%hd100910100967%_
                                     _%hd100907100957%_
                                     _%hd100904100947%_)
                                    (_%g100892100926%_ _%g100893100930%_))))
                            (_%g100892100926%_ _%g100893100930%_))))
                    (_%g100892100926%_ _%g100893100930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100892100926%_
                                                     _%g100893100930%_))))
                                            (_%g100892100926%_
                                             _%g100893100930%_))))
                                    (_%g100892100926%_ _%g100893100930%_))))
                            (_%g100892100926%_ _%g100893100930%_))))
                    (_%g100892100926%_ _%g100893100930%_)))))
        (_%g100891101037%_ _%$stx100888%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx101041%_)
      (let* ((_%g101045101063%_
              (lambda (_%g101046101059%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101046101059%_)))
             (_%g101044101118%_
              (lambda (_%g101046101067%_)
                (if (gx#stx-pair? _%g101046101067%_)
                    (let ((_%e101049101070%_ (gx#syntax-e _%g101046101067%_)))
                      (let ((_%hd101050101074%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101049101070%_)))
                            (_%tl101051101077%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101049101070%_))))
                        (if (gx#stx-pair? _%tl101051101077%_)
                            (let ((_%e101052101080%_
                                   (gx#syntax-e _%tl101051101077%_)))
                              (let ((_%hd101053101084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101052101080%_)))
                                    (_%tl101054101087%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101052101080%_))))
                                (if (gx#stx-pair? _%tl101054101087%_)
                                    (let ((_%e101055101090%_
                                           (gx#syntax-e _%tl101054101087%_)))
                                      (let ((_%hd101056101094%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101055101090%_)))
                                            (_%tl101057101097%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101055101090%_))))
                                        (if (gx#stx-null? _%tl101057101097%_)
                                            ((lambda (_%L101100%_ _%L101102%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%L101102%_ '()))
                   (cons _%L101100%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd101056101094%_
                                             _%hd101053101084%_)
                                            (_%g101045101063%_
                                             _%g101046101067%_))))
                                    (_%g101045101063%_ _%g101046101067%_))))
                            (_%g101045101063%_ _%g101046101067%_))))
                    (_%g101045101063%_ _%g101046101067%_)))))
        (_%g101044101118%_ _%$stx101041%_)))))

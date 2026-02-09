(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx113426%_)
      (let* ((_%g113430113448%_
              (lambda (_%g113431113444%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113431113444%_)))
             (_%g113429113504%_
              (lambda (_%g113431113452%_)
                (if (gx#stx-pair? _%g113431113452%_)
                    (let ((_%e113434113455%_ (gx#syntax-e _%g113431113452%_)))
                      (let ((_%hd113435113459%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113434113455%_)))
                            (_%tl113436113462%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113434113455%_))))
                        (if (gx#stx-pair? _%tl113436113462%_)
                            (let ((_%e113437113465%_
                                   (gx#syntax-e _%tl113436113462%_)))
                              (let ((_%hd113438113469%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113437113465%_)))
                                    (_%tl113439113472%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113437113465%_))))
                                (if (gx#stx-pair? _%tl113439113472%_)
                                    (let ((_%e113440113475%_
                                           (gx#syntax-e _%tl113439113472%_)))
                                      (let ((_%hd113441113479%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113440113475%_)))
                                            (_%tl113442113482%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113440113475%_))))
                                        (if (gx#stx-null? _%tl113442113482%_)
                                            ((lambda (_%g113432113485%_
                                                      _%g113433113487%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lock)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-lock)
                                     (cons _%g113433113487%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                               (cons (gx#datum->syntax '#f 'lock)
                                     (cons _%g113432113485%_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd113441113479%_
                                             _%hd113438113469%_)
                                            (_%g113430113448%_
                                             _%g113431113452%_))))
                                    (_%g113430113448%_ _%g113431113452%_))))
                            (_%g113430113448%_ _%g113431113452%_))))
                    (_%g113430113448%_ _%g113431113452%_)))))
        (_%g113429113504%_ _%$stx113426%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx113508%_)
      (let* ((_%g113511113533%_
              (lambda (_%g113512113529%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113512113529%_)))
             (_%g113510113846%_
              (lambda (_%g113512113537%_)
                (if (gx#stx-pair? _%g113512113537%_)
                    (let ((_%e113516113540%_ (gx#syntax-e _%g113512113537%_)))
                      (let ((_%hd113517113544%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113516113540%_)))
                            (_%tl113518113547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113516113540%_))))
                        (if (gx#stx-pair? _%tl113518113547%_)
                            (let ((_%e113519113550%_
                                   (gx#syntax-e _%tl113518113547%_)))
                              (let ((_%hd113520113554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113519113550%_)))
                                    (_%tl113521113557%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113519113550%_))))
                                (if (gx#stx-pair? _%tl113521113557%_)
                                    (let ((_%e113522113560%_
                                           (gx#syntax-e _%tl113521113557%_)))
                                      (let ((_%hd113523113564%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113522113560%_)))
                                            (_%tl113524113567%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113522113560%_))))
                                        (if (gx#stx-pair? _%tl113524113567%_)
                                            (let ((_%e113525113570%_
                                                   (gx#syntax-e
                                                    _%tl113524113567%_)))
                                              (let ((_%hd113526113574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113525113570%_)))
                                                    (_%tl113527113577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113525113570%_))))
                                                (if (gx#stx-null?
                                                     _%tl113527113577%_)
                                                    ((lambda (_%g113513113580%_
                                                              _%g113514113582%_
                                                              _%g113515113583%_)
                                                       (let* ((_%g113602113657%_
                                                               (lambda (_%g113603113653%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113603113653%_)))
                      (_%g113601113842%_
                       (lambda (_%g113603113661%_)
                         (if (gx#stx-pair? _%g113603113661%_)
                             (let ((_%e113616113664%_
                                    (gx#syntax-e _%g113603113661%_)))
                               (let ((_%hd113617113668%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e113616113664%_)))
                                     (_%tl113618113671%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e113616113664%_))))
                                 (if (gx#stx-pair? _%tl113618113671%_)
                                     (let ((_%e113619113674%_
                                            (gx#syntax-e _%tl113618113671%_)))
                                       (let ((_%hd113620113678%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e113619113674%_)))
                                             (_%tl113621113681%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e113619113674%_))))
                                         (if (gx#stx-pair? _%tl113621113681%_)
                                             (let ((_%e113622113684%_
                                                    (gx#syntax-e
                                                     _%tl113621113681%_)))
                                               (let ((_%hd113623113688%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113622113684%_)))
                                                     (_%tl113624113691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113622113684%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113624113691%_)
                                                     (let ((_%e113625113694%_
                                                            (gx#syntax-e
                                                             _%tl113624113691%_)))
                                                       (let ((_%hd113626113698%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113625113694%_)))
                     (_%tl113627113701%_
                      (let () (declare (not safe)) (##cdr _%e113625113694%_))))
                 (if (gx#stx-pair? _%tl113627113701%_)
                     (let ((_%e113628113704%_
                            (gx#syntax-e _%tl113627113701%_)))
                       (let ((_%hd113629113708%_
                              (let ()
                                (declare (not safe))
                                (##car _%e113628113704%_)))
                             (_%tl113630113711%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e113628113704%_))))
                         (if (gx#stx-pair? _%tl113630113711%_)
                             (let ((_%e113631113714%_
                                    (gx#syntax-e _%tl113630113711%_)))
                               (let ((_%hd113632113718%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e113631113714%_)))
                                     (_%tl113633113721%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e113631113714%_))))
                                 (if (gx#stx-pair? _%tl113633113721%_)
                                     (let ((_%e113634113724%_
                                            (gx#syntax-e _%tl113633113721%_)))
                                       (let ((_%hd113635113728%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e113634113724%_)))
                                             (_%tl113636113731%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e113634113724%_))))
                                         (if (gx#stx-pair? _%tl113636113731%_)
                                             (let ((_%e113637113734%_
                                                    (gx#syntax-e
                                                     _%tl113636113731%_)))
                                               (let ((_%hd113638113738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113637113734%_)))
                                                     (_%tl113639113741%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113637113734%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113639113741%_)
                                                     (let ((_%e113640113744%_
                                                            (gx#syntax-e
                                                             _%tl113639113741%_)))
                                                       (let ((_%hd113641113748%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113640113744%_)))
                     (_%tl113642113751%_
                      (let () (declare (not safe)) (##cdr _%e113640113744%_))))
                 (if (gx#stx-pair? _%tl113642113751%_)
                     (let ((_%e113643113754%_
                            (gx#syntax-e _%tl113642113751%_)))
                       (let ((_%hd113644113758%_
                              (let ()
                                (declare (not safe))
                                (##car _%e113643113754%_)))
                             (_%tl113645113761%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e113643113754%_))))
                         (if (gx#stx-pair? _%tl113645113761%_)
                             (let ((_%e113646113764%_
                                    (gx#syntax-e _%tl113645113761%_)))
                               (let ((_%hd113647113768%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e113646113764%_)))
                                     (_%tl113648113771%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e113646113764%_))))
                                 (if (gx#stx-pair? _%tl113648113771%_)
                                     (let ((_%e113649113774%_
                                            (gx#syntax-e _%tl113648113771%_)))
                                       (let ((_%hd113650113778%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e113649113774%_)))
                                             (_%tl113651113781%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e113649113774%_))))
                                         (if (gx#stx-null? _%tl113651113781%_)
                                             ((lambda (_%g113604113784%_
                                                       _%g113605113786%_
                                                       _%g113606113787%_
                                                       _%g113607113788%_
                                                       _%g113608113789%_
                                                       _%g113609113790%_
                                                       _%g113610113791%_
                                                       _%g113611113792%_
                                                       _%g113612113793%_
                                                       _%g113613113794%_
                                                       _%g113614113795%_
                                                       _%g113615113796%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _%g113615113796%_
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
                                                  (cons _%g113514113582%_
                                                        (cons _%g113513113580%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g113614113795%_
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
                                                        (cons _%g113514113582%_
                                                              (cons _%g113513113580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'seed) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%g113613113794%_
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
                                              (cons _%g113514113582%_
                                                    (cons _%g113513113580%_
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
                                            (cons (cons _%g113612113793%_
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
                            (cons (cons _%g113613113794%_
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
                                                  (cons (cons _%g113611113792%_
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
                                                          (cons _%g113514113582%_
                                                                (cons _%g113513113580%_
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
                                                        (cons (cons _%g113610113791%_
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
                            (cons (cons _%g113611113792%_
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
                                                              (cons (cons _%g113609113790%_
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
                                              (cons (cons _%g113610113791%_
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
                            (cons (cons _%g113608113789%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%g113607113788%_
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
                                    (cons _%g113514113582%_
                                          (cons _%g113513113580%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      (cons _%g113607113788%_
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
                                  (cons (cons _%g113607113788%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%g113607113788%_
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
                                              (cons (cons _%g113608113789%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key)
                              (cons _%g113607113788%_
                                    (cons (gx#datum->syntax '#f 'default)
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%g113606113787%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%g113607113788%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'do-raw-table-lock)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (cons _%g113607113788%_
                                    (cons (gx#datum->syntax '#f 'tab)
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%g113607113788%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            '())))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%g113605113786%_
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
                                                      (cons _%g113514113582%_
                                                            (cons _%g113513113580%_
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
                                                    (cons (cons _%g113604113784%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'tab)
                              (cons (gx#datum->syntax '#f 'key) '())))
                  (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons _%g113605113786%_
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
                                              _%hd113650113778%_
                                              _%hd113647113768%_
                                              _%hd113644113758%_
                                              _%hd113641113748%_
                                              _%hd113638113738%_
                                              _%hd113635113728%_
                                              _%hd113632113718%_
                                              _%hd113629113708%_
                                              _%hd113626113698%_
                                              _%hd113623113688%_
                                              _%hd113620113678%_
                                              _%hd113617113668%_)
                                             (_%g113602113657%_
                                              _%g113603113661%_))))
                                     (_%g113602113657%_ _%g113603113661%_))))
                             (_%g113602113657%_ _%g113603113661%_))))
                     (_%g113602113657%_ _%g113603113661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113602113657%_
                                                      _%g113603113661%_))))
                                             (_%g113602113657%_
                                              _%g113603113661%_))))
                                     (_%g113602113657%_ _%g113603113661%_))))
                             (_%g113602113657%_ _%g113603113661%_))))
                     (_%g113602113657%_ _%g113603113661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113602113657%_
                                                      _%g113603113661%_))))
                                             (_%g113602113657%_
                                              _%g113603113661%_))))
                                     (_%g113602113657%_ _%g113603113661%_))))
                             (_%g113602113657%_ _%g113603113661%_)))))
                 (_%g113601113842%_
                  (list (gx#stx-identifier
                         _%g113515113583%_
                         '"make-"
                         _%g113515113583%_)
                        (gx#stx-identifier
                         _%g113515113583%_
                         '"make-"
                         _%g113515113583%_
                         '"/lock")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-ref")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-ref/lock")
                        (gx#stx-identifier
                         _%g113515113583%_
                         '"__"
                         _%g113515113583%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-set!")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-set!/lock")
                        (gx#stx-identifier
                         _%g113515113583%_
                         '"__"
                         _%g113515113583%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-update!")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-update!/lock")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-delete!")
                        (gx#stx-identifier
                         _%g113515113583%_
                         _%g113515113583%_
                         '"-delete!/lock")))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd113526113574%_
                                                     _%hd113523113564%_
                                                     _%hd113520113554%_)
                                                    (_%g113511113533%_
                                                     _%g113512113537%_))))
                                            (_%g113511113533%_
                                             _%g113512113537%_))))
                                    (_%g113511113533%_ _%g113512113537%_))))
                            (_%g113511113533%_ _%g113512113537%_))))
                    (_%g113511113533%_ _%g113512113537%_)))))
        (_%g113510113846%_ _%stx113508%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx113850%_)
      (let* ((_%g113854113876%_
              (lambda (_%g113855113872%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113855113872%_)))
             (_%g113853113945%_
              (lambda (_%g113855113880%_)
                (if (gx#stx-pair? _%g113855113880%_)
                    (let ((_%e113859113883%_ (gx#syntax-e _%g113855113880%_)))
                      (let ((_%hd113860113887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113859113883%_)))
                            (_%tl113861113890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113859113883%_))))
                        (if (gx#stx-pair? _%tl113861113890%_)
                            (let ((_%e113862113893%_
                                   (gx#syntax-e _%tl113861113890%_)))
                              (let ((_%hd113863113897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113862113893%_)))
                                    (_%tl113864113900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113862113893%_))))
                                (if (gx#stx-pair? _%tl113864113900%_)
                                    (let ((_%e113865113903%_
                                           (gx#syntax-e _%tl113864113900%_)))
                                      (let ((_%hd113866113907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113865113903%_)))
                                            (_%tl113867113910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113865113903%_))))
                                        (if (gx#stx-pair? _%tl113867113910%_)
                                            (let ((_%e113868113913%_
                                                   (gx#syntax-e
                                                    _%tl113867113910%_)))
                                              (let ((_%hd113869113917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113868113913%_)))
                                                    (_%tl113870113920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113868113913%_))))
                                                (if (gx#stx-null?
                                                     _%tl113870113920%_)
                                                    ((lambda (_%g113856113923%_
                                                              _%g113857113925%_
                                                              _%g113858113926%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%g113858113926%_
                                                   (cons _%g113857113925%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%g113857113925%_
                                   (cons _%g113857113925%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%g113856113923%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd113869113917%_
                                                     _%hd113866113907%_
                                                     _%hd113863113897%_)
                                                    (_%g113854113876%_
                                                     _%g113855113880%_))))
                                            (_%g113854113876%_
                                             _%g113855113880%_))))
                                    (_%g113854113876%_ _%g113855113880%_))))
                            (_%g113854113876%_ _%g113855113880%_))))
                    (_%g113854113876%_ _%g113855113880%_)))))
        (_%g113853113945%_ _%$stx113850%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx113949%_)
      (let* ((_%g113953113987%_
              (lambda (_%g113954113983%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g113954113983%_)))
             (_%g113952114098%_
              (lambda (_%g113954113991%_)
                (if (gx#stx-pair? _%g113954113991%_)
                    (let ((_%e113961113994%_ (gx#syntax-e _%g113954113991%_)))
                      (let ((_%hd113962113998%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113961113994%_)))
                            (_%tl113963114001%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113961113994%_))))
                        (if (gx#stx-pair? _%tl113963114001%_)
                            (let ((_%e113964114004%_
                                   (gx#syntax-e _%tl113963114001%_)))
                              (let ((_%hd113965114008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113964114004%_)))
                                    (_%tl113966114011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113964114004%_))))
                                (if (gx#stx-pair? _%tl113966114011%_)
                                    (let ((_%e113967114014%_
                                           (gx#syntax-e _%tl113966114011%_)))
                                      (let ((_%hd113968114018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e113967114014%_)))
                                            (_%tl113969114021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e113967114014%_))))
                                        (if (gx#stx-pair? _%tl113969114021%_)
                                            (let ((_%e113970114024%_
                                                   (gx#syntax-e
                                                    _%tl113969114021%_)))
                                              (let ((_%hd113971114028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e113970114024%_)))
                                                    (_%tl113972114031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e113970114024%_))))
                                                (if (gx#stx-pair?
                                                     _%tl113972114031%_)
                                                    (let ((_%e113973114034%_
                                                           (gx#syntax-e
                                                            _%tl113972114031%_)))
                                                      (let ((_%hd113974114038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e113973114034%_)))
                    (_%tl113975114041%_
                     (let () (declare (not safe)) (##cdr _%e113973114034%_))))
                (if (gx#stx-pair? _%tl113975114041%_)
                    (let ((_%e113976114044%_ (gx#syntax-e _%tl113975114041%_)))
                      (let ((_%hd113977114048%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113976114044%_)))
                            (_%tl113978114051%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113976114044%_))))
                        (if (gx#stx-pair? _%tl113978114051%_)
                            (let ((_%e113979114054%_
                                   (gx#syntax-e _%tl113978114051%_)))
                              (let ((_%hd113980114058%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e113979114054%_)))
                                    (_%tl113981114061%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e113979114054%_))))
                                (if (gx#stx-null? _%tl113981114061%_)
                                    ((lambda (_%g113955114064%_
                                              _%g113956114066%_
                                              _%g113957114067%_
                                              _%g113958114068%_
                                              _%g113959114069%_
                                              _%g113960114070%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g113958114068%_
                                               (cons _%g113956114066%_ '()))
                                         (cons _%g113959114069%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g113960114070%_ '()))
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
                               (cons _%g113960114070%_
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
                                     (cons _%g113955114064%_ '()))
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
                                     (cons (cons (cons _%g113957114067%_
                                                       (cons _%g113956114066%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%g113960114070%_
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
                                     _%hd113980114058%_
                                     _%hd113977114048%_
                                     _%hd113974114038%_
                                     _%hd113971114028%_
                                     _%hd113968114018%_
                                     _%hd113965114008%_)
                                    (_%g113953113987%_ _%g113954113991%_))))
                            (_%g113953113987%_ _%g113954113991%_))))
                    (_%g113953113987%_ _%g113954113991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113953113987%_
                                                     _%g113954113991%_))))
                                            (_%g113953113987%_
                                             _%g113954113991%_))))
                                    (_%g113953113987%_ _%g113954113991%_))))
                            (_%g113953113987%_ _%g113954113991%_))))
                    (_%g113953113987%_ _%g113954113991%_)))))
        (_%g113952114098%_ _%$stx113949%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx114102%_)
      (let* ((_%g114106114148%_
              (lambda (_%g114107114144%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114107114144%_)))
             (_%g114105114287%_
              (lambda (_%g114107114152%_)
                (if (gx#stx-pair? _%g114107114152%_)
                    (let ((_%e114116114155%_ (gx#syntax-e _%g114107114152%_)))
                      (let ((_%hd114117114159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114116114155%_)))
                            (_%tl114118114162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114116114155%_))))
                        (if (gx#stx-pair? _%tl114118114162%_)
                            (let ((_%e114119114165%_
                                   (gx#syntax-e _%tl114118114162%_)))
                              (let ((_%hd114120114169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114119114165%_)))
                                    (_%tl114121114172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114119114165%_))))
                                (if (gx#stx-pair? _%tl114121114172%_)
                                    (let ((_%e114122114175%_
                                           (gx#syntax-e _%tl114121114172%_)))
                                      (let ((_%hd114123114179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114122114175%_)))
                                            (_%tl114124114182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114122114175%_))))
                                        (if (gx#stx-pair? _%tl114124114182%_)
                                            (let ((_%e114125114185%_
                                                   (gx#syntax-e
                                                    _%tl114124114182%_)))
                                              (let ((_%hd114126114189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114125114185%_)))
                                                    (_%tl114127114192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114125114185%_))))
                                                (if (gx#stx-pair?
                                                     _%tl114127114192%_)
                                                    (let ((_%e114128114195%_
                                                           (gx#syntax-e
                                                            _%tl114127114192%_)))
                                                      (let ((_%hd114129114199%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e114128114195%_)))
                    (_%tl114130114202%_
                     (let () (declare (not safe)) (##cdr _%e114128114195%_))))
                (if (gx#stx-pair? _%tl114130114202%_)
                    (let ((_%e114131114205%_ (gx#syntax-e _%tl114130114202%_)))
                      (let ((_%hd114132114209%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114131114205%_)))
                            (_%tl114133114212%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114131114205%_))))
                        (if (gx#stx-pair? _%tl114133114212%_)
                            (let ((_%e114134114215%_
                                   (gx#syntax-e _%tl114133114212%_)))
                              (let ((_%hd114135114219%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114134114215%_)))
                                    (_%tl114136114222%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114134114215%_))))
                                (if (gx#stx-pair? _%tl114136114222%_)
                                    (let ((_%e114137114225%_
                                           (gx#syntax-e _%tl114136114222%_)))
                                      (let ((_%hd114138114229%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114137114225%_)))
                                            (_%tl114139114232%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114137114225%_))))
                                        (if (gx#stx-pair? _%tl114139114232%_)
                                            (let ((_%e114140114235%_
                                                   (gx#syntax-e
                                                    _%tl114139114232%_)))
                                              (let ((_%hd114141114239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114140114235%_)))
                                                    (_%tl114142114242%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114140114235%_))))
                                                (if (gx#stx-null?
                                                     _%tl114142114242%_)
                                                    ((lambda (_%g114108114245%_
                                                              _%g114109114247%_
                                                              _%g114110114248%_
                                                              _%g114111114249%_
                                                              _%g114112114250%_
                                                              _%g114113114251%_
                                                              _%g114114114252%_
                                                              _%g114115114253%_)
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
                                                   (cons (cons _%g114113114251%_
                                                               (cons _%g114111114249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g114114114252%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%g114115114253%_
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
                                               (cons _%g114115114253%_
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
                                                       (cons _%g114115114253%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%g114111114249%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g114115114253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%g114110114248%_ '()))))
               (cons (cons _%g114108114245%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g114115114253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%g114111114249%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g114115114253%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%g114110114248%_ '()))))
                     (cons (cons _%g114109114247%_ '()) '()))))
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
                                                     (cons (cons (cons _%g114112114250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g114111114249%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%g114115114253%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%g114111114249%_
                                                       '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%g114115114253%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%g114110114248%_ '()))))
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
                                                     _%hd114141114239%_
                                                     _%hd114138114229%_
                                                     _%hd114135114219%_
                                                     _%hd114132114209%_
                                                     _%hd114129114199%_
                                                     _%hd114126114189%_
                                                     _%hd114123114179%_
                                                     _%hd114120114169%_)
                                                    (_%g114106114148%_
                                                     _%g114107114152%_))))
                                            (_%g114106114148%_
                                             _%g114107114152%_))))
                                    (_%g114106114148%_ _%g114107114152%_))))
                            (_%g114106114148%_ _%g114107114152%_))))
                    (_%g114106114148%_ _%g114107114152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g114106114148%_
                                                     _%g114107114152%_))))
                                            (_%g114106114148%_
                                             _%g114107114152%_))))
                                    (_%g114106114148%_ _%g114107114152%_))))
                            (_%g114106114148%_ _%g114107114152%_))))
                    (_%g114106114148%_ _%g114107114152%_)))))
        (_%g114105114287%_ _%$stx114102%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx114291%_)
      (let* ((_%g114295114341%_
              (lambda (_%g114296114337%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114296114337%_)))
             (_%g114294114494%_
              (lambda (_%g114296114345%_)
                (if (gx#stx-pair? _%g114296114345%_)
                    (let ((_%e114306114348%_ (gx#syntax-e _%g114296114345%_)))
                      (let ((_%hd114307114352%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114306114348%_)))
                            (_%tl114308114355%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114306114348%_))))
                        (if (gx#stx-pair? _%tl114308114355%_)
                            (let ((_%e114309114358%_
                                   (gx#syntax-e _%tl114308114355%_)))
                              (let ((_%hd114310114362%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114309114358%_)))
                                    (_%tl114311114365%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114309114358%_))))
                                (if (gx#stx-pair? _%tl114311114365%_)
                                    (let ((_%e114312114368%_
                                           (gx#syntax-e _%tl114311114365%_)))
                                      (let ((_%hd114313114372%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114312114368%_)))
                                            (_%tl114314114375%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114312114368%_))))
                                        (if (gx#stx-pair? _%tl114314114375%_)
                                            (let ((_%e114315114378%_
                                                   (gx#syntax-e
                                                    _%tl114314114375%_)))
                                              (let ((_%hd114316114382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114315114378%_)))
                                                    (_%tl114317114385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114315114378%_))))
                                                (if (gx#stx-pair?
                                                     _%tl114317114385%_)
                                                    (let ((_%e114318114388%_
                                                           (gx#syntax-e
                                                            _%tl114317114385%_)))
                                                      (let ((_%hd114319114392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e114318114388%_)))
                    (_%tl114320114395%_
                     (let () (declare (not safe)) (##cdr _%e114318114388%_))))
                (if (gx#stx-pair? _%tl114320114395%_)
                    (let ((_%e114321114398%_ (gx#syntax-e _%tl114320114395%_)))
                      (let ((_%hd114322114402%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114321114398%_)))
                            (_%tl114323114405%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114321114398%_))))
                        (if (gx#stx-pair? _%tl114323114405%_)
                            (let ((_%e114324114408%_
                                   (gx#syntax-e _%tl114323114405%_)))
                              (let ((_%hd114325114412%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114324114408%_)))
                                    (_%tl114326114415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114324114408%_))))
                                (if (gx#stx-pair? _%tl114326114415%_)
                                    (let ((_%e114327114418%_
                                           (gx#syntax-e _%tl114326114415%_)))
                                      (let ((_%hd114328114422%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114327114418%_)))
                                            (_%tl114329114425%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114327114418%_))))
                                        (if (gx#stx-pair? _%tl114329114425%_)
                                            (let ((_%e114330114428%_
                                                   (gx#syntax-e
                                                    _%tl114329114425%_)))
                                              (let ((_%hd114331114432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114330114428%_)))
                                                    (_%tl114332114435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114330114428%_))))
                                                (if (gx#stx-pair?
                                                     _%tl114332114435%_)
                                                    (let ((_%e114333114438%_
                                                           (gx#syntax-e
                                                            _%tl114332114435%_)))
                                                      (let ((_%hd114334114442%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e114333114438%_)))
                    (_%tl114335114445%_
                     (let () (declare (not safe)) (##cdr _%e114333114438%_))))
                (if (gx#stx-null? _%tl114335114445%_)
                    ((lambda (_%g114297114448%_
                              _%g114298114450%_
                              _%g114299114451%_
                              _%g114300114452%_
                              _%g114301114453%_
                              _%g114302114454%_
                              _%g114303114455%_
                              _%g114304114456%_
                              _%g114305114457%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%g114303114455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g114301114453%_ '()))
                         (cons _%g114304114456%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%g114305114457%_ '()))
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
                                                       (cons _%g114305114457%_
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
                                                               (cons _%g114305114457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%g114301114453%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%g114305114457%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%g114300114452%_
                                                     (cons _%g114299114451%_
                                                           '()))
                                               '()))))
                       (cons (cons _%g114297114448%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%g114305114457%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%g114301114453%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%g114305114457%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%g114300114452%_
                                                           (cons _%g114299114451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%g114298114450%_ '()) '()))))
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
                     (cons (cons (cons _%g114302114454%_
                                       (cons _%g114301114453%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%g114305114457%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%g114301114453%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%g114305114457%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%g114300114452%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%g114305114457%_
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
                     _%hd114334114442%_
                     _%hd114331114432%_
                     _%hd114328114422%_
                     _%hd114325114412%_
                     _%hd114322114402%_
                     _%hd114319114392%_
                     _%hd114316114382%_
                     _%hd114313114372%_
                     _%hd114310114362%_)
                    (_%g114295114341%_ _%g114296114345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g114295114341%_
                                                     _%g114296114345%_))))
                                            (_%g114295114341%_
                                             _%g114296114345%_))))
                                    (_%g114295114341%_ _%g114296114345%_))))
                            (_%g114295114341%_ _%g114296114345%_))))
                    (_%g114295114341%_ _%g114296114345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g114295114341%_
                                                     _%g114296114345%_))))
                                            (_%g114295114341%_
                                             _%g114296114345%_))))
                                    (_%g114295114341%_ _%g114296114345%_))))
                            (_%g114295114341%_ _%g114296114345%_))))
                    (_%g114295114341%_ _%g114296114345%_)))))
        (_%g114294114494%_ _%$stx114291%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx114498%_)
      (let* ((_%g114502114536%_
              (lambda (_%g114503114532%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114503114532%_)))
             (_%g114501114647%_
              (lambda (_%g114503114540%_)
                (if (gx#stx-pair? _%g114503114540%_)
                    (let ((_%e114510114543%_ (gx#syntax-e _%g114503114540%_)))
                      (let ((_%hd114511114547%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114510114543%_)))
                            (_%tl114512114550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114510114543%_))))
                        (if (gx#stx-pair? _%tl114512114550%_)
                            (let ((_%e114513114553%_
                                   (gx#syntax-e _%tl114512114550%_)))
                              (let ((_%hd114514114557%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114513114553%_)))
                                    (_%tl114515114560%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114513114553%_))))
                                (if (gx#stx-pair? _%tl114515114560%_)
                                    (let ((_%e114516114563%_
                                           (gx#syntax-e _%tl114515114560%_)))
                                      (let ((_%hd114517114567%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114516114563%_)))
                                            (_%tl114518114570%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114516114563%_))))
                                        (if (gx#stx-pair? _%tl114518114570%_)
                                            (let ((_%e114519114573%_
                                                   (gx#syntax-e
                                                    _%tl114518114570%_)))
                                              (let ((_%hd114520114577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e114519114573%_)))
                                                    (_%tl114521114580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e114519114573%_))))
                                                (if (gx#stx-pair?
                                                     _%tl114521114580%_)
                                                    (let ((_%e114522114583%_
                                                           (gx#syntax-e
                                                            _%tl114521114580%_)))
                                                      (let ((_%hd114523114587%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e114522114583%_)))
                    (_%tl114524114590%_
                     (let () (declare (not safe)) (##cdr _%e114522114583%_))))
                (if (gx#stx-pair? _%tl114524114590%_)
                    (let ((_%e114525114593%_ (gx#syntax-e _%tl114524114590%_)))
                      (let ((_%hd114526114597%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114525114593%_)))
                            (_%tl114527114600%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114525114593%_))))
                        (if (gx#stx-pair? _%tl114527114600%_)
                            (let ((_%e114528114603%_
                                   (gx#syntax-e _%tl114527114600%_)))
                              (let ((_%hd114529114607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114528114603%_)))
                                    (_%tl114530114610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114528114603%_))))
                                (if (gx#stx-null? _%tl114530114610%_)
                                    ((lambda (_%g114504114613%_
                                              _%g114505114615%_
                                              _%g114506114616%_
                                              _%g114507114617%_
                                              _%g114508114618%_
                                              _%g114509114619%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%g114507114617%_
                                               (cons _%g114505114615%_ '()))
                                         (cons _%g114508114618%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%g114509114619%_ '()))
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
                               (cons _%g114509114619%_
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
                                     (cons (cons (cons _%g114506114616%_
                                                       (cons _%g114505114615%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%g114509114619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%g114509114619%_
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
                     (cons (cons _%g114504114613%_ '()) '()))))
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
                                     _%hd114529114607%_
                                     _%hd114526114597%_
                                     _%hd114523114587%_
                                     _%hd114520114577%_
                                     _%hd114517114567%_
                                     _%hd114514114557%_)
                                    (_%g114502114536%_ _%g114503114540%_))))
                            (_%g114502114536%_ _%g114503114540%_))))
                    (_%g114502114536%_ _%g114503114540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g114502114536%_
                                                     _%g114503114540%_))))
                                            (_%g114502114536%_
                                             _%g114503114540%_))))
                                    (_%g114502114536%_ _%g114503114540%_))))
                            (_%g114502114536%_ _%g114503114540%_))))
                    (_%g114502114536%_ _%g114503114540%_)))))
        (_%g114501114647%_ _%$stx114498%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx114651%_)
      (let* ((_%g114655114673%_
              (lambda (_%g114656114669%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g114656114669%_)))
             (_%g114654114728%_
              (lambda (_%g114656114677%_)
                (if (gx#stx-pair? _%g114656114677%_)
                    (let ((_%e114659114680%_ (gx#syntax-e _%g114656114677%_)))
                      (let ((_%hd114660114684%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114659114680%_)))
                            (_%tl114661114687%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114659114680%_))))
                        (if (gx#stx-pair? _%tl114661114687%_)
                            (let ((_%e114662114690%_
                                   (gx#syntax-e _%tl114661114687%_)))
                              (let ((_%hd114663114694%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e114662114690%_)))
                                    (_%tl114664114697%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e114662114690%_))))
                                (if (gx#stx-pair? _%tl114664114697%_)
                                    (let ((_%e114665114700%_
                                           (gx#syntax-e _%tl114664114697%_)))
                                      (let ((_%hd114666114704%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e114665114700%_)))
                                            (_%tl114667114707%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e114665114700%_))))
                                        (if (gx#stx-null? _%tl114667114707%_)
                                            ((lambda (_%g114657114710%_
                                                      _%g114658114712%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__do-inline-lock!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&gc-table-lock)
                         (cons _%g114658114712%_ '()))
                   (cons _%g114657114710%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd114666114704%_
                                             _%hd114663114694%_)
                                            (_%g114655114673%_
                                             _%g114656114677%_))))
                                    (_%g114655114673%_ _%g114656114677%_))))
                            (_%g114655114673%_ _%g114656114677%_))))
                    (_%g114655114673%_ _%g114656114677%_)))))
        (_%g114654114728%_ _%$stx114651%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx57864%_)
      (let* ((_%g5786857882%_
              (lambda (_%g5786957878%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5786957878%_)))
             (_%g5786757924%_
              (lambda (_%g5786957886%_)
                (if (gx#stx-pair? _%g5786957886%_)
                    (let ((_%e5787157889%_ (gx#syntax-e _%g5786957886%_)))
                      (let ((_%hd5787257893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5787157889%_)))
                            (_%tl5787357896%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5787157889%_))))
                        (if (gx#stx-pair? _%tl5787357896%_)
                            (let ((_%e5787457899%_
                                   (gx#syntax-e _%tl5787357896%_)))
                              (let ((_%hd5787557903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5787457899%_)))
                                    (_%tl5787657906%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5787457899%_))))
                                (if (gx#stx-null? _%tl5787657906%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%hd5787557903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%g5786857882%_ _%g5786957886%_))))
                            (_%g5786857882%_ _%g5786957886%_))))
                    (_%g5786857882%_ _%g5786957886%_)))))
        (_%g5786757924%_ _%$stx57864%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx57928%_)
      (let* ((_%g5793257950%_
              (lambda (_%g5793357946%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5793357946%_)))
             (_%g5793158005%_
              (lambda (_%g5793357954%_)
                (if (gx#stx-pair? _%g5793357954%_)
                    (let ((_%e5793657957%_ (gx#syntax-e _%g5793357954%_)))
                      (let ((_%hd5793757961%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5793657957%_)))
                            (_%tl5793857964%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5793657957%_))))
                        (if (gx#stx-pair? _%tl5793857964%_)
                            (let ((_%e5793957967%_
                                   (gx#syntax-e _%tl5793857964%_)))
                              (let ((_%hd5794057971%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5793957967%_)))
                                    (_%tl5794157974%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5793957967%_))))
                                (if (gx#stx-pair? _%tl5794157974%_)
                                    (let ((_%e5794257977%_
                                           (gx#syntax-e _%tl5794157974%_)))
                                      (let ((_%hd5794357981%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5794257977%_)))
                                            (_%tl5794457984%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5794257977%_))))
                                        (if (gx#stx-null? _%tl5794457984%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx>=)
                                              (cons (gx#datum->syntax '#f 'o)
                                                    (cons _%hd5794057971%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%hd5794357981%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5793257950%_
                                             _%g5793357954%_))))
                                    (_%g5793257950%_ _%g5793357954%_))))
                            (_%g5793257950%_ _%g5793357954%_))))
                    (_%g5793257950%_ _%g5793357954%_)))))
        (_%g5793158005%_ _%$stx57928%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx58009%_)
      (let* ((_%g5801358031%_
              (lambda (_%g5801458027%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5801458027%_)))
             (_%g5801258086%_
              (lambda (_%g5801458035%_)
                (if (gx#stx-pair? _%g5801458035%_)
                    (let ((_%e5801758038%_ (gx#syntax-e _%g5801458035%_)))
                      (let ((_%hd5801858042%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5801758038%_)))
                            (_%tl5801958045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5801758038%_))))
                        (if (gx#stx-pair? _%tl5801958045%_)
                            (let ((_%e5802058048%_
                                   (gx#syntax-e _%tl5801958045%_)))
                              (let ((_%hd5802158052%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5802058048%_)))
                                    (_%tl5802258055%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5802058048%_))))
                                (if (gx#stx-pair? _%tl5802258055%_)
                                    (let ((_%e5802358058%_
                                           (gx#syntax-e _%tl5802258055%_)))
                                      (let ((_%hd5802458062%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5802358058%_)))
                                            (_%tl5802558065%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5802358058%_))))
                                        (if (gx#stx-null? _%tl5802558065%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx<=)
                                              (cons _%hd5802158052%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%hd5802458062%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5801358031%_
                                             _%g5801458035%_))))
                                    (_%g5801358031%_ _%g5801458035%_))))
                            (_%g5801358031%_ _%g5801458035%_))))
                    (_%g5801358031%_ _%g5801458035%_)))))
        (_%g5801258086%_ _%$stx58009%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx58090%_)
      (let* ((_%g5809458108%_
              (lambda (_%g5809558104%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5809558104%_)))
             (_%g5809358149%_
              (lambda (_%g5809558112%_)
                (if (gx#stx-pair? _%g5809558112%_)
                    (let ((_%e5809758115%_ (gx#syntax-e _%g5809558112%_)))
                      (let ((_%hd5809858119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5809758115%_)))
                            (_%tl5809958122%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5809758115%_))))
                        (if (gx#stx-pair? _%tl5809958122%_)
                            (let ((_%e5810058125%_
                                   (gx#syntax-e _%tl5809958122%_)))
                              (let ((_%hd5810158129%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5810058125%_)))
                                    (_%tl5810258132%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5810058125%_))))
                                (if (gx#stx-null? _%tl5810258132%_)
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons (gx#datum->syntax '#f 'o)
                                                      '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'list?)
                                (cons (gx#datum->syntax '#f 'o) '()))
                          (cons (cons (gx#datum->syntax '#f 'andmap)
                                      (cons _%hd5810158129%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%g5809458108%_ _%g5809558112%_))))
                            (_%g5809458108%_ _%g5809558112%_))))
                    (_%g5809458108%_ _%g5809558112%_)))))
        (_%g5809358149%_ _%$stx58090%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx58153%_)
      (let* ((_%g5815758177%_
              (lambda (_%g5815858173%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5815858173%_)))
             (_%g5815658246%_
              (lambda (_%g5815858181%_)
                (if (gx#stx-pair? _%g5815858181%_)
                    (let ((_%e5816058184%_ (gx#syntax-e _%g5815858181%_)))
                      (let ((_%hd5816158188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5816058184%_)))
                            (_%tl5816258191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5816058184%_))))
                        (if (gx#stx-pair/null? _%tl5816258191%_)
                            (let ((_g101376_
                                   (gx#syntax-split-splice
                                    _%tl5816258191%_
                                    '0)))
                              (begin
                                (let ((_g101377_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101376_)
                                             (##values-length _g101376_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101377_ 2)))
                                      (error "Context expects 2 values"
                                             _g101377_)))
                                (let ((_%target5816358194%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101376_ 0)))
                                      (_%tl5816558197%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101376_ 1))))
                                  (if (gx#stx-null? _%tl5816558197%_)
                                      (letrec ((_%loop5816658200%_
                                                (lambda (_%hd5816458204%_
                                                         _%val5817058207%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5816458204%_)
                                                      (let ((_%e5816758209%_
                                                             (gx#syntax-e
                                                              _%hd5816458204%_)))
                                                        (let ((_%lp-hd5816858213%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5816758209%_)))
                      (_%lp-tl5816958216%_
                       (let () (declare (not safe)) (##cdr _%e5816758209%_))))
                  (_%loop5816658200%_
                   _%lp-tl5816958216%_
                   (cons _%lp-hd5816858213%_ _%val5817058207%_))))
              (let ((_%val5817158219%_ (reverse _%val5817058207%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%g5823758240%_
                                                        _%g5823858243%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%g5823758240%_ '()))
                                 '())))
               _%g5823858243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%val5817158219%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5816658200%_
                                         _%target5816358194%_
                                         '()))
                                      (_%g5815758177%_ _%g5815858181%_)))))
                            (_%g5815758177%_ _%g5815858181%_))))
                    (_%g5815758177%_ _%g5815858181%_)))))
        (_%g5815658246%_ _%$stx58153%_)))))

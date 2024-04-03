(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51306%_)
      (let* ((_%g5131051324%_
              (lambda (_%g5131151320%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5131151320%_)))
             (_%g5130951366%_
              (lambda (_%g5131151328%_)
                (if (gx#stx-pair? _%g5131151328%_)
                    (let ((_%e5131551331%_ (gx#syntax-e _%g5131151328%_)))
                      (let ((_%hd5131451335%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5131551331%_)))
                            (_%tl5131351338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5131551331%_))))
                        (if (gx#stx-pair? _%tl5131351338%_)
                            (let ((_%e5131851341%_
                                   (gx#syntax-e _%tl5131351338%_)))
                              (let ((_%hd5131751345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5131851341%_)))
                                    (_%tl5131651348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5131851341%_))))
                                (if (gx#stx-null? _%tl5131651348%_)
                                    ((lambda (_%L51351%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5131751345%_)
                                    (_%g5131051324%_ _%g5131151328%_))))
                            (_%g5131051324%_ _%g5131151328%_))))
                    (_%g5131051324%_ _%g5131151328%_)))))
        (_%g5130951366%_ _%$stx51306%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51370%_)
      (let* ((_%g5137451392%_
              (lambda (_%g5137551388%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5137551388%_)))
             (_%g5137351447%_
              (lambda (_%g5137551396%_)
                (if (gx#stx-pair? _%g5137551396%_)
                    (let ((_%e5138051399%_ (gx#syntax-e _%g5137551396%_)))
                      (let ((_%hd5137951403%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5138051399%_)))
                            (_%tl5137851406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5138051399%_))))
                        (if (gx#stx-pair? _%tl5137851406%_)
                            (let ((_%e5138351409%_
                                   (gx#syntax-e _%tl5137851406%_)))
                              (let ((_%hd5138251413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5138351409%_)))
                                    (_%tl5138151416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5138351409%_))))
                                (if (gx#stx-pair? _%tl5138151416%_)
                                    (let ((_%e5138651419%_
                                           (gx#syntax-e _%tl5138151416%_)))
                                      (let ((_%hd5138551423%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5138651419%_)))
                                            (_%tl5138451426%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5138651419%_))))
                                        (if (gx#stx-null? _%tl5138451426%_)
                                            ((lambda (_%L51429%_ _%L51431%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%L51431%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5138551423%_
                                             _%hd5138251413%_)
                                            (_%g5137451392%_
                                             _%g5137551396%_))))
                                    (_%g5137451392%_ _%g5137551396%_))))
                            (_%g5137451392%_ _%g5137551396%_))))
                    (_%g5137451392%_ _%g5137551396%_)))))
        (_%g5137351447%_ _%$stx51370%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51451%_)
      (let* ((_%g5145551473%_
              (lambda (_%g5145651469%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5145651469%_)))
             (_%g5145451528%_
              (lambda (_%g5145651477%_)
                (if (gx#stx-pair? _%g5145651477%_)
                    (let ((_%e5146151480%_ (gx#syntax-e _%g5145651477%_)))
                      (let ((_%hd5146051484%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5146151480%_)))
                            (_%tl5145951487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5146151480%_))))
                        (if (gx#stx-pair? _%tl5145951487%_)
                            (let ((_%e5146451490%_
                                   (gx#syntax-e _%tl5145951487%_)))
                              (let ((_%hd5146351494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5146451490%_)))
                                    (_%tl5146251497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5146451490%_))))
                                (if (gx#stx-pair? _%tl5146251497%_)
                                    (let ((_%e5146751500%_
                                           (gx#syntax-e _%tl5146251497%_)))
                                      (let ((_%hd5146651504%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5146751500%_)))
                                            (_%tl5146551507%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5146751500%_))))
                                        (if (gx#stx-null? _%tl5146551507%_)
                                            ((lambda (_%L51510%_ _%L51512%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%L51512%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5146651504%_
                                             _%hd5146351494%_)
                                            (_%g5145551473%_
                                             _%g5145651477%_))))
                                    (_%g5145551473%_ _%g5145651477%_))))
                            (_%g5145551473%_ _%g5145651477%_))))
                    (_%g5145551473%_ _%g5145651477%_)))))
        (_%g5145451528%_ _%$stx51451%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51532%_)
      (let* ((_%g5153651550%_
              (lambda (_%g5153751546%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5153751546%_)))
             (_%g5153551591%_
              (lambda (_%g5153751554%_)
                (if (gx#stx-pair? _%g5153751554%_)
                    (let ((_%e5154151557%_ (gx#syntax-e _%g5153751554%_)))
                      (let ((_%hd5154051561%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5154151557%_)))
                            (_%tl5153951564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5154151557%_))))
                        (if (gx#stx-pair? _%tl5153951564%_)
                            (let ((_%e5154451567%_
                                   (gx#syntax-e _%tl5153951564%_)))
                              (let ((_%hd5154351571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5154451567%_)))
                                    (_%tl5154251574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5154451567%_))))
                                (if (gx#stx-null? _%tl5154251574%_)
                                    ((lambda (_%L51577%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
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
                                         (cons _%L51577%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5154351571%_)
                                    (_%g5153651550%_ _%g5153751554%_))))
                            (_%g5153651550%_ _%g5153751554%_))))
                    (_%g5153651550%_ _%g5153751554%_)))))
        (_%g5153551591%_ _%$stx51532%_)))))

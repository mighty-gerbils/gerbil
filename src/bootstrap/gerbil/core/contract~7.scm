(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52099%_)
      (let* ((_%g5210352117%_
              (lambda (_%g5210452113%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5210452113%_)))
             (_%g5210252159%_
              (lambda (_%g5210452121%_)
                (if (gx#stx-pair? _%g5210452121%_)
                    (let ((_%e5210652124%_ (gx#syntax-e _%g5210452121%_)))
                      (let ((_%hd5210752128%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5210652124%_)))
                            (_%tl5210852131%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5210652124%_))))
                        (if (gx#stx-pair? _%tl5210852131%_)
                            (let ((_%e5210952134%_
                                   (gx#syntax-e _%tl5210852131%_)))
                              (let ((_%hd5211052138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5210952134%_)))
                                    (_%tl5211152141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5210952134%_))))
                                (if (gx#stx-null? _%tl5211152141%_)
                                    ((lambda (_%L52144%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5211052138%_)
                                    (_%g5210352117%_ _%g5210452121%_))))
                            (_%g5210352117%_ _%g5210452121%_))))
                    (_%g5210352117%_ _%g5210452121%_)))))
        (_%g5210252159%_ _%$stx52099%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52163%_)
      (let* ((_%g5216752185%_
              (lambda (_%g5216852181%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5216852181%_)))
             (_%g5216652240%_
              (lambda (_%g5216852189%_)
                (if (gx#stx-pair? _%g5216852189%_)
                    (let ((_%e5217152192%_ (gx#syntax-e _%g5216852189%_)))
                      (let ((_%hd5217252196%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5217152192%_)))
                            (_%tl5217352199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5217152192%_))))
                        (if (gx#stx-pair? _%tl5217352199%_)
                            (let ((_%e5217452202%_
                                   (gx#syntax-e _%tl5217352199%_)))
                              (let ((_%hd5217552206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5217452202%_)))
                                    (_%tl5217652209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5217452202%_))))
                                (if (gx#stx-pair? _%tl5217652209%_)
                                    (let ((_%e5217752212%_
                                           (gx#syntax-e _%tl5217652209%_)))
                                      (let ((_%hd5217852216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5217752212%_)))
                                            (_%tl5217952219%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5217752212%_))))
                                        (if (gx#stx-null? _%tl5217952219%_)
                                            ((lambda (_%L52222%_ _%L52224%_)
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
                                                       (cons _%L52224%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5217852216%_
                                             _%hd5217552206%_)
                                            (_%g5216752185%_
                                             _%g5216852189%_))))
                                    (_%g5216752185%_ _%g5216852189%_))))
                            (_%g5216752185%_ _%g5216852189%_))))
                    (_%g5216752185%_ _%g5216852189%_)))))
        (_%g5216652240%_ _%$stx52163%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52244%_)
      (let* ((_%g5224852266%_
              (lambda (_%g5224952262%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5224952262%_)))
             (_%g5224752321%_
              (lambda (_%g5224952270%_)
                (if (gx#stx-pair? _%g5224952270%_)
                    (let ((_%e5225252273%_ (gx#syntax-e _%g5224952270%_)))
                      (let ((_%hd5225352277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5225252273%_)))
                            (_%tl5225452280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5225252273%_))))
                        (if (gx#stx-pair? _%tl5225452280%_)
                            (let ((_%e5225552283%_
                                   (gx#syntax-e _%tl5225452280%_)))
                              (let ((_%hd5225652287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5225552283%_)))
                                    (_%tl5225752290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5225552283%_))))
                                (if (gx#stx-pair? _%tl5225752290%_)
                                    (let ((_%e5225852293%_
                                           (gx#syntax-e _%tl5225752290%_)))
                                      (let ((_%hd5225952297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5225852293%_)))
                                            (_%tl5226052300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5225852293%_))))
                                        (if (gx#stx-null? _%tl5226052300%_)
                                            ((lambda (_%L52303%_ _%L52305%_)
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
                                                 (cons _%L52305%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5225952297%_
                                             _%hd5225652287%_)
                                            (_%g5224852266%_
                                             _%g5224952270%_))))
                                    (_%g5224852266%_ _%g5224952270%_))))
                            (_%g5224852266%_ _%g5224952270%_))))
                    (_%g5224852266%_ _%g5224952270%_)))))
        (_%g5224752321%_ _%$stx52244%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52325%_)
      (let* ((_%g5232952343%_
              (lambda (_%g5233052339%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5233052339%_)))
             (_%g5232852384%_
              (lambda (_%g5233052347%_)
                (if (gx#stx-pair? _%g5233052347%_)
                    (let ((_%e5233252350%_ (gx#syntax-e _%g5233052347%_)))
                      (let ((_%hd5233352354%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5233252350%_)))
                            (_%tl5233452357%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5233252350%_))))
                        (if (gx#stx-pair? _%tl5233452357%_)
                            (let ((_%e5233552360%_
                                   (gx#syntax-e _%tl5233452357%_)))
                              (let ((_%hd5233652364%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5233552360%_)))
                                    (_%tl5233752367%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5233552360%_))))
                                (if (gx#stx-null? _%tl5233752367%_)
                                    ((lambda (_%L52370%_)
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
                                         (cons _%L52370%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5233652364%_)
                                    (_%g5232952343%_ _%g5233052347%_))))
                            (_%g5232952343%_ _%g5233052347%_))))
                    (_%g5232952343%_ _%g5233052347%_)))))
        (_%g5232852384%_ _%$stx52325%_)))))

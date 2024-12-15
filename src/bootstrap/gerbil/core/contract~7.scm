(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52101%_)
      (let* ((_%g5210552119%_
              (lambda (_%g5210652115%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5210652115%_)))
             (_%g5210452161%_
              (lambda (_%g5210652123%_)
                (if (gx#stx-pair? _%g5210652123%_)
                    (let ((_%e5210852126%_ (gx#syntax-e _%g5210652123%_)))
                      (let ((_%hd5210952130%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5210852126%_)))
                            (_%tl5211052133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5210852126%_))))
                        (if (gx#stx-pair? _%tl5211052133%_)
                            (let ((_%e5211152136%_
                                   (gx#syntax-e _%tl5211052133%_)))
                              (let ((_%hd5211252140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5211152136%_)))
                                    (_%tl5211352143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5211152136%_))))
                                (if (gx#stx-null? _%tl5211352143%_)
                                    ((lambda (_%L52146%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5211252140%_)
                                    (_%g5210552119%_ _%g5210652123%_))))
                            (_%g5210552119%_ _%g5210652123%_))))
                    (_%g5210552119%_ _%g5210652123%_)))))
        (_%g5210452161%_ _%$stx52101%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52165%_)
      (let* ((_%g5216952187%_
              (lambda (_%g5217052183%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5217052183%_)))
             (_%g5216852242%_
              (lambda (_%g5217052191%_)
                (if (gx#stx-pair? _%g5217052191%_)
                    (let ((_%e5217352194%_ (gx#syntax-e _%g5217052191%_)))
                      (let ((_%hd5217452198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5217352194%_)))
                            (_%tl5217552201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5217352194%_))))
                        (if (gx#stx-pair? _%tl5217552201%_)
                            (let ((_%e5217652204%_
                                   (gx#syntax-e _%tl5217552201%_)))
                              (let ((_%hd5217752208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5217652204%_)))
                                    (_%tl5217852211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5217652204%_))))
                                (if (gx#stx-pair? _%tl5217852211%_)
                                    (let ((_%e5217952214%_
                                           (gx#syntax-e _%tl5217852211%_)))
                                      (let ((_%hd5218052218%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5217952214%_)))
                                            (_%tl5218152221%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5217952214%_))))
                                        (if (gx#stx-null? _%tl5218152221%_)
                                            ((lambda (_%L52224%_ _%L52226%_)
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
                                                       (cons _%L52226%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5218052218%_
                                             _%hd5217752208%_)
                                            (_%g5216952187%_
                                             _%g5217052191%_))))
                                    (_%g5216952187%_ _%g5217052191%_))))
                            (_%g5216952187%_ _%g5217052191%_))))
                    (_%g5216952187%_ _%g5217052191%_)))))
        (_%g5216852242%_ _%$stx52165%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52246%_)
      (let* ((_%g5225052268%_
              (lambda (_%g5225152264%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5225152264%_)))
             (_%g5224952323%_
              (lambda (_%g5225152272%_)
                (if (gx#stx-pair? _%g5225152272%_)
                    (let ((_%e5225452275%_ (gx#syntax-e _%g5225152272%_)))
                      (let ((_%hd5225552279%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5225452275%_)))
                            (_%tl5225652282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5225452275%_))))
                        (if (gx#stx-pair? _%tl5225652282%_)
                            (let ((_%e5225752285%_
                                   (gx#syntax-e _%tl5225652282%_)))
                              (let ((_%hd5225852289%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5225752285%_)))
                                    (_%tl5225952292%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5225752285%_))))
                                (if (gx#stx-pair? _%tl5225952292%_)
                                    (let ((_%e5226052295%_
                                           (gx#syntax-e _%tl5225952292%_)))
                                      (let ((_%hd5226152299%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5226052295%_)))
                                            (_%tl5226252302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5226052295%_))))
                                        (if (gx#stx-null? _%tl5226252302%_)
                                            ((lambda (_%L52305%_ _%L52307%_)
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
                                                 (cons _%L52307%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5226152299%_
                                             _%hd5225852289%_)
                                            (_%g5225052268%_
                                             _%g5225152272%_))))
                                    (_%g5225052268%_ _%g5225152272%_))))
                            (_%g5225052268%_ _%g5225152272%_))))
                    (_%g5225052268%_ _%g5225152272%_)))))
        (_%g5224952323%_ _%$stx52246%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52327%_)
      (let* ((_%g5233152345%_
              (lambda (_%g5233252341%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5233252341%_)))
             (_%g5233052386%_
              (lambda (_%g5233252349%_)
                (if (gx#stx-pair? _%g5233252349%_)
                    (let ((_%e5233452352%_ (gx#syntax-e _%g5233252349%_)))
                      (let ((_%hd5233552356%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5233452352%_)))
                            (_%tl5233652359%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5233452352%_))))
                        (if (gx#stx-pair? _%tl5233652359%_)
                            (let ((_%e5233752362%_
                                   (gx#syntax-e _%tl5233652359%_)))
                              (let ((_%hd5233852366%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5233752362%_)))
                                    (_%tl5233952369%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5233752362%_))))
                                (if (gx#stx-null? _%tl5233952369%_)
                                    ((lambda (_%L52372%_)
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
                                         (cons _%L52372%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5233852366%_)
                                    (_%g5233152345%_ _%g5233252349%_))))
                            (_%g5233152345%_ _%g5233252349%_))))
                    (_%g5233152345%_ _%g5233252349%_)))))
        (_%g5233052386%_ _%$stx52327%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52105%_)
      (let* ((_%g5210952123%_
              (lambda (_%g5211052119%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5211052119%_)))
             (_%g5210852165%_
              (lambda (_%g5211052127%_)
                (if (gx#stx-pair? _%g5211052127%_)
                    (let ((_%e5211252130%_ (gx#syntax-e _%g5211052127%_)))
                      (let ((_%hd5211352134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5211252130%_)))
                            (_%tl5211452137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5211252130%_))))
                        (if (gx#stx-pair? _%tl5211452137%_)
                            (let ((_%e5211552140%_
                                   (gx#syntax-e _%tl5211452137%_)))
                              (let ((_%hd5211652144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5211552140%_)))
                                    (_%tl5211752147%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5211552140%_))))
                                (if (gx#stx-null? _%tl5211752147%_)
                                    ((lambda (_%L52150%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5211652144%_)
                                    (_%g5210952123%_ _%g5211052127%_))))
                            (_%g5210952123%_ _%g5211052127%_))))
                    (_%g5210952123%_ _%g5211052127%_)))))
        (_%g5210852165%_ _%$stx52105%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52169%_)
      (let* ((_%g5217352191%_
              (lambda (_%g5217452187%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5217452187%_)))
             (_%g5217252246%_
              (lambda (_%g5217452195%_)
                (if (gx#stx-pair? _%g5217452195%_)
                    (let ((_%e5217752198%_ (gx#syntax-e _%g5217452195%_)))
                      (let ((_%hd5217852202%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5217752198%_)))
                            (_%tl5217952205%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5217752198%_))))
                        (if (gx#stx-pair? _%tl5217952205%_)
                            (let ((_%e5218052208%_
                                   (gx#syntax-e _%tl5217952205%_)))
                              (let ((_%hd5218152212%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5218052208%_)))
                                    (_%tl5218252215%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5218052208%_))))
                                (if (gx#stx-pair? _%tl5218252215%_)
                                    (let ((_%e5218352218%_
                                           (gx#syntax-e _%tl5218252215%_)))
                                      (let ((_%hd5218452222%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5218352218%_)))
                                            (_%tl5218552225%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5218352218%_))))
                                        (if (gx#stx-null? _%tl5218552225%_)
                                            ((lambda (_%L52228%_ _%L52230%_)
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
                                                       (cons _%L52230%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5218452222%_
                                             _%hd5218152212%_)
                                            (_%g5217352191%_
                                             _%g5217452195%_))))
                                    (_%g5217352191%_ _%g5217452195%_))))
                            (_%g5217352191%_ _%g5217452195%_))))
                    (_%g5217352191%_ _%g5217452195%_)))))
        (_%g5217252246%_ _%$stx52169%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52250%_)
      (let* ((_%g5225452272%_
              (lambda (_%g5225552268%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5225552268%_)))
             (_%g5225352327%_
              (lambda (_%g5225552276%_)
                (if (gx#stx-pair? _%g5225552276%_)
                    (let ((_%e5225852279%_ (gx#syntax-e _%g5225552276%_)))
                      (let ((_%hd5225952283%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5225852279%_)))
                            (_%tl5226052286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5225852279%_))))
                        (if (gx#stx-pair? _%tl5226052286%_)
                            (let ((_%e5226152289%_
                                   (gx#syntax-e _%tl5226052286%_)))
                              (let ((_%hd5226252293%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5226152289%_)))
                                    (_%tl5226352296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5226152289%_))))
                                (if (gx#stx-pair? _%tl5226352296%_)
                                    (let ((_%e5226452299%_
                                           (gx#syntax-e _%tl5226352296%_)))
                                      (let ((_%hd5226552303%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5226452299%_)))
                                            (_%tl5226652306%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5226452299%_))))
                                        (if (gx#stx-null? _%tl5226652306%_)
                                            ((lambda (_%L52309%_ _%L52311%_)
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
                                                 (cons _%L52311%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5226552303%_
                                             _%hd5226252293%_)
                                            (_%g5225452272%_
                                             _%g5225552276%_))))
                                    (_%g5225452272%_ _%g5225552276%_))))
                            (_%g5225452272%_ _%g5225552276%_))))
                    (_%g5225452272%_ _%g5225552276%_)))))
        (_%g5225352327%_ _%$stx52250%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52331%_)
      (let* ((_%g5233552349%_
              (lambda (_%g5233652345%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5233652345%_)))
             (_%g5233452390%_
              (lambda (_%g5233652353%_)
                (if (gx#stx-pair? _%g5233652353%_)
                    (let ((_%e5233852356%_ (gx#syntax-e _%g5233652353%_)))
                      (let ((_%hd5233952360%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5233852356%_)))
                            (_%tl5234052363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5233852356%_))))
                        (if (gx#stx-pair? _%tl5234052363%_)
                            (let ((_%e5234152366%_
                                   (gx#syntax-e _%tl5234052363%_)))
                              (let ((_%hd5234252370%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5234152366%_)))
                                    (_%tl5234352373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5234152366%_))))
                                (if (gx#stx-null? _%tl5234352373%_)
                                    ((lambda (_%L52376%_)
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
                                         (cons _%L52376%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5234252370%_)
                                    (_%g5233552349%_ _%g5233652353%_))))
                            (_%g5233552349%_ _%g5233652353%_))))
                    (_%g5233552349%_ _%g5233652353%_)))))
        (_%g5233452390%_ _%$stx52331%_)))))

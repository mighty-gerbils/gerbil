(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52118%_)
      (let* ((_%g5212252136%_
              (lambda (_%g5212352132%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5212352132%_)))
             (_%g5212152178%_
              (lambda (_%g5212352140%_)
                (if (gx#stx-pair? _%g5212352140%_)
                    (let ((_%e5212552143%_ (gx#syntax-e _%g5212352140%_)))
                      (let ((_%hd5212652147%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5212552143%_)))
                            (_%tl5212752150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5212552143%_))))
                        (if (gx#stx-pair? _%tl5212752150%_)
                            (let ((_%e5212852153%_
                                   (gx#syntax-e _%tl5212752150%_)))
                              (let ((_%hd5212952157%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5212852153%_)))
                                    (_%tl5213052160%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5212852153%_))))
                                (if (gx#stx-null? _%tl5213052160%_)
                                    ((lambda (_%L52163%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5212952157%_)
                                    (_%g5212252136%_ _%g5212352140%_))))
                            (_%g5212252136%_ _%g5212352140%_))))
                    (_%g5212252136%_ _%g5212352140%_)))))
        (_%g5212152178%_ _%$stx52118%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52182%_)
      (let* ((_%g5218652204%_
              (lambda (_%g5218752200%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5218752200%_)))
             (_%g5218552259%_
              (lambda (_%g5218752208%_)
                (if (gx#stx-pair? _%g5218752208%_)
                    (let ((_%e5219052211%_ (gx#syntax-e _%g5218752208%_)))
                      (let ((_%hd5219152215%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5219052211%_)))
                            (_%tl5219252218%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5219052211%_))))
                        (if (gx#stx-pair? _%tl5219252218%_)
                            (let ((_%e5219352221%_
                                   (gx#syntax-e _%tl5219252218%_)))
                              (let ((_%hd5219452225%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5219352221%_)))
                                    (_%tl5219552228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5219352221%_))))
                                (if (gx#stx-pair? _%tl5219552228%_)
                                    (let ((_%e5219652231%_
                                           (gx#syntax-e _%tl5219552228%_)))
                                      (let ((_%hd5219752235%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5219652231%_)))
                                            (_%tl5219852238%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5219652231%_))))
                                        (if (gx#stx-null? _%tl5219852238%_)
                                            ((lambda (_%L52241%_ _%L52243%_)
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
                                                       (cons _%L52243%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5219752235%_
                                             _%hd5219452225%_)
                                            (_%g5218652204%_
                                             _%g5218752208%_))))
                                    (_%g5218652204%_ _%g5218752208%_))))
                            (_%g5218652204%_ _%g5218752208%_))))
                    (_%g5218652204%_ _%g5218752208%_)))))
        (_%g5218552259%_ _%$stx52182%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52263%_)
      (let* ((_%g5226752285%_
              (lambda (_%g5226852281%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5226852281%_)))
             (_%g5226652340%_
              (lambda (_%g5226852289%_)
                (if (gx#stx-pair? _%g5226852289%_)
                    (let ((_%e5227152292%_ (gx#syntax-e _%g5226852289%_)))
                      (let ((_%hd5227252296%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5227152292%_)))
                            (_%tl5227352299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5227152292%_))))
                        (if (gx#stx-pair? _%tl5227352299%_)
                            (let ((_%e5227452302%_
                                   (gx#syntax-e _%tl5227352299%_)))
                              (let ((_%hd5227552306%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5227452302%_)))
                                    (_%tl5227652309%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5227452302%_))))
                                (if (gx#stx-pair? _%tl5227652309%_)
                                    (let ((_%e5227752312%_
                                           (gx#syntax-e _%tl5227652309%_)))
                                      (let ((_%hd5227852316%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5227752312%_)))
                                            (_%tl5227952319%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5227752312%_))))
                                        (if (gx#stx-null? _%tl5227952319%_)
                                            ((lambda (_%L52322%_ _%L52324%_)
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
                                                 (cons _%L52324%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5227852316%_
                                             _%hd5227552306%_)
                                            (_%g5226752285%_
                                             _%g5226852289%_))))
                                    (_%g5226752285%_ _%g5226852289%_))))
                            (_%g5226752285%_ _%g5226852289%_))))
                    (_%g5226752285%_ _%g5226852289%_)))))
        (_%g5226652340%_ _%$stx52263%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52344%_)
      (let* ((_%g5234852362%_
              (lambda (_%g5234952358%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5234952358%_)))
             (_%g5234752403%_
              (lambda (_%g5234952366%_)
                (if (gx#stx-pair? _%g5234952366%_)
                    (let ((_%e5235152369%_ (gx#syntax-e _%g5234952366%_)))
                      (let ((_%hd5235252373%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5235152369%_)))
                            (_%tl5235352376%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5235152369%_))))
                        (if (gx#stx-pair? _%tl5235352376%_)
                            (let ((_%e5235452379%_
                                   (gx#syntax-e _%tl5235352376%_)))
                              (let ((_%hd5235552383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5235452379%_)))
                                    (_%tl5235652386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5235452379%_))))
                                (if (gx#stx-null? _%tl5235652386%_)
                                    ((lambda (_%L52389%_)
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
                                         (cons _%L52389%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5235552383%_)
                                    (_%g5234852362%_ _%g5234952366%_))))
                            (_%g5234852362%_ _%g5234952366%_))))
                    (_%g5234852362%_ _%g5234952366%_)))))
        (_%g5234752403%_ _%$stx52344%_)))))

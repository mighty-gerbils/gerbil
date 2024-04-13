(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52036%_)
      (let* ((_%g5204052054%_
              (lambda (_%g5204152050%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5204152050%_)))
             (_%g5203952096%_
              (lambda (_%g5204152058%_)
                (if (gx#stx-pair? _%g5204152058%_)
                    (let ((_%e5204352061%_ (gx#syntax-e _%g5204152058%_)))
                      (let ((_%hd5204452065%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5204352061%_)))
                            (_%tl5204552068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5204352061%_))))
                        (if (gx#stx-pair? _%tl5204552068%_)
                            (let ((_%e5204652071%_
                                   (gx#syntax-e _%tl5204552068%_)))
                              (let ((_%hd5204752075%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5204652071%_)))
                                    (_%tl5204852078%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5204652071%_))))
                                (if (gx#stx-null? _%tl5204852078%_)
                                    ((lambda (_%L52081%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5204752075%_)
                                    (_%g5204052054%_ _%g5204152058%_))))
                            (_%g5204052054%_ _%g5204152058%_))))
                    (_%g5204052054%_ _%g5204152058%_)))))
        (_%g5203952096%_ _%$stx52036%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52100%_)
      (let* ((_%g5210452122%_
              (lambda (_%g5210552118%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5210552118%_)))
             (_%g5210352177%_
              (lambda (_%g5210552126%_)
                (if (gx#stx-pair? _%g5210552126%_)
                    (let ((_%e5210852129%_ (gx#syntax-e _%g5210552126%_)))
                      (let ((_%hd5210952133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5210852129%_)))
                            (_%tl5211052136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5210852129%_))))
                        (if (gx#stx-pair? _%tl5211052136%_)
                            (let ((_%e5211152139%_
                                   (gx#syntax-e _%tl5211052136%_)))
                              (let ((_%hd5211252143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5211152139%_)))
                                    (_%tl5211352146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5211152139%_))))
                                (if (gx#stx-pair? _%tl5211352146%_)
                                    (let ((_%e5211452149%_
                                           (gx#syntax-e _%tl5211352146%_)))
                                      (let ((_%hd5211552153%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5211452149%_)))
                                            (_%tl5211652156%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5211452149%_))))
                                        (if (gx#stx-null? _%tl5211652156%_)
                                            ((lambda (_%L52159%_ _%L52161%_)
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
                                                       (cons _%L52161%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5211552153%_
                                             _%hd5211252143%_)
                                            (_%g5210452122%_
                                             _%g5210552126%_))))
                                    (_%g5210452122%_ _%g5210552126%_))))
                            (_%g5210452122%_ _%g5210552126%_))))
                    (_%g5210452122%_ _%g5210552126%_)))))
        (_%g5210352177%_ _%$stx52100%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52181%_)
      (let* ((_%g5218552203%_
              (lambda (_%g5218652199%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5218652199%_)))
             (_%g5218452258%_
              (lambda (_%g5218652207%_)
                (if (gx#stx-pair? _%g5218652207%_)
                    (let ((_%e5218952210%_ (gx#syntax-e _%g5218652207%_)))
                      (let ((_%hd5219052214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5218952210%_)))
                            (_%tl5219152217%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5218952210%_))))
                        (if (gx#stx-pair? _%tl5219152217%_)
                            (let ((_%e5219252220%_
                                   (gx#syntax-e _%tl5219152217%_)))
                              (let ((_%hd5219352224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5219252220%_)))
                                    (_%tl5219452227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5219252220%_))))
                                (if (gx#stx-pair? _%tl5219452227%_)
                                    (let ((_%e5219552230%_
                                           (gx#syntax-e _%tl5219452227%_)))
                                      (let ((_%hd5219652234%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5219552230%_)))
                                            (_%tl5219752237%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5219552230%_))))
                                        (if (gx#stx-null? _%tl5219752237%_)
                                            ((lambda (_%L52240%_ _%L52242%_)
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
                                                 (cons _%L52242%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5219652234%_
                                             _%hd5219352224%_)
                                            (_%g5218552203%_
                                             _%g5218652207%_))))
                                    (_%g5218552203%_ _%g5218652207%_))))
                            (_%g5218552203%_ _%g5218652207%_))))
                    (_%g5218552203%_ _%g5218652207%_)))))
        (_%g5218452258%_ _%$stx52181%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52262%_)
      (let* ((_%g5226652280%_
              (lambda (_%g5226752276%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5226752276%_)))
             (_%g5226552321%_
              (lambda (_%g5226752284%_)
                (if (gx#stx-pair? _%g5226752284%_)
                    (let ((_%e5226952287%_ (gx#syntax-e _%g5226752284%_)))
                      (let ((_%hd5227052291%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5226952287%_)))
                            (_%tl5227152294%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5226952287%_))))
                        (if (gx#stx-pair? _%tl5227152294%_)
                            (let ((_%e5227252297%_
                                   (gx#syntax-e _%tl5227152294%_)))
                              (let ((_%hd5227352301%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5227252297%_)))
                                    (_%tl5227452304%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5227252297%_))))
                                (if (gx#stx-null? _%tl5227452304%_)
                                    ((lambda (_%L52307%_)
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
                                         (cons _%L52307%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5227352301%_)
                                    (_%g5226652280%_ _%g5226752284%_))))
                            (_%g5226652280%_ _%g5226752284%_))))
                    (_%g5226652280%_ _%g5226752284%_)))))
        (_%g5226552321%_ _%$stx52262%_)))))

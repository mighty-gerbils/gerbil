(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52038%_)
      (let* ((_%g5204252056%_
              (lambda (_%g5204352052%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5204352052%_)))
             (_%g5204152098%_
              (lambda (_%g5204352060%_)
                (if (gx#stx-pair? _%g5204352060%_)
                    (let ((_%e5204552063%_ (gx#syntax-e _%g5204352060%_)))
                      (let ((_%hd5204652067%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5204552063%_)))
                            (_%tl5204752070%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5204552063%_))))
                        (if (gx#stx-pair? _%tl5204752070%_)
                            (let ((_%e5204852073%_
                                   (gx#syntax-e _%tl5204752070%_)))
                              (let ((_%hd5204952077%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5204852073%_)))
                                    (_%tl5205052080%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5204852073%_))))
                                (if (gx#stx-null? _%tl5205052080%_)
                                    ((lambda (_%L52083%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5204952077%_)
                                    (_%g5204252056%_ _%g5204352060%_))))
                            (_%g5204252056%_ _%g5204352060%_))))
                    (_%g5204252056%_ _%g5204352060%_)))))
        (_%g5204152098%_ _%$stx52038%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52102%_)
      (let* ((_%g5210652124%_
              (lambda (_%g5210752120%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5210752120%_)))
             (_%g5210552179%_
              (lambda (_%g5210752128%_)
                (if (gx#stx-pair? _%g5210752128%_)
                    (let ((_%e5211052131%_ (gx#syntax-e _%g5210752128%_)))
                      (let ((_%hd5211152135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5211052131%_)))
                            (_%tl5211252138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5211052131%_))))
                        (if (gx#stx-pair? _%tl5211252138%_)
                            (let ((_%e5211352141%_
                                   (gx#syntax-e _%tl5211252138%_)))
                              (let ((_%hd5211452145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5211352141%_)))
                                    (_%tl5211552148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5211352141%_))))
                                (if (gx#stx-pair? _%tl5211552148%_)
                                    (let ((_%e5211652151%_
                                           (gx#syntax-e _%tl5211552148%_)))
                                      (let ((_%hd5211752155%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5211652151%_)))
                                            (_%tl5211852158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5211652151%_))))
                                        (if (gx#stx-null? _%tl5211852158%_)
                                            ((lambda (_%L52161%_ _%L52163%_)
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
                                                       (cons _%L52163%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5211752155%_
                                             _%hd5211452145%_)
                                            (_%g5210652124%_
                                             _%g5210752128%_))))
                                    (_%g5210652124%_ _%g5210752128%_))))
                            (_%g5210652124%_ _%g5210752128%_))))
                    (_%g5210652124%_ _%g5210752128%_)))))
        (_%g5210552179%_ _%$stx52102%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52183%_)
      (let* ((_%g5218752205%_
              (lambda (_%g5218852201%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5218852201%_)))
             (_%g5218652260%_
              (lambda (_%g5218852209%_)
                (if (gx#stx-pair? _%g5218852209%_)
                    (let ((_%e5219152212%_ (gx#syntax-e _%g5218852209%_)))
                      (let ((_%hd5219252216%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5219152212%_)))
                            (_%tl5219352219%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5219152212%_))))
                        (if (gx#stx-pair? _%tl5219352219%_)
                            (let ((_%e5219452222%_
                                   (gx#syntax-e _%tl5219352219%_)))
                              (let ((_%hd5219552226%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5219452222%_)))
                                    (_%tl5219652229%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5219452222%_))))
                                (if (gx#stx-pair? _%tl5219652229%_)
                                    (let ((_%e5219752232%_
                                           (gx#syntax-e _%tl5219652229%_)))
                                      (let ((_%hd5219852236%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5219752232%_)))
                                            (_%tl5219952239%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5219752232%_))))
                                        (if (gx#stx-null? _%tl5219952239%_)
                                            ((lambda (_%L52242%_ _%L52244%_)
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
                                                 (cons _%L52244%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5219852236%_
                                             _%hd5219552226%_)
                                            (_%g5218752205%_
                                             _%g5218852209%_))))
                                    (_%g5218752205%_ _%g5218852209%_))))
                            (_%g5218752205%_ _%g5218852209%_))))
                    (_%g5218752205%_ _%g5218852209%_)))))
        (_%g5218652260%_ _%$stx52183%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52264%_)
      (let* ((_%g5226852282%_
              (lambda (_%g5226952278%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5226952278%_)))
             (_%g5226752323%_
              (lambda (_%g5226952286%_)
                (if (gx#stx-pair? _%g5226952286%_)
                    (let ((_%e5227152289%_ (gx#syntax-e _%g5226952286%_)))
                      (let ((_%hd5227252293%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5227152289%_)))
                            (_%tl5227352296%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5227152289%_))))
                        (if (gx#stx-pair? _%tl5227352296%_)
                            (let ((_%e5227452299%_
                                   (gx#syntax-e _%tl5227352296%_)))
                              (let ((_%hd5227552303%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5227452299%_)))
                                    (_%tl5227652306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5227452299%_))))
                                (if (gx#stx-null? _%tl5227652306%_)
                                    ((lambda (_%L52309%_)
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
                                         (cons _%L52309%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5227552303%_)
                                    (_%g5226852282%_ _%g5226952286%_))))
                            (_%g5226852282%_ _%g5226952286%_))))
                    (_%g5226852282%_ _%g5226952286%_)))))
        (_%g5226752323%_ _%$stx52264%_)))))

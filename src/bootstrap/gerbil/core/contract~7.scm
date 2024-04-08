(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51752%_)
      (let* ((_%g5175651770%_
              (lambda (_%g5175751766%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5175751766%_)))
             (_%g5175551812%_
              (lambda (_%g5175751774%_)
                (if (gx#stx-pair? _%g5175751774%_)
                    (let ((_%e5176151777%_ (gx#syntax-e _%g5175751774%_)))
                      (let ((_%hd5176051781%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5176151777%_)))
                            (_%tl5175951784%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5176151777%_))))
                        (if (gx#stx-pair? _%tl5175951784%_)
                            (let ((_%e5176451787%_
                                   (gx#syntax-e _%tl5175951784%_)))
                              (let ((_%hd5176351791%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5176451787%_)))
                                    (_%tl5176251794%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5176451787%_))))
                                (if (gx#stx-null? _%tl5176251794%_)
                                    ((lambda (_%L51797%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5176351791%_)
                                    (_%g5175651770%_ _%g5175751774%_))))
                            (_%g5175651770%_ _%g5175751774%_))))
                    (_%g5175651770%_ _%g5175751774%_)))))
        (_%g5175551812%_ _%$stx51752%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51816%_)
      (let* ((_%g5182051838%_
              (lambda (_%g5182151834%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5182151834%_)))
             (_%g5181951893%_
              (lambda (_%g5182151842%_)
                (if (gx#stx-pair? _%g5182151842%_)
                    (let ((_%e5182651845%_ (gx#syntax-e _%g5182151842%_)))
                      (let ((_%hd5182551849%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5182651845%_)))
                            (_%tl5182451852%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5182651845%_))))
                        (if (gx#stx-pair? _%tl5182451852%_)
                            (let ((_%e5182951855%_
                                   (gx#syntax-e _%tl5182451852%_)))
                              (let ((_%hd5182851859%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5182951855%_)))
                                    (_%tl5182751862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5182951855%_))))
                                (if (gx#stx-pair? _%tl5182751862%_)
                                    (let ((_%e5183251865%_
                                           (gx#syntax-e _%tl5182751862%_)))
                                      (let ((_%hd5183151869%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5183251865%_)))
                                            (_%tl5183051872%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5183251865%_))))
                                        (if (gx#stx-null? _%tl5183051872%_)
                                            ((lambda (_%L51875%_ _%L51877%_)
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
                                                       (cons _%L51877%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5183151869%_
                                             _%hd5182851859%_)
                                            (_%g5182051838%_
                                             _%g5182151842%_))))
                                    (_%g5182051838%_ _%g5182151842%_))))
                            (_%g5182051838%_ _%g5182151842%_))))
                    (_%g5182051838%_ _%g5182151842%_)))))
        (_%g5181951893%_ _%$stx51816%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51897%_)
      (let* ((_%g5190151919%_
              (lambda (_%g5190251915%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5190251915%_)))
             (_%g5190051974%_
              (lambda (_%g5190251923%_)
                (if (gx#stx-pair? _%g5190251923%_)
                    (let ((_%e5190751926%_ (gx#syntax-e _%g5190251923%_)))
                      (let ((_%hd5190651930%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5190751926%_)))
                            (_%tl5190551933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5190751926%_))))
                        (if (gx#stx-pair? _%tl5190551933%_)
                            (let ((_%e5191051936%_
                                   (gx#syntax-e _%tl5190551933%_)))
                              (let ((_%hd5190951940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5191051936%_)))
                                    (_%tl5190851943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5191051936%_))))
                                (if (gx#stx-pair? _%tl5190851943%_)
                                    (let ((_%e5191351946%_
                                           (gx#syntax-e _%tl5190851943%_)))
                                      (let ((_%hd5191251950%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5191351946%_)))
                                            (_%tl5191151953%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5191351946%_))))
                                        (if (gx#stx-null? _%tl5191151953%_)
                                            ((lambda (_%L51956%_ _%L51958%_)
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
                                                 (cons _%L51958%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5191251950%_
                                             _%hd5190951940%_)
                                            (_%g5190151919%_
                                             _%g5190251923%_))))
                                    (_%g5190151919%_ _%g5190251923%_))))
                            (_%g5190151919%_ _%g5190251923%_))))
                    (_%g5190151919%_ _%g5190251923%_)))))
        (_%g5190051974%_ _%$stx51897%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51978%_)
      (let* ((_%g5198251996%_
              (lambda (_%g5198351992%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5198351992%_)))
             (_%g5198152037%_
              (lambda (_%g5198352000%_)
                (if (gx#stx-pair? _%g5198352000%_)
                    (let ((_%e5198752003%_ (gx#syntax-e _%g5198352000%_)))
                      (let ((_%hd5198652007%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5198752003%_)))
                            (_%tl5198552010%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5198752003%_))))
                        (if (gx#stx-pair? _%tl5198552010%_)
                            (let ((_%e5199052013%_
                                   (gx#syntax-e _%tl5198552010%_)))
                              (let ((_%hd5198952017%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5199052013%_)))
                                    (_%tl5198852020%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5199052013%_))))
                                (if (gx#stx-null? _%tl5198852020%_)
                                    ((lambda (_%L52023%_)
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
                                         (cons _%L52023%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5198952017%_)
                                    (_%g5198251996%_ _%g5198352000%_))))
                            (_%g5198251996%_ _%g5198352000%_))))
                    (_%g5198251996%_ _%g5198352000%_)))))
        (_%g5198152037%_ _%$stx51978%_)))))

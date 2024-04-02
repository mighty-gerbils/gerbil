(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51290%_)
      (let* ((_%g5129451308%_
              (lambda (_%g5129551304%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5129551304%_)))
             (_%g5129351350%_
              (lambda (_%g5129551312%_)
                (if (gx#stx-pair? _%g5129551312%_)
                    (let ((_%e5129951315%_ (gx#syntax-e _%g5129551312%_)))
                      (let ((_%hd5129851319%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5129951315%_)))
                            (_%tl5129751322%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5129951315%_))))
                        (if (gx#stx-pair? _%tl5129751322%_)
                            (let ((_%e5130251325%_
                                   (gx#syntax-e _%tl5129751322%_)))
                              (let ((_%hd5130151329%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5130251325%_)))
                                    (_%tl5130051332%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5130251325%_))))
                                (if (gx#stx-null? _%tl5130051332%_)
                                    ((lambda (_%L51335%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5130151329%_)
                                    (_%g5129451308%_ _%g5129551312%_))))
                            (_%g5129451308%_ _%g5129551312%_))))
                    (_%g5129451308%_ _%g5129551312%_)))))
        (_%g5129351350%_ _%$stx51290%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51354%_)
      (let* ((_%g5135851376%_
              (lambda (_%g5135951372%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5135951372%_)))
             (_%g5135751431%_
              (lambda (_%g5135951380%_)
                (if (gx#stx-pair? _%g5135951380%_)
                    (let ((_%e5136451383%_ (gx#syntax-e _%g5135951380%_)))
                      (let ((_%hd5136351387%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5136451383%_)))
                            (_%tl5136251390%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5136451383%_))))
                        (if (gx#stx-pair? _%tl5136251390%_)
                            (let ((_%e5136751393%_
                                   (gx#syntax-e _%tl5136251390%_)))
                              (let ((_%hd5136651397%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5136751393%_)))
                                    (_%tl5136551400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5136751393%_))))
                                (if (gx#stx-pair? _%tl5136551400%_)
                                    (let ((_%e5137051403%_
                                           (gx#syntax-e _%tl5136551400%_)))
                                      (let ((_%hd5136951407%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5137051403%_)))
                                            (_%tl5136851410%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5137051403%_))))
                                        (if (gx#stx-null? _%tl5136851410%_)
                                            ((lambda (_%L51413%_ _%L51415%_)
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
                                                       (cons _%L51415%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5136951407%_
                                             _%hd5136651397%_)
                                            (_%g5135851376%_
                                             _%g5135951380%_))))
                                    (_%g5135851376%_ _%g5135951380%_))))
                            (_%g5135851376%_ _%g5135951380%_))))
                    (_%g5135851376%_ _%g5135951380%_)))))
        (_%g5135751431%_ _%$stx51354%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51435%_)
      (let* ((_%g5143951457%_
              (lambda (_%g5144051453%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5144051453%_)))
             (_%g5143851512%_
              (lambda (_%g5144051461%_)
                (if (gx#stx-pair? _%g5144051461%_)
                    (let ((_%e5144551464%_ (gx#syntax-e _%g5144051461%_)))
                      (let ((_%hd5144451468%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5144551464%_)))
                            (_%tl5144351471%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5144551464%_))))
                        (if (gx#stx-pair? _%tl5144351471%_)
                            (let ((_%e5144851474%_
                                   (gx#syntax-e _%tl5144351471%_)))
                              (let ((_%hd5144751478%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5144851474%_)))
                                    (_%tl5144651481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5144851474%_))))
                                (if (gx#stx-pair? _%tl5144651481%_)
                                    (let ((_%e5145151484%_
                                           (gx#syntax-e _%tl5144651481%_)))
                                      (let ((_%hd5145051488%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5145151484%_)))
                                            (_%tl5144951491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5145151484%_))))
                                        (if (gx#stx-null? _%tl5144951491%_)
                                            ((lambda (_%L51494%_ _%L51496%_)
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
                                                 (cons _%L51496%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5145051488%_
                                             _%hd5144751478%_)
                                            (_%g5143951457%_
                                             _%g5144051461%_))))
                                    (_%g5143951457%_ _%g5144051461%_))))
                            (_%g5143951457%_ _%g5144051461%_))))
                    (_%g5143951457%_ _%g5144051461%_)))))
        (_%g5143851512%_ _%$stx51435%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51516%_)
      (let* ((_%g5152051534%_
              (lambda (_%g5152151530%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5152151530%_)))
             (_%g5151951575%_
              (lambda (_%g5152151538%_)
                (if (gx#stx-pair? _%g5152151538%_)
                    (let ((_%e5152551541%_ (gx#syntax-e _%g5152151538%_)))
                      (let ((_%hd5152451545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5152551541%_)))
                            (_%tl5152351548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5152551541%_))))
                        (if (gx#stx-pair? _%tl5152351548%_)
                            (let ((_%e5152851551%_
                                   (gx#syntax-e _%tl5152351548%_)))
                              (let ((_%hd5152751555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5152851551%_)))
                                    (_%tl5152651558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5152851551%_))))
                                (if (gx#stx-null? _%tl5152651558%_)
                                    ((lambda (_%L51561%_)
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
                                         (cons _%L51561%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5152751555%_)
                                    (_%g5152051534%_ _%g5152151538%_))))
                            (_%g5152051534%_ _%g5152151538%_))))
                    (_%g5152051534%_ _%g5152151538%_)))))
        (_%g5151951575%_ _%$stx51516%_)))))

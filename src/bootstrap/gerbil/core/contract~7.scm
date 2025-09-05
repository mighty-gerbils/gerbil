(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx55559%_)
      (let* ((_%g5556355577%_
              (lambda (_%g5556455573%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5556455573%_)))
             (_%g5556255619%_
              (lambda (_%g5556455581%_)
                (if (gx#stx-pair? _%g5556455581%_)
                    (let ((_%e5556655584%_ (gx#syntax-e _%g5556455581%_)))
                      (let ((_%hd5556755588%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5556655584%_)))
                            (_%tl5556855591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5556655584%_))))
                        (if (gx#stx-pair? _%tl5556855591%_)
                            (let ((_%e5556955594%_
                                   (gx#syntax-e _%tl5556855591%_)))
                              (let ((_%hd5557055598%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5556955594%_)))
                                    (_%tl5557155601%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5556955594%_))))
                                (if (gx#stx-null? _%tl5557155601%_)
                                    ((lambda (_%L55604%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L55604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5557055598%_)
                                    (_%g5556355577%_ _%g5556455581%_))))
                            (_%g5556355577%_ _%g5556455581%_))))
                    (_%g5556355577%_ _%g5556455581%_)))))
        (_%g5556255619%_ _%$stx55559%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx55623%_)
      (let* ((_%g5562755645%_
              (lambda (_%g5562855641%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5562855641%_)))
             (_%g5562655700%_
              (lambda (_%g5562855649%_)
                (if (gx#stx-pair? _%g5562855649%_)
                    (let ((_%e5563155652%_ (gx#syntax-e _%g5562855649%_)))
                      (let ((_%hd5563255656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5563155652%_)))
                            (_%tl5563355659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5563155652%_))))
                        (if (gx#stx-pair? _%tl5563355659%_)
                            (let ((_%e5563455662%_
                                   (gx#syntax-e _%tl5563355659%_)))
                              (let ((_%hd5563555666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5563455662%_)))
                                    (_%tl5563655669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5563455662%_))))
                                (if (gx#stx-pair? _%tl5563655669%_)
                                    (let ((_%e5563755672%_
                                           (gx#syntax-e _%tl5563655669%_)))
                                      (let ((_%hd5563855676%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5563755672%_)))
                                            (_%tl5563955679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5563755672%_))))
                                        (if (gx#stx-null? _%tl5563955679%_)
                                            ((lambda (_%L55682%_ _%L55684%_)
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
                                                       (cons _%L55684%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L55682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5563855676%_
                                             _%hd5563555666%_)
                                            (_%g5562755645%_
                                             _%g5562855649%_))))
                                    (_%g5562755645%_ _%g5562855649%_))))
                            (_%g5562755645%_ _%g5562855649%_))))
                    (_%g5562755645%_ _%g5562855649%_)))))
        (_%g5562655700%_ _%$stx55623%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx55704%_)
      (let* ((_%g5570855726%_
              (lambda (_%g5570955722%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5570955722%_)))
             (_%g5570755781%_
              (lambda (_%g5570955730%_)
                (if (gx#stx-pair? _%g5570955730%_)
                    (let ((_%e5571255733%_ (gx#syntax-e _%g5570955730%_)))
                      (let ((_%hd5571355737%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5571255733%_)))
                            (_%tl5571455740%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5571255733%_))))
                        (if (gx#stx-pair? _%tl5571455740%_)
                            (let ((_%e5571555743%_
                                   (gx#syntax-e _%tl5571455740%_)))
                              (let ((_%hd5571655747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5571555743%_)))
                                    (_%tl5571755750%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5571555743%_))))
                                (if (gx#stx-pair? _%tl5571755750%_)
                                    (let ((_%e5571855753%_
                                           (gx#syntax-e _%tl5571755750%_)))
                                      (let ((_%hd5571955757%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5571855753%_)))
                                            (_%tl5572055760%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5571855753%_))))
                                        (if (gx#stx-null? _%tl5572055760%_)
                                            ((lambda (_%L55763%_ _%L55765%_)
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
                                                 (cons _%L55765%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L55763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5571955757%_
                                             _%hd5571655747%_)
                                            (_%g5570855726%_
                                             _%g5570955730%_))))
                                    (_%g5570855726%_ _%g5570955730%_))))
                            (_%g5570855726%_ _%g5570955730%_))))
                    (_%g5570855726%_ _%g5570955730%_)))))
        (_%g5570755781%_ _%$stx55704%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx55785%_)
      (let* ((_%g5578955803%_
              (lambda (_%g5579055799%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5579055799%_)))
             (_%g5578855844%_
              (lambda (_%g5579055807%_)
                (if (gx#stx-pair? _%g5579055807%_)
                    (let ((_%e5579255810%_ (gx#syntax-e _%g5579055807%_)))
                      (let ((_%hd5579355814%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5579255810%_)))
                            (_%tl5579455817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5579255810%_))))
                        (if (gx#stx-pair? _%tl5579455817%_)
                            (let ((_%e5579555820%_
                                   (gx#syntax-e _%tl5579455817%_)))
                              (let ((_%hd5579655824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5579555820%_)))
                                    (_%tl5579755827%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5579555820%_))))
                                (if (gx#stx-null? _%tl5579755827%_)
                                    ((lambda (_%L55830%_)
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
                                         (cons _%L55830%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5579655824%_)
                                    (_%g5578955803%_ _%g5579055807%_))))
                            (_%g5578955803%_ _%g5579055807%_))))
                    (_%g5578955803%_ _%g5579055807%_)))))
        (_%g5578855844%_ _%$stx55785%_)))))

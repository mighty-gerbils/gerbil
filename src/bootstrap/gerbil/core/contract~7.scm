(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56901%_)
      (let* ((_%g5690556919%_
              (lambda (_%g5690656915%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5690656915%_)))
             (_%g5690456961%_
              (lambda (_%g5690656923%_)
                (if (gx#stx-pair? _%g5690656923%_)
                    (let ((_%e5690856926%_ (gx#syntax-e _%g5690656923%_)))
                      (let ((_%hd5690956930%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5690856926%_)))
                            (_%tl5691056933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5690856926%_))))
                        (if (gx#stx-pair? _%tl5691056933%_)
                            (let ((_%e5691156936%_
                                   (gx#syntax-e _%tl5691056933%_)))
                              (let ((_%hd5691256940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5691156936%_)))
                                    (_%tl5691356943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5691156936%_))))
                                (if (gx#stx-null? _%tl5691356943%_)
                                    ((lambda (_%g5690756946%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5690756946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5691256940%_)
                                    (_%g5690556919%_ _%g5690656923%_))))
                            (_%g5690556919%_ _%g5690656923%_))))
                    (_%g5690556919%_ _%g5690656923%_)))))
        (_%g5690456961%_ _%$stx56901%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56965%_)
      (let* ((_%g5696956987%_
              (lambda (_%g5697056983%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5697056983%_)))
             (_%g5696857042%_
              (lambda (_%g5697056991%_)
                (if (gx#stx-pair? _%g5697056991%_)
                    (let ((_%e5697356994%_ (gx#syntax-e _%g5697056991%_)))
                      (let ((_%hd5697456998%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5697356994%_)))
                            (_%tl5697557001%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5697356994%_))))
                        (if (gx#stx-pair? _%tl5697557001%_)
                            (let ((_%e5697657004%_
                                   (gx#syntax-e _%tl5697557001%_)))
                              (let ((_%hd5697757008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5697657004%_)))
                                    (_%tl5697857011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5697657004%_))))
                                (if (gx#stx-pair? _%tl5697857011%_)
                                    (let ((_%e5697957014%_
                                           (gx#syntax-e _%tl5697857011%_)))
                                      (let ((_%hd5698057018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5697957014%_)))
                                            (_%tl5698157021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5697957014%_))))
                                        (if (gx#stx-null? _%tl5698157021%_)
                                            ((lambda (_%g5697157024%_
                                                      _%g5697257026%_)
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
                                                       (cons _%g5697257026%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5697157024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5698057018%_
                                             _%hd5697757008%_)
                                            (_%g5696956987%_
                                             _%g5697056991%_))))
                                    (_%g5696956987%_ _%g5697056991%_))))
                            (_%g5696956987%_ _%g5697056991%_))))
                    (_%g5696956987%_ _%g5697056991%_)))))
        (_%g5696857042%_ _%$stx56965%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx57046%_)
      (let* ((_%g5705057068%_
              (lambda (_%g5705157064%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5705157064%_)))
             (_%g5704957123%_
              (lambda (_%g5705157072%_)
                (if (gx#stx-pair? _%g5705157072%_)
                    (let ((_%e5705457075%_ (gx#syntax-e _%g5705157072%_)))
                      (let ((_%hd5705557079%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5705457075%_)))
                            (_%tl5705657082%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5705457075%_))))
                        (if (gx#stx-pair? _%tl5705657082%_)
                            (let ((_%e5705757085%_
                                   (gx#syntax-e _%tl5705657082%_)))
                              (let ((_%hd5705857089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5705757085%_)))
                                    (_%tl5705957092%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5705757085%_))))
                                (if (gx#stx-pair? _%tl5705957092%_)
                                    (let ((_%e5706057095%_
                                           (gx#syntax-e _%tl5705957092%_)))
                                      (let ((_%hd5706157099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5706057095%_)))
                                            (_%tl5706257102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5706057095%_))))
                                        (if (gx#stx-null? _%tl5706257102%_)
                                            ((lambda (_%g5705257105%_
                                                      _%g5705357107%_)
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
                                                 (cons _%g5705357107%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5705257105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5706157099%_
                                             _%hd5705857089%_)
                                            (_%g5705057068%_
                                             _%g5705157072%_))))
                                    (_%g5705057068%_ _%g5705157072%_))))
                            (_%g5705057068%_ _%g5705157072%_))))
                    (_%g5705057068%_ _%g5705157072%_)))))
        (_%g5704957123%_ _%$stx57046%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57127%_)
      (let* ((_%g5713157145%_
              (lambda (_%g5713257141%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5713257141%_)))
             (_%g5713057186%_
              (lambda (_%g5713257149%_)
                (if (gx#stx-pair? _%g5713257149%_)
                    (let ((_%e5713457152%_ (gx#syntax-e _%g5713257149%_)))
                      (let ((_%hd5713557156%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5713457152%_)))
                            (_%tl5713657159%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5713457152%_))))
                        (if (gx#stx-pair? _%tl5713657159%_)
                            (let ((_%e5713757162%_
                                   (gx#syntax-e _%tl5713657159%_)))
                              (let ((_%hd5713857166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5713757162%_)))
                                    (_%tl5713957169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5713757162%_))))
                                (if (gx#stx-null? _%tl5713957169%_)
                                    ((lambda (_%g5713357172%_)
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
                                         (cons _%g5713357172%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5713857166%_)
                                    (_%g5713157145%_ _%g5713257149%_))))
                            (_%g5713157145%_ _%g5713257149%_))))
                    (_%g5713157145%_ _%g5713257149%_)))))
        (_%g5713057186%_ _%$stx57127%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57190%_)
      (let* ((_%g5719457214%_
              (lambda (_%g5719557210%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5719557210%_)))
             (_%g5719357283%_
              (lambda (_%g5719557218%_)
                (if (gx#stx-pair? _%g5719557218%_)
                    (let ((_%e5719757221%_ (gx#syntax-e _%g5719557218%_)))
                      (let ((_%hd5719857225%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5719757221%_)))
                            (_%tl5719957228%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5719757221%_))))
                        (if (gx#stx-pair/null? _%tl5719957228%_)
                            (let ((_g97774_
                                   (gx#syntax-split-splice
                                    _%tl5719957228%_
                                    '0)))
                              (begin
                                (let ((_g97775_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97774_)
                                             (##values-length _g97774_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97775_ 2)))
                                      (error "Context expects 2 values"
                                             _g97775_)))
                                (let ((_%target5720057231%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g97774_ 0)))
                                      (_%tl5720257234%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g97774_ 1))))
                                  (if (gx#stx-null? _%tl5720257234%_)
                                      (letrec ((_%loop5720357237%_
                                                (lambda (_%hd5720157241%_
                                                         _%val5720757244%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5720157241%_)
                                                      (let ((_%e5720457246%_
                                                             (gx#syntax-e
                                                              _%hd5720157241%_)))
                                                        (let ((_%lp-hd5720557250%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5720457246%_)))
                      (_%lp-tl5720657253%_
                       (let () (declare (not safe)) (##cdr _%e5720457246%_))))
                  (_%loop5720357237%_
                   _%lp-tl5720657253%_
                   (cons _%lp-hd5720557250%_ _%val5720757244%_))))
              (let ((_%val5720857256%_ (reverse _%val5720757244%_)))
                ((lambda (_%g5719657259%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5727457277%_
                                                           _%g5727557280%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5727457277%_ '()))
                                    '())))
                  _%g5727557280%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5719657259%_))
                                     '()))))
                 _%val5720857256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5720357237%_
                                         _%target5720057231%_
                                         '()))
                                      (_%g5719457214%_ _%g5719557218%_)))))
                            (_%g5719457214%_ _%g5719557218%_))))
                    (_%g5719457214%_ _%g5719557218%_)))))
        (_%g5719357283%_ _%$stx57190%_)))))

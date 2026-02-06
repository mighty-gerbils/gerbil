(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56658%_)
      (let* ((_%g5666256676%_
              (lambda (_%g5666356672%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5666356672%_)))
             (_%g5666156718%_
              (lambda (_%g5666356680%_)
                (if (gx#stx-pair? _%g5666356680%_)
                    (let ((_%e5666556683%_ (gx#syntax-e _%g5666356680%_)))
                      (let ((_%hd5666656687%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5666556683%_)))
                            (_%tl5666756690%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5666556683%_))))
                        (if (gx#stx-pair? _%tl5666756690%_)
                            (let ((_%e5666856693%_
                                   (gx#syntax-e _%tl5666756690%_)))
                              (let ((_%hd5666956697%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5666856693%_)))
                                    (_%tl5667056700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5666856693%_))))
                                (if (gx#stx-null? _%tl5667056700%_)
                                    ((lambda (_%g5666456703%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5666456703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5666956697%_)
                                    (_%g5666256676%_ _%g5666356680%_))))
                            (_%g5666256676%_ _%g5666356680%_))))
                    (_%g5666256676%_ _%g5666356680%_)))))
        (_%g5666156718%_ _%$stx56658%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56722%_)
      (let* ((_%g5672656744%_
              (lambda (_%g5672756740%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5672756740%_)))
             (_%g5672556799%_
              (lambda (_%g5672756748%_)
                (if (gx#stx-pair? _%g5672756748%_)
                    (let ((_%e5673056751%_ (gx#syntax-e _%g5672756748%_)))
                      (let ((_%hd5673156755%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5673056751%_)))
                            (_%tl5673256758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5673056751%_))))
                        (if (gx#stx-pair? _%tl5673256758%_)
                            (let ((_%e5673356761%_
                                   (gx#syntax-e _%tl5673256758%_)))
                              (let ((_%hd5673456765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5673356761%_)))
                                    (_%tl5673556768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5673356761%_))))
                                (if (gx#stx-pair? _%tl5673556768%_)
                                    (let ((_%e5673656771%_
                                           (gx#syntax-e _%tl5673556768%_)))
                                      (let ((_%hd5673756775%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5673656771%_)))
                                            (_%tl5673856778%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5673656771%_))))
                                        (if (gx#stx-null? _%tl5673856778%_)
                                            ((lambda (_%g5672856781%_
                                                      _%g5672956783%_)
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
                                                       (cons _%g5672956783%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5672856781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5673756775%_
                                             _%hd5673456765%_)
                                            (_%g5672656744%_
                                             _%g5672756748%_))))
                                    (_%g5672656744%_ _%g5672756748%_))))
                            (_%g5672656744%_ _%g5672756748%_))))
                    (_%g5672656744%_ _%g5672756748%_)))))
        (_%g5672556799%_ _%$stx56722%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx56803%_)
      (let* ((_%g5680756825%_
              (lambda (_%g5680856821%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5680856821%_)))
             (_%g5680656880%_
              (lambda (_%g5680856829%_)
                (if (gx#stx-pair? _%g5680856829%_)
                    (let ((_%e5681156832%_ (gx#syntax-e _%g5680856829%_)))
                      (let ((_%hd5681256836%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5681156832%_)))
                            (_%tl5681356839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5681156832%_))))
                        (if (gx#stx-pair? _%tl5681356839%_)
                            (let ((_%e5681456842%_
                                   (gx#syntax-e _%tl5681356839%_)))
                              (let ((_%hd5681556846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5681456842%_)))
                                    (_%tl5681656849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5681456842%_))))
                                (if (gx#stx-pair? _%tl5681656849%_)
                                    (let ((_%e5681756852%_
                                           (gx#syntax-e _%tl5681656849%_)))
                                      (let ((_%hd5681856856%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5681756852%_)))
                                            (_%tl5681956859%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5681756852%_))))
                                        (if (gx#stx-null? _%tl5681956859%_)
                                            ((lambda (_%g5680956862%_
                                                      _%g5681056864%_)
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
                                                 (cons _%g5681056864%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5680956862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5681856856%_
                                             _%hd5681556846%_)
                                            (_%g5680756825%_
                                             _%g5680856829%_))))
                                    (_%g5680756825%_ _%g5680856829%_))))
                            (_%g5680756825%_ _%g5680856829%_))))
                    (_%g5680756825%_ _%g5680856829%_)))))
        (_%g5680656880%_ _%$stx56803%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx56884%_)
      (let* ((_%g5688856902%_
              (lambda (_%g5688956898%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5688956898%_)))
             (_%g5688756943%_
              (lambda (_%g5688956906%_)
                (if (gx#stx-pair? _%g5688956906%_)
                    (let ((_%e5689156909%_ (gx#syntax-e _%g5688956906%_)))
                      (let ((_%hd5689256913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5689156909%_)))
                            (_%tl5689356916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5689156909%_))))
                        (if (gx#stx-pair? _%tl5689356916%_)
                            (let ((_%e5689456919%_
                                   (gx#syntax-e _%tl5689356916%_)))
                              (let ((_%hd5689556923%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5689456919%_)))
                                    (_%tl5689656926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5689456919%_))))
                                (if (gx#stx-null? _%tl5689656926%_)
                                    ((lambda (_%g5689056929%_)
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
                                         (cons _%g5689056929%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5689556923%_)
                                    (_%g5688856902%_ _%g5688956906%_))))
                            (_%g5688856902%_ _%g5688956906%_))))
                    (_%g5688856902%_ _%g5688956906%_)))))
        (_%g5688756943%_ _%$stx56884%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx56947%_)
      (let* ((_%g5695156971%_
              (lambda (_%g5695256967%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5695256967%_)))
             (_%g5695057040%_
              (lambda (_%g5695256975%_)
                (if (gx#stx-pair? _%g5695256975%_)
                    (let ((_%e5695456978%_ (gx#syntax-e _%g5695256975%_)))
                      (let ((_%hd5695556982%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5695456978%_)))
                            (_%tl5695656985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5695456978%_))))
                        (if (gx#stx-pair/null? _%tl5695656985%_)
                            (let ((_g97531_
                                   (gx#syntax-split-splice
                                    _%tl5695656985%_
                                    '0)))
                              (begin
                                (let ((_g97532_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97531_)
                                             (##values-length _g97531_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97532_ 2)))
                                      (error "Context expects 2 values"
                                             _g97532_)))
                                (let ((_%target5695756988%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g97531_ 0)))
                                      (_%tl5695956991%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g97531_ 1))))
                                  (if (gx#stx-null? _%tl5695956991%_)
                                      (letrec ((_%loop5696056994%_
                                                (lambda (_%hd5695856998%_
                                                         _%val5696457001%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5695856998%_)
                                                      (let ((_%e5696157003%_
                                                             (gx#syntax-e
                                                              _%hd5695856998%_)))
                                                        (let ((_%lp-hd5696257007%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5696157003%_)))
                      (_%lp-tl5696357010%_
                       (let () (declare (not safe)) (##cdr _%e5696157003%_))))
                  (_%loop5696056994%_
                   _%lp-tl5696357010%_
                   (cons _%lp-hd5696257007%_ _%val5696457001%_))))
              (let ((_%val5696557013%_ (reverse _%val5696457001%_)))
                ((lambda (_%g5695357016%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5703157034%_
                                                           _%g5703257037%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5703157034%_ '()))
                                    '())))
                  _%g5703257037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5695357016%_))
                                     '()))))
                 _%val5696557013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5696056994%_
                                         _%target5695756988%_
                                         '()))
                                      (_%g5695156971%_ _%g5695256975%_)))))
                            (_%g5695156971%_ _%g5695256975%_))))
                    (_%g5695156971%_ _%g5695256975%_)))))
        (_%g5695057040%_ _%$stx56947%_)))))

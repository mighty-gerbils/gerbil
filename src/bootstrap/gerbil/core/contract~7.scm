(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx58934%_)
      (let* ((_%$%g5893858952%_
              (lambda (_%$%g5893958948%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5893958948%_)))
             (_%$%g5893758994%_
              (lambda (_%$%g5893958956%_)
                (if (gx#stx-pair? _%$%g5893958956%_)
                    (let ((_%$%e5894158959%_ (gx#syntax-e _%$%g5893958956%_)))
                      (let ((_%$%hd5894258963%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5894158959%_)))
                            (_%$%tl5894358966%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5894158959%_))))
                        (if (gx#stx-pair? _%$%tl5894358966%_)
                            (let ((_%$%e5894458969%_
                                   (gx#syntax-e _%$%tl5894358966%_)))
                              (let ((_%$%hd5894558973%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5894458969%_)))
                                    (_%$%tl5894658976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5894458969%_))))
                                (if (gx#stx-null? _%$%tl5894658976%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%$%hd5894558973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g5893858952%_ _%$%g5893958956%_))))
                            (_%$%g5893858952%_ _%$%g5893958956%_))))
                    (_%$%g5893858952%_ _%$%g5893958956%_)))))
        (_%$%g5893758994%_ _%$stx58934%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx58998%_)
      (let* ((_%$%g5900259020%_
              (lambda (_%$%g5900359016%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5900359016%_)))
             (_%$%g5900159075%_
              (lambda (_%$%g5900359024%_)
                (if (gx#stx-pair? _%$%g5900359024%_)
                    (let ((_%$%e5900659027%_ (gx#syntax-e _%$%g5900359024%_)))
                      (let ((_%$%hd5900759031%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5900659027%_)))
                            (_%$%tl5900859034%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5900659027%_))))
                        (if (gx#stx-pair? _%$%tl5900859034%_)
                            (let ((_%$%e5900959037%_
                                   (gx#syntax-e _%$%tl5900859034%_)))
                              (let ((_%$%hd5901059041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5900959037%_)))
                                    (_%$%tl5901159044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5900959037%_))))
                                (if (gx#stx-pair? _%$%tl5901159044%_)
                                    (let ((_%$%e5901259047%_
                                           (gx#syntax-e _%$%tl5901159044%_)))
                                      (let ((_%$%hd5901359051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5901259047%_)))
                                            (_%$%tl5901459054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5901259047%_))))
                                        (if (gx#stx-null? _%$%tl5901459054%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx>=)
                                              (cons (gx#datum->syntax '#f 'o)
                                                    (cons _%$%hd5901059041%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5901359051%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5900259020%_
                                             _%$%g5900359024%_))))
                                    (_%$%g5900259020%_ _%$%g5900359024%_))))
                            (_%$%g5900259020%_ _%$%g5900359024%_))))
                    (_%$%g5900259020%_ _%$%g5900359024%_)))))
        (_%$%g5900159075%_ _%$stx58998%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx59079%_)
      (let* ((_%$%g5908359101%_
              (lambda (_%$%g5908459097%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5908459097%_)))
             (_%$%g5908259156%_
              (lambda (_%$%g5908459105%_)
                (if (gx#stx-pair? _%$%g5908459105%_)
                    (let ((_%$%e5908759108%_ (gx#syntax-e _%$%g5908459105%_)))
                      (let ((_%$%hd5908859112%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5908759108%_)))
                            (_%$%tl5908959115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5908759108%_))))
                        (if (gx#stx-pair? _%$%tl5908959115%_)
                            (let ((_%$%e5909059118%_
                                   (gx#syntax-e _%$%tl5908959115%_)))
                              (let ((_%$%hd5909159122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5909059118%_)))
                                    (_%$%tl5909259125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5909059118%_))))
                                (if (gx#stx-pair? _%$%tl5909259125%_)
                                    (let ((_%$%e5909359128%_
                                           (gx#syntax-e _%$%tl5909259125%_)))
                                      (let ((_%$%hd5909459132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5909359128%_)))
                                            (_%$%tl5909559135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5909359128%_))))
                                        (if (gx#stx-null? _%$%tl5909559135%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx<=)
                                              (cons _%$%hd5909159122%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5909459132%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5908359101%_
                                             _%$%g5908459105%_))))
                                    (_%$%g5908359101%_ _%$%g5908459105%_))))
                            (_%$%g5908359101%_ _%$%g5908459105%_))))
                    (_%$%g5908359101%_ _%$%g5908459105%_)))))
        (_%$%g5908259156%_ _%$stx59079%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx59160%_)
      (let* ((_%$%g5916459178%_
              (lambda (_%$%g5916559174%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5916559174%_)))
             (_%$%g5916359219%_
              (lambda (_%$%g5916559182%_)
                (if (gx#stx-pair? _%$%g5916559182%_)
                    (let ((_%$%e5916759185%_ (gx#syntax-e _%$%g5916559182%_)))
                      (let ((_%$%hd5916859189%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5916759185%_)))
                            (_%$%tl5916959192%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5916759185%_))))
                        (if (gx#stx-pair? _%$%tl5916959192%_)
                            (let ((_%$%e5917059195%_
                                   (gx#syntax-e _%$%tl5916959192%_)))
                              (let ((_%$%hd5917159199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5917059195%_)))
                                    (_%$%tl5917259202%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5917059195%_))))
                                (if (gx#stx-null? _%$%tl5917259202%_)
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons (gx#datum->syntax '#f 'o)
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
                                      (cons _%$%hd5917159199%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g5916459178%_ _%$%g5916559182%_))))
                            (_%$%g5916459178%_ _%$%g5916559182%_))))
                    (_%$%g5916459178%_ _%$%g5916559182%_)))))
        (_%$%g5916359219%_ _%$stx59160%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx59223%_)
      (let* ((_%$%g5922759247%_
              (lambda (_%$%g5922859243%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5922859243%_)))
             (_%$%g5922659316%_
              (lambda (_%$%g5922859251%_)
                (if (gx#stx-pair? _%$%g5922859251%_)
                    (let ((_%$%e5923059254%_ (gx#syntax-e _%$%g5922859251%_)))
                      (let ((_%$%hd5923159258%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5923059254%_)))
                            (_%$%tl5923259261%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5923059254%_))))
                        (if (gx#stx-pair/null? _%$%tl5923259261%_)
                            (let ((_g102449_
                                   (gx#syntax-split-splice
                                    _%$%tl5923259261%_
                                    '0)))
                              (begin
                                (let ((_g102450_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102449_)
                                             (##values-length _g102449_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102450_ 2)))
                                      (error "Context expects 2 values"
                                             _g102450_)))
                                (let ((_%$%target5923359264%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102449_ 0)))
                                      (_%$%tl5923559267%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102449_ 1))))
                                  (if (gx#stx-null? _%$%tl5923559267%_)
                                      (letrec ((_%$%loop5923659270%_
                                                (lambda (_%$%hd5923459274%_
                                                         _%$%val5924059277%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5923459274%_)
                                                      (let ((_%$%e5923759279%_
                                                             (gx#syntax-e
                                                              _%$%hd5923459274%_)))
                                                        (let ((_%$%lp-hd5923859283%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e5923759279%_)))
                      (_%$%lp-tl5923959286%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e5923759279%_))))
                  (_%$%loop5923659270%_
                   _%$%lp-tl5923959286%_
                   (cons _%$%lp-hd5923859283%_ _%$%val5924059277%_))))
              (let ((_%$%val5924159289%_ (reverse _%$%val5924059277%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%$%g5930759310%_
                                                        _%$%g5930859313%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%$%g5930759310%_ '()))
                                 '())))
               _%$%g5930859313%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%val5924159289%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop5923659270%_
                                         _%$%target5923359264%_
                                         '()))
                                      (_%$%g5922759247%_ _%$%g5922859251%_)))))
                            (_%$%g5922759247%_ _%$%g5922859251%_))))
                    (_%$%g5922759247%_ _%$%g5922859251%_)))))
        (_%$%g5922659316%_ _%$stx59223%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx57858%_)
      (let* ((_%g5786257876%_
              (lambda (_%g5786357872%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5786357872%_)))
             (_%g5786157918%_
              (lambda (_%g5786357880%_)
                (if (gx#stx-pair? _%g5786357880%_)
                    (let ((_%e5786557883%_ (gx#syntax-e _%g5786357880%_)))
                      (let ((_%hd5786657887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5786557883%_)))
                            (_%tl5786757890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5786557883%_))))
                        (if (gx#stx-pair? _%tl5786757890%_)
                            (let ((_%e5786857893%_
                                   (gx#syntax-e _%tl5786757890%_)))
                              (let ((_%hd5786957897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5786857893%_)))
                                    (_%tl5787057900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5786857893%_))))
                                (if (gx#stx-null? _%tl5787057900%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%hd5786957897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%g5786257876%_ _%g5786357880%_))))
                            (_%g5786257876%_ _%g5786357880%_))))
                    (_%g5786257876%_ _%g5786357880%_)))))
        (_%g5786157918%_ _%$stx57858%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx57922%_)
      (let* ((_%g5792657944%_
              (lambda (_%g5792757940%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5792757940%_)))
             (_%g5792557999%_
              (lambda (_%g5792757948%_)
                (if (gx#stx-pair? _%g5792757948%_)
                    (let ((_%e5793057951%_ (gx#syntax-e _%g5792757948%_)))
                      (let ((_%hd5793157955%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5793057951%_)))
                            (_%tl5793257958%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5793057951%_))))
                        (if (gx#stx-pair? _%tl5793257958%_)
                            (let ((_%e5793357961%_
                                   (gx#syntax-e _%tl5793257958%_)))
                              (let ((_%hd5793457965%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5793357961%_)))
                                    (_%tl5793557968%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5793357961%_))))
                                (if (gx#stx-pair? _%tl5793557968%_)
                                    (let ((_%e5793657971%_
                                           (gx#syntax-e _%tl5793557968%_)))
                                      (let ((_%hd5793757975%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5793657971%_)))
                                            (_%tl5793857978%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5793657971%_))))
                                        (if (gx#stx-null? _%tl5793857978%_)
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
                                                    (cons _%hd5793457965%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%hd5793757975%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5792657944%_
                                             _%g5792757948%_))))
                                    (_%g5792657944%_ _%g5792757948%_))))
                            (_%g5792657944%_ _%g5792757948%_))))
                    (_%g5792657944%_ _%g5792757948%_)))))
        (_%g5792557999%_ _%$stx57922%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx58003%_)
      (let* ((_%g5800758025%_
              (lambda (_%g5800858021%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5800858021%_)))
             (_%g5800658080%_
              (lambda (_%g5800858029%_)
                (if (gx#stx-pair? _%g5800858029%_)
                    (let ((_%e5801158032%_ (gx#syntax-e _%g5800858029%_)))
                      (let ((_%hd5801258036%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5801158032%_)))
                            (_%tl5801358039%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5801158032%_))))
                        (if (gx#stx-pair? _%tl5801358039%_)
                            (let ((_%e5801458042%_
                                   (gx#syntax-e _%tl5801358039%_)))
                              (let ((_%hd5801558046%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5801458042%_)))
                                    (_%tl5801658049%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5801458042%_))))
                                (if (gx#stx-pair? _%tl5801658049%_)
                                    (let ((_%e5801758052%_
                                           (gx#syntax-e _%tl5801658049%_)))
                                      (let ((_%hd5801858056%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5801758052%_)))
                                            (_%tl5801958059%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5801758052%_))))
                                        (if (gx#stx-null? _%tl5801958059%_)
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
                                              (cons _%hd5801558046%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%hd5801858056%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5800758025%_
                                             _%g5800858029%_))))
                                    (_%g5800758025%_ _%g5800858029%_))))
                            (_%g5800758025%_ _%g5800858029%_))))
                    (_%g5800758025%_ _%g5800858029%_)))))
        (_%g5800658080%_ _%$stx58003%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx58084%_)
      (let* ((_%g5808858102%_
              (lambda (_%g5808958098%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5808958098%_)))
             (_%g5808758143%_
              (lambda (_%g5808958106%_)
                (if (gx#stx-pair? _%g5808958106%_)
                    (let ((_%e5809158109%_ (gx#syntax-e _%g5808958106%_)))
                      (let ((_%hd5809258113%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5809158109%_)))
                            (_%tl5809358116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5809158109%_))))
                        (if (gx#stx-pair? _%tl5809358116%_)
                            (let ((_%e5809458119%_
                                   (gx#syntax-e _%tl5809358116%_)))
                              (let ((_%hd5809558123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5809458119%_)))
                                    (_%tl5809658126%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5809458119%_))))
                                (if (gx#stx-null? _%tl5809658126%_)
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
                                      (cons _%hd5809558123%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%g5808858102%_ _%g5808958106%_))))
                            (_%g5808858102%_ _%g5808958106%_))))
                    (_%g5808858102%_ _%g5808958106%_)))))
        (_%g5808758143%_ _%$stx58084%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx58147%_)
      (let* ((_%g5815158171%_
              (lambda (_%g5815258167%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5815258167%_)))
             (_%g5815058240%_
              (lambda (_%g5815258175%_)
                (if (gx#stx-pair? _%g5815258175%_)
                    (let ((_%e5815458178%_ (gx#syntax-e _%g5815258175%_)))
                      (let ((_%hd5815558182%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5815458178%_)))
                            (_%tl5815658185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5815458178%_))))
                        (if (gx#stx-pair/null? _%tl5815658185%_)
                            (let ((_g101329_
                                   (gx#syntax-split-splice
                                    _%tl5815658185%_
                                    '0)))
                              (begin
                                (let ((_g101330_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101329_)
                                             (##values-length _g101329_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101330_ 2)))
                                      (error "Context expects 2 values"
                                             _g101330_)))
                                (let ((_%target5815758188%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101329_ 0)))
                                      (_%tl5815958191%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101329_ 1))))
                                  (if (gx#stx-null? _%tl5815958191%_)
                                      (letrec ((_%loop5816058194%_
                                                (lambda (_%hd5815858198%_
                                                         _%val5816458201%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5815858198%_)
                                                      (let ((_%e5816158203%_
                                                             (gx#syntax-e
                                                              _%hd5815858198%_)))
                                                        (let ((_%lp-hd5816258207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5816158203%_)))
                      (_%lp-tl5816358210%_
                       (let () (declare (not safe)) (##cdr _%e5816158203%_))))
                  (_%loop5816058194%_
                   _%lp-tl5816358210%_
                   (cons _%lp-hd5816258207%_ _%val5816458201%_))))
              (let ((_%val5816558213%_ (reverse _%val5816458201%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%g5823158234%_
                                                        _%g5823258237%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%g5823158234%_ '()))
                                 '())))
               _%g5823258237%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%val5816558213%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5816058194%_
                                         _%target5815758188%_
                                         '()))
                                      (_%g5815158171%_ _%g5815258175%_)))))
                            (_%g5815158171%_ _%g5815258175%_))))
                    (_%g5815158171%_ _%g5815258175%_)))))
        (_%g5815058240%_ _%$stx58147%_)))))

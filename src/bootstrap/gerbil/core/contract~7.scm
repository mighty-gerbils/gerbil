(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx58937%_)
      (let* ((_%$%g5894158955%_
              (lambda (_%$%g5894258951%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5894258951%_)))
             (_%$%g5894058997%_
              (lambda (_%$%g5894258959%_)
                (if (gx#stx-pair? _%$%g5894258959%_)
                    (let ((_%$%e5894458962%_ (gx#syntax-e _%$%g5894258959%_)))
                      (let ((_%$%hd5894558966%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5894458962%_)))
                            (_%$%tl5894658969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5894458962%_))))
                        (if (gx#stx-pair? _%$%tl5894658969%_)
                            (let ((_%$%e5894758972%_
                                   (gx#syntax-e _%$%tl5894658969%_)))
                              (let ((_%$%hd5894858976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5894758972%_)))
                                    (_%$%tl5894958979%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5894758972%_))))
                                (if (gx#stx-null? _%$%tl5894958979%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%$%hd5894858976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g5894158955%_ _%$%g5894258959%_))))
                            (_%$%g5894158955%_ _%$%g5894258959%_))))
                    (_%$%g5894158955%_ _%$%g5894258959%_)))))
        (_%$%g5894058997%_ _%$stx58937%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx59001%_)
      (let* ((_%$%g5900559023%_
              (lambda (_%$%g5900659019%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5900659019%_)))
             (_%$%g5900459078%_
              (lambda (_%$%g5900659027%_)
                (if (gx#stx-pair? _%$%g5900659027%_)
                    (let ((_%$%e5900959030%_ (gx#syntax-e _%$%g5900659027%_)))
                      (let ((_%$%hd5901059034%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5900959030%_)))
                            (_%$%tl5901159037%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5900959030%_))))
                        (if (gx#stx-pair? _%$%tl5901159037%_)
                            (let ((_%$%e5901259040%_
                                   (gx#syntax-e _%$%tl5901159037%_)))
                              (let ((_%$%hd5901359044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5901259040%_)))
                                    (_%$%tl5901459047%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5901259040%_))))
                                (if (gx#stx-pair? _%$%tl5901459047%_)
                                    (let ((_%$%e5901559050%_
                                           (gx#syntax-e _%$%tl5901459047%_)))
                                      (let ((_%$%hd5901659054%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5901559050%_)))
                                            (_%$%tl5901759057%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5901559050%_))))
                                        (if (gx#stx-null? _%$%tl5901759057%_)
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
                                                    (cons _%$%hd5901359044%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5901659054%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5900559023%_
                                             _%$%g5900659027%_))))
                                    (_%$%g5900559023%_ _%$%g5900659027%_))))
                            (_%$%g5900559023%_ _%$%g5900659027%_))))
                    (_%$%g5900559023%_ _%$%g5900659027%_)))))
        (_%$%g5900459078%_ _%$stx59001%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx59082%_)
      (let* ((_%$%g5908659104%_
              (lambda (_%$%g5908759100%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5908759100%_)))
             (_%$%g5908559159%_
              (lambda (_%$%g5908759108%_)
                (if (gx#stx-pair? _%$%g5908759108%_)
                    (let ((_%$%e5909059111%_ (gx#syntax-e _%$%g5908759108%_)))
                      (let ((_%$%hd5909159115%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5909059111%_)))
                            (_%$%tl5909259118%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5909059111%_))))
                        (if (gx#stx-pair? _%$%tl5909259118%_)
                            (let ((_%$%e5909359121%_
                                   (gx#syntax-e _%$%tl5909259118%_)))
                              (let ((_%$%hd5909459125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5909359121%_)))
                                    (_%$%tl5909559128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5909359121%_))))
                                (if (gx#stx-pair? _%$%tl5909559128%_)
                                    (let ((_%$%e5909659131%_
                                           (gx#syntax-e _%$%tl5909559128%_)))
                                      (let ((_%$%hd5909759135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5909659131%_)))
                                            (_%$%tl5909859138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5909659131%_))))
                                        (if (gx#stx-null? _%$%tl5909859138%_)
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
                                              (cons _%$%hd5909459125%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5909759135%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5908659104%_
                                             _%$%g5908759108%_))))
                                    (_%$%g5908659104%_ _%$%g5908759108%_))))
                            (_%$%g5908659104%_ _%$%g5908759108%_))))
                    (_%$%g5908659104%_ _%$%g5908759108%_)))))
        (_%$%g5908559159%_ _%$stx59082%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx59163%_)
      (let* ((_%$%g5916759181%_
              (lambda (_%$%g5916859177%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5916859177%_)))
             (_%$%g5916659222%_
              (lambda (_%$%g5916859185%_)
                (if (gx#stx-pair? _%$%g5916859185%_)
                    (let ((_%$%e5917059188%_ (gx#syntax-e _%$%g5916859185%_)))
                      (let ((_%$%hd5917159192%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5917059188%_)))
                            (_%$%tl5917259195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5917059188%_))))
                        (if (gx#stx-pair? _%$%tl5917259195%_)
                            (let ((_%$%e5917359198%_
                                   (gx#syntax-e _%$%tl5917259195%_)))
                              (let ((_%$%hd5917459202%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5917359198%_)))
                                    (_%$%tl5917559205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5917359198%_))))
                                (if (gx#stx-null? _%$%tl5917559205%_)
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
                                      (cons _%$%hd5917459202%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g5916759181%_ _%$%g5916859185%_))))
                            (_%$%g5916759181%_ _%$%g5916859185%_))))
                    (_%$%g5916759181%_ _%$%g5916859185%_)))))
        (_%$%g5916659222%_ _%$stx59163%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx59226%_)
      (let* ((_%$%g5923059250%_
              (lambda (_%$%g5923159246%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5923159246%_)))
             (_%$%g5922959319%_
              (lambda (_%$%g5923159254%_)
                (if (gx#stx-pair? _%$%g5923159254%_)
                    (let ((_%$%e5923359257%_ (gx#syntax-e _%$%g5923159254%_)))
                      (let ((_%$%hd5923459261%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5923359257%_)))
                            (_%$%tl5923559264%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5923359257%_))))
                        (if (gx#stx-pair/null? _%$%tl5923559264%_)
                            (let ((_g102439_
                                   (gx#syntax-split-splice
                                    _%$%tl5923559264%_
                                    '0)))
                              (begin
                                (let ((_g102440_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102439_)
                                             (##values-length _g102439_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102440_ 2)))
                                      (error "Context expects 2 values"
                                             _g102440_)))
                                (let ((_%$%target5923659267%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102439_ 0)))
                                      (_%$%tl5923859270%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102439_ 1))))
                                  (if (gx#stx-null? _%$%tl5923859270%_)
                                      (letrec ((_%$%loop5923959273%_
                                                (lambda (_%$%hd5923759277%_
                                                         _%$%val5924359280%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5923759277%_)
                                                      (let ((_%$%e5924059282%_
                                                             (gx#syntax-e
                                                              _%$%hd5923759277%_)))
                                                        (let ((_%$%lp-hd5924159286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e5924059282%_)))
                      (_%$%lp-tl5924259289%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e5924059282%_))))
                  (_%$%loop5923959273%_
                   _%$%lp-tl5924259289%_
                   (cons _%$%lp-hd5924159286%_ _%$%val5924359280%_))))
              (let ((_%$%val5924459292%_ (reverse _%$%val5924359280%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%$%g5931059313%_
                                                        _%$%g5931159316%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%$%g5931059313%_ '()))
                                 '())))
               _%$%g5931159316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%val5924459292%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop5923959273%_
                                         _%$%target5923659267%_
                                         '()))
                                      (_%$%g5923059250%_ _%$%g5923159254%_)))))
                            (_%$%g5923059250%_ _%$%g5923159254%_))))
                    (_%$%g5923059250%_ _%$%g5923159254%_)))))
        (_%$%g5922959319%_ _%$stx59226%_)))))

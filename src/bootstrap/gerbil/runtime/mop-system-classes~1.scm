(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g147284_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx146767%_)
        (let* ((_%$%g146770146808%_
                (lambda (_%$%g146771146804%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146771146804%_)))
               (_%$%g146769146975%_
                (lambda (_%$%g146771146812%_)
                  (if (gx#stx-pair? _%$%g146771146812%_)
                      (let ((_%$%e146776146815%_
                             (gx#syntax-e _%$%g146771146812%_)))
                        (let ((_%$%hd146777146819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146776146815%_)))
                              (_%$%tl146778146822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146776146815%_))))
                          (if (gx#stx-pair? _%$%tl146778146822%_)
                              (let ((_%$%e146779146825%_
                                     (gx#syntax-e _%$%tl146778146822%_)))
                                (let ((_%$%hd146780146829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e146779146825%_)))
                                      (_%$%tl146781146832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e146779146825%_))))
                                  (if (gx#stx-pair? _%$%hd146780146829%_)
                                      (let ((_%$%e146782146835%_
                                             (gx#syntax-e
                                              _%$%hd146780146829%_)))
                                        (let ((_%$%hd146783146839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e146782146835%_)))
                                              (_%$%tl146784146842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e146782146835%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl146784146842%_)
                                              (let ((_%$%e146785146845%_
                                                     (gx#syntax-e
                                                      _%$%tl146784146842%_)))
                                                (let ((_%$%hd146786146849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e146785146845%_)))
                                                      (_%$%tl146787146852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e146785146845%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl146787146852%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl146781146832%_)
                                                          (let ((_%$%e146788146855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl146781146832%_)))
                    (let ((_%$%hd146789146859%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e146788146855%_)))
                          (_%$%tl146790146862%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e146788146855%_))))
                      (if (gx#identifier? _%$%hd146789146859%_)
                          (if (gx#free-identifier=?
                               |[1]#_g147284_|
                               _%$%hd146789146859%_)
                              (if (gx#stx-pair? _%$%tl146790146862%_)
                                  (let ((_%$%e146791146865%_
                                         (gx#syntax-e _%$%tl146790146862%_)))
                                    (let ((_%$%hd146792146869%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e146791146865%_)))
                                          (_%$%tl146793146872%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e146791146865%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl146793146872%_)
                                          (let ((_g147285_
                                                 (gx#syntax-split-splice
                                                  _%$%tl146793146872%_
                                                  '0)))
                                            (begin
                                              (let ((_g147286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g147285_)
                                                           (##values-length
                                                            _g147285_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g147286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g147286_)))
                                              (let ((_%$%target146794146875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147285_
                                                        0)))
                                                    (_%$%tl146796146878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147285_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl146796146878%_)
                                                    (letrec ((_%$%loop146797146881%_
                                                              (lambda (_%$%hd146795146885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body146801146888%_)
                        (if (gx#stx-pair? _%$%hd146795146885%_)
                            (let ((_%$%e146798146890%_
                                   (gx#syntax-e _%$%hd146795146885%_)))
                              (let ((_%$%lp-hd146799146894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e146798146890%_)))
                                    (_%$%lp-tl146800146897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e146798146890%_))))
                                (_%$%loop146797146881%_
                                 _%$%lp-tl146800146897%_
                                 (cons _%$%lp-hd146799146894%_
                                       _%$%body146801146888%_))))
                            (let* ((_%$%body146802146900%_
                                    (reverse _%$%body146801146888%_))
                                   (_%$%g146936146944%_
                                    (lambda (_%$%g146937146940%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g146937146940%_)))
                                   (_%$%g146935146971%_
                                    (lambda (_%$%g146937146948%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd146783146839%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g146937146948%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd146786146849%_ '())
                                              (let ((__tmp147287
                                                     (lambda (_%$%g146962146965%_
                                                              _%$%g146963146968%_)
                                                       (cons _%$%g146962146965%_
                                                             _%$%g146963146968%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp147287
                                                 '()
                                                 _%$%body146802146900%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g146935146971%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx146767%_
                                  _%$%hd146792146869%_))))))))
              (_%$%loop146797146881%_ _%$%target146794146875%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g146770146808%_
                                                     _%$%g146771146812%_)))))
                                          (_%$%g146770146808%_
                                           _%$%g146771146812%_))))
                                  (_%$%g146770146808%_ _%$%g146771146812%_))
                              (_%$%g146770146808%_ _%$%g146771146812%_))
                          (_%$%g146770146808%_ _%$%g146771146812%_))))
                  (_%$%g146770146808%_ _%$%g146771146812%_))
              (_%$%g146770146808%_ _%$%g146771146812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g146770146808%_
                                               _%$%g146771146812%_))))
                                      (_%$%g146770146808%_
                                       _%$%g146771146812%_))))
                              (_%$%g146770146808%_ _%$%g146771146812%_))))
                      (_%$%g146770146808%_ _%$%g146771146812%_)))))
          (_%$%g146769146975%_ _%stx146767%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx146980%_)
        (let* ((_%$%g146984147004%_
                (lambda (_%$%g146985147000%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146985147000%_)))
               (_%$%g146983147073%_
                (lambda (_%$%g146985147008%_)
                  (if (gx#stx-pair? _%$%g146985147008%_)
                      (let ((_%$%e146987147011%_
                             (gx#syntax-e _%$%g146985147008%_)))
                        (let ((_%$%hd146988147015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146987147011%_)))
                              (_%$%tl146989147018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146987147011%_))))
                          (if (gx#stx-pair/null? _%$%tl146989147018%_)
                              (let ((_g147288_
                                     (gx#syntax-split-splice
                                      _%$%tl146989147018%_
                                      '0)))
                                (begin
                                  (let ((_g147289_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g147288_)
                                               (##values-length _g147288_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g147289_ 2)))
                                        (error "Context expects 2 values"
                                               _g147289_)))
                                  (let ((_%$%target146990147021%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147288_ 0)))
                                        (_%$%tl146992147024%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147288_ 1))))
                                    (if (gx#stx-null? _%$%tl146992147024%_)
                                        (letrec ((_%$%loop146993147027%_
                                                  (lambda (_%$%hd146991147031%_
                                                           _%$%t146997147034%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd146991147031%_)
                                                        (let ((_%$%e146994147036%_
                                                               (gx#syntax-e
                                                                _%$%hd146991147031%_)))
                                                          (let ((_%$%lp-hd146995147040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e146994147036%_)))
                        (_%$%lp-tl146996147043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e146994147036%_))))
                    (_%$%loop146993147027%_
                     _%$%lp-tl146996147043%_
                     (cons _%$%lp-hd146995147040%_ _%$%t146997147034%_))))
                (let ((_%$%t146998147046%_ (reverse _%$%t146997147034%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp147291
                                     (lambda (_%$%g147064147067%_
                                              _%$%g147065147070%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g147064147067%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g147065147070%_)))
                                    (__tmp147290
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp147291
                                 __tmp147290
                                 _%$%t146998147046%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop146993147027%_
                                           _%$%target146990147021%_
                                           '()))
                                        (_%$%g146984147004%_
                                         _%$%g146985147008%_)))))
                              (_%$%g146984147004%_ _%$%g146985147008%_))))
                      (_%$%g146984147004%_ _%$%g146985147008%_)))))
          (_%$%g146983147073%_ _%$stx146980%_))))))

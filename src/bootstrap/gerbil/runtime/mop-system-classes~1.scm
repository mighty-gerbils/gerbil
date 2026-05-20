(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g140782_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx140265%_)
        (let* ((_%g140268140306%_
                (lambda (_%g140269140302%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140269140302%_)))
               (_%g140267140473%_
                (lambda (_%g140269140310%_)
                  (if (gx#stx-pair? _%g140269140310%_)
                      (let ((_%e140274140313%_
                             (gx#syntax-e _%g140269140310%_)))
                        (let ((_%hd140275140317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140274140313%_)))
                              (_%tl140276140320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140274140313%_))))
                          (if (gx#stx-pair? _%tl140276140320%_)
                              (let ((_%e140277140323%_
                                     (gx#syntax-e _%tl140276140320%_)))
                                (let ((_%hd140278140327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140277140323%_)))
                                      (_%tl140279140330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140277140323%_))))
                                  (if (gx#stx-pair? _%hd140278140327%_)
                                      (let ((_%e140280140333%_
                                             (gx#syntax-e _%hd140278140327%_)))
                                        (let ((_%hd140281140337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140280140333%_)))
                                              (_%tl140282140340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140280140333%_))))
                                          (if (gx#stx-pair? _%tl140282140340%_)
                                              (let ((_%e140283140343%_
                                                     (gx#syntax-e
                                                      _%tl140282140340%_)))
                                                (let ((_%hd140284140347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140283140343%_)))
                                                      (_%tl140285140350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140283140343%_))))
                                                  (if (gx#stx-null?
                                                       _%tl140285140350%_)
                                                      (if (gx#stx-pair?
                                                           _%tl140279140330%_)
                                                          (let ((_%e140286140353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl140279140330%_)))
                    (let ((_%hd140287140357%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140286140353%_)))
                          (_%tl140288140360%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140286140353%_))))
                      (if (gx#identifier? _%hd140287140357%_)
                          (if (gx#free-identifier=?
                               |[1]#_g140782_|
                               _%hd140287140357%_)
                              (if (gx#stx-pair? _%tl140288140360%_)
                                  (let ((_%e140289140363%_
                                         (gx#syntax-e _%tl140288140360%_)))
                                    (let ((_%hd140290140367%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140289140363%_)))
                                          (_%tl140291140370%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140289140363%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl140291140370%_)
                                          (let ((_g140783_
                                                 (gx#syntax-split-splice
                                                  _%tl140291140370%_
                                                  '0)))
                                            (begin
                                              (let ((_g140784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g140783_)
                                                           (##values-length
                                                            _g140783_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g140784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g140784_)))
                                              (let ((_%target140292140373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140783_
                                                        0)))
                                                    (_%tl140294140376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140783_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl140294140376%_)
                                                    (letrec ((_%loop140295140379%_
                                                              (lambda (_%hd140293140383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body140299140386%_)
                        (if (gx#stx-pair? _%hd140293140383%_)
                            (let ((_%e140296140388%_
                                   (gx#syntax-e _%hd140293140383%_)))
                              (let ((_%lp-hd140297140392%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140296140388%_)))
                                    (_%lp-tl140298140395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140296140388%_))))
                                (_%loop140295140379%_
                                 _%lp-tl140298140395%_
                                 (cons _%lp-hd140297140392%_
                                       _%body140299140386%_))))
                            (let ((_%body140300140398%_
                                   (reverse _%body140299140386%_)))
                              ((lambda (_%g140270140401%_
                                        _%g140271140403%_
                                        _%g140272140404%_
                                        _%g140273140405%_)
                                 (let* ((_%g140434140442%_
                                         (lambda (_%g140435140438%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g140435140438%_)))
                                        (_%g140433140469%_
                                         (lambda (_%g140435140446%_)
                                           ((lambda (_%g140436140449%_)
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%g140273140405%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%g140436140449%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g140272140404%_
                                                            '())
                                                      (let ((__tmp140785
                                                             (lambda (_%g140460140463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140461140466%_)
                       (cons _%g140460140463%_ _%g140461140466%_))))
                (declare (not safe))
                (foldr__0 __tmp140785 '() _%g140270140401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g140435140446%_))))
                                   (_%g140433140469%_
                                    (let ()
                                      (declare (not safe))
                                      (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                       _%stx140265%_
                                       _%g140271140403%_)))))
                               _%body140300140398%_
                               _%hd140290140367%_
                               _%hd140284140347%_
                               _%hd140281140337%_))))))
              (_%loop140295140379%_ _%target140292140373%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g140268140306%_
                                                     _%g140269140310%_)))))
                                          (_%g140268140306%_
                                           _%g140269140310%_))))
                                  (_%g140268140306%_ _%g140269140310%_))
                              (_%g140268140306%_ _%g140269140310%_))
                          (_%g140268140306%_ _%g140269140310%_))))
                  (_%g140268140306%_ _%g140269140310%_))
              (_%g140268140306%_ _%g140269140310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140268140306%_
                                               _%g140269140310%_))))
                                      (_%g140268140306%_ _%g140269140310%_))))
                              (_%g140268140306%_ _%g140269140310%_))))
                      (_%g140268140306%_ _%g140269140310%_)))))
          (_%g140267140473%_ _%stx140265%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx140478%_)
        (let* ((_%g140482140502%_
                (lambda (_%g140483140498%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140483140498%_)))
               (_%g140481140571%_
                (lambda (_%g140483140506%_)
                  (if (gx#stx-pair? _%g140483140506%_)
                      (let ((_%e140485140509%_
                             (gx#syntax-e _%g140483140506%_)))
                        (let ((_%hd140486140513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140485140509%_)))
                              (_%tl140487140516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140485140509%_))))
                          (if (gx#stx-pair/null? _%tl140487140516%_)
                              (let ((_g140786_
                                     (gx#syntax-split-splice
                                      _%tl140487140516%_
                                      '0)))
                                (begin
                                  (let ((_g140787_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g140786_)
                                               (##values-length _g140786_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g140787_ 2)))
                                        (error "Context expects 2 values"
                                               _g140787_)))
                                  (let ((_%target140488140519%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g140786_ 0)))
                                        (_%tl140490140522%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g140786_ 1))))
                                    (if (gx#stx-null? _%tl140490140522%_)
                                        (letrec ((_%loop140491140525%_
                                                  (lambda (_%hd140489140529%_
                                                           _%t140495140532%_)
                                                    (if (gx#stx-pair?
                                                         _%hd140489140529%_)
                                                        (let ((_%e140492140534%_
                                                               (gx#syntax-e
                                                                _%hd140489140529%_)))
                                                          (let ((_%lp-hd140493140538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e140492140534%_)))
                        (_%lp-tl140494140541%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140492140534%_))))
                    (_%loop140491140525%_
                     _%lp-tl140494140541%_
                     (cons _%lp-hd140493140538%_ _%t140495140532%_))))
                (let ((_%t140496140544%_ (reverse _%t140495140532%_)))
                  ((lambda (_%g140484140547%_)
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'vec)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-vector)
                                                   (cons '32 (cons '#f '())))
                                             '()))
                                 (let ((__tmp140789
                                        (lambda (_%g140562140565%_
                                                 _%g140563140568%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'vec)
                                                            (cons _%g140562140565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g140563140568%_)))
                                       (__tmp140788
                                        (cons (gx#datum->syntax '#f 'vec)
                                              '())))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp140789
                                    __tmp140788
                                    _%g140484140547%_)))))
                   _%t140496140544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop140491140525%_
                                           _%target140488140519%_
                                           '()))
                                        (_%g140482140502%_
                                         _%g140483140506%_)))))
                              (_%g140482140502%_ _%g140483140506%_))))
                      (_%g140482140502%_ _%g140483140506%_)))))
          (_%g140481140571%_ _%$stx140478%_))))))

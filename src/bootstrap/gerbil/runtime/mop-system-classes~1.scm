(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g144354_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx143837%_)
        (let* ((_%$%g143840143878%_
                (lambda (_%$%g143841143874%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g143841143874%_)))
               (_%$%g143839144045%_
                (lambda (_%$%g143841143882%_)
                  (if (gx#stx-pair? _%$%g143841143882%_)
                      (let ((_%$%e143846143885%_
                             (gx#syntax-e _%$%g143841143882%_)))
                        (let ((_%$%hd143847143889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e143846143885%_)))
                              (_%$%tl143848143892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e143846143885%_))))
                          (if (gx#stx-pair? _%$%tl143848143892%_)
                              (let ((_%$%e143849143895%_
                                     (gx#syntax-e _%$%tl143848143892%_)))
                                (let ((_%$%hd143850143899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e143849143895%_)))
                                      (_%$%tl143851143902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e143849143895%_))))
                                  (if (gx#stx-pair? _%$%hd143850143899%_)
                                      (let ((_%$%e143852143905%_
                                             (gx#syntax-e
                                              _%$%hd143850143899%_)))
                                        (let ((_%$%hd143853143909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e143852143905%_)))
                                              (_%$%tl143854143912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e143852143905%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl143854143912%_)
                                              (let ((_%$%e143855143915%_
                                                     (gx#syntax-e
                                                      _%$%tl143854143912%_)))
                                                (let ((_%$%hd143856143919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e143855143915%_)))
                                                      (_%$%tl143857143922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e143855143915%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl143857143922%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl143851143902%_)
                                                          (let ((_%$%e143858143925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl143851143902%_)))
                    (let ((_%$%hd143859143929%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e143858143925%_)))
                          (_%$%tl143860143932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e143858143925%_))))
                      (if (gx#identifier? _%$%hd143859143929%_)
                          (if (gx#free-identifier=?
                               |[1]#_g144354_|
                               _%$%hd143859143929%_)
                              (if (gx#stx-pair? _%$%tl143860143932%_)
                                  (let ((_%$%e143861143935%_
                                         (gx#syntax-e _%$%tl143860143932%_)))
                                    (let ((_%$%hd143862143939%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e143861143935%_)))
                                          (_%$%tl143863143942%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e143861143935%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl143863143942%_)
                                          (let ((_g144355_
                                                 (gx#syntax-split-splice
                                                  _%$%tl143863143942%_
                                                  '0)))
                                            (begin
                                              (let ((_g144356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g144355_)
                                                           (##values-length
                                                            _g144355_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g144356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g144356_)))
                                              (let ((_%$%target143864143945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144355_
                                                        0)))
                                                    (_%$%tl143866143948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144355_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl143866143948%_)
                                                    (letrec ((_%$%loop143867143951%_
                                                              (lambda (_%$%hd143865143955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body143871143958%_)
                        (if (gx#stx-pair? _%$%hd143865143955%_)
                            (let ((_%$%e143868143960%_
                                   (gx#syntax-e _%$%hd143865143955%_)))
                              (let ((_%$%lp-hd143869143964%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e143868143960%_)))
                                    (_%$%lp-tl143870143967%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e143868143960%_))))
                                (_%$%loop143867143951%_
                                 _%$%lp-tl143870143967%_
                                 (cons _%$%lp-hd143869143964%_
                                       _%$%body143871143958%_))))
                            (let* ((_%$%body143872143970%_
                                    (reverse _%$%body143871143958%_))
                                   (_%$%g144006144014%_
                                    (lambda (_%$%g144007144010%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g144007144010%_)))
                                   (_%$%g144005144041%_
                                    (lambda (_%$%g144007144018%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd143853143909%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g144007144018%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd143856143919%_ '())
                                              (let ((__tmp144357
                                                     (lambda (_%$%g144032144035%_
                                                              _%$%g144033144038%_)
                                                       (cons _%$%g144032144035%_
                                                             _%$%g144033144038%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp144357
                                                 '()
                                                 _%$%body143872143970%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g144005144041%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx143837%_
                                  _%$%hd143862143939%_))))))))
              (_%$%loop143867143951%_ _%$%target143864143945%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g143840143878%_
                                                     _%$%g143841143882%_)))))
                                          (_%$%g143840143878%_
                                           _%$%g143841143882%_))))
                                  (_%$%g143840143878%_ _%$%g143841143882%_))
                              (_%$%g143840143878%_ _%$%g143841143882%_))
                          (_%$%g143840143878%_ _%$%g143841143882%_))))
                  (_%$%g143840143878%_ _%$%g143841143882%_))
              (_%$%g143840143878%_ _%$%g143841143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g143840143878%_
                                               _%$%g143841143882%_))))
                                      (_%$%g143840143878%_
                                       _%$%g143841143882%_))))
                              (_%$%g143840143878%_ _%$%g143841143882%_))))
                      (_%$%g143840143878%_ _%$%g143841143882%_)))))
          (_%$%g143839144045%_ _%stx143837%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx144050%_)
        (let* ((_%$%g144054144074%_
                (lambda (_%$%g144055144070%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g144055144070%_)))
               (_%$%g144053144143%_
                (lambda (_%$%g144055144078%_)
                  (if (gx#stx-pair? _%$%g144055144078%_)
                      (let ((_%$%e144057144081%_
                             (gx#syntax-e _%$%g144055144078%_)))
                        (let ((_%$%hd144058144085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e144057144081%_)))
                              (_%$%tl144059144088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e144057144081%_))))
                          (if (gx#stx-pair/null? _%$%tl144059144088%_)
                              (let ((_g144358_
                                     (gx#syntax-split-splice
                                      _%$%tl144059144088%_
                                      '0)))
                                (begin
                                  (let ((_g144359_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g144358_)
                                               (##values-length _g144358_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g144359_ 2)))
                                        (error "Context expects 2 values"
                                               _g144359_)))
                                  (let ((_%$%target144060144091%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g144358_ 0)))
                                        (_%$%tl144062144094%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g144358_ 1))))
                                    (if (gx#stx-null? _%$%tl144062144094%_)
                                        (letrec ((_%$%loop144063144097%_
                                                  (lambda (_%$%hd144061144101%_
                                                           _%$%t144067144104%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd144061144101%_)
                                                        (let ((_%$%e144064144106%_
                                                               (gx#syntax-e
                                                                _%$%hd144061144101%_)))
                                                          (let ((_%$%lp-hd144065144110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e144064144106%_)))
                        (_%$%lp-tl144066144113%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e144064144106%_))))
                    (_%$%loop144063144097%_
                     _%$%lp-tl144066144113%_
                     (cons _%$%lp-hd144065144110%_ _%$%t144067144104%_))))
                (let ((_%$%t144068144116%_ (reverse _%$%t144067144104%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp144361
                                     (lambda (_%$%g144134144137%_
                                              _%$%g144135144140%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g144134144137%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g144135144140%_)))
                                    (__tmp144360
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp144361
                                 __tmp144360
                                 _%$%t144068144116%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop144063144097%_
                                           _%$%target144060144091%_
                                           '()))
                                        (_%$%g144054144074%_
                                         _%$%g144055144078%_)))))
                              (_%$%g144054144074%_ _%$%g144055144078%_))))
                      (_%$%g144054144074%_ _%$%g144055144078%_)))))
          (_%$%g144053144143%_ _%$stx144050%_))))))

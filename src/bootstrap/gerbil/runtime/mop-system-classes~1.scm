(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g141229_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx140712%_)
        (let* ((_%g140715140753%_
                (lambda (_%g140716140749%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140716140749%_)))
               (_%g140714140920%_
                (lambda (_%g140716140757%_)
                  (if (gx#stx-pair? _%g140716140757%_)
                      (let ((_%e140721140760%_
                             (gx#syntax-e _%g140716140757%_)))
                        (let ((_%hd140722140764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140721140760%_)))
                              (_%tl140723140767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140721140760%_))))
                          (if (gx#stx-pair? _%tl140723140767%_)
                              (let ((_%e140724140770%_
                                     (gx#syntax-e _%tl140723140767%_)))
                                (let ((_%hd140725140774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140724140770%_)))
                                      (_%tl140726140777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140724140770%_))))
                                  (if (gx#stx-pair? _%hd140725140774%_)
                                      (let ((_%e140727140780%_
                                             (gx#syntax-e _%hd140725140774%_)))
                                        (let ((_%hd140728140784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140727140780%_)))
                                              (_%tl140729140787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140727140780%_))))
                                          (if (gx#stx-pair? _%tl140729140787%_)
                                              (let ((_%e140730140790%_
                                                     (gx#syntax-e
                                                      _%tl140729140787%_)))
                                                (let ((_%hd140731140794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140730140790%_)))
                                                      (_%tl140732140797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140730140790%_))))
                                                  (if (gx#stx-null?
                                                       _%tl140732140797%_)
                                                      (if (gx#stx-pair?
                                                           _%tl140726140777%_)
                                                          (let ((_%e140733140800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl140726140777%_)))
                    (let ((_%hd140734140804%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140733140800%_)))
                          (_%tl140735140807%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140733140800%_))))
                      (if (gx#identifier? _%hd140734140804%_)
                          (if (gx#free-identifier=?
                               |[1]#_g141229_|
                               _%hd140734140804%_)
                              (if (gx#stx-pair? _%tl140735140807%_)
                                  (let ((_%e140736140810%_
                                         (gx#syntax-e _%tl140735140807%_)))
                                    (let ((_%hd140737140814%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140736140810%_)))
                                          (_%tl140738140817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140736140810%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl140738140817%_)
                                          (let ((_g141230_
                                                 (gx#syntax-split-splice
                                                  _%tl140738140817%_
                                                  '0)))
                                            (begin
                                              (let ((_g141231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141230_)
                                                           (##values-length
                                                            _g141230_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141231_)))
                                              (let ((_%target140739140820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141230_
                                                        0)))
                                                    (_%tl140741140823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141230_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl140741140823%_)
                                                    (letrec ((_%loop140742140826%_
                                                              (lambda (_%hd140740140830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body140746140833%_)
                        (if (gx#stx-pair? _%hd140740140830%_)
                            (let ((_%e140743140835%_
                                   (gx#syntax-e _%hd140740140830%_)))
                              (let ((_%lp-hd140744140839%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140743140835%_)))
                                    (_%lp-tl140745140842%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140743140835%_))))
                                (_%loop140742140826%_
                                 _%lp-tl140745140842%_
                                 (cons _%lp-hd140744140839%_
                                       _%body140746140833%_))))
                            (let* ((_%body140747140845%_
                                    (reverse _%body140746140833%_))
                                   (_%g140881140889%_
                                    (lambda (_%g140882140885%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g140882140885%_)))
                                   (_%g140880140916%_
                                    (lambda (_%g140882140893%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%hd140728140784%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%g140882140893%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%hd140731140794%_ '())
                                              (let ((__tmp141232
                                                     (lambda (_%g140907140910%_
                                                              _%g140908140913%_)
                                                       (cons _%g140907140910%_
                                                             _%g140908140913%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp141232
                                                 '()
                                                 _%body140747140845%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%g140880140916%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx140712%_
                                  _%hd140737140814%_))))))))
              (_%loop140742140826%_ _%target140739140820%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g140715140753%_
                                                     _%g140716140757%_)))))
                                          (_%g140715140753%_
                                           _%g140716140757%_))))
                                  (_%g140715140753%_ _%g140716140757%_))
                              (_%g140715140753%_ _%g140716140757%_))
                          (_%g140715140753%_ _%g140716140757%_))))
                  (_%g140715140753%_ _%g140716140757%_))
              (_%g140715140753%_ _%g140716140757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140715140753%_
                                               _%g140716140757%_))))
                                      (_%g140715140753%_ _%g140716140757%_))))
                              (_%g140715140753%_ _%g140716140757%_))))
                      (_%g140715140753%_ _%g140716140757%_)))))
          (_%g140714140920%_ _%stx140712%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx140925%_)
        (let* ((_%g140929140949%_
                (lambda (_%g140930140945%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140930140945%_)))
               (_%g140928141018%_
                (lambda (_%g140930140953%_)
                  (if (gx#stx-pair? _%g140930140953%_)
                      (let ((_%e140932140956%_
                             (gx#syntax-e _%g140930140953%_)))
                        (let ((_%hd140933140960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140932140956%_)))
                              (_%tl140934140963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140932140956%_))))
                          (if (gx#stx-pair/null? _%tl140934140963%_)
                              (let ((_g141233_
                                     (gx#syntax-split-splice
                                      _%tl140934140963%_
                                      '0)))
                                (begin
                                  (let ((_g141234_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g141233_)
                                               (##values-length _g141233_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g141234_ 2)))
                                        (error "Context expects 2 values"
                                               _g141234_)))
                                  (let ((_%target140935140966%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g141233_ 0)))
                                        (_%tl140937140969%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g141233_ 1))))
                                    (if (gx#stx-null? _%tl140937140969%_)
                                        (letrec ((_%loop140938140972%_
                                                  (lambda (_%hd140936140976%_
                                                           _%t140942140979%_)
                                                    (if (gx#stx-pair?
                                                         _%hd140936140976%_)
                                                        (let ((_%e140939140981%_
                                                               (gx#syntax-e
                                                                _%hd140936140976%_)))
                                                          (let ((_%lp-hd140940140985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e140939140981%_)))
                        (_%lp-tl140941140988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140939140981%_))))
                    (_%loop140938140972%_
                     _%lp-tl140941140988%_
                     (cons _%lp-hd140940140985%_ _%t140942140979%_))))
                (let ((_%t140943140991%_ (reverse _%t140942140979%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp141236
                                     (lambda (_%g141009141012%_
                                              _%g141010141015%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%g141009141012%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g141010141015%_)))
                                    (__tmp141235
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp141236
                                 __tmp141235
                                 _%t140943140991%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop140938140972%_
                                           _%target140935140966%_
                                           '()))
                                        (_%g140929140949%_
                                         _%g140930140953%_)))))
                              (_%g140929140949%_ _%g140930140953%_))))
                      (_%g140929140949%_ _%g140930140953%_)))))
          (_%g140928141018%_ _%$stx140925%_))))))

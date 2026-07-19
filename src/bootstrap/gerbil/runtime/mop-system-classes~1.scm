(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g147151_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx146634%_)
        (let* ((_%$%g146637146675%_
                (lambda (_%$%g146638146671%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146638146671%_)))
               (_%$%g146636146842%_
                (lambda (_%$%g146638146679%_)
                  (if (gx#stx-pair? _%$%g146638146679%_)
                      (let ((_%$%e146643146682%_
                             (gx#syntax-e _%$%g146638146679%_)))
                        (let ((_%$%hd146644146686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146643146682%_)))
                              (_%$%tl146645146689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146643146682%_))))
                          (if (gx#stx-pair? _%$%tl146645146689%_)
                              (let ((_%$%e146646146692%_
                                     (gx#syntax-e _%$%tl146645146689%_)))
                                (let ((_%$%hd146647146696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e146646146692%_)))
                                      (_%$%tl146648146699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e146646146692%_))))
                                  (if (gx#stx-pair? _%$%hd146647146696%_)
                                      (let ((_%$%e146649146702%_
                                             (gx#syntax-e
                                              _%$%hd146647146696%_)))
                                        (let ((_%$%hd146650146706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e146649146702%_)))
                                              (_%$%tl146651146709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e146649146702%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl146651146709%_)
                                              (let ((_%$%e146652146712%_
                                                     (gx#syntax-e
                                                      _%$%tl146651146709%_)))
                                                (let ((_%$%hd146653146716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e146652146712%_)))
                                                      (_%$%tl146654146719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e146652146712%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl146654146719%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl146648146699%_)
                                                          (let ((_%$%e146655146722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl146648146699%_)))
                    (let ((_%$%hd146656146726%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e146655146722%_)))
                          (_%$%tl146657146729%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e146655146722%_))))
                      (if (gx#identifier? _%$%hd146656146726%_)
                          (if (gx#free-identifier=?
                               |[1]#_g147151_|
                               _%$%hd146656146726%_)
                              (if (gx#stx-pair? _%$%tl146657146729%_)
                                  (let ((_%$%e146658146732%_
                                         (gx#syntax-e _%$%tl146657146729%_)))
                                    (let ((_%$%hd146659146736%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e146658146732%_)))
                                          (_%$%tl146660146739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e146658146732%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl146660146739%_)
                                          (let ((_g147152_
                                                 (gx#syntax-split-splice
                                                  _%$%tl146660146739%_
                                                  '0)))
                                            (begin
                                              (let ((_g147153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g147152_)
                                                           (##values-length
                                                            _g147152_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g147153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g147153_)))
                                              (let ((_%$%target146661146742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147152_
                                                        0)))
                                                    (_%$%tl146663146745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147152_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl146663146745%_)
                                                    (letrec ((_%$%loop146664146748%_
                                                              (lambda (_%$%hd146662146752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body146668146755%_)
                        (if (gx#stx-pair? _%$%hd146662146752%_)
                            (let ((_%$%e146665146757%_
                                   (gx#syntax-e _%$%hd146662146752%_)))
                              (let ((_%$%lp-hd146666146761%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e146665146757%_)))
                                    (_%$%lp-tl146667146764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e146665146757%_))))
                                (_%$%loop146664146748%_
                                 _%$%lp-tl146667146764%_
                                 (cons _%$%lp-hd146666146761%_
                                       _%$%body146668146755%_))))
                            (let* ((_%$%body146669146767%_
                                    (reverse _%$%body146668146755%_))
                                   (_%$%g146803146811%_
                                    (lambda (_%$%g146804146807%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g146804146807%_)))
                                   (_%$%g146802146838%_
                                    (lambda (_%$%g146804146815%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd146650146706%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g146804146815%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd146653146716%_ '())
                                              (let ((__tmp147154
                                                     (lambda (_%$%g146829146832%_
                                                              _%$%g146830146835%_)
                                                       (cons _%$%g146829146832%_
                                                             _%$%g146830146835%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp147154
                                                 '()
                                                 _%$%body146669146767%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g146802146838%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx146634%_
                                  _%$%hd146659146736%_))))))))
              (_%$%loop146664146748%_ _%$%target146661146742%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g146637146675%_
                                                     _%$%g146638146679%_)))))
                                          (_%$%g146637146675%_
                                           _%$%g146638146679%_))))
                                  (_%$%g146637146675%_ _%$%g146638146679%_))
                              (_%$%g146637146675%_ _%$%g146638146679%_))
                          (_%$%g146637146675%_ _%$%g146638146679%_))))
                  (_%$%g146637146675%_ _%$%g146638146679%_))
              (_%$%g146637146675%_ _%$%g146638146679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g146637146675%_
                                               _%$%g146638146679%_))))
                                      (_%$%g146637146675%_
                                       _%$%g146638146679%_))))
                              (_%$%g146637146675%_ _%$%g146638146679%_))))
                      (_%$%g146637146675%_ _%$%g146638146679%_)))))
          (_%$%g146636146842%_ _%stx146634%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx146847%_)
        (let* ((_%$%g146851146871%_
                (lambda (_%$%g146852146867%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146852146867%_)))
               (_%$%g146850146940%_
                (lambda (_%$%g146852146875%_)
                  (if (gx#stx-pair? _%$%g146852146875%_)
                      (let ((_%$%e146854146878%_
                             (gx#syntax-e _%$%g146852146875%_)))
                        (let ((_%$%hd146855146882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146854146878%_)))
                              (_%$%tl146856146885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146854146878%_))))
                          (if (gx#stx-pair/null? _%$%tl146856146885%_)
                              (let ((_g147155_
                                     (gx#syntax-split-splice
                                      _%$%tl146856146885%_
                                      '0)))
                                (begin
                                  (let ((_g147156_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g147155_)
                                               (##values-length _g147155_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g147156_ 2)))
                                        (error "Context expects 2 values"
                                               _g147156_)))
                                  (let ((_%$%target146857146888%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147155_ 0)))
                                        (_%$%tl146859146891%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147155_ 1))))
                                    (if (gx#stx-null? _%$%tl146859146891%_)
                                        (letrec ((_%$%loop146860146894%_
                                                  (lambda (_%$%hd146858146898%_
                                                           _%$%t146864146901%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd146858146898%_)
                                                        (let ((_%$%e146861146903%_
                                                               (gx#syntax-e
                                                                _%$%hd146858146898%_)))
                                                          (let ((_%$%lp-hd146862146907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e146861146903%_)))
                        (_%$%lp-tl146863146910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e146861146903%_))))
                    (_%$%loop146860146894%_
                     _%$%lp-tl146863146910%_
                     (cons _%$%lp-hd146862146907%_ _%$%t146864146901%_))))
                (let ((_%$%t146865146913%_ (reverse _%$%t146864146901%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp147158
                                     (lambda (_%$%g146931146934%_
                                              _%$%g146932146937%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g146931146934%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g146932146937%_)))
                                    (__tmp147157
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp147158
                                 __tmp147157
                                 _%$%t146865146913%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop146860146894%_
                                           _%$%target146857146888%_
                                           '()))
                                        (_%$%g146851146871%_
                                         _%$%g146852146875%_)))))
                              (_%$%g146851146871%_ _%$%g146852146875%_))))
                      (_%$%g146851146871%_ _%$%g146852146875%_)))))
          (_%$%g146850146940%_ _%$stx146847%_))))))

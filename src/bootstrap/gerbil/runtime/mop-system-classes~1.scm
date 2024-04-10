(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g99476_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx99103%_)
      (let* ((_%g9910699144%_
              (lambda (_%g9910799140%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9910799140%_)))
             (_%g9910599313%_
              (lambda (_%g9910799148%_)
                (if (gx#stx-pair? _%g9910799148%_)
                    (let ((_%e9911299151%_ (gx#syntax-e _%g9910799148%_)))
                      (let ((_%hd9911399155%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9911299151%_)))
                            (_%tl9911499158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9911299151%_))))
                        (if (gx#stx-pair? _%tl9911499158%_)
                            (let ((_%e9911599161%_
                                   (gx#syntax-e _%tl9911499158%_)))
                              (let ((_%hd9911699165%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9911599161%_)))
                                    (_%tl9911799168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9911599161%_))))
                                (if (gx#stx-pair? _%hd9911699165%_)
                                    (let ((_%e9911899171%_
                                           (gx#syntax-e _%hd9911699165%_)))
                                      (let ((_%hd9911999175%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9911899171%_)))
                                            (_%tl9912099178%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9911899171%_))))
                                        (if (gx#stx-pair? _%tl9912099178%_)
                                            (let ((_%e9912199181%_
                                                   (gx#syntax-e
                                                    _%tl9912099178%_)))
                                              (let ((_%hd9912299185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9912199181%_)))
                                                    (_%tl9912399188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9912199181%_))))
                                                (if (gx#stx-null?
                                                     _%tl9912399188%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9911799168%_)
                                                        (let ((_%e9912499191%_
                                                               (gx#syntax-e
                                                                _%tl9911799168%_)))
                                                          (let ((_%hd9912599195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9912499191%_)))
                        (_%tl9912699198%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9912499191%_))))
                    (if (gx#identifier? _%hd9912599195%_)
                        (if (gx#free-identifier=?
                             |[1]#_g99476_|
                             _%hd9912599195%_)
                            (if (gx#stx-pair? _%tl9912699198%_)
                                (let ((_%e9912799201%_
                                       (gx#syntax-e _%tl9912699198%_)))
                                  (let ((_%hd9912899205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9912799201%_)))
                                        (_%tl9912999208%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9912799201%_))))
                                    (if (gx#stx-pair/null? _%tl9912999208%_)
                                        (let ((_g99477_
                                               (gx#syntax-split-splice
                                                _%tl9912999208%_
                                                '0)))
                                          (begin
                                            (let ((_g99478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g99477_)
                                                         (##vector-length
                                                          _g99477_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g99478_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g99478_)))
                                            (let ((_%target9913099211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g99477_
                                                      0)))
                                                  (_%tl9913299214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g99477_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9913299214%_)
                                                  (letrec ((_%loop9913399217%_
                                                            (lambda (_%hd9913199221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9913799224%_)
                      (if (gx#stx-pair? _%hd9913199221%_)
                          (let ((_%e9913499227%_
                                 (gx#syntax-e _%hd9913199221%_)))
                            (let ((_%lp-hd9913599231%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9913499227%_)))
                                  (_%lp-tl9913699234%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9913499227%_))))
                              (_%loop9913399217%_
                               _%lp-tl9913699234%_
                               (cons _%lp-hd9913599231%_ _%body9913799224%_))))
                          (let ((_%body9913899237%_
                                 (reverse _%body9913799224%_)))
                            ((lambda (_%L99241%_
                                      _%L99243%_
                                      _%L99244%_
                                      _%L99245%_)
                               (let* ((_%g9927499282%_
                                       (lambda (_%g9927599278%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9927599278%_)))
                                      (_%g9927399309%_
                                       (lambda (_%g9927599286%_)
                                         ((lambda (_%L99289%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L99245%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L99289%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L99244%_ '())
                                                    (let ((__tmp99479
                                                           (lambda (_%g9930099303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g9930199306%_)
                     (cons _%g9930099303%_ _%g9930199306%_))))
              (declare (not safe))
              (__foldr1 __tmp99479 '() _%L99241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9927599286%_))))
                                 (_%g9927399309%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx99103%_
                                     _%L99243%_)))))
                             _%body9913899237%_
                             _%hd9912899205%_
                             _%hd9912299185%_
                             _%hd9911999175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9913399217%_
                                                     _%target9913099211%_
                                                     '()))
                                                  (_%g9910699144%_
                                                   _%g9910799148%_)))))
                                        (_%g9910699144%_ _%g9910799148%_))))
                                (_%g9910699144%_ _%g9910799148%_))
                            (_%g9910699144%_ _%g9910799148%_))
                        (_%g9910699144%_ _%g9910799148%_))))
                (_%g9910699144%_ _%g9910799148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9910699144%_
                                                     _%g9910799148%_))))
                                            (_%g9910699144%_
                                             _%g9910799148%_))))
                                    (_%g9910699144%_ _%g9910799148%_))))
                            (_%g9910699144%_ _%g9910799148%_))))
                    (_%g9910699144%_ _%g9910799148%_)))))
        (_%g9910599313%_ _%stx99103%_)))))

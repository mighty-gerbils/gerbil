(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g103138_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx102765%_)
      (let* ((_%g102768102806%_
              (lambda (_%g102769102802%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102769102802%_)))
             (_%g102767102975%_
              (lambda (_%g102769102810%_)
                (if (gx#stx-pair? _%g102769102810%_)
                    (let ((_%e102774102813%_ (gx#syntax-e _%g102769102810%_)))
                      (let ((_%hd102775102817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102774102813%_)))
                            (_%tl102776102820%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102774102813%_))))
                        (if (gx#stx-pair? _%tl102776102820%_)
                            (let ((_%e102777102823%_
                                   (gx#syntax-e _%tl102776102820%_)))
                              (let ((_%hd102778102827%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102777102823%_)))
                                    (_%tl102779102830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102777102823%_))))
                                (if (gx#stx-pair? _%hd102778102827%_)
                                    (let ((_%e102780102833%_
                                           (gx#syntax-e _%hd102778102827%_)))
                                      (let ((_%hd102781102837%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102780102833%_)))
                                            (_%tl102782102840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102780102833%_))))
                                        (if (gx#stx-pair? _%tl102782102840%_)
                                            (let ((_%e102783102843%_
                                                   (gx#syntax-e
                                                    _%tl102782102840%_)))
                                              (let ((_%hd102784102847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102783102843%_)))
                                                    (_%tl102785102850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102783102843%_))))
                                                (if (gx#stx-null?
                                                     _%tl102785102850%_)
                                                    (if (gx#stx-pair?
                                                         _%tl102779102830%_)
                                                        (let ((_%e102786102853%_
                                                               (gx#syntax-e
                                                                _%tl102779102830%_)))
                                                          (let ((_%hd102787102857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e102786102853%_)))
                        (_%tl102788102860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102786102853%_))))
                    (if (gx#identifier? _%hd102787102857%_)
                        (if (gx#free-identifier=?
                             |[1]#_g103138_|
                             _%hd102787102857%_)
                            (if (gx#stx-pair? _%tl102788102860%_)
                                (let ((_%e102789102863%_
                                       (gx#syntax-e _%tl102788102860%_)))
                                  (let ((_%hd102790102867%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102789102863%_)))
                                        (_%tl102791102870%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102789102863%_))))
                                    (if (gx#stx-pair/null? _%tl102791102870%_)
                                        (let ((_g103139_
                                               (gx#syntax-split-splice
                                                _%tl102791102870%_
                                                '0)))
                                          (begin
                                            (let ((_g103140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g103139_)
                                                         (##values-length
                                                          _g103139_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g103140_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g103140_)))
                                            (let ((_%target102792102873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103139_
                                                      0)))
                                                  (_%tl102794102876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103139_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl102794102876%_)
                                                  (letrec ((_%loop102795102879%_
                                                            (lambda (_%hd102793102883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body102799102886%_)
                      (if (gx#stx-pair? _%hd102793102883%_)
                          (let ((_%e102796102889%_
                                 (gx#syntax-e _%hd102793102883%_)))
                            (let ((_%lp-hd102797102893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e102796102889%_)))
                                  (_%lp-tl102798102896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e102796102889%_))))
                              (_%loop102795102879%_
                               _%lp-tl102798102896%_
                               (cons _%lp-hd102797102893%_
                                     _%body102799102886%_))))
                          (let ((_%body102800102899%_
                                 (reverse _%body102799102886%_)))
                            ((lambda (_%L102903%_
                                      _%L102905%_
                                      _%L102906%_
                                      _%L102907%_)
                               (let* ((_%g102936102944%_
                                       (lambda (_%g102937102940%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102937102940%_)))
                                      (_%g102935102971%_
                                       (lambda (_%g102937102948%_)
                                         ((lambda (_%L102951%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102907%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102951%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102906%_ '())
                                                    (let ((__tmp103141
                                                           (lambda (_%g102962102965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102963102968%_)
                     (cons _%g102962102965%_ _%g102963102968%_))))
              (declare (not safe))
              (__foldr1 __tmp103141 '() _%L102903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102937102948%_))))
                                 (_%g102935102971%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx102765%_
                                     _%L102905%_)))))
                             _%body102800102899%_
                             _%hd102790102867%_
                             _%hd102784102847%_
                             _%hd102781102837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop102795102879%_
                                                     _%target102792102873%_
                                                     '()))
                                                  (_%g102768102806%_
                                                   _%g102769102810%_)))))
                                        (_%g102768102806%_
                                         _%g102769102810%_))))
                                (_%g102768102806%_ _%g102769102810%_))
                            (_%g102768102806%_ _%g102769102810%_))
                        (_%g102768102806%_ _%g102769102810%_))))
                (_%g102768102806%_ _%g102769102810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102768102806%_
                                                     _%g102769102810%_))))
                                            (_%g102768102806%_
                                             _%g102769102810%_))))
                                    (_%g102768102806%_ _%g102769102810%_))))
                            (_%g102768102806%_ _%g102769102810%_))))
                    (_%g102768102806%_ _%g102769102810%_)))))
        (_%g102767102975%_ _%stx102765%_)))))

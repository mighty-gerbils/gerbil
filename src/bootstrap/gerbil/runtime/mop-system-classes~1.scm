(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g109940_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx109567%_)
      (let* ((_%g109570109608%_
              (lambda (_%g109571109604%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g109571109604%_)))
             (_%g109569109777%_
              (lambda (_%g109571109612%_)
                (if (gx#stx-pair? _%g109571109612%_)
                    (let ((_%e109576109615%_ (gx#syntax-e _%g109571109612%_)))
                      (let ((_%hd109577109619%_
                             (let ()
                               (declare (not safe))
                               (##car _%e109576109615%_)))
                            (_%tl109578109622%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e109576109615%_))))
                        (if (gx#stx-pair? _%tl109578109622%_)
                            (let ((_%e109579109625%_
                                   (gx#syntax-e _%tl109578109622%_)))
                              (let ((_%hd109580109629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e109579109625%_)))
                                    (_%tl109581109632%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e109579109625%_))))
                                (if (gx#stx-pair? _%hd109580109629%_)
                                    (let ((_%e109582109635%_
                                           (gx#syntax-e _%hd109580109629%_)))
                                      (let ((_%hd109583109639%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e109582109635%_)))
                                            (_%tl109584109642%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e109582109635%_))))
                                        (if (gx#stx-pair? _%tl109584109642%_)
                                            (let ((_%e109585109645%_
                                                   (gx#syntax-e
                                                    _%tl109584109642%_)))
                                              (let ((_%hd109586109649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e109585109645%_)))
                                                    (_%tl109587109652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e109585109645%_))))
                                                (if (gx#stx-null?
                                                     _%tl109587109652%_)
                                                    (if (gx#stx-pair?
                                                         _%tl109581109632%_)
                                                        (let ((_%e109588109655%_
                                                               (gx#syntax-e
                                                                _%tl109581109632%_)))
                                                          (let ((_%hd109589109659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e109588109655%_)))
                        (_%tl109590109662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e109588109655%_))))
                    (if (gx#identifier? _%hd109589109659%_)
                        (if (gx#free-identifier=?
                             |[1]#_g109940_|
                             _%hd109589109659%_)
                            (if (gx#stx-pair? _%tl109590109662%_)
                                (let ((_%e109591109665%_
                                       (gx#syntax-e _%tl109590109662%_)))
                                  (let ((_%hd109592109669%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e109591109665%_)))
                                        (_%tl109593109672%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e109591109665%_))))
                                    (if (gx#stx-pair/null? _%tl109593109672%_)
                                        (let ((_g109941_
                                               (gx#syntax-split-splice
                                                _%tl109593109672%_
                                                '0)))
                                          (begin
                                            (let ((_g109942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g109941_)
                                                         (##values-length
                                                          _g109941_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g109942_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g109942_)))
                                            (let ((_%target109594109675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109941_
                                                      0)))
                                                  (_%tl109596109678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109941_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl109596109678%_)
                                                  (letrec ((_%loop109597109681%_
                                                            (lambda (_%hd109595109685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body109601109688%_)
                      (if (gx#stx-pair? _%hd109595109685%_)
                          (let ((_%e109598109691%_
                                 (gx#syntax-e _%hd109595109685%_)))
                            (let ((_%lp-hd109599109695%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e109598109691%_)))
                                  (_%lp-tl109600109698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e109598109691%_))))
                              (_%loop109597109681%_
                               _%lp-tl109600109698%_
                               (cons _%lp-hd109599109695%_
                                     _%body109601109688%_))))
                          (let ((_%body109602109701%_
                                 (reverse _%body109601109688%_)))
                            ((lambda (_%L109705%_
                                      _%L109707%_
                                      _%L109708%_
                                      _%L109709%_)
                               (let* ((_%g109738109746%_
                                       (lambda (_%g109739109742%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g109739109742%_)))
                                      (_%g109737109773%_
                                       (lambda (_%g109739109750%_)
                                         ((lambda (_%L109753%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L109709%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L109753%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L109708%_ '())
                                                    (let ((__tmp109943
                                                           (lambda (_%g109764109767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g109765109770%_)
                     (cons _%g109764109767%_ _%g109765109770%_))))
              (declare (not safe))
              (__foldr1 __tmp109943 '() _%L109705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g109739109750%_))))
                                 (_%g109737109773%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx109567%_
                                     _%L109707%_)))))
                             _%body109602109701%_
                             _%hd109592109669%_
                             _%hd109586109649%_
                             _%hd109583109639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop109597109681%_
                                                     _%target109594109675%_
                                                     '()))
                                                  (_%g109570109608%_
                                                   _%g109571109612%_)))))
                                        (_%g109570109608%_
                                         _%g109571109612%_))))
                                (_%g109570109608%_ _%g109571109612%_))
                            (_%g109570109608%_ _%g109571109612%_))
                        (_%g109570109608%_ _%g109571109612%_))))
                (_%g109570109608%_ _%g109571109612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g109570109608%_
                                                     _%g109571109612%_))))
                                            (_%g109570109608%_
                                             _%g109571109612%_))))
                                    (_%g109570109608%_ _%g109571109612%_))))
                            (_%g109570109608%_ _%g109571109612%_))))
                    (_%g109570109608%_ _%g109571109612%_)))))
        (_%g109569109777%_ _%stx109567%_)))))

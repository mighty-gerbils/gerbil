(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g109942_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx109569%_)
      (let* ((_%g109572109610%_
              (lambda (_%g109573109606%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g109573109606%_)))
             (_%g109571109779%_
              (lambda (_%g109573109614%_)
                (if (gx#stx-pair? _%g109573109614%_)
                    (let ((_%e109578109617%_ (gx#syntax-e _%g109573109614%_)))
                      (let ((_%hd109579109621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e109578109617%_)))
                            (_%tl109580109624%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e109578109617%_))))
                        (if (gx#stx-pair? _%tl109580109624%_)
                            (let ((_%e109581109627%_
                                   (gx#syntax-e _%tl109580109624%_)))
                              (let ((_%hd109582109631%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e109581109627%_)))
                                    (_%tl109583109634%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e109581109627%_))))
                                (if (gx#stx-pair? _%hd109582109631%_)
                                    (let ((_%e109584109637%_
                                           (gx#syntax-e _%hd109582109631%_)))
                                      (let ((_%hd109585109641%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e109584109637%_)))
                                            (_%tl109586109644%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e109584109637%_))))
                                        (if (gx#stx-pair? _%tl109586109644%_)
                                            (let ((_%e109587109647%_
                                                   (gx#syntax-e
                                                    _%tl109586109644%_)))
                                              (let ((_%hd109588109651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e109587109647%_)))
                                                    (_%tl109589109654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e109587109647%_))))
                                                (if (gx#stx-null?
                                                     _%tl109589109654%_)
                                                    (if (gx#stx-pair?
                                                         _%tl109583109634%_)
                                                        (let ((_%e109590109657%_
                                                               (gx#syntax-e
                                                                _%tl109583109634%_)))
                                                          (let ((_%hd109591109661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e109590109657%_)))
                        (_%tl109592109664%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e109590109657%_))))
                    (if (gx#identifier? _%hd109591109661%_)
                        (if (gx#free-identifier=?
                             |[1]#_g109942_|
                             _%hd109591109661%_)
                            (if (gx#stx-pair? _%tl109592109664%_)
                                (let ((_%e109593109667%_
                                       (gx#syntax-e _%tl109592109664%_)))
                                  (let ((_%hd109594109671%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e109593109667%_)))
                                        (_%tl109595109674%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e109593109667%_))))
                                    (if (gx#stx-pair/null? _%tl109595109674%_)
                                        (let ((_g109943_
                                               (gx#syntax-split-splice
                                                _%tl109595109674%_
                                                '0)))
                                          (begin
                                            (let ((_g109944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g109943_)
                                                         (##values-length
                                                          _g109943_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g109944_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g109944_)))
                                            (let ((_%target109596109677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109943_
                                                      0)))
                                                  (_%tl109598109680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109943_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl109598109680%_)
                                                  (letrec ((_%loop109599109683%_
                                                            (lambda (_%hd109597109687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body109603109690%_)
                      (if (gx#stx-pair? _%hd109597109687%_)
                          (let ((_%e109600109693%_
                                 (gx#syntax-e _%hd109597109687%_)))
                            (let ((_%lp-hd109601109697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e109600109693%_)))
                                  (_%lp-tl109602109700%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e109600109693%_))))
                              (_%loop109599109683%_
                               _%lp-tl109602109700%_
                               (cons _%lp-hd109601109697%_
                                     _%body109603109690%_))))
                          (let ((_%body109604109703%_
                                 (reverse _%body109603109690%_)))
                            ((lambda (_%L109707%_
                                      _%L109709%_
                                      _%L109710%_
                                      _%L109711%_)
                               (let* ((_%g109740109748%_
                                       (lambda (_%g109741109744%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g109741109744%_)))
                                      (_%g109739109775%_
                                       (lambda (_%g109741109752%_)
                                         ((lambda (_%L109755%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L109711%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L109755%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L109710%_ '())
                                                    (let ((__tmp109945
                                                           (lambda (_%g109766109769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g109767109772%_)
                     (cons _%g109766109769%_ _%g109767109772%_))))
              (declare (not safe))
              (__foldr1 __tmp109945 '() _%L109707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g109741109752%_))))
                                 (_%g109739109775%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx109569%_
                                     _%L109709%_)))))
                             _%body109604109703%_
                             _%hd109594109671%_
                             _%hd109588109651%_
                             _%hd109585109641%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop109599109683%_
                                                     _%target109596109677%_
                                                     '()))
                                                  (_%g109572109610%_
                                                   _%g109573109614%_)))))
                                        (_%g109572109610%_
                                         _%g109573109614%_))))
                                (_%g109572109610%_ _%g109573109614%_))
                            (_%g109572109610%_ _%g109573109614%_))
                        (_%g109572109610%_ _%g109573109614%_))))
                (_%g109572109610%_ _%g109573109614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g109572109610%_
                                                     _%g109573109614%_))))
                                            (_%g109572109610%_
                                             _%g109573109614%_))))
                                    (_%g109572109610%_ _%g109573109614%_))))
                            (_%g109572109610%_ _%g109573109614%_))))
                    (_%g109572109610%_ _%g109573109614%_)))))
        (_%g109571109779%_ _%stx109569%_)))))

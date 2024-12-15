(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g103049_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx102676%_)
      (let* ((_%g102679102717%_
              (lambda (_%g102680102713%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102680102713%_)))
             (_%g102678102886%_
              (lambda (_%g102680102721%_)
                (if (gx#stx-pair? _%g102680102721%_)
                    (let ((_%e102685102724%_ (gx#syntax-e _%g102680102721%_)))
                      (let ((_%hd102686102728%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102685102724%_)))
                            (_%tl102687102731%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102685102724%_))))
                        (if (gx#stx-pair? _%tl102687102731%_)
                            (let ((_%e102688102734%_
                                   (gx#syntax-e _%tl102687102731%_)))
                              (let ((_%hd102689102738%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102688102734%_)))
                                    (_%tl102690102741%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102688102734%_))))
                                (if (gx#stx-pair? _%hd102689102738%_)
                                    (let ((_%e102691102744%_
                                           (gx#syntax-e _%hd102689102738%_)))
                                      (let ((_%hd102692102748%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102691102744%_)))
                                            (_%tl102693102751%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102691102744%_))))
                                        (if (gx#stx-pair? _%tl102693102751%_)
                                            (let ((_%e102694102754%_
                                                   (gx#syntax-e
                                                    _%tl102693102751%_)))
                                              (let ((_%hd102695102758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102694102754%_)))
                                                    (_%tl102696102761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102694102754%_))))
                                                (if (gx#stx-null?
                                                     _%tl102696102761%_)
                                                    (if (gx#stx-pair?
                                                         _%tl102690102741%_)
                                                        (let ((_%e102697102764%_
                                                               (gx#syntax-e
                                                                _%tl102690102741%_)))
                                                          (let ((_%hd102698102768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e102697102764%_)))
                        (_%tl102699102771%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102697102764%_))))
                    (if (gx#identifier? _%hd102698102768%_)
                        (if (gx#free-identifier=?
                             |[1]#_g103049_|
                             _%hd102698102768%_)
                            (if (gx#stx-pair? _%tl102699102771%_)
                                (let ((_%e102700102774%_
                                       (gx#syntax-e _%tl102699102771%_)))
                                  (let ((_%hd102701102778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102700102774%_)))
                                        (_%tl102702102781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102700102774%_))))
                                    (if (gx#stx-pair/null? _%tl102702102781%_)
                                        (let ((_g103050_
                                               (gx#syntax-split-splice
                                                _%tl102702102781%_
                                                '0)))
                                          (begin
                                            (let ((_g103051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g103050_)
                                                         (##values-length
                                                          _g103050_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g103051_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g103051_)))
                                            (let ((_%target102703102784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103050_
                                                      0)))
                                                  (_%tl102705102787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103050_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl102705102787%_)
                                                  (letrec ((_%loop102706102790%_
                                                            (lambda (_%hd102704102794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body102710102797%_)
                      (if (gx#stx-pair? _%hd102704102794%_)
                          (let ((_%e102707102800%_
                                 (gx#syntax-e _%hd102704102794%_)))
                            (let ((_%lp-hd102708102804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e102707102800%_)))
                                  (_%lp-tl102709102807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e102707102800%_))))
                              (_%loop102706102790%_
                               _%lp-tl102709102807%_
                               (cons _%lp-hd102708102804%_
                                     _%body102710102797%_))))
                          (let ((_%body102711102810%_
                                 (reverse _%body102710102797%_)))
                            ((lambda (_%L102814%_
                                      _%L102816%_
                                      _%L102817%_
                                      _%L102818%_)
                               (let* ((_%g102847102855%_
                                       (lambda (_%g102848102851%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102848102851%_)))
                                      (_%g102846102882%_
                                       (lambda (_%g102848102859%_)
                                         ((lambda (_%L102862%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102818%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102862%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102817%_ '())
                                                    (let ((__tmp103052
                                                           (lambda (_%g102873102876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102874102879%_)
                     (cons _%g102873102876%_ _%g102874102879%_))))
              (declare (not safe))
              (__foldr1 __tmp103052 '() _%L102814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102848102859%_))))
                                 (_%g102846102882%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx102676%_
                                     _%L102816%_)))))
                             _%body102711102810%_
                             _%hd102701102778%_
                             _%hd102695102758%_
                             _%hd102692102748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop102706102790%_
                                                     _%target102703102784%_
                                                     '()))
                                                  (_%g102679102717%_
                                                   _%g102680102721%_)))))
                                        (_%g102679102717%_
                                         _%g102680102721%_))))
                                (_%g102679102717%_ _%g102680102721%_))
                            (_%g102679102717%_ _%g102680102721%_))
                        (_%g102679102717%_ _%g102680102721%_))))
                (_%g102679102717%_ _%g102680102721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102679102717%_
                                                     _%g102680102721%_))))
                                            (_%g102679102717%_
                                             _%g102680102721%_))))
                                    (_%g102679102717%_ _%g102680102721%_))))
                            (_%g102679102717%_ _%g102680102721%_))))
                    (_%g102679102717%_ _%g102680102721%_)))))
        (_%g102678102886%_ _%stx102676%_)))))

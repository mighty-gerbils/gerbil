(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g103072_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx102699%_)
      (let* ((_%g102702102740%_
              (lambda (_%g102703102736%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102703102736%_)))
             (_%g102701102909%_
              (lambda (_%g102703102744%_)
                (if (gx#stx-pair? _%g102703102744%_)
                    (let ((_%e102708102747%_ (gx#syntax-e _%g102703102744%_)))
                      (let ((_%hd102709102751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102708102747%_)))
                            (_%tl102710102754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102708102747%_))))
                        (if (gx#stx-pair? _%tl102710102754%_)
                            (let ((_%e102711102757%_
                                   (gx#syntax-e _%tl102710102754%_)))
                              (let ((_%hd102712102761%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102711102757%_)))
                                    (_%tl102713102764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102711102757%_))))
                                (if (gx#stx-pair? _%hd102712102761%_)
                                    (let ((_%e102714102767%_
                                           (gx#syntax-e _%hd102712102761%_)))
                                      (let ((_%hd102715102771%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102714102767%_)))
                                            (_%tl102716102774%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102714102767%_))))
                                        (if (gx#stx-pair? _%tl102716102774%_)
                                            (let ((_%e102717102777%_
                                                   (gx#syntax-e
                                                    _%tl102716102774%_)))
                                              (let ((_%hd102718102781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102717102777%_)))
                                                    (_%tl102719102784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102717102777%_))))
                                                (if (gx#stx-null?
                                                     _%tl102719102784%_)
                                                    (if (gx#stx-pair?
                                                         _%tl102713102764%_)
                                                        (let ((_%e102720102787%_
                                                               (gx#syntax-e
                                                                _%tl102713102764%_)))
                                                          (let ((_%hd102721102791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e102720102787%_)))
                        (_%tl102722102794%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102720102787%_))))
                    (if (gx#identifier? _%hd102721102791%_)
                        (if (gx#free-identifier=?
                             |[1]#_g103072_|
                             _%hd102721102791%_)
                            (if (gx#stx-pair? _%tl102722102794%_)
                                (let ((_%e102723102797%_
                                       (gx#syntax-e _%tl102722102794%_)))
                                  (let ((_%hd102724102801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102723102797%_)))
                                        (_%tl102725102804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102723102797%_))))
                                    (if (gx#stx-pair/null? _%tl102725102804%_)
                                        (let ((_g103073_
                                               (gx#syntax-split-splice
                                                _%tl102725102804%_
                                                '0)))
                                          (begin
                                            (let ((_g103074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g103073_)
                                                         (##values-length
                                                          _g103073_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g103074_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g103074_)))
                                            (let ((_%target102726102807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103073_
                                                      0)))
                                                  (_%tl102728102810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103073_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl102728102810%_)
                                                  (letrec ((_%loop102729102813%_
                                                            (lambda (_%hd102727102817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body102733102820%_)
                      (if (gx#stx-pair? _%hd102727102817%_)
                          (let ((_%e102730102823%_
                                 (gx#syntax-e _%hd102727102817%_)))
                            (let ((_%lp-hd102731102827%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e102730102823%_)))
                                  (_%lp-tl102732102830%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e102730102823%_))))
                              (_%loop102729102813%_
                               _%lp-tl102732102830%_
                               (cons _%lp-hd102731102827%_
                                     _%body102733102820%_))))
                          (let ((_%body102734102833%_
                                 (reverse _%body102733102820%_)))
                            ((lambda (_%L102837%_
                                      _%L102839%_
                                      _%L102840%_
                                      _%L102841%_)
                               (let* ((_%g102870102878%_
                                       (lambda (_%g102871102874%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102871102874%_)))
                                      (_%g102869102905%_
                                       (lambda (_%g102871102882%_)
                                         ((lambda (_%L102885%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102841%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102885%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102840%_ '())
                                                    (let ((__tmp103075
                                                           (lambda (_%g102896102899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102897102902%_)
                     (cons _%g102896102899%_ _%g102897102902%_))))
              (declare (not safe))
              (__foldr1 __tmp103075 '() _%L102837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102871102882%_))))
                                 (_%g102869102905%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx102699%_
                                     _%L102839%_)))))
                             _%body102734102833%_
                             _%hd102724102801%_
                             _%hd102718102781%_
                             _%hd102715102771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop102729102813%_
                                                     _%target102726102807%_
                                                     '()))
                                                  (_%g102702102740%_
                                                   _%g102703102744%_)))))
                                        (_%g102702102740%_
                                         _%g102703102744%_))))
                                (_%g102702102740%_ _%g102703102744%_))
                            (_%g102702102740%_ _%g102703102744%_))
                        (_%g102702102740%_ _%g102703102744%_))))
                (_%g102702102740%_ _%g102703102744%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102702102740%_
                                                     _%g102703102744%_))))
                                            (_%g102702102740%_
                                             _%g102703102744%_))))
                                    (_%g102702102740%_ _%g102703102744%_))))
                            (_%g102702102740%_ _%g102703102744%_))))
                    (_%g102702102740%_ _%g102703102744%_)))))
        (_%g102701102909%_ _%stx102699%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g103039_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx102666%_)
      (let* ((_%g102669102707%_
              (lambda (_%g102670102703%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102670102703%_)))
             (_%g102668102876%_
              (lambda (_%g102670102711%_)
                (if (gx#stx-pair? _%g102670102711%_)
                    (let ((_%e102675102714%_ (gx#syntax-e _%g102670102711%_)))
                      (let ((_%hd102676102718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102675102714%_)))
                            (_%tl102677102721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102675102714%_))))
                        (if (gx#stx-pair? _%tl102677102721%_)
                            (let ((_%e102678102724%_
                                   (gx#syntax-e _%tl102677102721%_)))
                              (let ((_%hd102679102728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102678102724%_)))
                                    (_%tl102680102731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102678102724%_))))
                                (if (gx#stx-pair? _%hd102679102728%_)
                                    (let ((_%e102681102734%_
                                           (gx#syntax-e _%hd102679102728%_)))
                                      (let ((_%hd102682102738%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102681102734%_)))
                                            (_%tl102683102741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102681102734%_))))
                                        (if (gx#stx-pair? _%tl102683102741%_)
                                            (let ((_%e102684102744%_
                                                   (gx#syntax-e
                                                    _%tl102683102741%_)))
                                              (let ((_%hd102685102748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102684102744%_)))
                                                    (_%tl102686102751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102684102744%_))))
                                                (if (gx#stx-null?
                                                     _%tl102686102751%_)
                                                    (if (gx#stx-pair?
                                                         _%tl102680102731%_)
                                                        (let ((_%e102687102754%_
                                                               (gx#syntax-e
                                                                _%tl102680102731%_)))
                                                          (let ((_%hd102688102758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e102687102754%_)))
                        (_%tl102689102761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102687102754%_))))
                    (if (gx#identifier? _%hd102688102758%_)
                        (if (gx#free-identifier=?
                             |[1]#_g103039_|
                             _%hd102688102758%_)
                            (if (gx#stx-pair? _%tl102689102761%_)
                                (let ((_%e102690102764%_
                                       (gx#syntax-e _%tl102689102761%_)))
                                  (let ((_%hd102691102768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102690102764%_)))
                                        (_%tl102692102771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102690102764%_))))
                                    (if (gx#stx-pair/null? _%tl102692102771%_)
                                        (let ((_g103040_
                                               (gx#syntax-split-splice
                                                _%tl102692102771%_
                                                '0)))
                                          (begin
                                            (let ((_g103041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g103040_)
                                                         (##values-length
                                                          _g103040_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g103041_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g103041_)))
                                            (let ((_%target102693102774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103040_
                                                      0)))
                                                  (_%tl102695102777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103040_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl102695102777%_)
                                                  (letrec ((_%loop102696102780%_
                                                            (lambda (_%hd102694102784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body102700102787%_)
                      (if (gx#stx-pair? _%hd102694102784%_)
                          (let ((_%e102697102790%_
                                 (gx#syntax-e _%hd102694102784%_)))
                            (let ((_%lp-hd102698102794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e102697102790%_)))
                                  (_%lp-tl102699102797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e102697102790%_))))
                              (_%loop102696102780%_
                               _%lp-tl102699102797%_
                               (cons _%lp-hd102698102794%_
                                     _%body102700102787%_))))
                          (let ((_%body102701102800%_
                                 (reverse _%body102700102787%_)))
                            ((lambda (_%L102804%_
                                      _%L102806%_
                                      _%L102807%_
                                      _%L102808%_)
                               (let* ((_%g102837102845%_
                                       (lambda (_%g102838102841%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102838102841%_)))
                                      (_%g102836102872%_
                                       (lambda (_%g102838102849%_)
                                         ((lambda (_%L102852%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102808%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102852%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102807%_ '())
                                                    (let ((__tmp103042
                                                           (lambda (_%g102863102866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102864102869%_)
                     (cons _%g102863102866%_ _%g102864102869%_))))
              (declare (not safe))
              (__foldr1 __tmp103042 '() _%L102804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102838102849%_))))
                                 (_%g102836102872%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx102666%_
                                     _%L102806%_)))))
                             _%body102701102800%_
                             _%hd102691102768%_
                             _%hd102685102748%_
                             _%hd102682102738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop102696102780%_
                                                     _%target102693102774%_
                                                     '()))
                                                  (_%g102669102707%_
                                                   _%g102670102711%_)))))
                                        (_%g102669102707%_
                                         _%g102670102711%_))))
                                (_%g102669102707%_ _%g102670102711%_))
                            (_%g102669102707%_ _%g102670102711%_))
                        (_%g102669102707%_ _%g102670102711%_))))
                (_%g102669102707%_ _%g102670102711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102669102707%_
                                                     _%g102670102711%_))))
                                            (_%g102669102707%_
                                             _%g102670102711%_))))
                                    (_%g102669102707%_ _%g102670102711%_))))
                            (_%g102669102707%_ _%g102670102711%_))))
                    (_%g102669102707%_ _%g102670102711%_)))))
        (_%g102668102876%_ _%stx102666%_)))))

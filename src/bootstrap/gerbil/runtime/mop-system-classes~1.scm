(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g103045_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx102672%_)
      (let* ((_%g102675102713%_
              (lambda (_%g102676102709%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102676102709%_)))
             (_%g102674102882%_
              (lambda (_%g102676102717%_)
                (if (gx#stx-pair? _%g102676102717%_)
                    (let ((_%e102681102720%_ (gx#syntax-e _%g102676102717%_)))
                      (let ((_%hd102682102724%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102681102720%_)))
                            (_%tl102683102727%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102681102720%_))))
                        (if (gx#stx-pair? _%tl102683102727%_)
                            (let ((_%e102684102730%_
                                   (gx#syntax-e _%tl102683102727%_)))
                              (let ((_%hd102685102734%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102684102730%_)))
                                    (_%tl102686102737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102684102730%_))))
                                (if (gx#stx-pair? _%hd102685102734%_)
                                    (let ((_%e102687102740%_
                                           (gx#syntax-e _%hd102685102734%_)))
                                      (let ((_%hd102688102744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102687102740%_)))
                                            (_%tl102689102747%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102687102740%_))))
                                        (if (gx#stx-pair? _%tl102689102747%_)
                                            (let ((_%e102690102750%_
                                                   (gx#syntax-e
                                                    _%tl102689102747%_)))
                                              (let ((_%hd102691102754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102690102750%_)))
                                                    (_%tl102692102757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102690102750%_))))
                                                (if (gx#stx-null?
                                                     _%tl102692102757%_)
                                                    (if (gx#stx-pair?
                                                         _%tl102686102737%_)
                                                        (let ((_%e102693102760%_
                                                               (gx#syntax-e
                                                                _%tl102686102737%_)))
                                                          (let ((_%hd102694102764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e102693102760%_)))
                        (_%tl102695102767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102693102760%_))))
                    (if (gx#identifier? _%hd102694102764%_)
                        (if (gx#free-identifier=?
                             |[1]#_g103045_|
                             _%hd102694102764%_)
                            (if (gx#stx-pair? _%tl102695102767%_)
                                (let ((_%e102696102770%_
                                       (gx#syntax-e _%tl102695102767%_)))
                                  (let ((_%hd102697102774%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102696102770%_)))
                                        (_%tl102698102777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102696102770%_))))
                                    (if (gx#stx-pair/null? _%tl102698102777%_)
                                        (let ((_g103046_
                                               (gx#syntax-split-splice
                                                _%tl102698102777%_
                                                '0)))
                                          (begin
                                            (let ((_g103047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g103046_)
                                                         (##values-length
                                                          _g103046_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g103047_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g103047_)))
                                            (let ((_%target102699102780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103046_
                                                      0)))
                                                  (_%tl102701102783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103046_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl102701102783%_)
                                                  (letrec ((_%loop102702102786%_
                                                            (lambda (_%hd102700102790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body102706102793%_)
                      (if (gx#stx-pair? _%hd102700102790%_)
                          (let ((_%e102703102796%_
                                 (gx#syntax-e _%hd102700102790%_)))
                            (let ((_%lp-hd102704102800%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e102703102796%_)))
                                  (_%lp-tl102705102803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e102703102796%_))))
                              (_%loop102702102786%_
                               _%lp-tl102705102803%_
                               (cons _%lp-hd102704102800%_
                                     _%body102706102793%_))))
                          (let ((_%body102707102806%_
                                 (reverse _%body102706102793%_)))
                            ((lambda (_%L102810%_
                                      _%L102812%_
                                      _%L102813%_
                                      _%L102814%_)
                               (let* ((_%g102843102851%_
                                       (lambda (_%g102844102847%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102844102847%_)))
                                      (_%g102842102878%_
                                       (lambda (_%g102844102855%_)
                                         ((lambda (_%L102858%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102814%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102858%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102813%_ '())
                                                    (let ((__tmp103048
                                                           (lambda (_%g102869102872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102870102875%_)
                     (cons _%g102869102872%_ _%g102870102875%_))))
              (declare (not safe))
              (__foldr1 __tmp103048 '() _%L102810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102844102855%_))))
                                 (_%g102842102878%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx102672%_
                                     _%L102812%_)))))
                             _%body102707102806%_
                             _%hd102697102774%_
                             _%hd102691102754%_
                             _%hd102688102744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop102702102786%_
                                                     _%target102699102780%_
                                                     '()))
                                                  (_%g102675102713%_
                                                   _%g102676102717%_)))))
                                        (_%g102675102713%_
                                         _%g102676102717%_))))
                                (_%g102675102713%_ _%g102676102717%_))
                            (_%g102675102713%_ _%g102676102717%_))
                        (_%g102675102713%_ _%g102676102717%_))))
                (_%g102675102713%_ _%g102676102717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102675102713%_
                                                     _%g102676102717%_))))
                                            (_%g102675102713%_
                                             _%g102676102717%_))))
                                    (_%g102675102713%_ _%g102676102717%_))))
                            (_%g102675102713%_ _%g102676102717%_))))
                    (_%g102675102713%_ _%g102676102717%_)))))
        (_%g102674102882%_ _%stx102672%_)))))

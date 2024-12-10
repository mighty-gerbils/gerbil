(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g102149_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx101776%_)
      (let* ((_%g101779101817%_
              (lambda (_%g101780101813%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101780101813%_)))
             (_%g101778101986%_
              (lambda (_%g101780101821%_)
                (if (gx#stx-pair? _%g101780101821%_)
                    (let ((_%e101785101824%_ (gx#syntax-e _%g101780101821%_)))
                      (let ((_%hd101786101828%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101785101824%_)))
                            (_%tl101787101831%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101785101824%_))))
                        (if (gx#stx-pair? _%tl101787101831%_)
                            (let ((_%e101788101834%_
                                   (gx#syntax-e _%tl101787101831%_)))
                              (let ((_%hd101789101838%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101788101834%_)))
                                    (_%tl101790101841%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101788101834%_))))
                                (if (gx#stx-pair? _%hd101789101838%_)
                                    (let ((_%e101791101844%_
                                           (gx#syntax-e _%hd101789101838%_)))
                                      (let ((_%hd101792101848%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101791101844%_)))
                                            (_%tl101793101851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101791101844%_))))
                                        (if (gx#stx-pair? _%tl101793101851%_)
                                            (let ((_%e101794101854%_
                                                   (gx#syntax-e
                                                    _%tl101793101851%_)))
                                              (let ((_%hd101795101858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101794101854%_)))
                                                    (_%tl101796101861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101794101854%_))))
                                                (if (gx#stx-null?
                                                     _%tl101796101861%_)
                                                    (if (gx#stx-pair?
                                                         _%tl101790101841%_)
                                                        (let ((_%e101797101864%_
                                                               (gx#syntax-e
                                                                _%tl101790101841%_)))
                                                          (let ((_%hd101798101868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e101797101864%_)))
                        (_%tl101799101871%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e101797101864%_))))
                    (if (gx#identifier? _%hd101798101868%_)
                        (if (gx#free-identifier=?
                             |[1]#_g102149_|
                             _%hd101798101868%_)
                            (if (gx#stx-pair? _%tl101799101871%_)
                                (let ((_%e101800101874%_
                                       (gx#syntax-e _%tl101799101871%_)))
                                  (let ((_%hd101801101878%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e101800101874%_)))
                                        (_%tl101802101881%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e101800101874%_))))
                                    (if (gx#stx-pair/null? _%tl101802101881%_)
                                        (let ((_g102150_
                                               (gx#syntax-split-splice
                                                _%tl101802101881%_
                                                '0)))
                                          (begin
                                            (let ((_g102151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g102150_)
                                                         (##vector-length
                                                          _g102150_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g102151_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g102151_)))
                                            (let ((_%target101803101884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g102150_
                                                      0)))
                                                  (_%tl101805101887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g102150_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl101805101887%_)
                                                  (letrec ((_%loop101806101890%_
                                                            (lambda (_%hd101804101894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body101810101897%_)
                      (if (gx#stx-pair? _%hd101804101894%_)
                          (let ((_%e101807101900%_
                                 (gx#syntax-e _%hd101804101894%_)))
                            (let ((_%lp-hd101808101904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e101807101900%_)))
                                  (_%lp-tl101809101907%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e101807101900%_))))
                              (_%loop101806101890%_
                               _%lp-tl101809101907%_
                               (cons _%lp-hd101808101904%_
                                     _%body101810101897%_))))
                          (let ((_%body101811101910%_
                                 (reverse _%body101810101897%_)))
                            ((lambda (_%L101914%_
                                      _%L101916%_
                                      _%L101917%_
                                      _%L101918%_)
                               (let* ((_%g101947101955%_
                                       (lambda (_%g101948101951%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g101948101951%_)))
                                      (_%g101946101982%_
                                       (lambda (_%g101948101959%_)
                                         ((lambda (_%L101962%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L101918%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L101962%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L101917%_ '())
                                                    (let ((__tmp102152
                                                           (lambda (_%g101973101976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g101974101979%_)
                     (cons _%g101973101976%_ _%g101974101979%_))))
              (declare (not safe))
              (__foldr1 __tmp102152 '() _%L101914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g101948101959%_))))
                                 (_%g101946101982%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx101776%_
                                     _%L101916%_)))))
                             _%body101811101910%_
                             _%hd101801101878%_
                             _%hd101795101858%_
                             _%hd101792101848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop101806101890%_
                                                     _%target101803101884%_
                                                     '()))
                                                  (_%g101779101817%_
                                                   _%g101780101821%_)))))
                                        (_%g101779101817%_
                                         _%g101780101821%_))))
                                (_%g101779101817%_ _%g101780101821%_))
                            (_%g101779101817%_ _%g101780101821%_))
                        (_%g101779101817%_ _%g101780101821%_))))
                (_%g101779101817%_ _%g101780101821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101779101817%_
                                                     _%g101780101821%_))))
                                            (_%g101779101817%_
                                             _%g101780101821%_))))
                                    (_%g101779101817%_ _%g101780101821%_))))
                            (_%g101779101817%_ _%g101780101821%_))))
                    (_%g101779101817%_ _%g101780101821%_)))))
        (_%g101778101986%_ _%stx101776%_)))))

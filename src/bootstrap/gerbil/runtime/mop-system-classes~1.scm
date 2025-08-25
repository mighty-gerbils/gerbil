(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g108796_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx108423%_)
      (let* ((_%g108426108464%_
              (lambda (_%g108427108460%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g108427108460%_)))
             (_%g108425108633%_
              (lambda (_%g108427108468%_)
                (if (gx#stx-pair? _%g108427108468%_)
                    (let ((_%e108432108471%_ (gx#syntax-e _%g108427108468%_)))
                      (let ((_%hd108433108475%_
                             (let ()
                               (declare (not safe))
                               (##car _%e108432108471%_)))
                            (_%tl108434108478%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e108432108471%_))))
                        (if (gx#stx-pair? _%tl108434108478%_)
                            (let ((_%e108435108481%_
                                   (gx#syntax-e _%tl108434108478%_)))
                              (let ((_%hd108436108485%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e108435108481%_)))
                                    (_%tl108437108488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e108435108481%_))))
                                (if (gx#stx-pair? _%hd108436108485%_)
                                    (let ((_%e108438108491%_
                                           (gx#syntax-e _%hd108436108485%_)))
                                      (let ((_%hd108439108495%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e108438108491%_)))
                                            (_%tl108440108498%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e108438108491%_))))
                                        (if (gx#stx-pair? _%tl108440108498%_)
                                            (let ((_%e108441108501%_
                                                   (gx#syntax-e
                                                    _%tl108440108498%_)))
                                              (let ((_%hd108442108505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e108441108501%_)))
                                                    (_%tl108443108508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e108441108501%_))))
                                                (if (gx#stx-null?
                                                     _%tl108443108508%_)
                                                    (if (gx#stx-pair?
                                                         _%tl108437108488%_)
                                                        (let ((_%e108444108511%_
                                                               (gx#syntax-e
                                                                _%tl108437108488%_)))
                                                          (let ((_%hd108445108515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e108444108511%_)))
                        (_%tl108446108518%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e108444108511%_))))
                    (if (gx#identifier? _%hd108445108515%_)
                        (if (gx#free-identifier=?
                             |[1]#_g108796_|
                             _%hd108445108515%_)
                            (if (gx#stx-pair? _%tl108446108518%_)
                                (let ((_%e108447108521%_
                                       (gx#syntax-e _%tl108446108518%_)))
                                  (let ((_%hd108448108525%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e108447108521%_)))
                                        (_%tl108449108528%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e108447108521%_))))
                                    (if (gx#stx-pair/null? _%tl108449108528%_)
                                        (let ((_g108797_
                                               (gx#syntax-split-splice
                                                _%tl108449108528%_
                                                '0)))
                                          (begin
                                            (let ((_g108798_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g108797_)
                                                         (##values-length
                                                          _g108797_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g108798_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g108798_)))
                                            (let ((_%target108450108531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g108797_
                                                      0)))
                                                  (_%tl108452108534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g108797_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl108452108534%_)
                                                  (letrec ((_%loop108453108537%_
                                                            (lambda (_%hd108451108541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body108457108544%_)
                      (if (gx#stx-pair? _%hd108451108541%_)
                          (let ((_%e108454108547%_
                                 (gx#syntax-e _%hd108451108541%_)))
                            (let ((_%lp-hd108455108551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e108454108547%_)))
                                  (_%lp-tl108456108554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e108454108547%_))))
                              (_%loop108453108537%_
                               _%lp-tl108456108554%_
                               (cons _%lp-hd108455108551%_
                                     _%body108457108544%_))))
                          (let ((_%body108458108557%_
                                 (reverse _%body108457108544%_)))
                            ((lambda (_%L108561%_
                                      _%L108563%_
                                      _%L108564%_
                                      _%L108565%_)
                               (let* ((_%g108594108602%_
                                       (lambda (_%g108595108598%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g108595108598%_)))
                                      (_%g108593108629%_
                                       (lambda (_%g108595108606%_)
                                         ((lambda (_%L108609%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L108565%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L108609%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L108564%_ '())
                                                    (let ((__tmp108799
                                                           (lambda (_%g108620108623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g108621108626%_)
                     (cons _%g108620108623%_ _%g108621108626%_))))
              (declare (not safe))
              (__foldr1 __tmp108799 '() _%L108561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g108595108606%_))))
                                 (_%g108593108629%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx108423%_
                                     _%L108563%_)))))
                             _%body108458108557%_
                             _%hd108448108525%_
                             _%hd108442108505%_
                             _%hd108439108495%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop108453108537%_
                                                     _%target108450108531%_
                                                     '()))
                                                  (_%g108426108464%_
                                                   _%g108427108468%_)))))
                                        (_%g108426108464%_
                                         _%g108427108468%_))))
                                (_%g108426108464%_ _%g108427108468%_))
                            (_%g108426108464%_ _%g108427108468%_))
                        (_%g108426108464%_ _%g108427108468%_))))
                (_%g108426108464%_ _%g108427108468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g108426108464%_
                                                     _%g108427108468%_))))
                                            (_%g108426108464%_
                                             _%g108427108468%_))))
                                    (_%g108426108464%_ _%g108427108468%_))))
                            (_%g108426108464%_ _%g108427108468%_))))
                    (_%g108426108464%_ _%g108427108468%_)))))
        (_%g108425108633%_ _%stx108423%_)))))

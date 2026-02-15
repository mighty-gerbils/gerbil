(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g139911_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx139394%_)
        (let* ((_%g139397139435%_
                (lambda (_%g139398139431%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g139398139431%_)))
               (_%g139396139602%_
                (lambda (_%g139398139439%_)
                  (if (gx#stx-pair? _%g139398139439%_)
                      (let ((_%e139403139442%_
                             (gx#syntax-e _%g139398139439%_)))
                        (let ((_%hd139404139446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139403139442%_)))
                              (_%tl139405139449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139403139442%_))))
                          (if (gx#stx-pair? _%tl139405139449%_)
                              (let ((_%e139406139452%_
                                     (gx#syntax-e _%tl139405139449%_)))
                                (let ((_%hd139407139456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139406139452%_)))
                                      (_%tl139408139459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139406139452%_))))
                                  (if (gx#stx-pair? _%hd139407139456%_)
                                      (let ((_%e139409139462%_
                                             (gx#syntax-e _%hd139407139456%_)))
                                        (let ((_%hd139410139466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139409139462%_)))
                                              (_%tl139411139469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139409139462%_))))
                                          (if (gx#stx-pair? _%tl139411139469%_)
                                              (let ((_%e139412139472%_
                                                     (gx#syntax-e
                                                      _%tl139411139469%_)))
                                                (let ((_%hd139413139476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139412139472%_)))
                                                      (_%tl139414139479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139412139472%_))))
                                                  (if (gx#stx-null?
                                                       _%tl139414139479%_)
                                                      (if (gx#stx-pair?
                                                           _%tl139408139459%_)
                                                          (let ((_%e139415139482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl139408139459%_)))
                    (let ((_%hd139416139486%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139415139482%_)))
                          (_%tl139417139489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139415139482%_))))
                      (if (gx#identifier? _%hd139416139486%_)
                          (if (gx#free-identifier=?
                               |[1]#_g139911_|
                               _%hd139416139486%_)
                              (if (gx#stx-pair? _%tl139417139489%_)
                                  (let ((_%e139418139492%_
                                         (gx#syntax-e _%tl139417139489%_)))
                                    (let ((_%hd139419139496%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139418139492%_)))
                                          (_%tl139420139499%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139418139492%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl139420139499%_)
                                          (let ((_g139912_
                                                 (gx#syntax-split-splice
                                                  _%tl139420139499%_
                                                  '0)))
                                            (begin
                                              (let ((_g139913_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g139912_)
                                                           (##values-length
                                                            _g139912_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g139913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g139913_)))
                                              (let ((_%target139421139502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g139912_
                                                        0)))
                                                    (_%tl139423139505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g139912_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl139423139505%_)
                                                    (letrec ((_%loop139424139508%_
                                                              (lambda (_%hd139422139512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body139428139515%_)
                        (if (gx#stx-pair? _%hd139422139512%_)
                            (let ((_%e139425139517%_
                                   (gx#syntax-e _%hd139422139512%_)))
                              (let ((_%lp-hd139426139521%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139425139517%_)))
                                    (_%lp-tl139427139524%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139425139517%_))))
                                (_%loop139424139508%_
                                 _%lp-tl139427139524%_
                                 (cons _%lp-hd139426139521%_
                                       _%body139428139515%_))))
                            (let ((_%body139429139527%_
                                   (reverse _%body139428139515%_)))
                              ((lambda (_%g139399139530%_
                                        _%g139400139532%_
                                        _%g139401139533%_
                                        _%g139402139534%_)
                                 (let* ((_%g139563139571%_
                                         (lambda (_%g139564139567%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g139564139567%_)))
                                        (_%g139562139598%_
                                         (lambda (_%g139564139575%_)
                                           ((lambda (_%g139565139578%_)
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%g139402139534%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%g139565139578%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g139401139533%_
                                                            '())
                                                      (let ((__tmp139914
                                                             (lambda (_%g139589139592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139590139595%_)
                       (cons _%g139589139592%_ _%g139590139595%_))))
                (declare (not safe))
                (foldr__0 __tmp139914 '() _%g139399139530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g139564139575%_))))
                                   (_%g139562139598%_
                                    (let ()
                                      (declare (not safe))
                                      (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                       _%stx139394%_
                                       _%g139400139532%_)))))
                               _%body139429139527%_
                               _%hd139419139496%_
                               _%hd139413139476%_
                               _%hd139410139466%_))))))
              (_%loop139424139508%_ _%target139421139502%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g139397139435%_
                                                     _%g139398139439%_)))))
                                          (_%g139397139435%_
                                           _%g139398139439%_))))
                                  (_%g139397139435%_ _%g139398139439%_))
                              (_%g139397139435%_ _%g139398139439%_))
                          (_%g139397139435%_ _%g139398139439%_))))
                  (_%g139397139435%_ _%g139398139439%_))
              (_%g139397139435%_ _%g139398139439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139397139435%_
                                               _%g139398139439%_))))
                                      (_%g139397139435%_ _%g139398139439%_))))
                              (_%g139397139435%_ _%g139398139439%_))))
                      (_%g139397139435%_ _%g139398139439%_)))))
          (_%g139396139602%_ _%stx139394%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx139607%_)
        (let* ((_%g139611139631%_
                (lambda (_%g139612139627%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g139612139627%_)))
               (_%g139610139700%_
                (lambda (_%g139612139635%_)
                  (if (gx#stx-pair? _%g139612139635%_)
                      (let ((_%e139614139638%_
                             (gx#syntax-e _%g139612139635%_)))
                        (let ((_%hd139615139642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139614139638%_)))
                              (_%tl139616139645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139614139638%_))))
                          (if (gx#stx-pair/null? _%tl139616139645%_)
                              (let ((_g139915_
                                     (gx#syntax-split-splice
                                      _%tl139616139645%_
                                      '0)))
                                (begin
                                  (let ((_g139916_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139915_)
                                               (##values-length _g139915_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139916_ 2)))
                                        (error "Context expects 2 values"
                                               _g139916_)))
                                  (let ((_%target139617139648%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139915_ 0)))
                                        (_%tl139619139651%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139915_ 1))))
                                    (if (gx#stx-null? _%tl139619139651%_)
                                        (letrec ((_%loop139620139654%_
                                                  (lambda (_%hd139618139658%_
                                                           _%t139624139661%_)
                                                    (if (gx#stx-pair?
                                                         _%hd139618139658%_)
                                                        (let ((_%e139621139663%_
                                                               (gx#syntax-e
                                                                _%hd139618139658%_)))
                                                          (let ((_%lp-hd139622139667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e139621139663%_)))
                        (_%lp-tl139623139670%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139621139663%_))))
                    (_%loop139620139654%_
                     _%lp-tl139623139670%_
                     (cons _%lp-hd139622139667%_ _%t139624139661%_))))
                (let ((_%t139625139673%_ (reverse _%t139624139661%_)))
                  ((lambda (_%g139613139676%_)
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'vec)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-vector)
                                                   (cons '32 (cons '#f '())))
                                             '()))
                                 (let ((__tmp139918
                                        (lambda (_%g139691139694%_
                                                 _%g139692139697%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'vec)
                                                            (cons _%g139691139694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g139692139697%_)))
                                       (__tmp139917
                                        (cons (gx#datum->syntax '#f 'vec)
                                              '())))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp139918
                                    __tmp139917
                                    _%g139613139676%_)))))
                   _%t139625139673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop139620139654%_
                                           _%target139617139648%_
                                           '()))
                                        (_%g139611139631%_
                                         _%g139612139635%_)))))
                              (_%g139611139631%_ _%g139612139635%_))))
                      (_%g139611139631%_ _%g139612139635%_)))))
          (_%g139610139700%_ _%$stx139607%_))))))

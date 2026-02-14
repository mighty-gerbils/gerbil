(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g139439_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx139007%_)
      (let* ((_%g139010139048%_
              (lambda (_%g139011139044%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g139011139044%_)))
             (_%g139009139215%_
              (lambda (_%g139011139052%_)
                (if (gx#stx-pair? _%g139011139052%_)
                    (let ((_%e139016139055%_ (gx#syntax-e _%g139011139052%_)))
                      (let ((_%hd139017139059%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139016139055%_)))
                            (_%tl139018139062%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139016139055%_))))
                        (if (gx#stx-pair? _%tl139018139062%_)
                            (let ((_%e139019139065%_
                                   (gx#syntax-e _%tl139018139062%_)))
                              (let ((_%hd139020139069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139019139065%_)))
                                    (_%tl139021139072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139019139065%_))))
                                (if (gx#stx-pair? _%hd139020139069%_)
                                    (let ((_%e139022139075%_
                                           (gx#syntax-e _%hd139020139069%_)))
                                      (let ((_%hd139023139079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e139022139075%_)))
                                            (_%tl139024139082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e139022139075%_))))
                                        (if (gx#stx-pair? _%tl139024139082%_)
                                            (let ((_%e139025139085%_
                                                   (gx#syntax-e
                                                    _%tl139024139082%_)))
                                              (let ((_%hd139026139089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139025139085%_)))
                                                    (_%tl139027139092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139025139085%_))))
                                                (if (gx#stx-null?
                                                     _%tl139027139092%_)
                                                    (if (gx#stx-pair?
                                                         _%tl139021139072%_)
                                                        (let ((_%e139028139095%_
                                                               (gx#syntax-e
                                                                _%tl139021139072%_)))
                                                          (let ((_%hd139029139099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e139028139095%_)))
                        (_%tl139030139102%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139028139095%_))))
                    (if (gx#identifier? _%hd139029139099%_)
                        (if (gx#free-identifier=?
                             |[1]#_g139439_|
                             _%hd139029139099%_)
                            (if (gx#stx-pair? _%tl139030139102%_)
                                (let ((_%e139031139105%_
                                       (gx#syntax-e _%tl139030139102%_)))
                                  (let ((_%hd139032139109%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139031139105%_)))
                                        (_%tl139033139112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139031139105%_))))
                                    (if (gx#stx-pair/null? _%tl139033139112%_)
                                        (let ((_g139440_
                                               (gx#syntax-split-splice
                                                _%tl139033139112%_
                                                '0)))
                                          (begin
                                            (let ((_g139441_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g139440_)
                                                         (##values-length
                                                          _g139440_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g139441_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g139441_)))
                                            (let ((_%target139034139115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g139440_
                                                      0)))
                                                  (_%tl139036139118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g139440_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl139036139118%_)
                                                  (letrec ((_%loop139037139121%_
                                                            (lambda (_%hd139035139125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body139041139128%_)
                      (if (gx#stx-pair? _%hd139035139125%_)
                          (let ((_%e139038139130%_
                                 (gx#syntax-e _%hd139035139125%_)))
                            (let ((_%lp-hd139039139134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139038139130%_)))
                                  (_%lp-tl139040139137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139038139130%_))))
                              (_%loop139037139121%_
                               _%lp-tl139040139137%_
                               (cons _%lp-hd139039139134%_
                                     _%body139041139128%_))))
                          (let ((_%body139042139140%_
                                 (reverse _%body139041139128%_)))
                            ((lambda (_%g139012139143%_
                                      _%g139013139145%_
                                      _%g139014139146%_
                                      _%g139015139147%_)
                               (let* ((_%g139176139184%_
                                       (lambda (_%g139177139180%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g139177139180%_)))
                                      (_%g139175139211%_
                                       (lambda (_%g139177139188%_)
                                         ((lambda (_%g139178139191%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g139015139147%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g139178139191%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g139014139146%_
                                                          '())
                                                    (let ((__tmp139442
                                                           (lambda (_%g139202139205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139203139208%_)
                     (cons _%g139202139205%_ _%g139203139208%_))))
              (declare (not safe))
              (foldr__0 __tmp139442 '() _%g139012139143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g139177139188%_))))
                                 (_%g139175139211%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx139007%_
                                     _%g139013139145%_)))))
                             _%body139042139140%_
                             _%hd139032139109%_
                             _%hd139026139089%_
                             _%hd139023139079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop139037139121%_
                                                     _%target139034139115%_
                                                     '()))
                                                  (_%g139010139048%_
                                                   _%g139011139052%_)))))
                                        (_%g139010139048%_
                                         _%g139011139052%_))))
                                (_%g139010139048%_ _%g139011139052%_))
                            (_%g139010139048%_ _%g139011139052%_))
                        (_%g139010139048%_ _%g139011139052%_))))
                (_%g139010139048%_ _%g139011139052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g139010139048%_
                                                     _%g139011139052%_))))
                                            (_%g139010139048%_
                                             _%g139011139052%_))))
                                    (_%g139010139048%_ _%g139011139052%_))))
                            (_%g139010139048%_ _%g139011139052%_))))
                    (_%g139010139048%_ _%g139011139052%_)))))
        (_%g139009139215%_ _%stx139007%_)))))

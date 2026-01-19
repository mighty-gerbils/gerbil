(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g112418_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx112027%_)
      (let* ((_%g112030112068%_
              (lambda (_%g112031112064%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112031112064%_)))
             (_%g112029112237%_
              (lambda (_%g112031112072%_)
                (if (gx#stx-pair? _%g112031112072%_)
                    (let ((_%e112036112075%_ (gx#syntax-e _%g112031112072%_)))
                      (let ((_%hd112037112079%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112036112075%_)))
                            (_%tl112038112082%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112036112075%_))))
                        (if (gx#stx-pair? _%tl112038112082%_)
                            (let ((_%e112039112085%_
                                   (gx#syntax-e _%tl112038112082%_)))
                              (let ((_%hd112040112089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112039112085%_)))
                                    (_%tl112041112092%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112039112085%_))))
                                (if (gx#stx-pair? _%hd112040112089%_)
                                    (let ((_%e112042112095%_
                                           (gx#syntax-e _%hd112040112089%_)))
                                      (let ((_%hd112043112099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112042112095%_)))
                                            (_%tl112044112102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112042112095%_))))
                                        (if (gx#stx-pair? _%tl112044112102%_)
                                            (let ((_%e112045112105%_
                                                   (gx#syntax-e
                                                    _%tl112044112102%_)))
                                              (let ((_%hd112046112109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112045112105%_)))
                                                    (_%tl112047112112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112045112105%_))))
                                                (if (gx#stx-null?
                                                     _%tl112047112112%_)
                                                    (if (gx#stx-pair?
                                                         _%tl112041112092%_)
                                                        (let ((_%e112048112115%_
                                                               (gx#syntax-e
                                                                _%tl112041112092%_)))
                                                          (let ((_%hd112049112119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e112048112115%_)))
                        (_%tl112050112122%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e112048112115%_))))
                    (if (gx#identifier? _%hd112049112119%_)
                        (if (gx#free-identifier=?
                             |[1]#_g112418_|
                             _%hd112049112119%_)
                            (if (gx#stx-pair? _%tl112050112122%_)
                                (let ((_%e112051112125%_
                                       (gx#syntax-e _%tl112050112122%_)))
                                  (let ((_%hd112052112129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112051112125%_)))
                                        (_%tl112053112132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112051112125%_))))
                                    (if (gx#stx-pair/null? _%tl112053112132%_)
                                        (let ((_g112419_
                                               (gx#syntax-split-splice
                                                _%tl112053112132%_
                                                '0)))
                                          (begin
                                            (let ((_g112420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g112419_)
                                                         (##values-length
                                                          _g112419_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g112420_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g112420_)))
                                            (let ((_%target112054112135%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112419_
                                                      0)))
                                                  (_%tl112056112138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112419_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl112056112138%_)
                                                  (letrec ((_%loop112057112141%_
                                                            (lambda (_%hd112055112145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body112061112148%_)
                      (if (gx#stx-pair? _%hd112055112145%_)
                          (let ((_%e112058112151%_
                                 (gx#syntax-e _%hd112055112145%_)))
                            (let ((_%lp-hd112059112155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e112058112151%_)))
                                  (_%lp-tl112060112158%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e112058112151%_))))
                              (_%loop112057112141%_
                               _%lp-tl112060112158%_
                               (cons _%lp-hd112059112155%_
                                     _%body112061112148%_))))
                          (let ((_%body112062112161%_
                                 (reverse _%body112061112148%_)))
                            ((lambda (_%L112165%_
                                      _%L112167%_
                                      _%L112168%_
                                      _%L112169%_)
                               (let* ((_%g112198112206%_
                                       (lambda (_%g112199112202%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112199112202%_)))
                                      (_%g112197112233%_
                                       (lambda (_%g112199112210%_)
                                         ((lambda (_%L112213%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L112169%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L112213%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L112168%_ '())
                                                    (let ((__tmp112421
                                                           (lambda (_%g112224112227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g112225112230%_)
                     (cons _%g112224112227%_ _%g112225112230%_))))
              (declare (not safe))
              (__foldr1 __tmp112421 '() _%L112165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g112199112210%_))))
                                 (_%g112197112233%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx112027%_
                                     _%L112167%_)))))
                             _%body112062112161%_
                             _%hd112052112129%_
                             _%hd112046112109%_
                             _%hd112043112099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop112057112141%_
                                                     _%target112054112135%_
                                                     '()))
                                                  (_%g112030112068%_
                                                   _%g112031112072%_)))))
                                        (_%g112030112068%_
                                         _%g112031112072%_))))
                                (_%g112030112068%_ _%g112031112072%_))
                            (_%g112030112068%_ _%g112031112072%_))
                        (_%g112030112068%_ _%g112031112072%_))))
                (_%g112030112068%_ _%g112031112072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112030112068%_
                                                     _%g112031112072%_))))
                                            (_%g112030112068%_
                                             _%g112031112072%_))))
                                    (_%g112030112068%_ _%g112031112072%_))))
                            (_%g112030112068%_ _%g112031112072%_))))
                    (_%g112030112068%_ _%g112031112072%_)))))
        (_%g112029112237%_ _%stx112027%_)))))

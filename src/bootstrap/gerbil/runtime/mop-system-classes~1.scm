(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g112445_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx112054%_)
      (let* ((_%g112057112095%_
              (lambda (_%g112058112091%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112058112091%_)))
             (_%g112056112264%_
              (lambda (_%g112058112099%_)
                (if (gx#stx-pair? _%g112058112099%_)
                    (let ((_%e112063112102%_ (gx#syntax-e _%g112058112099%_)))
                      (let ((_%hd112064112106%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112063112102%_)))
                            (_%tl112065112109%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112063112102%_))))
                        (if (gx#stx-pair? _%tl112065112109%_)
                            (let ((_%e112066112112%_
                                   (gx#syntax-e _%tl112065112109%_)))
                              (let ((_%hd112067112116%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112066112112%_)))
                                    (_%tl112068112119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112066112112%_))))
                                (if (gx#stx-pair? _%hd112067112116%_)
                                    (let ((_%e112069112122%_
                                           (gx#syntax-e _%hd112067112116%_)))
                                      (let ((_%hd112070112126%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112069112122%_)))
                                            (_%tl112071112129%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112069112122%_))))
                                        (if (gx#stx-pair? _%tl112071112129%_)
                                            (let ((_%e112072112132%_
                                                   (gx#syntax-e
                                                    _%tl112071112129%_)))
                                              (let ((_%hd112073112136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112072112132%_)))
                                                    (_%tl112074112139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112072112132%_))))
                                                (if (gx#stx-null?
                                                     _%tl112074112139%_)
                                                    (if (gx#stx-pair?
                                                         _%tl112068112119%_)
                                                        (let ((_%e112075112142%_
                                                               (gx#syntax-e
                                                                _%tl112068112119%_)))
                                                          (let ((_%hd112076112146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e112075112142%_)))
                        (_%tl112077112149%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e112075112142%_))))
                    (if (gx#identifier? _%hd112076112146%_)
                        (if (gx#free-identifier=?
                             |[1]#_g112445_|
                             _%hd112076112146%_)
                            (if (gx#stx-pair? _%tl112077112149%_)
                                (let ((_%e112078112152%_
                                       (gx#syntax-e _%tl112077112149%_)))
                                  (let ((_%hd112079112156%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112078112152%_)))
                                        (_%tl112080112159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112078112152%_))))
                                    (if (gx#stx-pair/null? _%tl112080112159%_)
                                        (let ((_g112446_
                                               (gx#syntax-split-splice
                                                _%tl112080112159%_
                                                '0)))
                                          (begin
                                            (let ((_g112447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g112446_)
                                                         (##values-length
                                                          _g112446_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g112447_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g112447_)))
                                            (let ((_%target112081112162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112446_
                                                      0)))
                                                  (_%tl112083112165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112446_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl112083112165%_)
                                                  (letrec ((_%loop112084112168%_
                                                            (lambda (_%hd112082112172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body112088112175%_)
                      (if (gx#stx-pair? _%hd112082112172%_)
                          (let ((_%e112085112178%_
                                 (gx#syntax-e _%hd112082112172%_)))
                            (let ((_%lp-hd112086112182%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e112085112178%_)))
                                  (_%lp-tl112087112185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e112085112178%_))))
                              (_%loop112084112168%_
                               _%lp-tl112087112185%_
                               (cons _%lp-hd112086112182%_
                                     _%body112088112175%_))))
                          (let ((_%body112089112188%_
                                 (reverse _%body112088112175%_)))
                            ((lambda (_%L112192%_
                                      _%L112194%_
                                      _%L112195%_
                                      _%L112196%_)
                               (let* ((_%g112225112233%_
                                       (lambda (_%g112226112229%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112226112229%_)))
                                      (_%g112224112260%_
                                       (lambda (_%g112226112237%_)
                                         ((lambda (_%L112240%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L112196%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L112240%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L112195%_ '())
                                                    (let ((__tmp112448
                                                           (lambda (_%g112251112254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g112252112257%_)
                     (cons _%g112251112254%_ _%g112252112257%_))))
              (declare (not safe))
              (__foldr1 __tmp112448 '() _%L112192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g112226112237%_))))
                                 (_%g112224112260%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx112054%_
                                     _%L112194%_)))))
                             _%body112089112188%_
                             _%hd112079112156%_
                             _%hd112073112136%_
                             _%hd112070112126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop112084112168%_
                                                     _%target112081112162%_
                                                     '()))
                                                  (_%g112057112095%_
                                                   _%g112058112099%_)))))
                                        (_%g112057112095%_
                                         _%g112058112099%_))))
                                (_%g112057112095%_ _%g112058112099%_))
                            (_%g112057112095%_ _%g112058112099%_))
                        (_%g112057112095%_ _%g112058112099%_))))
                (_%g112057112095%_ _%g112058112099%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112057112095%_
                                                     _%g112058112099%_))))
                                            (_%g112057112095%_
                                             _%g112058112099%_))))
                                    (_%g112057112095%_ _%g112058112099%_))))
                            (_%g112057112095%_ _%g112058112099%_))))
                    (_%g112057112095%_ _%g112058112099%_)))))
        (_%g112056112264%_ _%stx112054%_)))))

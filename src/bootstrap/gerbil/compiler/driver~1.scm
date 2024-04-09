(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx194498%_)
      (let* ((_%g194502194516%_
              (lambda (_%g194503194512%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194503194512%_))))
             (_%g194501194558%_
              (lambda (_%g194503194520%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194503194520%_))
                    (let ((_%e194507194523%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194503194520%_))))
                      (let ((_%hd194506194527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194507194523%_)))
                            (_%tl194505194530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194507194523%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194505194530%_))
                            (let ((_%e194510194533%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194505194530%_))))
                              (let ((_%hd194509194537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194510194533%_)))
                                    (_%tl194508194540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194510194533%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194508194540%_))
                                    ((lambda (_%L194543%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'with-lock))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '+driver-mutex+))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'lambda))
                       (cons '() (cons _%L194543%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd194509194537%_)
                                    (_%g194502194516%_ _%g194503194520%_))))
                            (_%g194502194516%_ _%g194503194520%_))))
                    (_%g194502194516%_ _%g194503194520%_)))))
        (_%g194501194558%_ _%$stx194498%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx194562%_)
      (let* ((_%g194566194580%_
              (lambda (_%g194567194576%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194567194576%_))))
             (_%g194565194621%_
              (lambda (_%g194567194584%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194567194584%_))
                    (let ((_%e194571194587%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194567194584%_))))
                      (let ((_%hd194570194591%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194571194587%_)))
                            (_%tl194569194594%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194571194587%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194569194594%_))
                            (let ((_%e194574194597%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194569194594%_))))
                              (let ((_%hd194573194601%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194574194597%_)))
                                    (_%tl194572194604%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194574194597%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194572194604%_))
                                    ((lambda (_%L194607%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'spawn))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'lambda))
                                                         (cons '()
                                                               (cons _%L194607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd194573194601%_)
                                    (_%g194566194580%_ _%g194567194584%_))))
                            (_%g194566194580%_ _%g194567194584%_))))
                    (_%g194566194580%_ _%g194567194584%_)))))
        (_%g194565194621%_ _%$stx194562%_)))))

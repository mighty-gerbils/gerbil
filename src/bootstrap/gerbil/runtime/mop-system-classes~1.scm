(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g148442_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx148014%_)
      (let* ((_%g148017148055%_
              (lambda (_%g148018148051%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g148018148051%_)))
             (_%g148016148222%_
              (lambda (_%g148018148059%_)
                (if (gx#stx-pair? _%g148018148059%_)
                    (let ((_%e148023148062%_ (gx#syntax-e _%g148018148059%_)))
                      (let ((_%hd148024148066%_
                             (let ()
                               (declare (not safe))
                               (##car _%e148023148062%_)))
                            (_%tl148025148069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e148023148062%_))))
                        (if (gx#stx-pair? _%tl148025148069%_)
                            (let ((_%e148026148072%_
                                   (gx#syntax-e _%tl148025148069%_)))
                              (let ((_%hd148027148076%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e148026148072%_)))
                                    (_%tl148028148079%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e148026148072%_))))
                                (if (gx#stx-pair? _%hd148027148076%_)
                                    (let ((_%e148029148082%_
                                           (gx#syntax-e _%hd148027148076%_)))
                                      (let ((_%hd148030148086%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e148029148082%_)))
                                            (_%tl148031148089%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e148029148082%_))))
                                        (if (gx#stx-pair? _%tl148031148089%_)
                                            (let ((_%e148032148092%_
                                                   (gx#syntax-e
                                                    _%tl148031148089%_)))
                                              (let ((_%hd148033148096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e148032148092%_)))
                                                    (_%tl148034148099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e148032148092%_))))
                                                (if (gx#stx-null?
                                                     _%tl148034148099%_)
                                                    (if (gx#stx-pair?
                                                         _%tl148028148079%_)
                                                        (let ((_%e148035148102%_
                                                               (gx#syntax-e
                                                                _%tl148028148079%_)))
                                                          (let ((_%hd148036148106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e148035148102%_)))
                        (_%tl148037148109%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148035148102%_))))
                    (if (gx#identifier? _%hd148036148106%_)
                        (if (gx#free-identifier=?
                             |[1]#_g148442_|
                             _%hd148036148106%_)
                            (if (gx#stx-pair? _%tl148037148109%_)
                                (let ((_%e148038148112%_
                                       (gx#syntax-e _%tl148037148109%_)))
                                  (let ((_%hd148039148116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148038148112%_)))
                                        (_%tl148040148119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148038148112%_))))
                                    (if (gx#stx-pair/null? _%tl148040148119%_)
                                        (let ((_g148443_
                                               (gx#syntax-split-splice
                                                _%tl148040148119%_
                                                '0)))
                                          (begin
                                            (let ((_g148444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g148443_)
                                                         (##values-length
                                                          _g148443_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g148444_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g148444_)))
                                            (let ((_%target148041148122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g148443_
                                                      0)))
                                                  (_%tl148043148125%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g148443_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl148043148125%_)
                                                  (letrec ((_%loop148044148128%_
                                                            (lambda (_%hd148042148132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body148048148135%_)
                      (if (gx#stx-pair? _%hd148042148132%_)
                          (let ((_%e148045148137%_
                                 (gx#syntax-e _%hd148042148132%_)))
                            (let ((_%lp-hd148046148141%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e148045148137%_)))
                                  (_%lp-tl148047148144%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e148045148137%_))))
                              (_%loop148044148128%_
                               _%lp-tl148047148144%_
                               (cons _%lp-hd148046148141%_
                                     _%body148048148135%_))))
                          (let ((_%body148049148147%_
                                 (reverse _%body148048148135%_)))
                            ((lambda (_%g148019148150%_
                                      _%g148020148152%_
                                      _%g148021148153%_
                                      _%g148022148154%_)
                               (let* ((_%g148183148191%_
                                       (lambda (_%g148184148187%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148184148187%_)))
                                      (_%g148182148218%_
                                       (lambda (_%g148184148195%_)
                                         ((lambda (_%g148185148198%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g148022148154%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g148185148198%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g148021148153%_
                                                          '())
                                                    (let ((__tmp148445
                                                           (lambda (_%g148209148212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g148210148215%_)
                     (cons _%g148209148212%_ _%g148210148215%_))))
              (declare (not safe))
              (foldr__0 __tmp148445 '() _%g148019148150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g148184148195%_))))
                                 (_%g148182148218%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx148014%_
                                     _%g148020148152%_)))))
                             _%body148049148147%_
                             _%hd148039148116%_
                             _%hd148033148096%_
                             _%hd148030148086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop148044148128%_
                                                     _%target148041148122%_
                                                     '()))
                                                  (_%g148017148055%_
                                                   _%g148018148059%_)))))
                                        (_%g148017148055%_
                                         _%g148018148059%_))))
                                (_%g148017148055%_ _%g148018148059%_))
                            (_%g148017148055%_ _%g148018148059%_))
                        (_%g148017148055%_ _%g148018148059%_))))
                (_%g148017148055%_ _%g148018148059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g148017148055%_
                                                     _%g148018148059%_))))
                                            (_%g148017148055%_
                                             _%g148018148059%_))))
                                    (_%g148017148055%_ _%g148018148059%_))))
                            (_%g148017148055%_ _%g148018148059%_))))
                    (_%g148017148055%_ _%g148018148059%_)))))
        (_%g148016148222%_ _%stx148014%_)))))

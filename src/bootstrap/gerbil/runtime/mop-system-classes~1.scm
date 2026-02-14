(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g322257_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx321829%_)
      (let* ((_%g321832321870%_
              (lambda (_%g321833321866%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g321833321866%_)))
             (_%g321831322037%_
              (lambda (_%g321833321874%_)
                (if (gx#stx-pair? _%g321833321874%_)
                    (let ((_%e321838321877%_ (gx#syntax-e _%g321833321874%_)))
                      (let ((_%hd321839321881%_
                             (let ()
                               (declare (not safe))
                               (##car _%e321838321877%_)))
                            (_%tl321840321884%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e321838321877%_))))
                        (if (gx#stx-pair? _%tl321840321884%_)
                            (let ((_%e321841321887%_
                                   (gx#syntax-e _%tl321840321884%_)))
                              (let ((_%hd321842321891%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e321841321887%_)))
                                    (_%tl321843321894%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e321841321887%_))))
                                (if (gx#stx-pair? _%hd321842321891%_)
                                    (let ((_%e321844321897%_
                                           (gx#syntax-e _%hd321842321891%_)))
                                      (let ((_%hd321845321901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e321844321897%_)))
                                            (_%tl321846321904%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e321844321897%_))))
                                        (if (gx#stx-pair? _%tl321846321904%_)
                                            (let ((_%e321847321907%_
                                                   (gx#syntax-e
                                                    _%tl321846321904%_)))
                                              (let ((_%hd321848321911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e321847321907%_)))
                                                    (_%tl321849321914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e321847321907%_))))
                                                (if (gx#stx-null?
                                                     _%tl321849321914%_)
                                                    (if (gx#stx-pair?
                                                         _%tl321843321894%_)
                                                        (let ((_%e321850321917%_
                                                               (gx#syntax-e
                                                                _%tl321843321894%_)))
                                                          (let ((_%hd321851321921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e321850321917%_)))
                        (_%tl321852321924%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e321850321917%_))))
                    (if (gx#identifier? _%hd321851321921%_)
                        (if (gx#free-identifier=?
                             |[1]#_g322257_|
                             _%hd321851321921%_)
                            (if (gx#stx-pair? _%tl321852321924%_)
                                (let ((_%e321853321927%_
                                       (gx#syntax-e _%tl321852321924%_)))
                                  (let ((_%hd321854321931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e321853321927%_)))
                                        (_%tl321855321934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e321853321927%_))))
                                    (if (gx#stx-pair/null? _%tl321855321934%_)
                                        (let ((_g322258_
                                               (gx#syntax-split-splice
                                                _%tl321855321934%_
                                                '0)))
                                          (begin
                                            (let ((_g322259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g322258_)
                                                         (##values-length
                                                          _g322258_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g322259_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g322259_)))
                                            (let ((_%target321856321937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g322258_
                                                      0)))
                                                  (_%tl321858321940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g322258_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl321858321940%_)
                                                  (letrec ((_%loop321859321943%_
                                                            (lambda (_%hd321857321947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body321863321950%_)
                      (if (gx#stx-pair? _%hd321857321947%_)
                          (let ((_%e321860321952%_
                                 (gx#syntax-e _%hd321857321947%_)))
                            (let ((_%lp-hd321861321956%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e321860321952%_)))
                                  (_%lp-tl321862321959%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e321860321952%_))))
                              (_%loop321859321943%_
                               _%lp-tl321862321959%_
                               (cons _%lp-hd321861321956%_
                                     _%body321863321950%_))))
                          (let ((_%body321864321962%_
                                 (reverse _%body321863321950%_)))
                            ((lambda (_%g321834321965%_
                                      _%g321835321967%_
                                      _%g321836321968%_
                                      _%g321837321969%_)
                               (let* ((_%g321998322006%_
                                       (lambda (_%g321999322002%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g321999322002%_)))
                                      (_%g321997322033%_
                                       (lambda (_%g321999322010%_)
                                         ((lambda (_%g322000322013%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g321837321969%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g322000322013%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g321836321968%_
                                                          '())
                                                    (let ((__tmp322260
                                                           (lambda (_%g322024322027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g322025322030%_)
                     (cons _%g322024322027%_ _%g322025322030%_))))
              (declare (not safe))
              (foldr__0 __tmp322260 '() _%g321834321965%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g321999322010%_))))
                                 (_%g321997322033%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx321829%_
                                     _%g321835321967%_)))))
                             _%body321864321962%_
                             _%hd321854321931%_
                             _%hd321848321911%_
                             _%hd321845321901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop321859321943%_
                                                     _%target321856321937%_
                                                     '()))
                                                  (_%g321832321870%_
                                                   _%g321833321874%_)))))
                                        (_%g321832321870%_
                                         _%g321833321874%_))))
                                (_%g321832321870%_ _%g321833321874%_))
                            (_%g321832321870%_ _%g321833321874%_))
                        (_%g321832321870%_ _%g321833321874%_))))
                (_%g321832321870%_ _%g321833321874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g321832321870%_
                                                     _%g321833321874%_))))
                                            (_%g321832321870%_
                                             _%g321833321874%_))))
                                    (_%g321832321870%_ _%g321833321874%_))))
                            (_%g321832321870%_ _%g321833321874%_))))
                    (_%g321832321870%_ _%g321833321874%_)))))
        (_%g321831322037%_ _%stx321829%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100584_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx100211%_)
      (let* ((_%g100214100252%_
              (lambda (_%g100215100248%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100215100248%_)))
             (_%g100213100421%_
              (lambda (_%g100215100256%_)
                (if (gx#stx-pair? _%g100215100256%_)
                    (let ((_%e100220100259%_ (gx#syntax-e _%g100215100256%_)))
                      (let ((_%hd100221100263%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100220100259%_)))
                            (_%tl100222100266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100220100259%_))))
                        (if (gx#stx-pair? _%tl100222100266%_)
                            (let ((_%e100223100269%_
                                   (gx#syntax-e _%tl100222100266%_)))
                              (let ((_%hd100224100273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100223100269%_)))
                                    (_%tl100225100276%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100223100269%_))))
                                (if (gx#stx-pair? _%hd100224100273%_)
                                    (let ((_%e100226100279%_
                                           (gx#syntax-e _%hd100224100273%_)))
                                      (let ((_%hd100227100283%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100226100279%_)))
                                            (_%tl100228100286%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100226100279%_))))
                                        (if (gx#stx-pair? _%tl100228100286%_)
                                            (let ((_%e100229100289%_
                                                   (gx#syntax-e
                                                    _%tl100228100286%_)))
                                              (let ((_%hd100230100293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100229100289%_)))
                                                    (_%tl100231100296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100229100289%_))))
                                                (if (gx#stx-null?
                                                     _%tl100231100296%_)
                                                    (if (gx#stx-pair?
                                                         _%tl100225100276%_)
                                                        (let ((_%e100232100299%_
                                                               (gx#syntax-e
                                                                _%tl100225100276%_)))
                                                          (let ((_%hd100233100303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e100232100299%_)))
                        (_%tl100234100306%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e100232100299%_))))
                    (if (gx#identifier? _%hd100233100303%_)
                        (if (gx#free-identifier=?
                             |[1]#_g100584_|
                             _%hd100233100303%_)
                            (if (gx#stx-pair? _%tl100234100306%_)
                                (let ((_%e100235100309%_
                                       (gx#syntax-e _%tl100234100306%_)))
                                  (let ((_%hd100236100313%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e100235100309%_)))
                                        (_%tl100237100316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e100235100309%_))))
                                    (if (gx#stx-pair/null? _%tl100237100316%_)
                                        (let ((_g100585_
                                               (gx#syntax-split-splice
                                                _%tl100237100316%_
                                                '0)))
                                          (begin
                                            (let ((_g100586_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g100585_)
                                                         (##vector-length
                                                          _g100585_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g100586_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g100586_)))
                                            (let ((_%target100238100319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100585_
                                                      0)))
                                                  (_%tl100240100322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100585_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl100240100322%_)
                                                  (letrec ((_%loop100241100325%_
                                                            (lambda (_%hd100239100329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body100245100332%_)
                      (if (gx#stx-pair? _%hd100239100329%_)
                          (let ((_%e100242100335%_
                                 (gx#syntax-e _%hd100239100329%_)))
                            (let ((_%lp-hd100243100339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e100242100335%_)))
                                  (_%lp-tl100244100342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e100242100335%_))))
                              (_%loop100241100325%_
                               _%lp-tl100244100342%_
                               (cons _%lp-hd100243100339%_
                                     _%body100245100332%_))))
                          (let ((_%body100246100345%_
                                 (reverse _%body100245100332%_)))
                            ((lambda (_%L100349%_
                                      _%L100351%_
                                      _%L100352%_
                                      _%L100353%_)
                               (let* ((_%g100382100390%_
                                       (lambda (_%g100383100386%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g100383100386%_)))
                                      (_%g100381100417%_
                                       (lambda (_%g100383100394%_)
                                         ((lambda (_%L100397%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L100353%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L100397%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L100352%_ '())
                                                    (let ((__tmp100587
                                                           (lambda (_%g100408100411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g100409100414%_)
                     (cons _%g100408100411%_ _%g100409100414%_))))
              (declare (not safe))
              (__foldr1 __tmp100587 '() _%L100349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g100383100394%_))))
                                 (_%g100381100417%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx100211%_
                                     _%L100351%_)))))
                             _%body100246100345%_
                             _%hd100236100313%_
                             _%hd100230100293%_
                             _%hd100227100283%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop100241100325%_
                                                     _%target100238100319%_
                                                     '()))
                                                  (_%g100214100252%_
                                                   _%g100215100256%_)))))
                                        (_%g100214100252%_
                                         _%g100215100256%_))))
                                (_%g100214100252%_ _%g100215100256%_))
                            (_%g100214100252%_ _%g100215100256%_))
                        (_%g100214100252%_ _%g100215100256%_))))
                (_%g100214100252%_ _%g100215100256%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100214100252%_
                                                     _%g100215100256%_))))
                                            (_%g100214100252%_
                                             _%g100215100256%_))))
                                    (_%g100214100252%_ _%g100215100256%_))))
                            (_%g100214100252%_ _%g100215100256%_))))
                    (_%g100214100252%_ _%g100215100256%_)))))
        (_%g100213100421%_ _%stx100211%_)))))

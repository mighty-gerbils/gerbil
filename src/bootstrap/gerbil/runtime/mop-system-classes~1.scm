(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100474_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx100101%_)
      (let* ((_%g100104100142%_
              (lambda (_%g100105100138%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100105100138%_)))
             (_%g100103100311%_
              (lambda (_%g100105100146%_)
                (if (gx#stx-pair? _%g100105100146%_)
                    (let ((_%e100110100149%_ (gx#syntax-e _%g100105100146%_)))
                      (let ((_%hd100111100153%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100110100149%_)))
                            (_%tl100112100156%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100110100149%_))))
                        (if (gx#stx-pair? _%tl100112100156%_)
                            (let ((_%e100113100159%_
                                   (gx#syntax-e _%tl100112100156%_)))
                              (let ((_%hd100114100163%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100113100159%_)))
                                    (_%tl100115100166%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100113100159%_))))
                                (if (gx#stx-pair? _%hd100114100163%_)
                                    (let ((_%e100116100169%_
                                           (gx#syntax-e _%hd100114100163%_)))
                                      (let ((_%hd100117100173%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100116100169%_)))
                                            (_%tl100118100176%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100116100169%_))))
                                        (if (gx#stx-pair? _%tl100118100176%_)
                                            (let ((_%e100119100179%_
                                                   (gx#syntax-e
                                                    _%tl100118100176%_)))
                                              (let ((_%hd100120100183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100119100179%_)))
                                                    (_%tl100121100186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100119100179%_))))
                                                (if (gx#stx-null?
                                                     _%tl100121100186%_)
                                                    (if (gx#stx-pair?
                                                         _%tl100115100166%_)
                                                        (let ((_%e100122100189%_
                                                               (gx#syntax-e
                                                                _%tl100115100166%_)))
                                                          (let ((_%hd100123100193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e100122100189%_)))
                        (_%tl100124100196%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e100122100189%_))))
                    (if (gx#identifier? _%hd100123100193%_)
                        (if (gx#free-identifier=?
                             |[1]#_g100474_|
                             _%hd100123100193%_)
                            (if (gx#stx-pair? _%tl100124100196%_)
                                (let ((_%e100125100199%_
                                       (gx#syntax-e _%tl100124100196%_)))
                                  (let ((_%hd100126100203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e100125100199%_)))
                                        (_%tl100127100206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e100125100199%_))))
                                    (if (gx#stx-pair/null? _%tl100127100206%_)
                                        (let ((_g100475_
                                               (gx#syntax-split-splice
                                                _%tl100127100206%_
                                                '0)))
                                          (begin
                                            (let ((_g100476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g100475_)
                                                         (##vector-length
                                                          _g100475_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g100476_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g100476_)))
                                            (let ((_%target100128100209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100475_
                                                      0)))
                                                  (_%tl100130100212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100475_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl100130100212%_)
                                                  (letrec ((_%loop100131100215%_
                                                            (lambda (_%hd100129100219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body100135100222%_)
                      (if (gx#stx-pair? _%hd100129100219%_)
                          (let ((_%e100132100225%_
                                 (gx#syntax-e _%hd100129100219%_)))
                            (let ((_%lp-hd100133100229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e100132100225%_)))
                                  (_%lp-tl100134100232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e100132100225%_))))
                              (_%loop100131100215%_
                               _%lp-tl100134100232%_
                               (cons _%lp-hd100133100229%_
                                     _%body100135100222%_))))
                          (let ((_%body100136100235%_
                                 (reverse _%body100135100222%_)))
                            ((lambda (_%L100239%_
                                      _%L100241%_
                                      _%L100242%_
                                      _%L100243%_)
                               (let* ((_%g100272100280%_
                                       (lambda (_%g100273100276%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g100273100276%_)))
                                      (_%g100271100307%_
                                       (lambda (_%g100273100284%_)
                                         ((lambda (_%L100287%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L100243%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L100287%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L100242%_ '())
                                                    (let ((__tmp100477
                                                           (lambda (_%g100298100301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g100299100304%_)
                     (cons _%g100298100301%_ _%g100299100304%_))))
              (declare (not safe))
              (__foldr1 __tmp100477 '() _%L100239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g100273100284%_))))
                                 (_%g100271100307%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx100101%_
                                     _%L100241%_)))))
                             _%body100136100235%_
                             _%hd100126100203%_
                             _%hd100120100183%_
                             _%hd100117100173%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop100131100215%_
                                                     _%target100128100209%_
                                                     '()))
                                                  (_%g100104100142%_
                                                   _%g100105100146%_)))))
                                        (_%g100104100142%_
                                         _%g100105100146%_))))
                                (_%g100104100142%_ _%g100105100146%_))
                            (_%g100104100142%_ _%g100105100146%_))
                        (_%g100104100142%_ _%g100105100146%_))))
                (_%g100104100142%_ _%g100105100146%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100104100142%_
                                                     _%g100105100146%_))))
                                            (_%g100104100142%_
                                             _%g100105100146%_))))
                                    (_%g100104100142%_ _%g100105100146%_))))
                            (_%g100104100142%_ _%g100105100146%_))))
                    (_%g100104100142%_ _%g100105100146%_)))))
        (_%g100103100311%_ _%stx100101%_)))))

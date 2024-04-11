(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100192_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx99819%_)
      (let* ((_%g9982299860%_
              (lambda (_%g9982399856%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9982399856%_)))
             (_%g99821100029%_
              (lambda (_%g9982399864%_)
                (if (gx#stx-pair? _%g9982399864%_)
                    (let ((_%e9982899867%_ (gx#syntax-e _%g9982399864%_)))
                      (let ((_%hd9982999871%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9982899867%_)))
                            (_%tl9983099874%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9982899867%_))))
                        (if (gx#stx-pair? _%tl9983099874%_)
                            (let ((_%e9983199877%_
                                   (gx#syntax-e _%tl9983099874%_)))
                              (let ((_%hd9983299881%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9983199877%_)))
                                    (_%tl9983399884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9983199877%_))))
                                (if (gx#stx-pair? _%hd9983299881%_)
                                    (let ((_%e9983499887%_
                                           (gx#syntax-e _%hd9983299881%_)))
                                      (let ((_%hd9983599891%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9983499887%_)))
                                            (_%tl9983699894%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9983499887%_))))
                                        (if (gx#stx-pair? _%tl9983699894%_)
                                            (let ((_%e9983799897%_
                                                   (gx#syntax-e
                                                    _%tl9983699894%_)))
                                              (let ((_%hd9983899901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9983799897%_)))
                                                    (_%tl9983999904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9983799897%_))))
                                                (if (gx#stx-null?
                                                     _%tl9983999904%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9983399884%_)
                                                        (let ((_%e9984099907%_
                                                               (gx#syntax-e
                                                                _%tl9983399884%_)))
                                                          (let ((_%hd9984199911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9984099907%_)))
                        (_%tl9984299914%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9984099907%_))))
                    (if (gx#identifier? _%hd9984199911%_)
                        (if (gx#free-identifier=?
                             |[1]#_g100192_|
                             _%hd9984199911%_)
                            (if (gx#stx-pair? _%tl9984299914%_)
                                (let ((_%e9984399917%_
                                       (gx#syntax-e _%tl9984299914%_)))
                                  (let ((_%hd9984499921%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9984399917%_)))
                                        (_%tl9984599924%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9984399917%_))))
                                    (if (gx#stx-pair/null? _%tl9984599924%_)
                                        (let ((_g100193_
                                               (gx#syntax-split-splice
                                                _%tl9984599924%_
                                                '0)))
                                          (begin
                                            (let ((_g100194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g100193_)
                                                         (##vector-length
                                                          _g100193_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g100194_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g100194_)))
                                            (let ((_%target9984699927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100193_
                                                      0)))
                                                  (_%tl9984899930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100193_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9984899930%_)
                                                  (letrec ((_%loop9984999933%_
                                                            (lambda (_%hd9984799937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9985399940%_)
                      (if (gx#stx-pair? _%hd9984799937%_)
                          (let ((_%e9985099943%_
                                 (gx#syntax-e _%hd9984799937%_)))
                            (let ((_%lp-hd9985199947%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9985099943%_)))
                                  (_%lp-tl9985299950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9985099943%_))))
                              (_%loop9984999933%_
                               _%lp-tl9985299950%_
                               (cons _%lp-hd9985199947%_ _%body9985399940%_))))
                          (let ((_%body9985499953%_
                                 (reverse _%body9985399940%_)))
                            ((lambda (_%L99957%_
                                      _%L99959%_
                                      _%L99960%_
                                      _%L99961%_)
                               (let* ((_%g9999099998%_
                                       (lambda (_%g9999199994%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9999199994%_)))
                                      (_%g99989100025%_
                                       (lambda (_%g99991100002%_)
                                         ((lambda (_%L100005%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L99961%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L100005%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L99960%_ '())
                                                    (let ((__tmp100195
                                                           (lambda (_%g100016100019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g100017100022%_)
                     (cons _%g100016100019%_ _%g100017100022%_))))
              (declare (not safe))
              (__foldr1 __tmp100195 '() _%L99957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g99991100002%_))))
                                 (_%g99989100025%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx99819%_
                                     _%L99959%_)))))
                             _%body9985499953%_
                             _%hd9984499921%_
                             _%hd9983899901%_
                             _%hd9983599891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9984999933%_
                                                     _%target9984699927%_
                                                     '()))
                                                  (_%g9982299860%_
                                                   _%g9982399864%_)))))
                                        (_%g9982299860%_ _%g9982399864%_))))
                                (_%g9982299860%_ _%g9982399864%_))
                            (_%g9982299860%_ _%g9982399864%_))
                        (_%g9982299860%_ _%g9982399864%_))))
                (_%g9982299860%_ _%g9982399864%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9982299860%_
                                                     _%g9982399864%_))))
                                            (_%g9982299860%_
                                             _%g9982399864%_))))
                                    (_%g9982299860%_ _%g9982399864%_))))
                            (_%g9982299860%_ _%g9982399864%_))))
                    (_%g9982299860%_ _%g9982399864%_)))))
        (_%g99821100029%_ _%stx99819%_)))))

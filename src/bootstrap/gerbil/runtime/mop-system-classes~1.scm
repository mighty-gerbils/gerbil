(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g136654_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx136226%_)
      (let* ((_%g136229136267%_
              (lambda (_%g136230136263%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g136230136263%_)))
             (_%g136228136434%_
              (lambda (_%g136230136271%_)
                (if (gx#stx-pair? _%g136230136271%_)
                    (let ((_%e136235136274%_ (gx#syntax-e _%g136230136271%_)))
                      (let ((_%hd136236136278%_
                             (let ()
                               (declare (not safe))
                               (##car _%e136235136274%_)))
                            (_%tl136237136281%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e136235136274%_))))
                        (if (gx#stx-pair? _%tl136237136281%_)
                            (let ((_%e136238136284%_
                                   (gx#syntax-e _%tl136237136281%_)))
                              (let ((_%hd136239136288%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e136238136284%_)))
                                    (_%tl136240136291%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e136238136284%_))))
                                (if (gx#stx-pair? _%hd136239136288%_)
                                    (let ((_%e136241136294%_
                                           (gx#syntax-e _%hd136239136288%_)))
                                      (let ((_%hd136242136298%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136241136294%_)))
                                            (_%tl136243136301%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136241136294%_))))
                                        (if (gx#stx-pair? _%tl136243136301%_)
                                            (let ((_%e136244136304%_
                                                   (gx#syntax-e
                                                    _%tl136243136301%_)))
                                              (let ((_%hd136245136308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e136244136304%_)))
                                                    (_%tl136246136311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e136244136304%_))))
                                                (if (gx#stx-null?
                                                     _%tl136246136311%_)
                                                    (if (gx#stx-pair?
                                                         _%tl136240136291%_)
                                                        (let ((_%e136247136314%_
                                                               (gx#syntax-e
                                                                _%tl136240136291%_)))
                                                          (let ((_%hd136248136318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e136247136314%_)))
                        (_%tl136249136321%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136247136314%_))))
                    (if (gx#identifier? _%hd136248136318%_)
                        (if (gx#free-identifier=?
                             |[1]#_g136654_|
                             _%hd136248136318%_)
                            (if (gx#stx-pair? _%tl136249136321%_)
                                (let ((_%e136250136324%_
                                       (gx#syntax-e _%tl136249136321%_)))
                                  (let ((_%hd136251136328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136250136324%_)))
                                        (_%tl136252136331%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136250136324%_))))
                                    (if (gx#stx-pair/null? _%tl136252136331%_)
                                        (let ((_g136655_
                                               (gx#syntax-split-splice
                                                _%tl136252136331%_
                                                '0)))
                                          (begin
                                            (let ((_g136656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g136655_)
                                                         (##values-length
                                                          _g136655_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g136656_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g136656_)))
                                            (let ((_%target136253136334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g136655_
                                                      0)))
                                                  (_%tl136255136337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g136655_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl136255136337%_)
                                                  (letrec ((_%loop136256136340%_
                                                            (lambda (_%hd136254136344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body136260136347%_)
                      (if (gx#stx-pair? _%hd136254136344%_)
                          (let ((_%e136257136349%_
                                 (gx#syntax-e _%hd136254136344%_)))
                            (let ((_%lp-hd136258136353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136257136349%_)))
                                  (_%lp-tl136259136356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136257136349%_))))
                              (_%loop136256136340%_
                               _%lp-tl136259136356%_
                               (cons _%lp-hd136258136353%_
                                     _%body136260136347%_))))
                          (let ((_%body136261136359%_
                                 (reverse _%body136260136347%_)))
                            ((lambda (_%g136231136362%_
                                      _%g136232136364%_
                                      _%g136233136365%_
                                      _%g136234136366%_)
                               (let* ((_%g136395136403%_
                                       (lambda (_%g136396136399%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136396136399%_)))
                                      (_%g136394136430%_
                                       (lambda (_%g136396136407%_)
                                         ((lambda (_%g136397136410%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g136234136366%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g136397136410%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g136233136365%_
                                                          '())
                                                    (let ((__tmp136657
                                                           (lambda (_%g136421136424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136422136427%_)
                     (cons _%g136421136424%_ _%g136422136427%_))))
              (declare (not safe))
              (foldr__0 __tmp136657 '() _%g136231136362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g136396136407%_))))
                                 (_%g136394136430%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx136226%_
                                     _%g136232136364%_)))))
                             _%body136261136359%_
                             _%hd136251136328%_
                             _%hd136245136308%_
                             _%hd136242136298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop136256136340%_
                                                     _%target136253136334%_
                                                     '()))
                                                  (_%g136229136267%_
                                                   _%g136230136271%_)))))
                                        (_%g136229136267%_
                                         _%g136230136271%_))))
                                (_%g136229136267%_ _%g136230136271%_))
                            (_%g136229136267%_ _%g136230136271%_))
                        (_%g136229136267%_ _%g136230136271%_))))
                (_%g136229136267%_ _%g136230136271%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136229136267%_
                                                     _%g136230136271%_))))
                                            (_%g136229136267%_
                                             _%g136230136271%_))))
                                    (_%g136229136267%_ _%g136230136271%_))))
                            (_%g136229136267%_ _%g136230136271%_))))
                    (_%g136229136267%_ _%g136230136271%_)))))
        (_%g136228136434%_ _%stx136226%_)))))

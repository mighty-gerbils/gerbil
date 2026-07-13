(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g144409_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx143892%_)
        (let* ((_%$%g143895143933%_
                (lambda (_%$%g143896143929%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g143896143929%_)))
               (_%$%g143894144100%_
                (lambda (_%$%g143896143937%_)
                  (if (gx#stx-pair? _%$%g143896143937%_)
                      (let ((_%$%e143901143940%_
                             (gx#syntax-e _%$%g143896143937%_)))
                        (let ((_%$%hd143902143944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e143901143940%_)))
                              (_%$%tl143903143947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e143901143940%_))))
                          (if (gx#stx-pair? _%$%tl143903143947%_)
                              (let ((_%$%e143904143950%_
                                     (gx#syntax-e _%$%tl143903143947%_)))
                                (let ((_%$%hd143905143954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e143904143950%_)))
                                      (_%$%tl143906143957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e143904143950%_))))
                                  (if (gx#stx-pair? _%$%hd143905143954%_)
                                      (let ((_%$%e143907143960%_
                                             (gx#syntax-e
                                              _%$%hd143905143954%_)))
                                        (let ((_%$%hd143908143964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e143907143960%_)))
                                              (_%$%tl143909143967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e143907143960%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl143909143967%_)
                                              (let ((_%$%e143910143970%_
                                                     (gx#syntax-e
                                                      _%$%tl143909143967%_)))
                                                (let ((_%$%hd143911143974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e143910143970%_)))
                                                      (_%$%tl143912143977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e143910143970%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl143912143977%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl143906143957%_)
                                                          (let ((_%$%e143913143980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl143906143957%_)))
                    (let ((_%$%hd143914143984%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e143913143980%_)))
                          (_%$%tl143915143987%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e143913143980%_))))
                      (if (gx#identifier? _%$%hd143914143984%_)
                          (if (gx#free-identifier=?
                               |[1]#_g144409_|
                               _%$%hd143914143984%_)
                              (if (gx#stx-pair? _%$%tl143915143987%_)
                                  (let ((_%$%e143916143990%_
                                         (gx#syntax-e _%$%tl143915143987%_)))
                                    (let ((_%$%hd143917143994%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e143916143990%_)))
                                          (_%$%tl143918143997%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e143916143990%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl143918143997%_)
                                          (let ((_g144410_
                                                 (gx#syntax-split-splice
                                                  _%$%tl143918143997%_
                                                  '0)))
                                            (begin
                                              (let ((_g144411_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g144410_)
                                                           (##values-length
                                                            _g144410_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g144411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g144411_)))
                                              (let ((_%$%target143919144000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144410_
                                                        0)))
                                                    (_%$%tl143921144003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144410_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl143921144003%_)
                                                    (letrec ((_%$%loop143922144006%_
                                                              (lambda (_%$%hd143920144010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body143926144013%_)
                        (if (gx#stx-pair? _%$%hd143920144010%_)
                            (let ((_%$%e143923144015%_
                                   (gx#syntax-e _%$%hd143920144010%_)))
                              (let ((_%$%lp-hd143924144019%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e143923144015%_)))
                                    (_%$%lp-tl143925144022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e143923144015%_))))
                                (_%$%loop143922144006%_
                                 _%$%lp-tl143925144022%_
                                 (cons _%$%lp-hd143924144019%_
                                       _%$%body143926144013%_))))
                            (let* ((_%$%body143927144025%_
                                    (reverse _%$%body143926144013%_))
                                   (_%$%g144061144069%_
                                    (lambda (_%$%g144062144065%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g144062144065%_)))
                                   (_%$%g144060144096%_
                                    (lambda (_%$%g144062144073%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd143908143964%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g144062144073%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd143911143974%_ '())
                                              (let ((__tmp144412
                                                     (lambda (_%$%g144087144090%_
                                                              _%$%g144088144093%_)
                                                       (cons _%$%g144087144090%_
                                                             _%$%g144088144093%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp144412
                                                 '()
                                                 _%$%body143927144025%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g144060144096%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx143892%_
                                  _%$%hd143917143994%_))))))))
              (_%$%loop143922144006%_ _%$%target143919144000%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g143895143933%_
                                                     _%$%g143896143937%_)))))
                                          (_%$%g143895143933%_
                                           _%$%g143896143937%_))))
                                  (_%$%g143895143933%_ _%$%g143896143937%_))
                              (_%$%g143895143933%_ _%$%g143896143937%_))
                          (_%$%g143895143933%_ _%$%g143896143937%_))))
                  (_%$%g143895143933%_ _%$%g143896143937%_))
              (_%$%g143895143933%_ _%$%g143896143937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g143895143933%_
                                               _%$%g143896143937%_))))
                                      (_%$%g143895143933%_
                                       _%$%g143896143937%_))))
                              (_%$%g143895143933%_ _%$%g143896143937%_))))
                      (_%$%g143895143933%_ _%$%g143896143937%_)))))
          (_%$%g143894144100%_ _%stx143892%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx144105%_)
        (let* ((_%$%g144109144129%_
                (lambda (_%$%g144110144125%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g144110144125%_)))
               (_%$%g144108144198%_
                (lambda (_%$%g144110144133%_)
                  (if (gx#stx-pair? _%$%g144110144133%_)
                      (let ((_%$%e144112144136%_
                             (gx#syntax-e _%$%g144110144133%_)))
                        (let ((_%$%hd144113144140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e144112144136%_)))
                              (_%$%tl144114144143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e144112144136%_))))
                          (if (gx#stx-pair/null? _%$%tl144114144143%_)
                              (let ((_g144413_
                                     (gx#syntax-split-splice
                                      _%$%tl144114144143%_
                                      '0)))
                                (begin
                                  (let ((_g144414_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g144413_)
                                               (##values-length _g144413_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g144414_ 2)))
                                        (error "Context expects 2 values"
                                               _g144414_)))
                                  (let ((_%$%target144115144146%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g144413_ 0)))
                                        (_%$%tl144117144149%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g144413_ 1))))
                                    (if (gx#stx-null? _%$%tl144117144149%_)
                                        (letrec ((_%$%loop144118144152%_
                                                  (lambda (_%$%hd144116144156%_
                                                           _%$%t144122144159%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd144116144156%_)
                                                        (let ((_%$%e144119144161%_
                                                               (gx#syntax-e
                                                                _%$%hd144116144156%_)))
                                                          (let ((_%$%lp-hd144120144165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e144119144161%_)))
                        (_%$%lp-tl144121144168%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e144119144161%_))))
                    (_%$%loop144118144152%_
                     _%$%lp-tl144121144168%_
                     (cons _%$%lp-hd144120144165%_ _%$%t144122144159%_))))
                (let ((_%$%t144123144171%_ (reverse _%$%t144122144159%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp144416
                                     (lambda (_%$%g144189144192%_
                                              _%$%g144190144195%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g144189144192%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g144190144195%_)))
                                    (__tmp144415
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp144416
                                 __tmp144415
                                 _%$%t144123144171%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop144118144152%_
                                           _%$%target144115144146%_
                                           '()))
                                        (_%$%g144109144129%_
                                         _%$%g144110144133%_)))))
                              (_%$%g144109144129%_ _%$%g144110144133%_))))
                      (_%$%g144109144129%_ _%$%g144110144133%_)))))
          (_%$%g144108144198%_ _%$stx144105%_))))))

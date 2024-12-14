(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g102255_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx101882%_)
      (let* ((_%g101885101923%_
              (lambda (_%g101886101919%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101886101919%_)))
             (_%g101884102092%_
              (lambda (_%g101886101927%_)
                (if (gx#stx-pair? _%g101886101927%_)
                    (let ((_%e101891101930%_ (gx#syntax-e _%g101886101927%_)))
                      (let ((_%hd101892101934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101891101930%_)))
                            (_%tl101893101937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101891101930%_))))
                        (if (gx#stx-pair? _%tl101893101937%_)
                            (let ((_%e101894101940%_
                                   (gx#syntax-e _%tl101893101937%_)))
                              (let ((_%hd101895101944%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101894101940%_)))
                                    (_%tl101896101947%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101894101940%_))))
                                (if (gx#stx-pair? _%hd101895101944%_)
                                    (let ((_%e101897101950%_
                                           (gx#syntax-e _%hd101895101944%_)))
                                      (let ((_%hd101898101954%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101897101950%_)))
                                            (_%tl101899101957%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101897101950%_))))
                                        (if (gx#stx-pair? _%tl101899101957%_)
                                            (let ((_%e101900101960%_
                                                   (gx#syntax-e
                                                    _%tl101899101957%_)))
                                              (let ((_%hd101901101964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101900101960%_)))
                                                    (_%tl101902101967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101900101960%_))))
                                                (if (gx#stx-null?
                                                     _%tl101902101967%_)
                                                    (if (gx#stx-pair?
                                                         _%tl101896101947%_)
                                                        (let ((_%e101903101970%_
                                                               (gx#syntax-e
                                                                _%tl101896101947%_)))
                                                          (let ((_%hd101904101974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e101903101970%_)))
                        (_%tl101905101977%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e101903101970%_))))
                    (if (gx#identifier? _%hd101904101974%_)
                        (if (gx#free-identifier=?
                             |[1]#_g102255_|
                             _%hd101904101974%_)
                            (if (gx#stx-pair? _%tl101905101977%_)
                                (let ((_%e101906101980%_
                                       (gx#syntax-e _%tl101905101977%_)))
                                  (let ((_%hd101907101984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e101906101980%_)))
                                        (_%tl101908101987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e101906101980%_))))
                                    (if (gx#stx-pair/null? _%tl101908101987%_)
                                        (let ((_g102256_
                                               (gx#syntax-split-splice
                                                _%tl101908101987%_
                                                '0)))
                                          (begin
                                            (let ((_g102257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g102256_)
                                                         (##values-length
                                                          _g102256_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g102257_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g102257_)))
                                            (let ((_%target101909101990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102256_
                                                      0)))
                                                  (_%tl101911101993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102256_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl101911101993%_)
                                                  (letrec ((_%loop101912101996%_
                                                            (lambda (_%hd101910102000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body101916102003%_)
                      (if (gx#stx-pair? _%hd101910102000%_)
                          (let ((_%e101913102006%_
                                 (gx#syntax-e _%hd101910102000%_)))
                            (let ((_%lp-hd101914102010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e101913102006%_)))
                                  (_%lp-tl101915102013%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e101913102006%_))))
                              (_%loop101912101996%_
                               _%lp-tl101915102013%_
                               (cons _%lp-hd101914102010%_
                                     _%body101916102003%_))))
                          (let ((_%body101917102016%_
                                 (reverse _%body101916102003%_)))
                            ((lambda (_%L102020%_
                                      _%L102022%_
                                      _%L102023%_
                                      _%L102024%_)
                               (let* ((_%g102053102061%_
                                       (lambda (_%g102054102057%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102054102057%_)))
                                      (_%g102052102088%_
                                       (lambda (_%g102054102065%_)
                                         ((lambda (_%L102068%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102024%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102068%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102023%_ '())
                                                    (let ((__tmp102258
                                                           (lambda (_%g102079102082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102080102085%_)
                     (cons _%g102079102082%_ _%g102080102085%_))))
              (declare (not safe))
              (__foldr1 __tmp102258 '() _%L102020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102054102065%_))))
                                 (_%g102052102088%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx101882%_
                                     _%L102022%_)))))
                             _%body101917102016%_
                             _%hd101907101984%_
                             _%hd101901101964%_
                             _%hd101898101954%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop101912101996%_
                                                     _%target101909101990%_
                                                     '()))
                                                  (_%g101885101923%_
                                                   _%g101886101927%_)))))
                                        (_%g101885101923%_
                                         _%g101886101927%_))))
                                (_%g101885101923%_ _%g101886101927%_))
                            (_%g101885101923%_ _%g101886101927%_))
                        (_%g101885101923%_ _%g101886101927%_))))
                (_%g101885101923%_ _%g101886101927%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101885101923%_
                                                     _%g101886101927%_))))
                                            (_%g101885101923%_
                                             _%g101886101927%_))))
                                    (_%g101885101923%_ _%g101886101927%_))))
                            (_%g101885101923%_ _%g101886101927%_))))
                    (_%g101885101923%_ _%g101886101927%_)))))
        (_%g101884102092%_ _%stx101882%_)))))

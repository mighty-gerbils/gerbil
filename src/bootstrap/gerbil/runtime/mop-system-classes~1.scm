(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g101161_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx100788%_)
      (let* ((_%g100791100829%_
              (lambda (_%g100792100825%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100792100825%_)))
             (_%g100790100998%_
              (lambda (_%g100792100833%_)
                (if (gx#stx-pair? _%g100792100833%_)
                    (let ((_%e100797100836%_ (gx#syntax-e _%g100792100833%_)))
                      (let ((_%hd100798100840%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100797100836%_)))
                            (_%tl100799100843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100797100836%_))))
                        (if (gx#stx-pair? _%tl100799100843%_)
                            (let ((_%e100800100846%_
                                   (gx#syntax-e _%tl100799100843%_)))
                              (let ((_%hd100801100850%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100800100846%_)))
                                    (_%tl100802100853%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100800100846%_))))
                                (if (gx#stx-pair? _%hd100801100850%_)
                                    (let ((_%e100803100856%_
                                           (gx#syntax-e _%hd100801100850%_)))
                                      (let ((_%hd100804100860%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100803100856%_)))
                                            (_%tl100805100863%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100803100856%_))))
                                        (if (gx#stx-pair? _%tl100805100863%_)
                                            (let ((_%e100806100866%_
                                                   (gx#syntax-e
                                                    _%tl100805100863%_)))
                                              (let ((_%hd100807100870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100806100866%_)))
                                                    (_%tl100808100873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100806100866%_))))
                                                (if (gx#stx-null?
                                                     _%tl100808100873%_)
                                                    (if (gx#stx-pair?
                                                         _%tl100802100853%_)
                                                        (let ((_%e100809100876%_
                                                               (gx#syntax-e
                                                                _%tl100802100853%_)))
                                                          (let ((_%hd100810100880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e100809100876%_)))
                        (_%tl100811100883%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e100809100876%_))))
                    (if (gx#identifier? _%hd100810100880%_)
                        (if (gx#free-identifier=?
                             |[1]#_g101161_|
                             _%hd100810100880%_)
                            (if (gx#stx-pair? _%tl100811100883%_)
                                (let ((_%e100812100886%_
                                       (gx#syntax-e _%tl100811100883%_)))
                                  (let ((_%hd100813100890%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e100812100886%_)))
                                        (_%tl100814100893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e100812100886%_))))
                                    (if (gx#stx-pair/null? _%tl100814100893%_)
                                        (let ((_g101162_
                                               (gx#syntax-split-splice
                                                _%tl100814100893%_
                                                '0)))
                                          (begin
                                            (let ((_g101163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g101162_)
                                                         (##vector-length
                                                          _g101162_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g101163_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g101163_)))
                                            (let ((_%target100815100896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g101162_
                                                      0)))
                                                  (_%tl100817100899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g101162_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl100817100899%_)
                                                  (letrec ((_%loop100818100902%_
                                                            (lambda (_%hd100816100906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body100822100909%_)
                      (if (gx#stx-pair? _%hd100816100906%_)
                          (let ((_%e100819100912%_
                                 (gx#syntax-e _%hd100816100906%_)))
                            (let ((_%lp-hd100820100916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e100819100912%_)))
                                  (_%lp-tl100821100919%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e100819100912%_))))
                              (_%loop100818100902%_
                               _%lp-tl100821100919%_
                               (cons _%lp-hd100820100916%_
                                     _%body100822100909%_))))
                          (let ((_%body100823100922%_
                                 (reverse _%body100822100909%_)))
                            ((lambda (_%L100926%_
                                      _%L100928%_
                                      _%L100929%_
                                      _%L100930%_)
                               (let* ((_%g100959100967%_
                                       (lambda (_%g100960100963%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g100960100963%_)))
                                      (_%g100958100994%_
                                       (lambda (_%g100960100971%_)
                                         ((lambda (_%L100974%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L100930%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L100974%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L100929%_ '())
                                                    (let ((__tmp101164
                                                           (lambda (_%g100985100988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g100986100991%_)
                     (cons _%g100985100988%_ _%g100986100991%_))))
              (declare (not safe))
              (__foldr1 __tmp101164 '() _%L100926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g100960100971%_))))
                                 (_%g100958100994%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx100788%_
                                     _%L100928%_)))))
                             _%body100823100922%_
                             _%hd100813100890%_
                             _%hd100807100870%_
                             _%hd100804100860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop100818100902%_
                                                     _%target100815100896%_
                                                     '()))
                                                  (_%g100791100829%_
                                                   _%g100792100833%_)))))
                                        (_%g100791100829%_
                                         _%g100792100833%_))))
                                (_%g100791100829%_ _%g100792100833%_))
                            (_%g100791100829%_ _%g100792100833%_))
                        (_%g100791100829%_ _%g100792100833%_))))
                (_%g100791100829%_ _%g100792100833%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100791100829%_
                                                     _%g100792100833%_))))
                                            (_%g100791100829%_
                                             _%g100792100833%_))))
                                    (_%g100791100829%_ _%g100792100833%_))))
                            (_%g100791100829%_ _%g100792100833%_))))
                    (_%g100791100829%_ _%g100792100833%_)))))
        (_%g100790100998%_ _%stx100788%_)))))

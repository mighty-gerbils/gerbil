(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100858_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx100485%_)
      (let* ((_%g100488100526%_
              (lambda (_%g100489100522%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100489100522%_)))
             (_%g100487100695%_
              (lambda (_%g100489100530%_)
                (if (gx#stx-pair? _%g100489100530%_)
                    (let ((_%e100494100533%_ (gx#syntax-e _%g100489100530%_)))
                      (let ((_%hd100495100537%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100494100533%_)))
                            (_%tl100496100540%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100494100533%_))))
                        (if (gx#stx-pair? _%tl100496100540%_)
                            (let ((_%e100497100543%_
                                   (gx#syntax-e _%tl100496100540%_)))
                              (let ((_%hd100498100547%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100497100543%_)))
                                    (_%tl100499100550%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100497100543%_))))
                                (if (gx#stx-pair? _%hd100498100547%_)
                                    (let ((_%e100500100553%_
                                           (gx#syntax-e _%hd100498100547%_)))
                                      (let ((_%hd100501100557%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100500100553%_)))
                                            (_%tl100502100560%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100500100553%_))))
                                        (if (gx#stx-pair? _%tl100502100560%_)
                                            (let ((_%e100503100563%_
                                                   (gx#syntax-e
                                                    _%tl100502100560%_)))
                                              (let ((_%hd100504100567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100503100563%_)))
                                                    (_%tl100505100570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100503100563%_))))
                                                (if (gx#stx-null?
                                                     _%tl100505100570%_)
                                                    (if (gx#stx-pair?
                                                         _%tl100499100550%_)
                                                        (let ((_%e100506100573%_
                                                               (gx#syntax-e
                                                                _%tl100499100550%_)))
                                                          (let ((_%hd100507100577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e100506100573%_)))
                        (_%tl100508100580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e100506100573%_))))
                    (if (gx#identifier? _%hd100507100577%_)
                        (if (gx#free-identifier=?
                             |[1]#_g100858_|
                             _%hd100507100577%_)
                            (if (gx#stx-pair? _%tl100508100580%_)
                                (let ((_%e100509100583%_
                                       (gx#syntax-e _%tl100508100580%_)))
                                  (let ((_%hd100510100587%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e100509100583%_)))
                                        (_%tl100511100590%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e100509100583%_))))
                                    (if (gx#stx-pair/null? _%tl100511100590%_)
                                        (let ((_g100859_
                                               (gx#syntax-split-splice
                                                _%tl100511100590%_
                                                '0)))
                                          (begin
                                            (let ((_g100860_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g100859_)
                                                         (##vector-length
                                                          _g100859_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g100860_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g100860_)))
                                            (let ((_%target100512100593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100859_
                                                      0)))
                                                  (_%tl100514100596%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100859_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl100514100596%_)
                                                  (letrec ((_%loop100515100599%_
                                                            (lambda (_%hd100513100603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body100519100606%_)
                      (if (gx#stx-pair? _%hd100513100603%_)
                          (let ((_%e100516100609%_
                                 (gx#syntax-e _%hd100513100603%_)))
                            (let ((_%lp-hd100517100613%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e100516100609%_)))
                                  (_%lp-tl100518100616%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e100516100609%_))))
                              (_%loop100515100599%_
                               _%lp-tl100518100616%_
                               (cons _%lp-hd100517100613%_
                                     _%body100519100606%_))))
                          (let ((_%body100520100619%_
                                 (reverse _%body100519100606%_)))
                            ((lambda (_%L100623%_
                                      _%L100625%_
                                      _%L100626%_
                                      _%L100627%_)
                               (let* ((_%g100656100664%_
                                       (lambda (_%g100657100660%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g100657100660%_)))
                                      (_%g100655100691%_
                                       (lambda (_%g100657100668%_)
                                         ((lambda (_%L100671%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L100627%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L100671%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L100626%_ '())
                                                    (let ((__tmp100861
                                                           (lambda (_%g100682100685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g100683100688%_)
                     (cons _%g100682100685%_ _%g100683100688%_))))
              (declare (not safe))
              (__foldr1 __tmp100861 '() _%L100623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g100657100668%_))))
                                 (_%g100655100691%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx100485%_
                                     _%L100625%_)))))
                             _%body100520100619%_
                             _%hd100510100587%_
                             _%hd100504100567%_
                             _%hd100501100557%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop100515100599%_
                                                     _%target100512100593%_
                                                     '()))
                                                  (_%g100488100526%_
                                                   _%g100489100530%_)))))
                                        (_%g100488100526%_
                                         _%g100489100530%_))))
                                (_%g100488100526%_ _%g100489100530%_))
                            (_%g100488100526%_ _%g100489100530%_))
                        (_%g100488100526%_ _%g100489100530%_))))
                (_%g100488100526%_ _%g100489100530%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100488100526%_
                                                     _%g100489100530%_))))
                                            (_%g100488100526%_
                                             _%g100489100530%_))))
                                    (_%g100488100526%_ _%g100489100530%_))))
                            (_%g100488100526%_ _%g100489100530%_))))
                    (_%g100488100526%_ _%g100489100530%_)))))
        (_%g100487100695%_ _%stx100485%_)))))

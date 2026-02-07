(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g136570_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx136142%_)
      (let* ((_%g136145136183%_
              (lambda (_%g136146136179%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g136146136179%_)))
             (_%g136144136350%_
              (lambda (_%g136146136187%_)
                (if (gx#stx-pair? _%g136146136187%_)
                    (let ((_%e136151136190%_ (gx#syntax-e _%g136146136187%_)))
                      (let ((_%hd136152136194%_
                             (let ()
                               (declare (not safe))
                               (##car _%e136151136190%_)))
                            (_%tl136153136197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e136151136190%_))))
                        (if (gx#stx-pair? _%tl136153136197%_)
                            (let ((_%e136154136200%_
                                   (gx#syntax-e _%tl136153136197%_)))
                              (let ((_%hd136155136204%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e136154136200%_)))
                                    (_%tl136156136207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e136154136200%_))))
                                (if (gx#stx-pair? _%hd136155136204%_)
                                    (let ((_%e136157136210%_
                                           (gx#syntax-e _%hd136155136204%_)))
                                      (let ((_%hd136158136214%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136157136210%_)))
                                            (_%tl136159136217%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136157136210%_))))
                                        (if (gx#stx-pair? _%tl136159136217%_)
                                            (let ((_%e136160136220%_
                                                   (gx#syntax-e
                                                    _%tl136159136217%_)))
                                              (let ((_%hd136161136224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e136160136220%_)))
                                                    (_%tl136162136227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e136160136220%_))))
                                                (if (gx#stx-null?
                                                     _%tl136162136227%_)
                                                    (if (gx#stx-pair?
                                                         _%tl136156136207%_)
                                                        (let ((_%e136163136230%_
                                                               (gx#syntax-e
                                                                _%tl136156136207%_)))
                                                          (let ((_%hd136164136234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e136163136230%_)))
                        (_%tl136165136237%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136163136230%_))))
                    (if (gx#identifier? _%hd136164136234%_)
                        (if (gx#free-identifier=?
                             |[1]#_g136570_|
                             _%hd136164136234%_)
                            (if (gx#stx-pair? _%tl136165136237%_)
                                (let ((_%e136166136240%_
                                       (gx#syntax-e _%tl136165136237%_)))
                                  (let ((_%hd136167136244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136166136240%_)))
                                        (_%tl136168136247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136166136240%_))))
                                    (if (gx#stx-pair/null? _%tl136168136247%_)
                                        (let ((_g136571_
                                               (gx#syntax-split-splice
                                                _%tl136168136247%_
                                                '0)))
                                          (begin
                                            (let ((_g136572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g136571_)
                                                         (##values-length
                                                          _g136571_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g136572_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g136572_)))
                                            (let ((_%target136169136250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g136571_
                                                      0)))
                                                  (_%tl136171136253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g136571_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl136171136253%_)
                                                  (letrec ((_%loop136172136256%_
                                                            (lambda (_%hd136170136260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body136176136263%_)
                      (if (gx#stx-pair? _%hd136170136260%_)
                          (let ((_%e136173136265%_
                                 (gx#syntax-e _%hd136170136260%_)))
                            (let ((_%lp-hd136174136269%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136173136265%_)))
                                  (_%lp-tl136175136272%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136173136265%_))))
                              (_%loop136172136256%_
                               _%lp-tl136175136272%_
                               (cons _%lp-hd136174136269%_
                                     _%body136176136263%_))))
                          (let ((_%body136177136275%_
                                 (reverse _%body136176136263%_)))
                            ((lambda (_%g136147136278%_
                                      _%g136148136280%_
                                      _%g136149136281%_
                                      _%g136150136282%_)
                               (let* ((_%g136311136319%_
                                       (lambda (_%g136312136315%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136312136315%_)))
                                      (_%g136310136346%_
                                       (lambda (_%g136312136323%_)
                                         ((lambda (_%g136313136326%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g136150136282%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g136313136326%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g136149136281%_
                                                          '())
                                                    (let ((__tmp136573
                                                           (lambda (_%g136337136340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136338136343%_)
                     (cons _%g136337136340%_ _%g136338136343%_))))
              (declare (not safe))
              (foldr__0 __tmp136573 '() _%g136147136278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g136312136323%_))))
                                 (_%g136310136346%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx136142%_
                                     _%g136148136280%_)))))
                             _%body136177136275%_
                             _%hd136167136244%_
                             _%hd136161136224%_
                             _%hd136158136214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop136172136256%_
                                                     _%target136169136250%_
                                                     '()))
                                                  (_%g136145136183%_
                                                   _%g136146136187%_)))))
                                        (_%g136145136183%_
                                         _%g136146136187%_))))
                                (_%g136145136183%_ _%g136146136187%_))
                            (_%g136145136183%_ _%g136146136187%_))
                        (_%g136145136183%_ _%g136146136187%_))))
                (_%g136145136183%_ _%g136146136187%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136145136183%_
                                                     _%g136146136187%_))))
                                            (_%g136145136183%_
                                             _%g136146136187%_))))
                                    (_%g136145136183%_ _%g136146136187%_))))
                            (_%g136145136183%_ _%g136146136187%_))))
                    (_%g136145136183%_ _%g136146136187%_)))))
        (_%g136144136350%_ _%stx136142%_)))))

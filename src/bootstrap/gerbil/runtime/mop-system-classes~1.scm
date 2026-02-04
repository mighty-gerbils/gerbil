(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g117497_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx117069%_)
      (let* ((_%g117072117110%_
              (lambda (_%g117073117106%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g117073117106%_)))
             (_%g117071117277%_
              (lambda (_%g117073117114%_)
                (if (gx#stx-pair? _%g117073117114%_)
                    (let ((_%e117078117117%_ (gx#syntax-e _%g117073117114%_)))
                      (let ((_%hd117079117121%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117078117117%_)))
                            (_%tl117080117124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117078117117%_))))
                        (if (gx#stx-pair? _%tl117080117124%_)
                            (let ((_%e117081117127%_
                                   (gx#syntax-e _%tl117080117124%_)))
                              (let ((_%hd117082117131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e117081117127%_)))
                                    (_%tl117083117134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e117081117127%_))))
                                (if (gx#stx-pair? _%hd117082117131%_)
                                    (let ((_%e117084117137%_
                                           (gx#syntax-e _%hd117082117131%_)))
                                      (let ((_%hd117085117141%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e117084117137%_)))
                                            (_%tl117086117144%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e117084117137%_))))
                                        (if (gx#stx-pair? _%tl117086117144%_)
                                            (let ((_%e117087117147%_
                                                   (gx#syntax-e
                                                    _%tl117086117144%_)))
                                              (let ((_%hd117088117151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e117087117147%_)))
                                                    (_%tl117089117154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e117087117147%_))))
                                                (if (gx#stx-null?
                                                     _%tl117089117154%_)
                                                    (if (gx#stx-pair?
                                                         _%tl117083117134%_)
                                                        (let ((_%e117090117157%_
                                                               (gx#syntax-e
                                                                _%tl117083117134%_)))
                                                          (let ((_%hd117091117161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e117090117157%_)))
                        (_%tl117092117164%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e117090117157%_))))
                    (if (gx#identifier? _%hd117091117161%_)
                        (if (gx#free-identifier=?
                             |[1]#_g117497_|
                             _%hd117091117161%_)
                            (if (gx#stx-pair? _%tl117092117164%_)
                                (let ((_%e117093117167%_
                                       (gx#syntax-e _%tl117092117164%_)))
                                  (let ((_%hd117094117171%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e117093117167%_)))
                                        (_%tl117095117174%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e117093117167%_))))
                                    (if (gx#stx-pair/null? _%tl117095117174%_)
                                        (let ((_g117498_
                                               (gx#syntax-split-splice
                                                _%tl117095117174%_
                                                '0)))
                                          (begin
                                            (let ((_g117499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g117498_)
                                                         (##values-length
                                                          _g117498_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g117499_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g117499_)))
                                            (let ((_%target117096117177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g117498_
                                                      0)))
                                                  (_%tl117098117180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g117498_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl117098117180%_)
                                                  (letrec ((_%loop117099117183%_
                                                            (lambda (_%hd117097117187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body117103117190%_)
                      (if (gx#stx-pair? _%hd117097117187%_)
                          (let ((_%e117100117192%_
                                 (gx#syntax-e _%hd117097117187%_)))
                            (let ((_%lp-hd117101117196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e117100117192%_)))
                                  (_%lp-tl117102117199%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e117100117192%_))))
                              (_%loop117099117183%_
                               _%lp-tl117102117199%_
                               (cons _%lp-hd117101117196%_
                                     _%body117103117190%_))))
                          (let ((_%body117104117202%_
                                 (reverse _%body117103117190%_)))
                            ((lambda (_%g117074117205%_
                                      _%g117075117207%_
                                      _%g117076117208%_
                                      _%g117077117209%_)
                               (let* ((_%g117238117246%_
                                       (lambda (_%g117239117242%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g117239117242%_)))
                                      (_%g117237117273%_
                                       (lambda (_%g117239117250%_)
                                         ((lambda (_%g117240117253%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g117077117209%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g117240117253%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g117076117208%_
                                                          '())
                                                    (let ((__tmp117500
                                                           (lambda (_%g117264117267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g117265117270%_)
                     (cons _%g117264117267%_ _%g117265117270%_))))
              (declare (not safe))
              (__foldr1 __tmp117500 '() _%g117074117205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g117239117250%_))))
                                 (_%g117237117273%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx117069%_
                                     _%g117075117207%_)))))
                             _%body117104117202%_
                             _%hd117094117171%_
                             _%hd117088117151%_
                             _%hd117085117141%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop117099117183%_
                                                     _%target117096117177%_
                                                     '()))
                                                  (_%g117072117110%_
                                                   _%g117073117114%_)))))
                                        (_%g117072117110%_
                                         _%g117073117114%_))))
                                (_%g117072117110%_ _%g117073117114%_))
                            (_%g117072117110%_ _%g117073117114%_))
                        (_%g117072117110%_ _%g117073117114%_))))
                (_%g117072117110%_ _%g117073117114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g117072117110%_
                                                     _%g117073117114%_))))
                                            (_%g117072117110%_
                                             _%g117073117114%_))))
                                    (_%g117072117110%_ _%g117073117114%_))))
                            (_%g117072117110%_ _%g117073117114%_))))
                    (_%g117072117110%_ _%g117073117114%_)))))
        (_%g117071117277%_ _%stx117069%_)))))

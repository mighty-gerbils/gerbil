(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21110_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17470%_)
        (let* ((_%__stx2086720868%_ _%$stx17470%_)
               (_%g1747517514%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2086720868%_))))
          (let ((_%__kont2087020871%_
                 (lambda (_%g1747717635%_ _%g1747817637%_ _%g1747917638%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1747917638%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g1747817637%_
                                                 (foldr (lambda (_%g1765717660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1765817663%_)
                  (cons _%g1765717660%_ _%g1765817663%_))
                '()
                _%g1747717635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2087420875%_
                 (lambda (_%g1749817551%_ _%g1749917553%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1749917553%_ (cons _%g1749817551%_ '()))))))
            (let* ((_%__match2092220923%_
                    (lambda (_%e1750017521%_
                             _%hd1750117525%_
                             _%tl1750217528%_
                             _%e1750317531%_
                             _%hd1750417535%_
                             _%tl1750517538%_
                             _%e1750617541%_
                             _%hd1750717545%_
                             _%tl1750817548%_)
                      (let ((_%g1749817551%_ _%hd1750717545%_)
                            (_%g1749917553%_ _%hd1750417535%_))
                        (if (gx#identifier? _%g1749917553%_)
                            (_%__kont2087420875%_
                             _%g1749817551%_
                             _%g1749917553%_)
                            (let () (declare (not safe)) (_%g1747517514%_))))))
                   (_%__match2091420915%_
                    (lambda (_%e1750017521%_
                             _%hd1750117525%_
                             _%tl1750217528%_
                             _%e1750317531%_
                             _%hd1750417535%_
                             _%tl1750517538%_)
                      (if (gx#stx-pair? _%tl1750517538%_)
                          (let ((_%e1750617541%_
                                 (gx#syntax-e _%tl1750517538%_)))
                            (let ((_%tl1750817548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1750617541%_)))
                                  (_%hd1750717545%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1750617541%_))))
                              (if (gx#stx-null? _%tl1750817548%_)
                                  (_%__match2092220923%_
                                   _%e1750017521%_
                                   _%hd1750117525%_
                                   _%tl1750217528%_
                                   _%e1750317531%_
                                   _%hd1750417535%_
                                   _%tl1750517538%_
                                   _%e1750617541%_
                                   _%hd1750717545%_
                                   _%tl1750817548%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1747517514%_)))))
                          (let () (declare (not safe)) (_%g1747517514%_)))))
                   (_%__match2090220903%_
                    (lambda (_%e1748017577%_
                             _%hd1748117581%_
                             _%tl1748217584%_
                             _%e1748317587%_
                             _%hd1748417591%_
                             _%tl1748517594%_
                             _%e1748617597%_
                             _%hd1748717601%_
                             _%tl1748817604%_
                             _%__splice2087220873%_
                             _%target1748917607%_
                             _%tl1749117610%_)
                      (letrec ((_%loop1749217613%_
                                (lambda (_%hd1749017617%_ _%body1749617620%_)
                                  (if (gx#stx-pair? _%hd1749017617%_)
                                      (let ((_%e1749317622%_
                                             (gx#syntax-e _%hd1749017617%_)))
                                        (let ((_%lp-tl1749517629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1749317622%_)))
                                              (_%lp-hd1749417626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1749317622%_))))
                                          (_%loop1749217613%_
                                           _%lp-tl1749517629%_
                                           (cons _%lp-hd1749417626%_
                                                 _%body1749617620%_))))
                                      (let ((_%body1749717632%_
                                             (reverse _%body1749617620%_)))
                                        (let ((_%g1747717635%_
                                               _%body1749717632%_)
                                              (_%g1747817637%_
                                               _%tl1748817604%_)
                                              (_%g1747917638%_
                                               _%hd1748717601%_))
                                          (if (gx#identifier? _%g1747917638%_)
                                              (_%__kont2087020871%_
                                               _%g1747717635%_
                                               _%g1747817637%_
                                               _%g1747917638%_)
                                              (_%__match2091420915%_
                                               _%e1748017577%_
                                               _%hd1748117581%_
                                               _%tl1748217584%_
                                               _%e1748317587%_
                                               _%hd1748417591%_
                                               _%tl1748517594%_))))))))
                        (_%loop1749217613%_ _%target1748917607%_ '())))))
              (if (gx#stx-pair? _%__stx2086720868%_)
                  (let ((_%e1748017577%_ (gx#syntax-e _%__stx2086720868%_)))
                    (let ((_%tl1748217584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1748017577%_)))
                          (_%hd1748117581%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1748017577%_))))
                      (if (gx#stx-pair? _%tl1748217584%_)
                          (let ((_%e1748317587%_
                                 (gx#syntax-e _%tl1748217584%_)))
                            (let ((_%tl1748517594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1748317587%_)))
                                  (_%hd1748417591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1748317587%_))))
                              (if (gx#stx-pair? _%hd1748417591%_)
                                  (let ((_%e1748617597%_
                                         (gx#syntax-e _%hd1748417591%_)))
                                    (let ((_%tl1748817604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1748617597%_)))
                                          (_%hd1748717601%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1748617597%_))))
                                      (if (gx#stx-pair/null? _%tl1748517594%_)
                                          (let ((_%__splice2087220873%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1748517594%_
                                                  '0)))
                                            (let ((_%tl1749117610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2087220873%_
                                                      '1)))
                                                  (_%target1748917607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2087220873%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1749117610%_)
                                                  (_%__match2090220903%_
                                                   _%e1748017577%_
                                                   _%hd1748117581%_
                                                   _%tl1748217584%_
                                                   _%e1748317587%_
                                                   _%hd1748417591%_
                                                   _%tl1748517594%_
                                                   _%e1748617597%_
                                                   _%hd1748717601%_
                                                   _%tl1748817604%_
                                                   _%__splice2087220873%_
                                                   _%target1748917607%_
                                                   _%tl1749117610%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1748517594%_)
                                                      (let ((_%e1750617541%_
                                                             (gx#syntax-e
                                                              _%tl1748517594%_)))
                                                        (let ((_%tl1750817548%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1750617541%_)))
                      (_%hd1750717545%_
                       (let () (declare (not safe)) (##car _%e1750617541%_))))
                  (if (gx#stx-null? _%tl1750817548%_)
                      (_%__match2092220923%_
                       _%e1748017577%_
                       _%hd1748117581%_
                       _%tl1748217584%_
                       _%e1748317587%_
                       _%hd1748417591%_
                       _%tl1748517594%_
                       _%e1750617541%_
                       _%hd1750717545%_
                       _%tl1750817548%_)
                      (let () (declare (not safe)) (_%g1747517514%_)))))
              (let () (declare (not safe)) (_%g1747517514%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1748517594%_)
                                              (let ((_%e1750617541%_
                                                     (gx#syntax-e
                                                      _%tl1748517594%_)))
                                                (let ((_%tl1750817548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1750617541%_)))
                                                      (_%hd1750717545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1750617541%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1750817548%_)
                                                      (_%__match2092220923%_
                                                       _%e1748017577%_
                                                       _%hd1748117581%_
                                                       _%tl1748217584%_
                                                       _%e1748317587%_
                                                       _%hd1748417591%_
                                                       _%tl1748517594%_
                                                       _%e1750617541%_
                                                       _%hd1750717545%_
                                                       _%tl1750817548%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1747517514%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1747517514%_))))))
                                  (if (gx#stx-pair? _%tl1748517594%_)
                                      (let ((_%e1750617541%_
                                             (gx#syntax-e _%tl1748517594%_)))
                                        (let ((_%tl1750817548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1750617541%_)))
                                              (_%hd1750717545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1750617541%_))))
                                          (if (gx#stx-null? _%tl1750817548%_)
                                              (_%__match2092220923%_
                                               _%e1748017577%_
                                               _%hd1748117581%_
                                               _%tl1748217584%_
                                               _%e1748317587%_
                                               _%hd1748417591%_
                                               _%tl1748517594%_
                                               _%e1750617541%_
                                               _%hd1750717545%_
                                               _%tl1750817548%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1747517514%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1747517514%_))))))
                          (let () (declare (not safe)) (_%g1747517514%_)))))
                  (let () (declare (not safe)) (_%g1747517514%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17671%_)
        (let* ((_%g1767417711%_
                (lambda (_%g1767517707%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1767517707%_)))
               (_%g1767317879%_
                (lambda (_%g1767517715%_)
                  (if (gx#stx-pair? _%g1767517715%_)
                      (let ((_%e1767917718%_ (gx#syntax-e _%g1767517715%_)))
                        (let ((_%hd1768017722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1767917718%_)))
                              (_%tl1768117725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1767917718%_))))
                          (if (gx#stx-pair? _%tl1768117725%_)
                              (let ((_%e1768217728%_
                                     (gx#syntax-e _%tl1768117725%_)))
                                (let ((_%hd1768317732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1768217728%_)))
                                      (_%tl1768417735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1768217728%_))))
                                  (if (gx#stx-pair? _%tl1768417735%_)
                                      (let ((_%e1768517738%_
                                             (gx#syntax-e _%tl1768417735%_)))
                                        (let ((_%hd1768617742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1768517738%_)))
                                              (_%tl1768717745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1768517738%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd1768617742%_)
                                              (let ((_g21100_
                                                     (gx#syntax-split-splice
                                                      _%hd1768617742%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21100_)
                                                               (##values-length
                                                                _g21100_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21101_ 2)))
                (error "Context expects 2 values" _g21101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1768817748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21100_
                                                            0)))
                                                        (_%tl1769017751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21100_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1769017751%_)
                                                        (letrec ((_%loop1769117754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1768917758%_ _%lit1769517761%_)
                            (if (gx#stx-pair? _%hd1768917758%_)
                                (let ((_%e1769217763%_
                                       (gx#syntax-e _%hd1768917758%_)))
                                  (let ((_%lp-hd1769317767%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1769217763%_)))
                                        (_%lp-tl1769417770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1769217763%_))))
                                    (_%loop1769117754%_
                                     _%lp-tl1769417770%_
                                     (cons _%lp-hd1769317767%_
                                           _%lit1769517761%_))))
                                (let ((_%lit1769617773%_
                                       (reverse _%lit1769517761%_)))
                                  (if (gx#stx-pair/null? _%tl1768717745%_)
                                      (let ((_g21102_
                                             (gx#syntax-split-splice
                                              _%tl1768717745%_
                                              '0)))
                                        (begin
                                          (let ((_g21103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21102_)
                                                       (##values-length
                                                        _g21102_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21103_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21103_)))
                                          (let ((_%target1769717776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21102_ 0)))
                                                (_%tl1769917779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21102_ 1))))
                                            (if (gx#stx-null? _%tl1769917779%_)
                                                (letrec ((_%loop1770017782%_
                                                          (lambda (_%hd1769817786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause1770417789%_)
                    (if (gx#stx-pair? _%hd1769817786%_)
                        (let ((_%e1770117791%_ (gx#syntax-e _%hd1769817786%_)))
                          (let ((_%lp-hd1770217795%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1770117791%_)))
                                (_%lp-tl1770317798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1770117791%_))))
                            (_%loop1770017782%_
                             _%lp-tl1770317798%_
                             (cons _%lp-hd1770217795%_ _%clause1770417789%_))))
                        (let ((_%clause1770517801%_
                               (reverse _%clause1770417789%_)))
                          ((lambda (_%g1767617804%_
                                    _%g1767717806%_
                                    _%g1767817807%_)
                             (let* ((_%g1783217840%_
                                     (lambda (_%g1783317836%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g1783317836%_)))
                                    (_%g1783117875%_
                                     (lambda (_%g1783317844%_)
                                       ((lambda (_%g1783417847%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g1767817807%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g1783417847%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g1783417847%_
                                                  (cons (foldr (lambda (_%g1785817863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g1785917866%_)
                         (cons _%g1785817863%_ _%g1785917866%_))
                       '()
                       _%g1767717806%_)
                (foldr (lambda (_%g1786017869%_ _%g1786117872%_)
                         (cons _%g1786017869%_ _%g1786117872%_))
                       '()
                       _%g1767617804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g1783317844%_))))
                               (_%g1783117875%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause1770517801%_
                           _%lit1769617773%_
                           _%hd1768317732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1770017782%_
                                                   _%target1769717776%_
                                                   '()))
                                                (_%g1767417711%_
                                                 _%g1767517715%_)))))
                                      (_%g1767417711%_ _%g1767517715%_)))))))
                  (_%loop1769117754%_ _%target1768817748%_ '()))
                (_%g1767417711%_ _%g1767517715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1767417711%_
                                               _%g1767517715%_))))
                                      (_%g1767417711%_ _%g1767517715%_))))
                              (_%g1767417711%_ _%g1767517715%_))))
                      (_%g1767417711%_ _%g1767517715%_)))))
          (_%g1767317879%_ _%stx17671%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17885%_)
        (let* ((_%g1788817925%_
                (lambda (_%g1788917921%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1788917921%_)))
               (_%g1788718280%_
                (lambda (_%g1788917929%_)
                  (if (gx#stx-pair? _%g1788917929%_)
                      (let ((_%e1789317932%_ (gx#syntax-e _%g1788917929%_)))
                        (let ((_%hd1789417936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1789317932%_)))
                              (_%tl1789517939%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1789317932%_))))
                          (if (gx#stx-pair? _%tl1789517939%_)
                              (let ((_%e1789617942%_
                                     (gx#syntax-e _%tl1789517939%_)))
                                (let ((_%hd1789717946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1789617942%_)))
                                      (_%tl1789817949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1789617942%_))))
                                  (if (gx#stx-pair? _%hd1789717946%_)
                                      (let ((_%e1789917952%_
                                             (gx#syntax-e _%hd1789717946%_)))
                                        (let ((_%hd1790017956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1789917952%_)))
                                              (_%tl1790117959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1789917952%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1790117959%_)
                                              (let ((_g21104_
                                                     (gx#syntax-split-splice
                                                      _%tl1790117959%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21105_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21104_)
                                                               (##values-length
                                                                _g21104_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21105_ 2)))
                (error "Context expects 2 values" _g21105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1790217962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21104_
                                                            0)))
                                                        (_%tl1790417965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21104_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1790417965%_)
                                                        (letrec ((_%loop1790517968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1790317972%_ _%arg1790917975%_)
                            (if (gx#stx-pair? _%hd1790317972%_)
                                (let ((_%e1790617977%_
                                       (gx#syntax-e _%hd1790317972%_)))
                                  (let ((_%lp-hd1790717981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1790617977%_)))
                                        (_%lp-tl1790817984%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1790617977%_))))
                                    (_%loop1790517968%_
                                     _%lp-tl1790817984%_
                                     (cons _%lp-hd1790717981%_
                                           _%arg1790917975%_))))
                                (let ((_%arg1791017987%_
                                       (reverse _%arg1790917975%_)))
                                  (if (gx#stx-pair/null? _%tl1789817949%_)
                                      (let ((_g21106_
                                             (gx#syntax-split-splice
                                              _%tl1789817949%_
                                              '0)))
                                        (begin
                                          (let ((_g21107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21106_)
                                                       (##values-length
                                                        _g21106_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21107_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21107_)))
                                          (let ((_%target1791117990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21106_ 0)))
                                                (_%tl1791317993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21106_ 1))))
                                            (if (gx#stx-null? _%tl1791317993%_)
                                                (letrec ((_%loop1791417996%_
                                                          (lambda (_%hd1791218000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1791818003%_)
                    (if (gx#stx-pair? _%hd1791218000%_)
                        (let ((_%e1791518005%_ (gx#syntax-e _%hd1791218000%_)))
                          (let ((_%lp-hd1791618009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1791518005%_)))
                                (_%lp-tl1791718012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1791518005%_))))
                            (_%loop1791417996%_
                             _%lp-tl1791718012%_
                             (cons _%lp-hd1791618009%_ _%body1791818003%_))))
                        (let ((_%body1791918015%_
                               (reverse _%body1791818003%_)))
                          ((lambda (_%g1789018018%_
                                    _%g1789118020%_
                                    _%g1789218021%_)
                             (if (and (gx#identifier? _%g1789218021%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1804518048%_
                                                       _%g1804618051%_)
                                                (cons _%g1804518048%_
                                                      _%g1804618051%_))
                                              '()
                                              _%g1789118020%_)))
                                 (let* ((_%g1805418062%_
                                         (lambda (_%g1805518058%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1805518058%_)))
                                        (_%g1805318276%_
                                         (lambda (_%g1805518066%_)
                                           ((lambda (_%g1805618069%_)
                                              (let* ((_%g1808118098%_
                                                      (lambda (_%g1808218094%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1808218094%_)))
                                                     (_%g1808018264%_
                                                      (lambda (_%g1808218102%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1808218102%_)
                                                            (let ((_g21108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1808218102%_ '0)))
                      (begin
                        (let ((_g21109_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g21108_)
                                     (##values-length _g21108_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g21109_ 2)))
                              (error "Context expects 2 values" _g21109_)))
                        (let ((_%target1808418105%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21108_ 0)))
                              (_%tl1808618108%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21108_ 1))))
                          (if (gx#stx-null? _%tl1808618108%_)
                              (letrec ((_%loop1808718111%_
                                        (lambda (_%hd1808518115%_
                                                 _%xarg1809118118%_)
                                          (if (gx#stx-pair? _%hd1808518115%_)
                                              (let ((_%e1808818120%_
                                                     (gx#syntax-e
                                                      _%hd1808518115%_)))
                                                (let ((_%lp-hd1808918124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1808818120%_)))
                                                      (_%lp-tl1809018127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1808818120%_))))
                                                  (_%loop1808718111%_
                                                   _%lp-tl1809018127%_
                                                   (cons _%lp-hd1808918124%_
                                                         _%xarg1809118118%_))))
                                              (let ((_%xarg1809218130%_
                                                     (reverse _%xarg1809118118%_)))
                                                ((lambda (_%g1808318133%_)
                                                   (let* ((_%g1815018158%_
                                                           (lambda (_%g1815118154%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1815118154%_)))
                                                          (_%g1814918228%_
                                                           (lambda (_%g1815118162%_)
                                                             ((lambda (_%g1815218165%_)
                                                                (let* ((_%g1817818186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1817918182%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1817918182%_)))
                               (_%g1817718208%_
                                (lambda (_%g1817918190%_)
                                  ((lambda (_%g1818018193%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%g1818018193%_
                                                  (cons _%g1815218165%_ '())))
                                      (gx#stx-source _%stx17885%_)))
                                   _%g1817918190%_))))
                          (_%g1817718208%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%g1805618069%_
                                              (foldr (lambda (_%g1821118216%_
                                                              _%g1821218219%_)
                                                       (cons _%g1821118216%_
                                                             _%g1821218219%_))
                                                     '()
                                                     _%g1789118020%_))
                                        (foldr (lambda (_%g1821318222%_
                                                        _%g1821418225%_)
                                                 (cons _%g1821318222%_
                                                       _%g1821418225%_))
                                               '()
                                               _%g1789018018%_)))
                            (gx#stx-source _%stx17885%_)))))
                      _%g1815118162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1814918228%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%g1789218021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1823118240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1823218243%_)
                    (cons _%g1823118240%_ _%g1823218243%_))
                  '()
                  _%g1808318133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1823318246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1823418249%_)
                                      (cons _%g1823318246%_ _%g1823418249%_))
                                    '()
                                    _%g1789118020%_)
                             (foldr (lambda (_%g1823518252%_ _%g1823618255%_)
                                      (cons _%g1823518252%_ _%g1823618255%_))
                                    '()
                                    _%g1789018018%_)))
                 (foldr (lambda (_%g1823718258%_ _%g1823818261%_)
                          (cons _%g1823718258%_ _%g1823818261%_))
                        '()
                        _%g1808318133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'ref)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'identifier?)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'syntax)
                                   (cons (gx#datum->syntax '#f 'ref) '()))
                             '()))
                 (cons _%g1805618069%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1809218130%_))))))
                                (_%loop1808718111%_ _%target1808418105%_ '()))
                              (_%g1808118098%_ _%g1808218102%_)))))
                    (_%g1808118098%_ _%g1808218102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1808018264%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1826718270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1826818273%_)
                   (cons _%g1826718270%_ _%g1826818273%_))
                 '()
                 _%g1789118020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1805518066%_))))
                                   (_%g1805318276%_
                                    (gx#stx-identifier
                                     _%g1789218021%_
                                     _%g1789218021%_
                                     '"__impl")))
                                 (_%g1788817925%_ _%g1788917929%_)))
                           _%body1791918015%_
                           _%arg1791017987%_
                           _%hd1790017956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1791417996%_
                                                   _%target1791117990%_
                                                   '()))
                                                (_%g1788817925%_
                                                 _%g1788917929%_)))))
                                      (_%g1788817925%_ _%g1788917929%_)))))))
                  (_%loop1790517968%_ _%target1790217962%_ '()))
                (_%g1788817925%_ _%g1788917929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1788817925%_
                                               _%g1788917929%_))))
                                      (_%g1788817925%_ _%g1788917929%_))))
                              (_%g1788817925%_ _%g1788917929%_))))
                      (_%g1788817925%_ _%g1788917929%_)))))
          (_%g1788718280%_ _%stx17885%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18287%_)
        (let* ((_%__stx2092520926%_ _%$stx18287%_)
               (_%g1829218328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2092520926%_))))
          (let ((_%__kont2092820929%_
                 (lambda (_%g1829418442%_ _%g1829518444%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1829518444%_
                               (cons '()
                                     (cons (cons (gx#datum->syntax '#f 'x)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'identifier?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons (gx#datum->syntax '#f 'x) '()))
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote)
                           (cons _%g1829418442%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2093020931%_
                 (lambda (_%g1831118365%_ _%g1831218367%_ _%g1831318368%_)
                   (cons _%g1831318368%_
                         (cons _%g1831218367%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1831118365%_ '()))
                                     '()))))))
            (let* ((_%__match2099020991%_
                    (lambda (_%e1831418335%_
                             _%hd1831518339%_
                             _%tl1831618342%_
                             _%e1831718345%_
                             _%hd1831818349%_
                             _%tl1831918352%_
                             _%e1832018355%_
                             _%hd1832118359%_
                             _%tl1832218362%_)
                      (let ((_%g1831118365%_ _%hd1832118359%_)
                            (_%g1831218367%_ _%hd1831818349%_)
                            (_%g1831318368%_ _%hd1831518339%_))
                        (if (and (gx#identifier? _%g1831218367%_)
                                 (gx#stx-datum? _%g1831118365%_))
                            (_%__kont2093020931%_
                             _%g1831118365%_
                             _%g1831218367%_
                             _%g1831318368%_)
                            (let () (declare (not safe)) (_%g1829218328%_))))))
                   (_%__match2097020971%_
                    (lambda (_%e1829618392%_
                             _%hd1829718396%_
                             _%tl1829818399%_
                             _%e1829918402%_
                             _%hd1830018406%_
                             _%tl1830118409%_
                             _%e1830218412%_
                             _%hd1830318416%_
                             _%tl1830418419%_
                             _%e1830518422%_
                             _%hd1830618426%_
                             _%tl1830718429%_
                             _%e1830818432%_
                             _%hd1830918436%_
                             _%tl1831018439%_)
                      (let ((_%g1829418442%_ _%hd1830918436%_)
                            (_%g1829518444%_ _%hd1830018406%_))
                        (if (gx#identifier? _%g1829518444%_)
                            (_%__kont2092820929%_
                             _%g1829418442%_
                             _%g1829518444%_)
                            (_%__match2099020991%_
                             _%e1829618392%_
                             _%hd1829718396%_
                             _%tl1829818399%_
                             _%e1829918402%_
                             _%hd1830018406%_
                             _%tl1830118409%_
                             _%e1830218412%_
                             _%hd1830318416%_
                             _%tl1830418419%_))))))
              (if (gx#stx-pair? _%__stx2092520926%_)
                  (let ((_%e1829618392%_ (gx#syntax-e _%__stx2092520926%_)))
                    (let ((_%tl1829818399%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1829618392%_)))
                          (_%hd1829718396%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1829618392%_))))
                      (if (gx#stx-pair? _%tl1829818399%_)
                          (let ((_%e1829918402%_
                                 (gx#syntax-e _%tl1829818399%_)))
                            (let ((_%tl1830118409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1829918402%_)))
                                  (_%hd1830018406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1829918402%_))))
                              (if (gx#stx-pair? _%tl1830118409%_)
                                  (let ((_%e1830218412%_
                                         (gx#syntax-e _%tl1830118409%_)))
                                    (let ((_%tl1830418419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1830218412%_)))
                                          (_%hd1830318416%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1830218412%_))))
                                      (if (gx#stx-pair? _%hd1830318416%_)
                                          (let ((_%e1830518422%_
                                                 (gx#syntax-e
                                                  _%hd1830318416%_)))
                                            (let ((_%tl1830718429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1830518422%_)))
                                                  (_%hd1830618426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1830518422%_))))
                                              (if (gx#identifier?
                                                   _%hd1830618426%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21110_|
                                                       _%hd1830618426%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1830718429%_)
                                                          (let ((_%e1830818432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1830718429%_)))
                    (let ((_%tl1831018439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1830818432%_)))
                          (_%hd1830918436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1830818432%_))))
                      (if (gx#stx-null? _%tl1831018439%_)
                          (if (gx#stx-null? _%tl1830418419%_)
                              (_%__match2097020971%_
                               _%e1829618392%_
                               _%hd1829718396%_
                               _%tl1829818399%_
                               _%e1829918402%_
                               _%hd1830018406%_
                               _%tl1830118409%_
                               _%e1830218412%_
                               _%hd1830318416%_
                               _%tl1830418419%_
                               _%e1830518422%_
                               _%hd1830618426%_
                               _%tl1830718429%_
                               _%e1830818432%_
                               _%hd1830918436%_
                               _%tl1831018439%_)
                              (let () (declare (not safe)) (_%g1829218328%_)))
                          (if (gx#stx-null? _%tl1830418419%_)
                              (_%__match2099020991%_
                               _%e1829618392%_
                               _%hd1829718396%_
                               _%tl1829818399%_
                               _%e1829918402%_
                               _%hd1830018406%_
                               _%tl1830118409%_
                               _%e1830218412%_
                               _%hd1830318416%_
                               _%tl1830418419%_)
                              (let ()
                                (declare (not safe))
                                (_%g1829218328%_))))))
                  (if (gx#stx-null? _%tl1830418419%_)
                      (_%__match2099020991%_
                       _%e1829618392%_
                       _%hd1829718396%_
                       _%tl1829818399%_
                       _%e1829918402%_
                       _%hd1830018406%_
                       _%tl1830118409%_
                       _%e1830218412%_
                       _%hd1830318416%_
                       _%tl1830418419%_)
                      (let () (declare (not safe)) (_%g1829218328%_))))
              (if (gx#stx-null? _%tl1830418419%_)
                  (_%__match2099020991%_
                   _%e1829618392%_
                   _%hd1829718396%_
                   _%tl1829818399%_
                   _%e1829918402%_
                   _%hd1830018406%_
                   _%tl1830118409%_
                   _%e1830218412%_
                   _%hd1830318416%_
                   _%tl1830418419%_)
                  (let () (declare (not safe)) (_%g1829218328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1830418419%_)
                                                      (_%__match2099020991%_
                                                       _%e1829618392%_
                                                       _%hd1829718396%_
                                                       _%tl1829818399%_
                                                       _%e1829918402%_
                                                       _%hd1830018406%_
                                                       _%tl1830118409%_
                                                       _%e1830218412%_
                                                       _%hd1830318416%_
                                                       _%tl1830418419%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1829218328%_))))))
                                          (if (gx#stx-null? _%tl1830418419%_)
                                              (_%__match2099020991%_
                                               _%e1829618392%_
                                               _%hd1829718396%_
                                               _%tl1829818399%_
                                               _%e1829918402%_
                                               _%hd1830018406%_
                                               _%tl1830118409%_
                                               _%e1830218412%_
                                               _%hd1830318416%_
                                               _%tl1830418419%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1829218328%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1829218328%_)))))
                          (let () (declare (not safe)) (_%g1829218328%_)))))
                  (let () (declare (not safe)) (_%g1829218328%_))))))))))

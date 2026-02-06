(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21103_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17463%_)
        (let* ((_%__stx2086020861%_ _%$stx17463%_)
               (_%g1746817507%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2086020861%_))))
          (let ((_%__kont2086320864%_
                 (lambda (_%g1747017628%_ _%g1747117630%_ _%g1747217631%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1747217631%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g1747117630%_
                                                 (foldr (lambda (_%g1765017653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1765117656%_)
                  (cons _%g1765017653%_ _%g1765117656%_))
                '()
                _%g1747017628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2086720868%_
                 (lambda (_%g1749117544%_ _%g1749217546%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1749217546%_ (cons _%g1749117544%_ '()))))))
            (let* ((_%__match2091520916%_
                    (lambda (_%e1749317514%_
                             _%hd1749417518%_
                             _%tl1749517521%_
                             _%e1749617524%_
                             _%hd1749717528%_
                             _%tl1749817531%_
                             _%e1749917534%_
                             _%hd1750017538%_
                             _%tl1750117541%_)
                      (let ((_%g1749117544%_ _%hd1750017538%_)
                            (_%g1749217546%_ _%hd1749717528%_))
                        (if (gx#identifier? _%g1749217546%_)
                            (_%__kont2086720868%_
                             _%g1749117544%_
                             _%g1749217546%_)
                            (let () (declare (not safe)) (_%g1746817507%_))))))
                   (_%__match2090720908%_
                    (lambda (_%e1749317514%_
                             _%hd1749417518%_
                             _%tl1749517521%_
                             _%e1749617524%_
                             _%hd1749717528%_
                             _%tl1749817531%_)
                      (if (gx#stx-pair? _%tl1749817531%_)
                          (let ((_%e1749917534%_
                                 (gx#syntax-e _%tl1749817531%_)))
                            (let ((_%tl1750117541%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1749917534%_)))
                                  (_%hd1750017538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1749917534%_))))
                              (if (gx#stx-null? _%tl1750117541%_)
                                  (_%__match2091520916%_
                                   _%e1749317514%_
                                   _%hd1749417518%_
                                   _%tl1749517521%_
                                   _%e1749617524%_
                                   _%hd1749717528%_
                                   _%tl1749817531%_
                                   _%e1749917534%_
                                   _%hd1750017538%_
                                   _%tl1750117541%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1746817507%_)))))
                          (let () (declare (not safe)) (_%g1746817507%_)))))
                   (_%__match2089520896%_
                    (lambda (_%e1747317570%_
                             _%hd1747417574%_
                             _%tl1747517577%_
                             _%e1747617580%_
                             _%hd1747717584%_
                             _%tl1747817587%_
                             _%e1747917590%_
                             _%hd1748017594%_
                             _%tl1748117597%_
                             _%__splice2086520866%_
                             _%target1748217600%_
                             _%tl1748417603%_)
                      (letrec ((_%loop1748517606%_
                                (lambda (_%hd1748317610%_ _%body1748917613%_)
                                  (if (gx#stx-pair? _%hd1748317610%_)
                                      (let ((_%e1748617615%_
                                             (gx#syntax-e _%hd1748317610%_)))
                                        (let ((_%lp-tl1748817622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1748617615%_)))
                                              (_%lp-hd1748717619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1748617615%_))))
                                          (_%loop1748517606%_
                                           _%lp-tl1748817622%_
                                           (cons _%lp-hd1748717619%_
                                                 _%body1748917613%_))))
                                      (let ((_%body1749017625%_
                                             (reverse _%body1748917613%_)))
                                        (let ((_%g1747017628%_
                                               _%body1749017625%_)
                                              (_%g1747117630%_
                                               _%tl1748117597%_)
                                              (_%g1747217631%_
                                               _%hd1748017594%_))
                                          (if (gx#identifier? _%g1747217631%_)
                                              (_%__kont2086320864%_
                                               _%g1747017628%_
                                               _%g1747117630%_
                                               _%g1747217631%_)
                                              (_%__match2090720908%_
                                               _%e1747317570%_
                                               _%hd1747417574%_
                                               _%tl1747517577%_
                                               _%e1747617580%_
                                               _%hd1747717584%_
                                               _%tl1747817587%_))))))))
                        (_%loop1748517606%_ _%target1748217600%_ '())))))
              (if (gx#stx-pair? _%__stx2086020861%_)
                  (let ((_%e1747317570%_ (gx#syntax-e _%__stx2086020861%_)))
                    (let ((_%tl1747517577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1747317570%_)))
                          (_%hd1747417574%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1747317570%_))))
                      (if (gx#stx-pair? _%tl1747517577%_)
                          (let ((_%e1747617580%_
                                 (gx#syntax-e _%tl1747517577%_)))
                            (let ((_%tl1747817587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1747617580%_)))
                                  (_%hd1747717584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1747617580%_))))
                              (if (gx#stx-pair? _%hd1747717584%_)
                                  (let ((_%e1747917590%_
                                         (gx#syntax-e _%hd1747717584%_)))
                                    (let ((_%tl1748117597%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1747917590%_)))
                                          (_%hd1748017594%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1747917590%_))))
                                      (if (gx#stx-pair/null? _%tl1747817587%_)
                                          (let ((_%__splice2086520866%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1747817587%_
                                                  '0)))
                                            (let ((_%tl1748417603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2086520866%_
                                                      '1)))
                                                  (_%target1748217600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2086520866%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1748417603%_)
                                                  (_%__match2089520896%_
                                                   _%e1747317570%_
                                                   _%hd1747417574%_
                                                   _%tl1747517577%_
                                                   _%e1747617580%_
                                                   _%hd1747717584%_
                                                   _%tl1747817587%_
                                                   _%e1747917590%_
                                                   _%hd1748017594%_
                                                   _%tl1748117597%_
                                                   _%__splice2086520866%_
                                                   _%target1748217600%_
                                                   _%tl1748417603%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1747817587%_)
                                                      (let ((_%e1749917534%_
                                                             (gx#syntax-e
                                                              _%tl1747817587%_)))
                                                        (let ((_%tl1750117541%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1749917534%_)))
                      (_%hd1750017538%_
                       (let () (declare (not safe)) (##car _%e1749917534%_))))
                  (if (gx#stx-null? _%tl1750117541%_)
                      (_%__match2091520916%_
                       _%e1747317570%_
                       _%hd1747417574%_
                       _%tl1747517577%_
                       _%e1747617580%_
                       _%hd1747717584%_
                       _%tl1747817587%_
                       _%e1749917534%_
                       _%hd1750017538%_
                       _%tl1750117541%_)
                      (let () (declare (not safe)) (_%g1746817507%_)))))
              (let () (declare (not safe)) (_%g1746817507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1747817587%_)
                                              (let ((_%e1749917534%_
                                                     (gx#syntax-e
                                                      _%tl1747817587%_)))
                                                (let ((_%tl1750117541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1749917534%_)))
                                                      (_%hd1750017538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1749917534%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1750117541%_)
                                                      (_%__match2091520916%_
                                                       _%e1747317570%_
                                                       _%hd1747417574%_
                                                       _%tl1747517577%_
                                                       _%e1747617580%_
                                                       _%hd1747717584%_
                                                       _%tl1747817587%_
                                                       _%e1749917534%_
                                                       _%hd1750017538%_
                                                       _%tl1750117541%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1746817507%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1746817507%_))))))
                                  (if (gx#stx-pair? _%tl1747817587%_)
                                      (let ((_%e1749917534%_
                                             (gx#syntax-e _%tl1747817587%_)))
                                        (let ((_%tl1750117541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1749917534%_)))
                                              (_%hd1750017538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1749917534%_))))
                                          (if (gx#stx-null? _%tl1750117541%_)
                                              (_%__match2091520916%_
                                               _%e1747317570%_
                                               _%hd1747417574%_
                                               _%tl1747517577%_
                                               _%e1747617580%_
                                               _%hd1747717584%_
                                               _%tl1747817587%_
                                               _%e1749917534%_
                                               _%hd1750017538%_
                                               _%tl1750117541%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1746817507%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1746817507%_))))))
                          (let () (declare (not safe)) (_%g1746817507%_)))))
                  (let () (declare (not safe)) (_%g1746817507%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17664%_)
        (let* ((_%g1766717704%_
                (lambda (_%g1766817700%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1766817700%_)))
               (_%g1766617872%_
                (lambda (_%g1766817708%_)
                  (if (gx#stx-pair? _%g1766817708%_)
                      (let ((_%e1767217711%_ (gx#syntax-e _%g1766817708%_)))
                        (let ((_%hd1767317715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1767217711%_)))
                              (_%tl1767417718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1767217711%_))))
                          (if (gx#stx-pair? _%tl1767417718%_)
                              (let ((_%e1767517721%_
                                     (gx#syntax-e _%tl1767417718%_)))
                                (let ((_%hd1767617725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1767517721%_)))
                                      (_%tl1767717728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1767517721%_))))
                                  (if (gx#stx-pair? _%tl1767717728%_)
                                      (let ((_%e1767817731%_
                                             (gx#syntax-e _%tl1767717728%_)))
                                        (let ((_%hd1767917735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1767817731%_)))
                                              (_%tl1768017738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1767817731%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd1767917735%_)
                                              (let ((_g21093_
                                                     (gx#syntax-split-splice
                                                      _%hd1767917735%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21093_)
                                                               (##values-length
                                                                _g21093_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21094_ 2)))
                (error "Context expects 2 values" _g21094_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1768117741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21093_
                                                            0)))
                                                        (_%tl1768317744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21093_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1768317744%_)
                                                        (letrec ((_%loop1768417747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1768217751%_ _%lit1768817754%_)
                            (if (gx#stx-pair? _%hd1768217751%_)
                                (let ((_%e1768517756%_
                                       (gx#syntax-e _%hd1768217751%_)))
                                  (let ((_%lp-hd1768617760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1768517756%_)))
                                        (_%lp-tl1768717763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1768517756%_))))
                                    (_%loop1768417747%_
                                     _%lp-tl1768717763%_
                                     (cons _%lp-hd1768617760%_
                                           _%lit1768817754%_))))
                                (let ((_%lit1768917766%_
                                       (reverse _%lit1768817754%_)))
                                  (if (gx#stx-pair/null? _%tl1768017738%_)
                                      (let ((_g21095_
                                             (gx#syntax-split-splice
                                              _%tl1768017738%_
                                              '0)))
                                        (begin
                                          (let ((_g21096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21095_)
                                                       (##values-length
                                                        _g21095_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21096_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21096_)))
                                          (let ((_%target1769017769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21095_ 0)))
                                                (_%tl1769217772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21095_ 1))))
                                            (if (gx#stx-null? _%tl1769217772%_)
                                                (letrec ((_%loop1769317775%_
                                                          (lambda (_%hd1769117779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause1769717782%_)
                    (if (gx#stx-pair? _%hd1769117779%_)
                        (let ((_%e1769417784%_ (gx#syntax-e _%hd1769117779%_)))
                          (let ((_%lp-hd1769517788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1769417784%_)))
                                (_%lp-tl1769617791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1769417784%_))))
                            (_%loop1769317775%_
                             _%lp-tl1769617791%_
                             (cons _%lp-hd1769517788%_ _%clause1769717782%_))))
                        (let ((_%clause1769817794%_
                               (reverse _%clause1769717782%_)))
                          ((lambda (_%g1766917797%_
                                    _%g1767017799%_
                                    _%g1767117800%_)
                             (let* ((_%g1782517833%_
                                     (lambda (_%g1782617829%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g1782617829%_)))
                                    (_%g1782417868%_
                                     (lambda (_%g1782617837%_)
                                       ((lambda (_%g1782717840%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g1767117800%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g1782717840%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g1782717840%_
                                                  (cons (foldr (lambda (_%g1785117856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g1785217859%_)
                         (cons _%g1785117856%_ _%g1785217859%_))
                       '()
                       _%g1767017799%_)
                (foldr (lambda (_%g1785317862%_ _%g1785417865%_)
                         (cons _%g1785317862%_ _%g1785417865%_))
                       '()
                       _%g1766917797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g1782617837%_))))
                               (_%g1782417868%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause1769817794%_
                           _%lit1768917766%_
                           _%hd1767617725%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1769317775%_
                                                   _%target1769017769%_
                                                   '()))
                                                (_%g1766717704%_
                                                 _%g1766817708%_)))))
                                      (_%g1766717704%_ _%g1766817708%_)))))))
                  (_%loop1768417747%_ _%target1768117741%_ '()))
                (_%g1766717704%_ _%g1766817708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1766717704%_
                                               _%g1766817708%_))))
                                      (_%g1766717704%_ _%g1766817708%_))))
                              (_%g1766717704%_ _%g1766817708%_))))
                      (_%g1766717704%_ _%g1766817708%_)))))
          (_%g1766617872%_ _%stx17664%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17878%_)
        (let* ((_%g1788117918%_
                (lambda (_%g1788217914%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1788217914%_)))
               (_%g1788018273%_
                (lambda (_%g1788217922%_)
                  (if (gx#stx-pair? _%g1788217922%_)
                      (let ((_%e1788617925%_ (gx#syntax-e _%g1788217922%_)))
                        (let ((_%hd1788717929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1788617925%_)))
                              (_%tl1788817932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1788617925%_))))
                          (if (gx#stx-pair? _%tl1788817932%_)
                              (let ((_%e1788917935%_
                                     (gx#syntax-e _%tl1788817932%_)))
                                (let ((_%hd1789017939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1788917935%_)))
                                      (_%tl1789117942%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1788917935%_))))
                                  (if (gx#stx-pair? _%hd1789017939%_)
                                      (let ((_%e1789217945%_
                                             (gx#syntax-e _%hd1789017939%_)))
                                        (let ((_%hd1789317949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1789217945%_)))
                                              (_%tl1789417952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1789217945%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1789417952%_)
                                              (let ((_g21097_
                                                     (gx#syntax-split-splice
                                                      _%tl1789417952%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21097_)
                                                               (##values-length
                                                                _g21097_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21098_ 2)))
                (error "Context expects 2 values" _g21098_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1789517955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21097_
                                                            0)))
                                                        (_%tl1789717958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21097_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1789717958%_)
                                                        (letrec ((_%loop1789817961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1789617965%_ _%arg1790217968%_)
                            (if (gx#stx-pair? _%hd1789617965%_)
                                (let ((_%e1789917970%_
                                       (gx#syntax-e _%hd1789617965%_)))
                                  (let ((_%lp-hd1790017974%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1789917970%_)))
                                        (_%lp-tl1790117977%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1789917970%_))))
                                    (_%loop1789817961%_
                                     _%lp-tl1790117977%_
                                     (cons _%lp-hd1790017974%_
                                           _%arg1790217968%_))))
                                (let ((_%arg1790317980%_
                                       (reverse _%arg1790217968%_)))
                                  (if (gx#stx-pair/null? _%tl1789117942%_)
                                      (let ((_g21099_
                                             (gx#syntax-split-splice
                                              _%tl1789117942%_
                                              '0)))
                                        (begin
                                          (let ((_g21100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21099_)
                                                       (##values-length
                                                        _g21099_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21100_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21100_)))
                                          (let ((_%target1790417983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21099_ 0)))
                                                (_%tl1790617986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21099_ 1))))
                                            (if (gx#stx-null? _%tl1790617986%_)
                                                (letrec ((_%loop1790717989%_
                                                          (lambda (_%hd1790517993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1791117996%_)
                    (if (gx#stx-pair? _%hd1790517993%_)
                        (let ((_%e1790817998%_ (gx#syntax-e _%hd1790517993%_)))
                          (let ((_%lp-hd1790918002%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1790817998%_)))
                                (_%lp-tl1791018005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1790817998%_))))
                            (_%loop1790717989%_
                             _%lp-tl1791018005%_
                             (cons _%lp-hd1790918002%_ _%body1791117996%_))))
                        (let ((_%body1791218008%_
                               (reverse _%body1791117996%_)))
                          ((lambda (_%g1788318011%_
                                    _%g1788418013%_
                                    _%g1788518014%_)
                             (if (and (gx#identifier? _%g1788518014%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1803818041%_
                                                       _%g1803918044%_)
                                                (cons _%g1803818041%_
                                                      _%g1803918044%_))
                                              '()
                                              _%g1788418013%_)))
                                 (let* ((_%g1804718055%_
                                         (lambda (_%g1804818051%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1804818051%_)))
                                        (_%g1804618269%_
                                         (lambda (_%g1804818059%_)
                                           ((lambda (_%g1804918062%_)
                                              (let* ((_%g1807418091%_
                                                      (lambda (_%g1807518087%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1807518087%_)))
                                                     (_%g1807318257%_
                                                      (lambda (_%g1807518095%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1807518095%_)
                                                            (let ((_g21101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1807518095%_ '0)))
                      (begin
                        (let ((_g21102_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g21101_)
                                     (##values-length _g21101_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g21102_ 2)))
                              (error "Context expects 2 values" _g21102_)))
                        (let ((_%target1807718098%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21101_ 0)))
                              (_%tl1807918101%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21101_ 1))))
                          (if (gx#stx-null? _%tl1807918101%_)
                              (letrec ((_%loop1808018104%_
                                        (lambda (_%hd1807818108%_
                                                 _%xarg1808418111%_)
                                          (if (gx#stx-pair? _%hd1807818108%_)
                                              (let ((_%e1808118113%_
                                                     (gx#syntax-e
                                                      _%hd1807818108%_)))
                                                (let ((_%lp-hd1808218117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1808118113%_)))
                                                      (_%lp-tl1808318120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1808118113%_))))
                                                  (_%loop1808018104%_
                                                   _%lp-tl1808318120%_
                                                   (cons _%lp-hd1808218117%_
                                                         _%xarg1808418111%_))))
                                              (let ((_%xarg1808518123%_
                                                     (reverse _%xarg1808418111%_)))
                                                ((lambda (_%g1807618126%_)
                                                   (let* ((_%g1814318151%_
                                                           (lambda (_%g1814418147%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1814418147%_)))
                                                          (_%g1814218221%_
                                                           (lambda (_%g1814418155%_)
                                                             ((lambda (_%g1814518158%_)
                                                                (let* ((_%g1817118179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1817218175%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1817218175%_)))
                               (_%g1817018201%_
                                (lambda (_%g1817218183%_)
                                  ((lambda (_%g1817318186%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%g1817318186%_
                                                  (cons _%g1814518158%_ '())))
                                      (gx#stx-source _%stx17878%_)))
                                   _%g1817218183%_))))
                          (_%g1817018201%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%g1804918062%_
                                              (foldr (lambda (_%g1820418209%_
                                                              _%g1820518212%_)
                                                       (cons _%g1820418209%_
                                                             _%g1820518212%_))
                                                     '()
                                                     _%g1788418013%_))
                                        (foldr (lambda (_%g1820618215%_
                                                        _%g1820718218%_)
                                                 (cons _%g1820618215%_
                                                       _%g1820718218%_))
                                               '()
                                               _%g1788318011%_)))
                            (gx#stx-source _%stx17878%_)))))
                      _%g1814418155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1814218221%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%g1788518014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1822418233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1822518236%_)
                    (cons _%g1822418233%_ _%g1822518236%_))
                  '()
                  _%g1807618126%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1822618239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1822718242%_)
                                      (cons _%g1822618239%_ _%g1822718242%_))
                                    '()
                                    _%g1788418013%_)
                             (foldr (lambda (_%g1822818245%_ _%g1822918248%_)
                                      (cons _%g1822818245%_ _%g1822918248%_))
                                    '()
                                    _%g1788318011%_)))
                 (foldr (lambda (_%g1823018251%_ _%g1823118254%_)
                          (cons _%g1823018251%_ _%g1823118254%_))
                        '()
                        _%g1807618126%_))
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
                 (cons _%g1804918062%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17878%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1808518123%_))))))
                                (_%loop1808018104%_ _%target1807718098%_ '()))
                              (_%g1807418091%_ _%g1807518095%_)))))
                    (_%g1807418091%_ _%g1807518095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1807318257%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1826018263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1826118266%_)
                   (cons _%g1826018263%_ _%g1826118266%_))
                 '()
                 _%g1788418013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1804818059%_))))
                                   (_%g1804618269%_
                                    (gx#stx-identifier
                                     _%g1788518014%_
                                     _%g1788518014%_
                                     '"__impl")))
                                 (_%g1788117918%_ _%g1788217922%_)))
                           _%body1791218008%_
                           _%arg1790317980%_
                           _%hd1789317949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1790717989%_
                                                   _%target1790417983%_
                                                   '()))
                                                (_%g1788117918%_
                                                 _%g1788217922%_)))))
                                      (_%g1788117918%_ _%g1788217922%_)))))))
                  (_%loop1789817961%_ _%target1789517955%_ '()))
                (_%g1788117918%_ _%g1788217922%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1788117918%_
                                               _%g1788217922%_))))
                                      (_%g1788117918%_ _%g1788217922%_))))
                              (_%g1788117918%_ _%g1788217922%_))))
                      (_%g1788117918%_ _%g1788217922%_)))))
          (_%g1788018273%_ _%stx17878%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18280%_)
        (let* ((_%__stx2091820919%_ _%$stx18280%_)
               (_%g1828518321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2091820919%_))))
          (let ((_%__kont2092120922%_
                 (lambda (_%g1828718435%_ _%g1828818437%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1828818437%_
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
                           (cons _%g1828718435%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2092320924%_
                 (lambda (_%g1830418358%_ _%g1830518360%_ _%g1830618361%_)
                   (cons _%g1830618361%_
                         (cons _%g1830518360%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1830418358%_ '()))
                                     '()))))))
            (let* ((_%__match2098320984%_
                    (lambda (_%e1830718328%_
                             _%hd1830818332%_
                             _%tl1830918335%_
                             _%e1831018338%_
                             _%hd1831118342%_
                             _%tl1831218345%_
                             _%e1831318348%_
                             _%hd1831418352%_
                             _%tl1831518355%_)
                      (let ((_%g1830418358%_ _%hd1831418352%_)
                            (_%g1830518360%_ _%hd1831118342%_)
                            (_%g1830618361%_ _%hd1830818332%_))
                        (if (and (gx#identifier? _%g1830518360%_)
                                 (gx#stx-datum? _%g1830418358%_))
                            (_%__kont2092320924%_
                             _%g1830418358%_
                             _%g1830518360%_
                             _%g1830618361%_)
                            (let () (declare (not safe)) (_%g1828518321%_))))))
                   (_%__match2096320964%_
                    (lambda (_%e1828918385%_
                             _%hd1829018389%_
                             _%tl1829118392%_
                             _%e1829218395%_
                             _%hd1829318399%_
                             _%tl1829418402%_
                             _%e1829518405%_
                             _%hd1829618409%_
                             _%tl1829718412%_
                             _%e1829818415%_
                             _%hd1829918419%_
                             _%tl1830018422%_
                             _%e1830118425%_
                             _%hd1830218429%_
                             _%tl1830318432%_)
                      (let ((_%g1828718435%_ _%hd1830218429%_)
                            (_%g1828818437%_ _%hd1829318399%_))
                        (if (gx#identifier? _%g1828818437%_)
                            (_%__kont2092120922%_
                             _%g1828718435%_
                             _%g1828818437%_)
                            (_%__match2098320984%_
                             _%e1828918385%_
                             _%hd1829018389%_
                             _%tl1829118392%_
                             _%e1829218395%_
                             _%hd1829318399%_
                             _%tl1829418402%_
                             _%e1829518405%_
                             _%hd1829618409%_
                             _%tl1829718412%_))))))
              (if (gx#stx-pair? _%__stx2091820919%_)
                  (let ((_%e1828918385%_ (gx#syntax-e _%__stx2091820919%_)))
                    (let ((_%tl1829118392%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1828918385%_)))
                          (_%hd1829018389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1828918385%_))))
                      (if (gx#stx-pair? _%tl1829118392%_)
                          (let ((_%e1829218395%_
                                 (gx#syntax-e _%tl1829118392%_)))
                            (let ((_%tl1829418402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1829218395%_)))
                                  (_%hd1829318399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1829218395%_))))
                              (if (gx#stx-pair? _%tl1829418402%_)
                                  (let ((_%e1829518405%_
                                         (gx#syntax-e _%tl1829418402%_)))
                                    (let ((_%tl1829718412%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1829518405%_)))
                                          (_%hd1829618409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1829518405%_))))
                                      (if (gx#stx-pair? _%hd1829618409%_)
                                          (let ((_%e1829818415%_
                                                 (gx#syntax-e
                                                  _%hd1829618409%_)))
                                            (let ((_%tl1830018422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1829818415%_)))
                                                  (_%hd1829918419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1829818415%_))))
                                              (if (gx#identifier?
                                                   _%hd1829918419%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21103_|
                                                       _%hd1829918419%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1830018422%_)
                                                          (let ((_%e1830118425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1830018422%_)))
                    (let ((_%tl1830318432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1830118425%_)))
                          (_%hd1830218429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1830118425%_))))
                      (if (gx#stx-null? _%tl1830318432%_)
                          (if (gx#stx-null? _%tl1829718412%_)
                              (_%__match2096320964%_
                               _%e1828918385%_
                               _%hd1829018389%_
                               _%tl1829118392%_
                               _%e1829218395%_
                               _%hd1829318399%_
                               _%tl1829418402%_
                               _%e1829518405%_
                               _%hd1829618409%_
                               _%tl1829718412%_
                               _%e1829818415%_
                               _%hd1829918419%_
                               _%tl1830018422%_
                               _%e1830118425%_
                               _%hd1830218429%_
                               _%tl1830318432%_)
                              (let () (declare (not safe)) (_%g1828518321%_)))
                          (if (gx#stx-null? _%tl1829718412%_)
                              (_%__match2098320984%_
                               _%e1828918385%_
                               _%hd1829018389%_
                               _%tl1829118392%_
                               _%e1829218395%_
                               _%hd1829318399%_
                               _%tl1829418402%_
                               _%e1829518405%_
                               _%hd1829618409%_
                               _%tl1829718412%_)
                              (let ()
                                (declare (not safe))
                                (_%g1828518321%_))))))
                  (if (gx#stx-null? _%tl1829718412%_)
                      (_%__match2098320984%_
                       _%e1828918385%_
                       _%hd1829018389%_
                       _%tl1829118392%_
                       _%e1829218395%_
                       _%hd1829318399%_
                       _%tl1829418402%_
                       _%e1829518405%_
                       _%hd1829618409%_
                       _%tl1829718412%_)
                      (let () (declare (not safe)) (_%g1828518321%_))))
              (if (gx#stx-null? _%tl1829718412%_)
                  (_%__match2098320984%_
                   _%e1828918385%_
                   _%hd1829018389%_
                   _%tl1829118392%_
                   _%e1829218395%_
                   _%hd1829318399%_
                   _%tl1829418402%_
                   _%e1829518405%_
                   _%hd1829618409%_
                   _%tl1829718412%_)
                  (let () (declare (not safe)) (_%g1828518321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1829718412%_)
                                                      (_%__match2098320984%_
                                                       _%e1828918385%_
                                                       _%hd1829018389%_
                                                       _%tl1829118392%_
                                                       _%e1829218395%_
                                                       _%hd1829318399%_
                                                       _%tl1829418402%_
                                                       _%e1829518405%_
                                                       _%hd1829618409%_
                                                       _%tl1829718412%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1828518321%_))))))
                                          (if (gx#stx-null? _%tl1829718412%_)
                                              (_%__match2098320984%_
                                               _%e1828918385%_
                                               _%hd1829018389%_
                                               _%tl1829118392%_
                                               _%e1829218395%_
                                               _%hd1829318399%_
                                               _%tl1829418402%_
                                               _%e1829518405%_
                                               _%hd1829618409%_
                                               _%tl1829718412%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1828518321%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1828518321%_)))))
                          (let () (declare (not safe)) (_%g1828518321%_)))))
                  (let () (declare (not safe)) (_%g1828518321%_))))))))))

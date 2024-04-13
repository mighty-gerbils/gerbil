(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g20983_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17653%_)
        (let* ((_%__stx2073820739%_ _%$stx17653%_)
               (_%g1765817697%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2073820739%_))))
          (let ((_%__kont2074120742%_
                 (lambda (_%L17820%_ _%L17822%_ _%L17823%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17823%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17822%_
                                                 (foldr (lambda (_%g1784217845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1784317848%_)
                  (cons _%g1784217845%_ _%g1784317848%_))
                '()
                _%L17820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2074520746%_
                 (lambda (_%L17734%_ _%L17736%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17736%_ (cons _%L17734%_ '()))))))
            (let* ((_%__match2079320794%_
                    (lambda (_%e1768317704%_
                             _%hd1768417708%_
                             _%tl1768517711%_
                             _%e1768617714%_
                             _%hd1768717718%_
                             _%tl1768817721%_
                             _%e1768917724%_
                             _%hd1769017728%_
                             _%tl1769117731%_)
                      (let ((_%L17734%_ _%hd1769017728%_)
                            (_%L17736%_ _%hd1768717718%_))
                        (if (gx#identifier? _%L17736%_)
                            (_%__kont2074520746%_ _%L17734%_ _%L17736%_)
                            (let () (declare (not safe)) (_%g1765817697%_))))))
                   (_%__match2078520786%_
                    (lambda (_%e1768317704%_
                             _%hd1768417708%_
                             _%tl1768517711%_
                             _%e1768617714%_
                             _%hd1768717718%_
                             _%tl1768817721%_)
                      (if (gx#stx-pair? _%tl1768817721%_)
                          (let ((_%e1768917724%_
                                 (gx#syntax-e _%tl1768817721%_)))
                            (let ((_%tl1769117731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1768917724%_)))
                                  (_%hd1769017728%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1768917724%_))))
                              (if (gx#stx-null? _%tl1769117731%_)
                                  (_%__match2079320794%_
                                   _%e1768317704%_
                                   _%hd1768417708%_
                                   _%tl1768517711%_
                                   _%e1768617714%_
                                   _%hd1768717718%_
                                   _%tl1768817721%_
                                   _%e1768917724%_
                                   _%hd1769017728%_
                                   _%tl1769117731%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1765817697%_)))))
                          (let () (declare (not safe)) (_%g1765817697%_)))))
                   (_%__match2077320774%_
                    (lambda (_%e1766317760%_
                             _%hd1766417764%_
                             _%tl1766517767%_
                             _%e1766617770%_
                             _%hd1766717774%_
                             _%tl1766817777%_
                             _%e1766917780%_
                             _%hd1767017784%_
                             _%tl1767117787%_
                             _%__splice2074320744%_
                             _%target1767217790%_
                             _%tl1767417793%_)
                      (letrec ((_%loop1767517796%_
                                (lambda (_%hd1767317800%_ _%body1767917803%_)
                                  (if (gx#stx-pair? _%hd1767317800%_)
                                      (let ((_%e1767617806%_
                                             (gx#syntax-e _%hd1767317800%_)))
                                        (let ((_%lp-tl1767817813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1767617806%_)))
                                              (_%lp-hd1767717810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1767617806%_))))
                                          (_%loop1767517796%_
                                           _%lp-tl1767817813%_
                                           (cons _%lp-hd1767717810%_
                                                 _%body1767917803%_))))
                                      (let ((_%body1768017816%_
                                             (reverse _%body1767917803%_)))
                                        (let ((_%L17820%_ _%body1768017816%_)
                                              (_%L17822%_ _%tl1767117787%_)
                                              (_%L17823%_ _%hd1767017784%_))
                                          (if (gx#identifier? _%L17823%_)
                                              (_%__kont2074120742%_
                                               _%L17820%_
                                               _%L17822%_
                                               _%L17823%_)
                                              (_%__match2078520786%_
                                               _%e1766317760%_
                                               _%hd1766417764%_
                                               _%tl1766517767%_
                                               _%e1766617770%_
                                               _%hd1766717774%_
                                               _%tl1766817777%_))))))))
                        (_%loop1767517796%_ _%target1767217790%_ '())))))
              (if (gx#stx-pair? _%__stx2073820739%_)
                  (let ((_%e1766317760%_ (gx#syntax-e _%__stx2073820739%_)))
                    (let ((_%tl1766517767%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1766317760%_)))
                          (_%hd1766417764%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1766317760%_))))
                      (if (gx#stx-pair? _%tl1766517767%_)
                          (let ((_%e1766617770%_
                                 (gx#syntax-e _%tl1766517767%_)))
                            (let ((_%tl1766817777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1766617770%_)))
                                  (_%hd1766717774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1766617770%_))))
                              (if (gx#stx-pair? _%hd1766717774%_)
                                  (let ((_%e1766917780%_
                                         (gx#syntax-e _%hd1766717774%_)))
                                    (let ((_%tl1767117787%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1766917780%_)))
                                          (_%hd1767017784%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1766917780%_))))
                                      (if (gx#stx-pair/null? _%tl1766817777%_)
                                          (let ((_%__splice2074320744%_
                                                 (gx#syntax-split-splice
                                                  _%tl1766817777%_
                                                  '0)))
                                            (let ((_%tl1767417793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074320744%_
                                                      '1)))
                                                  (_%target1767217790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074320744%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1767417793%_)
                                                  (_%__match2077320774%_
                                                   _%e1766317760%_
                                                   _%hd1766417764%_
                                                   _%tl1766517767%_
                                                   _%e1766617770%_
                                                   _%hd1766717774%_
                                                   _%tl1766817777%_
                                                   _%e1766917780%_
                                                   _%hd1767017784%_
                                                   _%tl1767117787%_
                                                   _%__splice2074320744%_
                                                   _%target1767217790%_
                                                   _%tl1767417793%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1766817777%_)
                                                      (let ((_%e1768917724%_
                                                             (gx#syntax-e
                                                              _%tl1766817777%_)))
                                                        (let ((_%tl1769117731%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1768917724%_)))
                      (_%hd1769017728%_
                       (let () (declare (not safe)) (##car _%e1768917724%_))))
                  (if (gx#stx-null? _%tl1769117731%_)
                      (_%__match2079320794%_
                       _%e1766317760%_
                       _%hd1766417764%_
                       _%tl1766517767%_
                       _%e1766617770%_
                       _%hd1766717774%_
                       _%tl1766817777%_
                       _%e1768917724%_
                       _%hd1769017728%_
                       _%tl1769117731%_)
                      (let () (declare (not safe)) (_%g1765817697%_)))))
              (let () (declare (not safe)) (_%g1765817697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1766817777%_)
                                              (let ((_%e1768917724%_
                                                     (gx#syntax-e
                                                      _%tl1766817777%_)))
                                                (let ((_%tl1769117731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1768917724%_)))
                                                      (_%hd1769017728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1768917724%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1769117731%_)
                                                      (_%__match2079320794%_
                                                       _%e1766317760%_
                                                       _%hd1766417764%_
                                                       _%tl1766517767%_
                                                       _%e1766617770%_
                                                       _%hd1766717774%_
                                                       _%tl1766817777%_
                                                       _%e1768917724%_
                                                       _%hd1769017728%_
                                                       _%tl1769117731%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1765817697%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1765817697%_))))))
                                  (if (gx#stx-pair? _%tl1766817777%_)
                                      (let ((_%e1768917724%_
                                             (gx#syntax-e _%tl1766817777%_)))
                                        (let ((_%tl1769117731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1768917724%_)))
                                              (_%hd1769017728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1768917724%_))))
                                          (if (gx#stx-null? _%tl1769117731%_)
                                              (_%__match2079320794%_
                                               _%e1766317760%_
                                               _%hd1766417764%_
                                               _%tl1766517767%_
                                               _%e1766617770%_
                                               _%hd1766717774%_
                                               _%tl1766817777%_
                                               _%e1768917724%_
                                               _%hd1769017728%_
                                               _%tl1769117731%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1765817697%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1765817697%_))))))
                          (let () (declare (not safe)) (_%g1765817697%_)))))
                  (let () (declare (not safe)) (_%g1765817697%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17856%_)
        (let* ((_%g1785917896%_
                (lambda (_%g1786017892%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1786017892%_)))
               (_%g1785818257%_
                (lambda (_%g1786017900%_)
                  (if (gx#stx-pair? _%g1786017900%_)
                      (let ((_%e1786417903%_ (gx#syntax-e _%g1786017900%_)))
                        (let ((_%hd1786517907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1786417903%_)))
                              (_%tl1786617910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1786417903%_))))
                          (if (gx#stx-pair? _%tl1786617910%_)
                              (let ((_%e1786717913%_
                                     (gx#syntax-e _%tl1786617910%_)))
                                (let ((_%hd1786817917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1786717913%_)))
                                      (_%tl1786917920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1786717913%_))))
                                  (if (gx#stx-pair? _%hd1786817917%_)
                                      (let ((_%e1787017923%_
                                             (gx#syntax-e _%hd1786817917%_)))
                                        (let ((_%hd1787117927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1787017923%_)))
                                              (_%tl1787217930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1787017923%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1787217930%_)
                                              (let ((_g20977_
                                                     (gx#syntax-split-splice
                                                      _%tl1787217930%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20977_)
                                                               (##vector-length
                                                                _g20977_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20978_ 2)))
                (error "Context expects 2 values" _g20978_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1787317933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20977_
                                                            0)))
                                                        (_%tl1787517936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20977_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1787517936%_)
                                                        (letrec ((_%loop1787617939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1787417943%_ _%arg1788017946%_)
                            (if (gx#stx-pair? _%hd1787417943%_)
                                (let ((_%e1787717949%_
                                       (gx#syntax-e _%hd1787417943%_)))
                                  (let ((_%lp-hd1787817953%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1787717949%_)))
                                        (_%lp-tl1787917956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1787717949%_))))
                                    (_%loop1787617939%_
                                     _%lp-tl1787917956%_
                                     (cons _%lp-hd1787817953%_
                                           _%arg1788017946%_))))
                                (let ((_%arg1788117959%_
                                       (reverse _%arg1788017946%_)))
                                  (if (gx#stx-pair/null? _%tl1786917920%_)
                                      (let ((_g20979_
                                             (gx#syntax-split-splice
                                              _%tl1786917920%_
                                              '0)))
                                        (begin
                                          (let ((_g20980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20979_)
                                                       (##vector-length
                                                        _g20979_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20980_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20980_)))
                                          (let ((_%target1788217963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20979_ 0)))
                                                (_%tl1788417966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20979_ 1))))
                                            (if (gx#stx-null? _%tl1788417966%_)
                                                (letrec ((_%loop1788517969%_
                                                          (lambda (_%hd1788317973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1788917976%_)
                    (if (gx#stx-pair? _%hd1788317973%_)
                        (let ((_%e1788617979%_ (gx#syntax-e _%hd1788317973%_)))
                          (let ((_%lp-hd1788717983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1788617979%_)))
                                (_%lp-tl1788817986%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1788617979%_))))
                            (_%loop1788517969%_
                             _%lp-tl1788817986%_
                             (cons _%lp-hd1788717983%_ _%body1788917976%_))))
                        (let ((_%body1789017989%_
                               (reverse _%body1788917976%_)))
                          ((lambda (_%L17993%_ _%L17995%_ _%L17996%_)
                             (if (and (gx#identifier? _%L17996%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1802018023%_
                                                       _%g1802118026%_)
                                                (cons _%g1802018023%_
                                                      _%g1802118026%_))
                                              '()
                                              _%L17995%_)))
                                 (let* ((_%g1802918037%_
                                         (lambda (_%g1803018033%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1803018033%_)))
                                        (_%g1802818253%_
                                         (lambda (_%g1803018041%_)
                                           ((lambda (_%L18044%_)
                                              (let* ((_%g1805618073%_
                                                      (lambda (_%g1805718069%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1805718069%_)))
                                                     (_%g1805518241%_
                                                      (lambda (_%g1805718077%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1805718077%_)
                                                            (let ((_g20981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1805718077%_ '0)))
                      (begin
                        (let ((_g20982_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g20981_)
                                     (##vector-length _g20981_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g20982_ 2)))
                              (error "Context expects 2 values" _g20982_)))
                        (let ((_%target1805918080%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20981_ 0)))
                              (_%tl1806118083%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20981_ 1))))
                          (if (gx#stx-null? _%tl1806118083%_)
                              (letrec ((_%loop1806218086%_
                                        (lambda (_%hd1806018090%_
                                                 _%xarg1806618093%_)
                                          (if (gx#stx-pair? _%hd1806018090%_)
                                              (let ((_%e1806318096%_
                                                     (gx#syntax-e
                                                      _%hd1806018090%_)))
                                                (let ((_%lp-hd1806418100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1806318096%_)))
                                                      (_%lp-tl1806518103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1806318096%_))))
                                                  (_%loop1806218086%_
                                                   _%lp-tl1806518103%_
                                                   (cons _%lp-hd1806418100%_
                                                         _%xarg1806618093%_))))
                                              (let ((_%xarg1806718106%_
                                                     (reverse _%xarg1806618093%_)))
                                                ((lambda (_%L18110%_)
                                                   (let* ((_%g1812718135%_
                                                           (lambda (_%g1812818131%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1812818131%_)))
                                                          (_%g1812618205%_
                                                           (lambda (_%g1812818139%_)
                                                             ((lambda (_%L18142%_)
                                                                (let* ((_%g1815518163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1815618159%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1815618159%_)))
                               (_%g1815418185%_
                                (lambda (_%g1815618167%_)
                                  ((lambda (_%L18170%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18170%_
                                                  (cons _%L18142%_ '())))
                                      (gx#stx-source _%stx17856%_)))
                                   _%g1815618167%_))))
                          (_%g1815418185%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L18044%_
                                              (foldr (lambda (_%g1819018193%_
                                                              _%g1819118196%_)
                                                       (cons _%g1819018193%_
                                                             _%g1819118196%_))
                                                     '()
                                                     _%L17995%_))
                                        (foldr (lambda (_%g1818818199%_
                                                        _%g1818918202%_)
                                                 (cons _%g1818818199%_
                                                       _%g1818918202%_))
                                               '()
                                               _%L17993%_)))
                            (gx#stx-source _%stx17856%_)))))
                      _%g1812818139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1812618205%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L17996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1821418217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1821518220%_)
                    (cons _%g1821418217%_ _%g1821518220%_))
                  '()
                  _%L18110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1821218223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1821318226%_)
                                      (cons _%g1821218223%_ _%g1821318226%_))
                                    '()
                                    _%L17995%_)
                             (foldr (lambda (_%g1821018229%_ _%g1821118232%_)
                                      (cons _%g1821018229%_ _%g1821118232%_))
                                    '()
                                    _%L17993%_)))
                 (foldr (lambda (_%g1820818235%_ _%g1820918238%_)
                          (cons _%g1820818235%_ _%g1820918238%_))
                        '()
                        _%L18110%_))
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
                 (cons _%L18044%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1806718106%_))))))
                                (_%loop1806218086%_ _%target1805918080%_ '()))
                              (_%g1805618073%_ _%g1805718077%_)))))
                    (_%g1805618073%_ _%g1805718077%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1805518241%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1824418247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1824518250%_)
                   (cons _%g1824418247%_ _%g1824518250%_))
                 '()
                 _%L17995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1803018041%_))))
                                   (_%g1802818253%_
                                    (gx#stx-identifier
                                     _%L17996%_
                                     _%L17996%_
                                     '"__impl")))
                                 (_%g1785917896%_ _%g1786017900%_)))
                           _%body1789017989%_
                           _%arg1788117959%_
                           _%hd1787117927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1788517969%_
                                                   _%target1788217963%_
                                                   '()))
                                                (_%g1785917896%_
                                                 _%g1786017900%_)))))
                                      (_%g1785917896%_ _%g1786017900%_)))))))
                  (_%loop1787617939%_ _%target1787317933%_ '()))
                (_%g1785917896%_ _%g1786017900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1785917896%_
                                               _%g1786017900%_))))
                                      (_%g1785917896%_ _%g1786017900%_))))
                              (_%g1785917896%_ _%g1786017900%_))))
                      (_%g1785917896%_ _%g1786017900%_)))))
          (_%g1785818257%_ _%stx17856%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18264%_)
        (let* ((_%__stx2079620797%_ _%$stx18264%_)
               (_%g1826918305%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2079620797%_))))
          (let ((_%__kont2079920800%_
                 (lambda (_%L18419%_ _%L18421%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18421%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18419%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2080120802%_
                 (lambda (_%L18342%_ _%L18344%_ _%L18345%_)
                   (cons _%L18345%_
                         (cons _%L18344%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18342%_ '()))
                                     '()))))))
            (let* ((_%__match2086120862%_
                    (lambda (_%e1829118312%_
                             _%hd1829218316%_
                             _%tl1829318319%_
                             _%e1829418322%_
                             _%hd1829518326%_
                             _%tl1829618329%_
                             _%e1829718332%_
                             _%hd1829818336%_
                             _%tl1829918339%_)
                      (let ((_%L18342%_ _%hd1829818336%_)
                            (_%L18344%_ _%hd1829518326%_)
                            (_%L18345%_ _%hd1829218316%_))
                        (if (and (gx#identifier? _%L18344%_)
                                 (gx#stx-datum? _%L18342%_))
                            (_%__kont2080120802%_
                             _%L18342%_
                             _%L18344%_
                             _%L18345%_)
                            (let () (declare (not safe)) (_%g1826918305%_))))))
                   (_%__match2084120842%_
                    (lambda (_%e1827318369%_
                             _%hd1827418373%_
                             _%tl1827518376%_
                             _%e1827618379%_
                             _%hd1827718383%_
                             _%tl1827818386%_
                             _%e1827918389%_
                             _%hd1828018393%_
                             _%tl1828118396%_
                             _%e1828218399%_
                             _%hd1828318403%_
                             _%tl1828418406%_
                             _%e1828518409%_
                             _%hd1828618413%_
                             _%tl1828718416%_)
                      (let ((_%L18419%_ _%hd1828618413%_)
                            (_%L18421%_ _%hd1827718383%_))
                        (if (gx#identifier? _%L18421%_)
                            (_%__kont2079920800%_ _%L18419%_ _%L18421%_)
                            (_%__match2086120862%_
                             _%e1827318369%_
                             _%hd1827418373%_
                             _%tl1827518376%_
                             _%e1827618379%_
                             _%hd1827718383%_
                             _%tl1827818386%_
                             _%e1827918389%_
                             _%hd1828018393%_
                             _%tl1828118396%_))))))
              (if (gx#stx-pair? _%__stx2079620797%_)
                  (let ((_%e1827318369%_ (gx#syntax-e _%__stx2079620797%_)))
                    (let ((_%tl1827518376%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1827318369%_)))
                          (_%hd1827418373%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1827318369%_))))
                      (if (gx#stx-pair? _%tl1827518376%_)
                          (let ((_%e1827618379%_
                                 (gx#syntax-e _%tl1827518376%_)))
                            (let ((_%tl1827818386%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1827618379%_)))
                                  (_%hd1827718383%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1827618379%_))))
                              (if (gx#stx-pair? _%tl1827818386%_)
                                  (let ((_%e1827918389%_
                                         (gx#syntax-e _%tl1827818386%_)))
                                    (let ((_%tl1828118396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1827918389%_)))
                                          (_%hd1828018393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1827918389%_))))
                                      (if (gx#stx-pair? _%hd1828018393%_)
                                          (let ((_%e1828218399%_
                                                 (gx#syntax-e
                                                  _%hd1828018393%_)))
                                            (let ((_%tl1828418406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1828218399%_)))
                                                  (_%hd1828318403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1828218399%_))))
                                              (if (gx#identifier?
                                                   _%hd1828318403%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g20983_|
                                                       _%hd1828318403%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1828418406%_)
                                                          (let ((_%e1828518409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1828418406%_)))
                    (let ((_%tl1828718416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1828518409%_)))
                          (_%hd1828618413%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1828518409%_))))
                      (if (gx#stx-null? _%tl1828718416%_)
                          (if (gx#stx-null? _%tl1828118396%_)
                              (_%__match2084120842%_
                               _%e1827318369%_
                               _%hd1827418373%_
                               _%tl1827518376%_
                               _%e1827618379%_
                               _%hd1827718383%_
                               _%tl1827818386%_
                               _%e1827918389%_
                               _%hd1828018393%_
                               _%tl1828118396%_
                               _%e1828218399%_
                               _%hd1828318403%_
                               _%tl1828418406%_
                               _%e1828518409%_
                               _%hd1828618413%_
                               _%tl1828718416%_)
                              (let () (declare (not safe)) (_%g1826918305%_)))
                          (if (gx#stx-null? _%tl1828118396%_)
                              (_%__match2086120862%_
                               _%e1827318369%_
                               _%hd1827418373%_
                               _%tl1827518376%_
                               _%e1827618379%_
                               _%hd1827718383%_
                               _%tl1827818386%_
                               _%e1827918389%_
                               _%hd1828018393%_
                               _%tl1828118396%_)
                              (let ()
                                (declare (not safe))
                                (_%g1826918305%_))))))
                  (if (gx#stx-null? _%tl1828118396%_)
                      (_%__match2086120862%_
                       _%e1827318369%_
                       _%hd1827418373%_
                       _%tl1827518376%_
                       _%e1827618379%_
                       _%hd1827718383%_
                       _%tl1827818386%_
                       _%e1827918389%_
                       _%hd1828018393%_
                       _%tl1828118396%_)
                      (let () (declare (not safe)) (_%g1826918305%_))))
              (if (gx#stx-null? _%tl1828118396%_)
                  (_%__match2086120862%_
                   _%e1827318369%_
                   _%hd1827418373%_
                   _%tl1827518376%_
                   _%e1827618379%_
                   _%hd1827718383%_
                   _%tl1827818386%_
                   _%e1827918389%_
                   _%hd1828018393%_
                   _%tl1828118396%_)
                  (let () (declare (not safe)) (_%g1826918305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1828118396%_)
                                                      (_%__match2086120862%_
                                                       _%e1827318369%_
                                                       _%hd1827418373%_
                                                       _%tl1827518376%_
                                                       _%e1827618379%_
                                                       _%hd1827718383%_
                                                       _%tl1827818386%_
                                                       _%e1827918389%_
                                                       _%hd1828018393%_
                                                       _%tl1828118396%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1826918305%_))))))
                                          (if (gx#stx-null? _%tl1828118396%_)
                                              (_%__match2086120862%_
                                               _%e1827318369%_
                                               _%hd1827418373%_
                                               _%tl1827518376%_
                                               _%e1827618379%_
                                               _%hd1827718383%_
                                               _%tl1827818386%_
                                               _%e1827918389%_
                                               _%hd1828018393%_
                                               _%tl1828118396%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1826918305%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1826918305%_)))))
                          (let () (declare (not safe)) (_%g1826918305%_)))))
                  (let () (declare (not safe)) (_%g1826918305%_))))))))))

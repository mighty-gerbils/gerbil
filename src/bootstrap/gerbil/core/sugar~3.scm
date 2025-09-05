(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g20975_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17545%_)
        (let* ((_%__stx2073620737%_ _%$stx17545%_)
               (_%g1755017589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2073620737%_))))
          (let ((_%__kont2073920740%_
                 (lambda (_%L17712%_ _%L17714%_ _%L17715%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17715%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17714%_
                                                 (foldr (lambda (_%g1773417737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1773517740%_)
                  (cons _%g1773417737%_ _%g1773517740%_))
                '()
                _%L17712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2074320744%_
                 (lambda (_%L17626%_ _%L17628%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17628%_ (cons _%L17626%_ '()))))))
            (let* ((_%__match2079120792%_
                    (lambda (_%e1757517596%_
                             _%hd1757617600%_
                             _%tl1757717603%_
                             _%e1757817606%_
                             _%hd1757917610%_
                             _%tl1758017613%_
                             _%e1758117616%_
                             _%hd1758217620%_
                             _%tl1758317623%_)
                      (let ((_%L17626%_ _%hd1758217620%_)
                            (_%L17628%_ _%hd1757917610%_))
                        (if (gx#identifier? _%L17628%_)
                            (_%__kont2074320744%_ _%L17626%_ _%L17628%_)
                            (let () (declare (not safe)) (_%g1755017589%_))))))
                   (_%__match2078320784%_
                    (lambda (_%e1757517596%_
                             _%hd1757617600%_
                             _%tl1757717603%_
                             _%e1757817606%_
                             _%hd1757917610%_
                             _%tl1758017613%_)
                      (if (gx#stx-pair? _%tl1758017613%_)
                          (let ((_%e1758117616%_
                                 (gx#syntax-e _%tl1758017613%_)))
                            (let ((_%tl1758317623%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1758117616%_)))
                                  (_%hd1758217620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1758117616%_))))
                              (if (gx#stx-null? _%tl1758317623%_)
                                  (_%__match2079120792%_
                                   _%e1757517596%_
                                   _%hd1757617600%_
                                   _%tl1757717603%_
                                   _%e1757817606%_
                                   _%hd1757917610%_
                                   _%tl1758017613%_
                                   _%e1758117616%_
                                   _%hd1758217620%_
                                   _%tl1758317623%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1755017589%_)))))
                          (let () (declare (not safe)) (_%g1755017589%_)))))
                   (_%__match2077120772%_
                    (lambda (_%e1755517652%_
                             _%hd1755617656%_
                             _%tl1755717659%_
                             _%e1755817662%_
                             _%hd1755917666%_
                             _%tl1756017669%_
                             _%e1756117672%_
                             _%hd1756217676%_
                             _%tl1756317679%_
                             _%__splice2074120742%_
                             _%target1756417682%_
                             _%tl1756617685%_)
                      (letrec ((_%loop1756717688%_
                                (lambda (_%hd1756517692%_ _%body1757117695%_)
                                  (if (gx#stx-pair? _%hd1756517692%_)
                                      (let ((_%e1756817698%_
                                             (gx#syntax-e _%hd1756517692%_)))
                                        (let ((_%lp-tl1757017705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1756817698%_)))
                                              (_%lp-hd1756917702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1756817698%_))))
                                          (_%loop1756717688%_
                                           _%lp-tl1757017705%_
                                           (cons _%lp-hd1756917702%_
                                                 _%body1757117695%_))))
                                      (let ((_%body1757217708%_
                                             (reverse _%body1757117695%_)))
                                        (let ((_%L17712%_ _%body1757217708%_)
                                              (_%L17714%_ _%tl1756317679%_)
                                              (_%L17715%_ _%hd1756217676%_))
                                          (if (gx#identifier? _%L17715%_)
                                              (_%__kont2073920740%_
                                               _%L17712%_
                                               _%L17714%_
                                               _%L17715%_)
                                              (_%__match2078320784%_
                                               _%e1755517652%_
                                               _%hd1755617656%_
                                               _%tl1755717659%_
                                               _%e1755817662%_
                                               _%hd1755917666%_
                                               _%tl1756017669%_))))))))
                        (_%loop1756717688%_ _%target1756417682%_ '())))))
              (if (gx#stx-pair? _%__stx2073620737%_)
                  (let ((_%e1755517652%_ (gx#syntax-e _%__stx2073620737%_)))
                    (let ((_%tl1755717659%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1755517652%_)))
                          (_%hd1755617656%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1755517652%_))))
                      (if (gx#stx-pair? _%tl1755717659%_)
                          (let ((_%e1755817662%_
                                 (gx#syntax-e _%tl1755717659%_)))
                            (let ((_%tl1756017669%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1755817662%_)))
                                  (_%hd1755917666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1755817662%_))))
                              (if (gx#stx-pair? _%hd1755917666%_)
                                  (let ((_%e1756117672%_
                                         (gx#syntax-e _%hd1755917666%_)))
                                    (let ((_%tl1756317679%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1756117672%_)))
                                          (_%hd1756217676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1756117672%_))))
                                      (if (gx#stx-pair/null? _%tl1756017669%_)
                                          (let ((_%__splice2074120742%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1756017669%_
                                                  '0)))
                                            (let ((_%tl1756617685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074120742%_
                                                      '1)))
                                                  (_%target1756417682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074120742%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1756617685%_)
                                                  (_%__match2077120772%_
                                                   _%e1755517652%_
                                                   _%hd1755617656%_
                                                   _%tl1755717659%_
                                                   _%e1755817662%_
                                                   _%hd1755917666%_
                                                   _%tl1756017669%_
                                                   _%e1756117672%_
                                                   _%hd1756217676%_
                                                   _%tl1756317679%_
                                                   _%__splice2074120742%_
                                                   _%target1756417682%_
                                                   _%tl1756617685%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1756017669%_)
                                                      (let ((_%e1758117616%_
                                                             (gx#syntax-e
                                                              _%tl1756017669%_)))
                                                        (let ((_%tl1758317623%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1758117616%_)))
                      (_%hd1758217620%_
                       (let () (declare (not safe)) (##car _%e1758117616%_))))
                  (if (gx#stx-null? _%tl1758317623%_)
                      (_%__match2079120792%_
                       _%e1755517652%_
                       _%hd1755617656%_
                       _%tl1755717659%_
                       _%e1755817662%_
                       _%hd1755917666%_
                       _%tl1756017669%_
                       _%e1758117616%_
                       _%hd1758217620%_
                       _%tl1758317623%_)
                      (let () (declare (not safe)) (_%g1755017589%_)))))
              (let () (declare (not safe)) (_%g1755017589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1756017669%_)
                                              (let ((_%e1758117616%_
                                                     (gx#syntax-e
                                                      _%tl1756017669%_)))
                                                (let ((_%tl1758317623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1758117616%_)))
                                                      (_%hd1758217620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1758117616%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1758317623%_)
                                                      (_%__match2079120792%_
                                                       _%e1755517652%_
                                                       _%hd1755617656%_
                                                       _%tl1755717659%_
                                                       _%e1755817662%_
                                                       _%hd1755917666%_
                                                       _%tl1756017669%_
                                                       _%e1758117616%_
                                                       _%hd1758217620%_
                                                       _%tl1758317623%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1755017589%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1755017589%_))))))
                                  (if (gx#stx-pair? _%tl1756017669%_)
                                      (let ((_%e1758117616%_
                                             (gx#syntax-e _%tl1756017669%_)))
                                        (let ((_%tl1758317623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1758117616%_)))
                                              (_%hd1758217620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1758117616%_))))
                                          (if (gx#stx-null? _%tl1758317623%_)
                                              (_%__match2079120792%_
                                               _%e1755517652%_
                                               _%hd1755617656%_
                                               _%tl1755717659%_
                                               _%e1755817662%_
                                               _%hd1755917666%_
                                               _%tl1756017669%_
                                               _%e1758117616%_
                                               _%hd1758217620%_
                                               _%tl1758317623%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1755017589%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1755017589%_))))))
                          (let () (declare (not safe)) (_%g1755017589%_)))))
                  (let () (declare (not safe)) (_%g1755017589%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17748%_)
        (let* ((_%g1775117788%_
                (lambda (_%g1775217784%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1775217784%_)))
               (_%g1775018149%_
                (lambda (_%g1775217792%_)
                  (if (gx#stx-pair? _%g1775217792%_)
                      (let ((_%e1775617795%_ (gx#syntax-e _%g1775217792%_)))
                        (let ((_%hd1775717799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1775617795%_)))
                              (_%tl1775817802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1775617795%_))))
                          (if (gx#stx-pair? _%tl1775817802%_)
                              (let ((_%e1775917805%_
                                     (gx#syntax-e _%tl1775817802%_)))
                                (let ((_%hd1776017809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1775917805%_)))
                                      (_%tl1776117812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1775917805%_))))
                                  (if (gx#stx-pair? _%hd1776017809%_)
                                      (let ((_%e1776217815%_
                                             (gx#syntax-e _%hd1776017809%_)))
                                        (let ((_%hd1776317819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1776217815%_)))
                                              (_%tl1776417822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1776217815%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1776417822%_)
                                              (let ((_g20969_
                                                     (gx#syntax-split-splice
                                                      _%tl1776417822%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20969_)
                                                               (##values-length
                                                                _g20969_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20970_ 2)))
                (error "Context expects 2 values" _g20970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1776517825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20969_
                                                            0)))
                                                        (_%tl1776717828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20969_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1776717828%_)
                                                        (letrec ((_%loop1776817831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1776617835%_ _%arg1777217838%_)
                            (if (gx#stx-pair? _%hd1776617835%_)
                                (let ((_%e1776917841%_
                                       (gx#syntax-e _%hd1776617835%_)))
                                  (let ((_%lp-hd1777017845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1776917841%_)))
                                        (_%lp-tl1777117848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1776917841%_))))
                                    (_%loop1776817831%_
                                     _%lp-tl1777117848%_
                                     (cons _%lp-hd1777017845%_
                                           _%arg1777217838%_))))
                                (let ((_%arg1777317851%_
                                       (reverse _%arg1777217838%_)))
                                  (if (gx#stx-pair/null? _%tl1776117812%_)
                                      (let ((_g20971_
                                             (gx#syntax-split-splice
                                              _%tl1776117812%_
                                              '0)))
                                        (begin
                                          (let ((_g20972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20971_)
                                                       (##values-length
                                                        _g20971_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20972_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20972_)))
                                          (let ((_%target1777417855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20971_ 0)))
                                                (_%tl1777617858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20971_ 1))))
                                            (if (gx#stx-null? _%tl1777617858%_)
                                                (letrec ((_%loop1777717861%_
                                                          (lambda (_%hd1777517865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1778117868%_)
                    (if (gx#stx-pair? _%hd1777517865%_)
                        (let ((_%e1777817871%_ (gx#syntax-e _%hd1777517865%_)))
                          (let ((_%lp-hd1777917875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1777817871%_)))
                                (_%lp-tl1778017878%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1777817871%_))))
                            (_%loop1777717861%_
                             _%lp-tl1778017878%_
                             (cons _%lp-hd1777917875%_ _%body1778117868%_))))
                        (let ((_%body1778217881%_
                               (reverse _%body1778117868%_)))
                          ((lambda (_%L17885%_ _%L17887%_ _%L17888%_)
                             (if (and (gx#identifier? _%L17888%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1791217915%_
                                                       _%g1791317918%_)
                                                (cons _%g1791217915%_
                                                      _%g1791317918%_))
                                              '()
                                              _%L17887%_)))
                                 (let* ((_%g1792117929%_
                                         (lambda (_%g1792217925%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1792217925%_)))
                                        (_%g1792018145%_
                                         (lambda (_%g1792217933%_)
                                           ((lambda (_%L17936%_)
                                              (let* ((_%g1794817965%_
                                                      (lambda (_%g1794917961%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1794917961%_)))
                                                     (_%g1794718133%_
                                                      (lambda (_%g1794917969%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1794917969%_)
                                                            (let ((_g20973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1794917969%_ '0)))
                      (begin
                        (let ((_g20974_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g20973_)
                                     (##values-length _g20973_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g20974_ 2)))
                              (error "Context expects 2 values" _g20974_)))
                        (let ((_%target1795117972%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20973_ 0)))
                              (_%tl1795317975%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20973_ 1))))
                          (if (gx#stx-null? _%tl1795317975%_)
                              (letrec ((_%loop1795417978%_
                                        (lambda (_%hd1795217982%_
                                                 _%xarg1795817985%_)
                                          (if (gx#stx-pair? _%hd1795217982%_)
                                              (let ((_%e1795517988%_
                                                     (gx#syntax-e
                                                      _%hd1795217982%_)))
                                                (let ((_%lp-hd1795617992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1795517988%_)))
                                                      (_%lp-tl1795717995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1795517988%_))))
                                                  (_%loop1795417978%_
                                                   _%lp-tl1795717995%_
                                                   (cons _%lp-hd1795617992%_
                                                         _%xarg1795817985%_))))
                                              (let ((_%xarg1795917998%_
                                                     (reverse _%xarg1795817985%_)))
                                                ((lambda (_%L18002%_)
                                                   (let* ((_%g1801918027%_
                                                           (lambda (_%g1802018023%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1802018023%_)))
                                                          (_%g1801818097%_
                                                           (lambda (_%g1802018031%_)
                                                             ((lambda (_%L18034%_)
                                                                (let* ((_%g1804718055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1804818051%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1804818051%_)))
                               (_%g1804618077%_
                                (lambda (_%g1804818059%_)
                                  ((lambda (_%L18062%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18062%_
                                                  (cons _%L18034%_ '())))
                                      (gx#stx-source _%stx17748%_)))
                                   _%g1804818059%_))))
                          (_%g1804618077%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L17936%_
                                              (foldr (lambda (_%g1808018085%_
                                                              _%g1808118088%_)
                                                       (cons _%g1808018085%_
                                                             _%g1808118088%_))
                                                     '()
                                                     _%L17887%_))
                                        (foldr (lambda (_%g1808218091%_
                                                        _%g1808318094%_)
                                                 (cons _%g1808218091%_
                                                       _%g1808318094%_))
                                               '()
                                               _%L17885%_)))
                            (gx#stx-source _%stx17748%_)))))
                      _%g1802018031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1801818097%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L17888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1810018109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1810118112%_)
                    (cons _%g1810018109%_ _%g1810118112%_))
                  '()
                  _%L18002%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1810218115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1810318118%_)
                                      (cons _%g1810218115%_ _%g1810318118%_))
                                    '()
                                    _%L17887%_)
                             (foldr (lambda (_%g1810418121%_ _%g1810518124%_)
                                      (cons _%g1810418121%_ _%g1810518124%_))
                                    '()
                                    _%L17885%_)))
                 (foldr (lambda (_%g1810618127%_ _%g1810718130%_)
                          (cons _%g1810618127%_ _%g1810718130%_))
                        '()
                        _%L18002%_))
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
                 (cons _%L17936%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1795917998%_))))))
                                (_%loop1795417978%_ _%target1795117972%_ '()))
                              (_%g1794817965%_ _%g1794917969%_)))))
                    (_%g1794817965%_ _%g1794917969%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1794718133%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1813618139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1813718142%_)
                   (cons _%g1813618139%_ _%g1813718142%_))
                 '()
                 _%L17887%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1792217933%_))))
                                   (_%g1792018145%_
                                    (gx#stx-identifier
                                     _%L17888%_
                                     _%L17888%_
                                     '"__impl")))
                                 (_%g1775117788%_ _%g1775217792%_)))
                           _%body1778217881%_
                           _%arg1777317851%_
                           _%hd1776317819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1777717861%_
                                                   _%target1777417855%_
                                                   '()))
                                                (_%g1775117788%_
                                                 _%g1775217792%_)))))
                                      (_%g1775117788%_ _%g1775217792%_)))))))
                  (_%loop1776817831%_ _%target1776517825%_ '()))
                (_%g1775117788%_ _%g1775217792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1775117788%_
                                               _%g1775217792%_))))
                                      (_%g1775117788%_ _%g1775217792%_))))
                              (_%g1775117788%_ _%g1775217792%_))))
                      (_%g1775117788%_ _%g1775217792%_)))))
          (_%g1775018149%_ _%stx17748%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18156%_)
        (let* ((_%__stx2079420795%_ _%$stx18156%_)
               (_%g1816118197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2079420795%_))))
          (let ((_%__kont2079720798%_
                 (lambda (_%L18311%_ _%L18313%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18313%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18311%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2079920800%_
                 (lambda (_%L18234%_ _%L18236%_ _%L18237%_)
                   (cons _%L18237%_
                         (cons _%L18236%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18234%_ '()))
                                     '()))))))
            (let* ((_%__match2085920860%_
                    (lambda (_%e1818318204%_
                             _%hd1818418208%_
                             _%tl1818518211%_
                             _%e1818618214%_
                             _%hd1818718218%_
                             _%tl1818818221%_
                             _%e1818918224%_
                             _%hd1819018228%_
                             _%tl1819118231%_)
                      (let ((_%L18234%_ _%hd1819018228%_)
                            (_%L18236%_ _%hd1818718218%_)
                            (_%L18237%_ _%hd1818418208%_))
                        (if (and (gx#identifier? _%L18236%_)
                                 (gx#stx-datum? _%L18234%_))
                            (_%__kont2079920800%_
                             _%L18234%_
                             _%L18236%_
                             _%L18237%_)
                            (let () (declare (not safe)) (_%g1816118197%_))))))
                   (_%__match2083920840%_
                    (lambda (_%e1816518261%_
                             _%hd1816618265%_
                             _%tl1816718268%_
                             _%e1816818271%_
                             _%hd1816918275%_
                             _%tl1817018278%_
                             _%e1817118281%_
                             _%hd1817218285%_
                             _%tl1817318288%_
                             _%e1817418291%_
                             _%hd1817518295%_
                             _%tl1817618298%_
                             _%e1817718301%_
                             _%hd1817818305%_
                             _%tl1817918308%_)
                      (let ((_%L18311%_ _%hd1817818305%_)
                            (_%L18313%_ _%hd1816918275%_))
                        (if (gx#identifier? _%L18313%_)
                            (_%__kont2079720798%_ _%L18311%_ _%L18313%_)
                            (_%__match2085920860%_
                             _%e1816518261%_
                             _%hd1816618265%_
                             _%tl1816718268%_
                             _%e1816818271%_
                             _%hd1816918275%_
                             _%tl1817018278%_
                             _%e1817118281%_
                             _%hd1817218285%_
                             _%tl1817318288%_))))))
              (if (gx#stx-pair? _%__stx2079420795%_)
                  (let ((_%e1816518261%_ (gx#syntax-e _%__stx2079420795%_)))
                    (let ((_%tl1816718268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1816518261%_)))
                          (_%hd1816618265%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1816518261%_))))
                      (if (gx#stx-pair? _%tl1816718268%_)
                          (let ((_%e1816818271%_
                                 (gx#syntax-e _%tl1816718268%_)))
                            (let ((_%tl1817018278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1816818271%_)))
                                  (_%hd1816918275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1816818271%_))))
                              (if (gx#stx-pair? _%tl1817018278%_)
                                  (let ((_%e1817118281%_
                                         (gx#syntax-e _%tl1817018278%_)))
                                    (let ((_%tl1817318288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1817118281%_)))
                                          (_%hd1817218285%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1817118281%_))))
                                      (if (gx#stx-pair? _%hd1817218285%_)
                                          (let ((_%e1817418291%_
                                                 (gx#syntax-e
                                                  _%hd1817218285%_)))
                                            (let ((_%tl1817618298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1817418291%_)))
                                                  (_%hd1817518295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1817418291%_))))
                                              (if (gx#identifier?
                                                   _%hd1817518295%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g20975_|
                                                       _%hd1817518295%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1817618298%_)
                                                          (let ((_%e1817718301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1817618298%_)))
                    (let ((_%tl1817918308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1817718301%_)))
                          (_%hd1817818305%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1817718301%_))))
                      (if (gx#stx-null? _%tl1817918308%_)
                          (if (gx#stx-null? _%tl1817318288%_)
                              (_%__match2083920840%_
                               _%e1816518261%_
                               _%hd1816618265%_
                               _%tl1816718268%_
                               _%e1816818271%_
                               _%hd1816918275%_
                               _%tl1817018278%_
                               _%e1817118281%_
                               _%hd1817218285%_
                               _%tl1817318288%_
                               _%e1817418291%_
                               _%hd1817518295%_
                               _%tl1817618298%_
                               _%e1817718301%_
                               _%hd1817818305%_
                               _%tl1817918308%_)
                              (let () (declare (not safe)) (_%g1816118197%_)))
                          (if (gx#stx-null? _%tl1817318288%_)
                              (_%__match2085920860%_
                               _%e1816518261%_
                               _%hd1816618265%_
                               _%tl1816718268%_
                               _%e1816818271%_
                               _%hd1816918275%_
                               _%tl1817018278%_
                               _%e1817118281%_
                               _%hd1817218285%_
                               _%tl1817318288%_)
                              (let ()
                                (declare (not safe))
                                (_%g1816118197%_))))))
                  (if (gx#stx-null? _%tl1817318288%_)
                      (_%__match2085920860%_
                       _%e1816518261%_
                       _%hd1816618265%_
                       _%tl1816718268%_
                       _%e1816818271%_
                       _%hd1816918275%_
                       _%tl1817018278%_
                       _%e1817118281%_
                       _%hd1817218285%_
                       _%tl1817318288%_)
                      (let () (declare (not safe)) (_%g1816118197%_))))
              (if (gx#stx-null? _%tl1817318288%_)
                  (_%__match2085920860%_
                   _%e1816518261%_
                   _%hd1816618265%_
                   _%tl1816718268%_
                   _%e1816818271%_
                   _%hd1816918275%_
                   _%tl1817018278%_
                   _%e1817118281%_
                   _%hd1817218285%_
                   _%tl1817318288%_)
                  (let () (declare (not safe)) (_%g1816118197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1817318288%_)
                                                      (_%__match2085920860%_
                                                       _%e1816518261%_
                                                       _%hd1816618265%_
                                                       _%tl1816718268%_
                                                       _%e1816818271%_
                                                       _%hd1816918275%_
                                                       _%tl1817018278%_
                                                       _%e1817118281%_
                                                       _%hd1817218285%_
                                                       _%tl1817318288%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1816118197%_))))))
                                          (if (gx#stx-null? _%tl1817318288%_)
                                              (_%__match2085920860%_
                                               _%e1816518261%_
                                               _%hd1816618265%_
                                               _%tl1816718268%_
                                               _%e1816818271%_
                                               _%hd1816918275%_
                                               _%tl1817018278%_
                                               _%e1817118281%_
                                               _%hd1817218285%_
                                               _%tl1817318288%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1816118197%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1816118197%_)))))
                          (let () (declare (not safe)) (_%g1816118197%_)))))
                  (let () (declare (not safe)) (_%g1816118197%_))))))))))

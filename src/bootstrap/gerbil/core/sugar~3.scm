(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21050_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17739%_)
        (let* ((_%__stx2082420825%_ _%$stx17739%_)
               (_%g1774417783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2082420825%_))))
          (let ((_%__kont2082720828%_
                 (lambda (_%L17906%_ _%L17908%_ _%L17909%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17909%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17908%_
                                                 (foldr (lambda (_%g1792817931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1792917934%_)
                  (cons _%g1792817931%_ _%g1792917934%_))
                '()
                _%L17906%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2083120832%_
                 (lambda (_%L17820%_ _%L17822%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17822%_ (cons _%L17820%_ '()))))))
            (let* ((_%__match2087920880%_
                    (lambda (_%e1777117790%_
                             _%hd1777017794%_
                             _%tl1776917797%_
                             _%e1777417800%_
                             _%hd1777317804%_
                             _%tl1777217807%_
                             _%e1777717810%_
                             _%hd1777617814%_
                             _%tl1777517817%_)
                      (let ((_%L17820%_ _%hd1777617814%_)
                            (_%L17822%_ _%hd1777317804%_))
                        (if (gx#identifier? _%L17822%_)
                            (_%__kont2083120832%_ _%L17820%_ _%L17822%_)
                            (let () (declare (not safe)) (_%g1774417783%_))))))
                   (_%__match2087120872%_
                    (lambda (_%e1777117790%_
                             _%hd1777017794%_
                             _%tl1776917797%_
                             _%e1777417800%_
                             _%hd1777317804%_
                             _%tl1777217807%_)
                      (if (gx#stx-pair? _%tl1777217807%_)
                          (let ((_%e1777717810%_
                                 (gx#syntax-e _%tl1777217807%_)))
                            (let ((_%tl1777517817%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1777717810%_)))
                                  (_%hd1777617814%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1777717810%_))))
                              (if (gx#stx-null? _%tl1777517817%_)
                                  (_%__match2087920880%_
                                   _%e1777117790%_
                                   _%hd1777017794%_
                                   _%tl1776917797%_
                                   _%e1777417800%_
                                   _%hd1777317804%_
                                   _%tl1777217807%_
                                   _%e1777717810%_
                                   _%hd1777617814%_
                                   _%tl1777517817%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1774417783%_)))))
                          (let () (declare (not safe)) (_%g1774417783%_)))))
                   (_%__match2085920860%_
                    (lambda (_%e1775117846%_
                             _%hd1775017850%_
                             _%tl1774917853%_
                             _%e1775417856%_
                             _%hd1775317860%_
                             _%tl1775217863%_
                             _%e1775717866%_
                             _%hd1775617870%_
                             _%tl1775517873%_
                             _%__splice2082920830%_
                             _%target1775817876%_
                             _%tl1776017879%_)
                      (letrec ((_%loop1776117882%_
                                (lambda (_%hd1775917886%_ _%body1776517889%_)
                                  (if (gx#stx-pair? _%hd1775917886%_)
                                      (let ((_%e1776217892%_
                                             (gx#syntax-e _%hd1775917886%_)))
                                        (let ((_%lp-tl1776417899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1776217892%_)))
                                              (_%lp-hd1776317896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1776217892%_))))
                                          (_%loop1776117882%_
                                           _%lp-tl1776417899%_
                                           (cons _%lp-hd1776317896%_
                                                 _%body1776517889%_))))
                                      (let ((_%body1776617902%_
                                             (reverse _%body1776517889%_)))
                                        (let ((_%L17906%_ _%body1776617902%_)
                                              (_%L17908%_ _%tl1775517873%_)
                                              (_%L17909%_ _%hd1775617870%_))
                                          (if (gx#identifier? _%L17909%_)
                                              (_%__kont2082720828%_
                                               _%L17906%_
                                               _%L17908%_
                                               _%L17909%_)
                                              (_%__match2087120872%_
                                               _%e1775117846%_
                                               _%hd1775017850%_
                                               _%tl1774917853%_
                                               _%e1775417856%_
                                               _%hd1775317860%_
                                               _%tl1775217863%_))))))))
                        (_%loop1776117882%_ _%target1775817876%_ '())))))
              (if (gx#stx-pair? _%__stx2082420825%_)
                  (let ((_%e1775117846%_ (gx#syntax-e _%__stx2082420825%_)))
                    (let ((_%tl1774917853%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1775117846%_)))
                          (_%hd1775017850%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1775117846%_))))
                      (if (gx#stx-pair? _%tl1774917853%_)
                          (let ((_%e1775417856%_
                                 (gx#syntax-e _%tl1774917853%_)))
                            (let ((_%tl1775217863%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1775417856%_)))
                                  (_%hd1775317860%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1775417856%_))))
                              (if (gx#stx-pair? _%hd1775317860%_)
                                  (let ((_%e1775717866%_
                                         (gx#syntax-e _%hd1775317860%_)))
                                    (let ((_%tl1775517873%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1775717866%_)))
                                          (_%hd1775617870%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1775717866%_))))
                                      (if (gx#stx-pair/null? _%tl1775217863%_)
                                          (let ((_%__splice2082920830%_
                                                 (gx#syntax-split-splice
                                                  _%tl1775217863%_
                                                  '0)))
                                            (let ((_%tl1776017879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082920830%_
                                                      '1)))
                                                  (_%target1775817876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082920830%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1776017879%_)
                                                  (_%__match2085920860%_
                                                   _%e1775117846%_
                                                   _%hd1775017850%_
                                                   _%tl1774917853%_
                                                   _%e1775417856%_
                                                   _%hd1775317860%_
                                                   _%tl1775217863%_
                                                   _%e1775717866%_
                                                   _%hd1775617870%_
                                                   _%tl1775517873%_
                                                   _%__splice2082920830%_
                                                   _%target1775817876%_
                                                   _%tl1776017879%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1775217863%_)
                                                      (let ((_%e1777717810%_
                                                             (gx#syntax-e
                                                              _%tl1775217863%_)))
                                                        (let ((_%tl1777517817%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1777717810%_)))
                      (_%hd1777617814%_
                       (let () (declare (not safe)) (##car _%e1777717810%_))))
                  (if (gx#stx-null? _%tl1777517817%_)
                      (_%__match2087920880%_
                       _%e1775117846%_
                       _%hd1775017850%_
                       _%tl1774917853%_
                       _%e1775417856%_
                       _%hd1775317860%_
                       _%tl1775217863%_
                       _%e1777717810%_
                       _%hd1777617814%_
                       _%tl1777517817%_)
                      (let () (declare (not safe)) (_%g1774417783%_)))))
              (let () (declare (not safe)) (_%g1774417783%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1775217863%_)
                                              (let ((_%e1777717810%_
                                                     (gx#syntax-e
                                                      _%tl1775217863%_)))
                                                (let ((_%tl1777517817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1777717810%_)))
                                                      (_%hd1777617814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1777717810%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1777517817%_)
                                                      (_%__match2087920880%_
                                                       _%e1775117846%_
                                                       _%hd1775017850%_
                                                       _%tl1774917853%_
                                                       _%e1775417856%_
                                                       _%hd1775317860%_
                                                       _%tl1775217863%_
                                                       _%e1777717810%_
                                                       _%hd1777617814%_
                                                       _%tl1777517817%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1774417783%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1774417783%_))))))
                                  (if (gx#stx-pair? _%tl1775217863%_)
                                      (let ((_%e1777717810%_
                                             (gx#syntax-e _%tl1775217863%_)))
                                        (let ((_%tl1777517817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1777717810%_)))
                                              (_%hd1777617814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1777717810%_))))
                                          (if (gx#stx-null? _%tl1777517817%_)
                                              (_%__match2087920880%_
                                               _%e1775117846%_
                                               _%hd1775017850%_
                                               _%tl1774917853%_
                                               _%e1775417856%_
                                               _%hd1775317860%_
                                               _%tl1775217863%_
                                               _%e1777717810%_
                                               _%hd1777617814%_
                                               _%tl1777517817%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1774417783%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1774417783%_))))))
                          (let () (declare (not safe)) (_%g1774417783%_)))))
                  (let () (declare (not safe)) (_%g1774417783%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17942%_)
        (let* ((_%g1794517982%_
                (lambda (_%g1794617978%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1794617978%_)))
               (_%g1794418343%_
                (lambda (_%g1794617986%_)
                  (if (gx#stx-pair? _%g1794617986%_)
                      (let ((_%e1795217989%_ (gx#syntax-e _%g1794617986%_)))
                        (let ((_%hd1795117993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1795217989%_)))
                              (_%tl1795017996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1795217989%_))))
                          (if (gx#stx-pair? _%tl1795017996%_)
                              (let ((_%e1795517999%_
                                     (gx#syntax-e _%tl1795017996%_)))
                                (let ((_%hd1795418003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1795517999%_)))
                                      (_%tl1795318006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1795517999%_))))
                                  (if (gx#stx-pair? _%hd1795418003%_)
                                      (let ((_%e1795818009%_
                                             (gx#syntax-e _%hd1795418003%_)))
                                        (let ((_%hd1795718013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1795818009%_)))
                                              (_%tl1795618016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1795818009%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1795618016%_)
                                              (let ((_g21044_
                                                     (gx#syntax-split-splice
                                                      _%tl1795618016%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21044_)
                                                               (##vector-length
                                                                _g21044_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21045_ 2)))
                (error "Context expects 2 values" _g21045_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1795918019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21044_
                                                            0)))
                                                        (_%tl1796118022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21044_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1796118022%_)
                                                        (letrec ((_%loop1796218025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1796018029%_ _%arg1796618032%_)
                            (if (gx#stx-pair? _%hd1796018029%_)
                                (let ((_%e1796318035%_
                                       (gx#syntax-e _%hd1796018029%_)))
                                  (let ((_%lp-hd1796418039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1796318035%_)))
                                        (_%lp-tl1796518042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1796318035%_))))
                                    (_%loop1796218025%_
                                     _%lp-tl1796518042%_
                                     (cons _%lp-hd1796418039%_
                                           _%arg1796618032%_))))
                                (let ((_%arg1796718045%_
                                       (reverse _%arg1796618032%_)))
                                  (if (gx#stx-pair/null? _%tl1795318006%_)
                                      (let ((_g21046_
                                             (gx#syntax-split-splice
                                              _%tl1795318006%_
                                              '0)))
                                        (begin
                                          (let ((_g21047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21046_)
                                                       (##vector-length
                                                        _g21046_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21047_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21047_)))
                                          (let ((_%target1796818049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21046_ 0)))
                                                (_%tl1797018052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21046_ 1))))
                                            (if (gx#stx-null? _%tl1797018052%_)
                                                (letrec ((_%loop1797118055%_
                                                          (lambda (_%hd1796918059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1797518062%_)
                    (if (gx#stx-pair? _%hd1796918059%_)
                        (let ((_%e1797218065%_ (gx#syntax-e _%hd1796918059%_)))
                          (let ((_%lp-hd1797318069%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1797218065%_)))
                                (_%lp-tl1797418072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1797218065%_))))
                            (_%loop1797118055%_
                             _%lp-tl1797418072%_
                             (cons _%lp-hd1797318069%_ _%body1797518062%_))))
                        (let ((_%body1797618075%_
                               (reverse _%body1797518062%_)))
                          ((lambda (_%L18079%_ _%L18081%_ _%L18082%_)
                             (if (and (gx#identifier? _%L18082%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1810618109%_
                                                       _%g1810718112%_)
                                                (cons _%g1810618109%_
                                                      _%g1810718112%_))
                                              '()
                                              _%L18081%_)))
                                 (let* ((_%g1811518123%_
                                         (lambda (_%g1811618119%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1811618119%_)))
                                        (_%g1811418339%_
                                         (lambda (_%g1811618127%_)
                                           ((lambda (_%L18130%_)
                                              (let ()
                                                (let* ((_%g1814218159%_
                                                        (lambda (_%g1814318155%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1814318155%_)))
                                                       (_%g1814118327%_
                                                        (lambda (_%g1814318163%_)
                                                          (if (gx#stx-pair/null?
                                                               _%g1814318163%_)
                                                              (let ((_g21048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%g1814318163%_ '0)))
                        (begin
                          (let ((_g21049_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g21048_)
                                       (##vector-length _g21048_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g21049_ 2)))
                                (error "Context expects 2 values" _g21049_)))
                          (let ((_%target1814518166%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g21048_ 0)))
                                (_%tl1814718169%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g21048_ 1))))
                            (if (gx#stx-null? _%tl1814718169%_)
                                (letrec ((_%loop1814818172%_
                                          (lambda (_%hd1814618176%_
                                                   _%xarg1815218179%_)
                                            (if (gx#stx-pair? _%hd1814618176%_)
                                                (let ((_%e1814918182%_
                                                       (gx#syntax-e
                                                        _%hd1814618176%_)))
                                                  (let ((_%lp-hd1815018186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1814918182%_)))
                                                        (_%lp-tl1815118189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1814918182%_))))
                                                    (_%loop1814818172%_
                                                     _%lp-tl1815118189%_
                                                     (cons _%lp-hd1815018186%_
                                                           _%xarg1815218179%_))))
                                                (let ((_%xarg1815318192%_
                                                       (reverse _%xarg1815218179%_)))
                                                  ((lambda (_%L18196%_)
                                                     (let ()
                                                       (let* ((_%g1821318221%_
                                                               (lambda (_%g1821418217%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g1821418217%_)))
                      (_%g1821218291%_
                       (lambda (_%g1821418225%_)
                         ((lambda (_%L18228%_)
                            (let ()
                              (let* ((_%g1824118249%_
                                      (lambda (_%g1824218245%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1824218245%_)))
                                     (_%g1824018271%_
                                      (lambda (_%g1824218253%_)
                                        ((lambda (_%L18256%_)
                                           (let ()
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L18256%_
                                                          (cons _%L18228%_
                                                                '())))
                                              (gx#stx-source _%stx17942%_))))
                                         _%g1824218253%_))))
                                (_%g1824018271%_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%L18130%_
                                                    (foldr (lambda (_%g1827618279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g1827718282%_)
                     (cons _%g1827618279%_ _%g1827718282%_))
                   '()
                   _%L18081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (foldr (lambda (_%g1827418285%_
                                                              _%g1827518288%_)
                                                       (cons _%g1827418285%_
                                                             _%g1827518288%_))
                                                     '()
                                                     _%L18079%_)))
                                  (gx#stx-source _%stx17942%_))))))
                          _%g1821418225%_))))
                 (_%g1821218291%_
                  (gx#stx-wrap-source
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18082%_
                               (cons '()
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '_)
                                                       (foldr (lambda (_%g1830018303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1830118306%_)
                        (cons _%g1830018303%_ _%g1830118306%_))
                      '()
                      _%L18196%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (foldr (lambda (_%g1829818309%_
                                                 _%g1829918312%_)
                                          (cons _%g1829818309%_
                                                _%g1829918312%_))
                                        '()
                                        _%L18081%_)
                                 (foldr (lambda (_%g1829618315%_
                                                 _%g1829718318%_)
                                          (cons _%g1829618315%_
                                                _%g1829718318%_))
                                        '()
                                        _%L18079%_)))
                     (foldr (lambda (_%g1829418321%_ _%g1829518324%_)
                              (cons _%g1829418321%_ _%g1829518324%_))
                            '()
                            _%L18196%_))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'ref)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'identifier?)
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons (gx#datum->syntax '#f 'ref) '()))
                                 '()))
                     (cons _%L18130%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   (gx#stx-source _%stx17942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%xarg1815318192%_))))))
                                  (_%loop1814818172%_
                                   _%target1814518166%_
                                   '()))
                                (_%g1814218159%_ _%g1814318163%_)))))
                      (_%g1814218159%_ _%g1814318163%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1814118327%_
                                                   (gx#gentemps
                                                    (foldr (lambda (_%g1833018333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g1833118336%_)
                     (cons _%g1833018333%_ _%g1833118336%_))
                   '()
                   _%L18081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1811618127%_))))
                                   (_%g1811418339%_
                                    (gx#stx-identifier
                                     _%L18082%_
                                     _%L18082%_
                                     '"__impl")))
                                 (_%g1794517982%_ _%g1794617986%_)))
                           _%body1797618075%_
                           _%arg1796718045%_
                           _%hd1795718013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1797118055%_
                                                   _%target1796818049%_
                                                   '()))
                                                (_%g1794517982%_
                                                 _%g1794617986%_)))))
                                      (_%g1794517982%_ _%g1794617986%_)))))))
                  (_%loop1796218025%_ _%target1795918019%_ '()))
                (_%g1794517982%_ _%g1794617986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1794517982%_
                                               _%g1794617986%_))))
                                      (_%g1794517982%_ _%g1794617986%_))))
                              (_%g1794517982%_ _%g1794617986%_))))
                      (_%g1794517982%_ _%g1794617986%_)))))
          (_%g1794418343%_ _%stx17942%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18350%_)
        (let* ((_%__stx2088220883%_ _%$stx18350%_)
               (_%g1835518391%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2088220883%_))))
          (let ((_%__kont2088520886%_
                 (lambda (_%L18505%_ _%L18507%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18507%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18505%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2088720888%_
                 (lambda (_%L18428%_ _%L18430%_ _%L18431%_)
                   (cons _%L18431%_
                         (cons _%L18430%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18428%_ '()))
                                     '()))))))
            (let* ((_%__match2094720948%_
                    (lambda (_%e1837918398%_
                             _%hd1837818402%_
                             _%tl1837718405%_
                             _%e1838218408%_
                             _%hd1838118412%_
                             _%tl1838018415%_
                             _%e1838518418%_
                             _%hd1838418422%_
                             _%tl1838318425%_)
                      (let ((_%L18428%_ _%hd1838418422%_)
                            (_%L18430%_ _%hd1838118412%_)
                            (_%L18431%_ _%hd1837818402%_))
                        (if (and (gx#identifier? _%L18430%_)
                                 (gx#stx-datum? _%L18428%_))
                            (_%__kont2088720888%_
                             _%L18428%_
                             _%L18430%_
                             _%L18431%_)
                            (let () (declare (not safe)) (_%g1835518391%_))))))
                   (_%__match2092720928%_
                    (lambda (_%e1836118455%_
                             _%hd1836018459%_
                             _%tl1835918462%_
                             _%e1836418465%_
                             _%hd1836318469%_
                             _%tl1836218472%_
                             _%e1836718475%_
                             _%hd1836618479%_
                             _%tl1836518482%_
                             _%e1837018485%_
                             _%hd1836918489%_
                             _%tl1836818492%_
                             _%e1837318495%_
                             _%hd1837218499%_
                             _%tl1837118502%_)
                      (let ((_%L18505%_ _%hd1837218499%_)
                            (_%L18507%_ _%hd1836318469%_))
                        (if (gx#identifier? _%L18507%_)
                            (_%__kont2088520886%_ _%L18505%_ _%L18507%_)
                            (_%__match2094720948%_
                             _%e1836118455%_
                             _%hd1836018459%_
                             _%tl1835918462%_
                             _%e1836418465%_
                             _%hd1836318469%_
                             _%tl1836218472%_
                             _%e1836718475%_
                             _%hd1836618479%_
                             _%tl1836518482%_))))))
              (if (gx#stx-pair? _%__stx2088220883%_)
                  (let ((_%e1836118455%_ (gx#syntax-e _%__stx2088220883%_)))
                    (let ((_%tl1835918462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1836118455%_)))
                          (_%hd1836018459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1836118455%_))))
                      (if (gx#stx-pair? _%tl1835918462%_)
                          (let ((_%e1836418465%_
                                 (gx#syntax-e _%tl1835918462%_)))
                            (let ((_%tl1836218472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1836418465%_)))
                                  (_%hd1836318469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1836418465%_))))
                              (if (gx#stx-pair? _%tl1836218472%_)
                                  (let ((_%e1836718475%_
                                         (gx#syntax-e _%tl1836218472%_)))
                                    (let ((_%tl1836518482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1836718475%_)))
                                          (_%hd1836618479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1836718475%_))))
                                      (if (gx#stx-pair? _%hd1836618479%_)
                                          (let ((_%e1837018485%_
                                                 (gx#syntax-e
                                                  _%hd1836618479%_)))
                                            (let ((_%tl1836818492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1837018485%_)))
                                                  (_%hd1836918489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1837018485%_))))
                                              (if (gx#identifier?
                                                   _%hd1836918489%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21050_|
                                                       _%hd1836918489%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1836818492%_)
                                                          (let ((_%e1837318495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1836818492%_)))
                    (let ((_%tl1837118502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1837318495%_)))
                          (_%hd1837218499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1837318495%_))))
                      (if (gx#stx-null? _%tl1837118502%_)
                          (if (gx#stx-null? _%tl1836518482%_)
                              (_%__match2092720928%_
                               _%e1836118455%_
                               _%hd1836018459%_
                               _%tl1835918462%_
                               _%e1836418465%_
                               _%hd1836318469%_
                               _%tl1836218472%_
                               _%e1836718475%_
                               _%hd1836618479%_
                               _%tl1836518482%_
                               _%e1837018485%_
                               _%hd1836918489%_
                               _%tl1836818492%_
                               _%e1837318495%_
                               _%hd1837218499%_
                               _%tl1837118502%_)
                              (let () (declare (not safe)) (_%g1835518391%_)))
                          (if (gx#stx-null? _%tl1836518482%_)
                              (_%__match2094720948%_
                               _%e1836118455%_
                               _%hd1836018459%_
                               _%tl1835918462%_
                               _%e1836418465%_
                               _%hd1836318469%_
                               _%tl1836218472%_
                               _%e1836718475%_
                               _%hd1836618479%_
                               _%tl1836518482%_)
                              (let ()
                                (declare (not safe))
                                (_%g1835518391%_))))))
                  (if (gx#stx-null? _%tl1836518482%_)
                      (_%__match2094720948%_
                       _%e1836118455%_
                       _%hd1836018459%_
                       _%tl1835918462%_
                       _%e1836418465%_
                       _%hd1836318469%_
                       _%tl1836218472%_
                       _%e1836718475%_
                       _%hd1836618479%_
                       _%tl1836518482%_)
                      (let () (declare (not safe)) (_%g1835518391%_))))
              (if (gx#stx-null? _%tl1836518482%_)
                  (_%__match2094720948%_
                   _%e1836118455%_
                   _%hd1836018459%_
                   _%tl1835918462%_
                   _%e1836418465%_
                   _%hd1836318469%_
                   _%tl1836218472%_
                   _%e1836718475%_
                   _%hd1836618479%_
                   _%tl1836518482%_)
                  (let () (declare (not safe)) (_%g1835518391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1836518482%_)
                                                      (_%__match2094720948%_
                                                       _%e1836118455%_
                                                       _%hd1836018459%_
                                                       _%tl1835918462%_
                                                       _%e1836418465%_
                                                       _%hd1836318469%_
                                                       _%tl1836218472%_
                                                       _%e1836718475%_
                                                       _%hd1836618479%_
                                                       _%tl1836518482%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1835518391%_))))))
                                          (if (gx#stx-null? _%tl1836518482%_)
                                              (_%__match2094720948%_
                                               _%e1836118455%_
                                               _%hd1836018459%_
                                               _%tl1835918462%_
                                               _%e1836418465%_
                                               _%hd1836318469%_
                                               _%tl1836218472%_
                                               _%e1836718475%_
                                               _%hd1836618479%_
                                               _%tl1836518482%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1835518391%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1835518391%_)))))
                          (let () (declare (not safe)) (_%g1835518391%_)))))
                  (let () (declare (not safe)) (_%g1835518391%_))))))))))

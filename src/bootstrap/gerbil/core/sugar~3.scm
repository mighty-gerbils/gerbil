(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21069_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17736%_)
        (let* ((_%__stx2082120822%_ _%$stx17736%_)
               (_%g1774117780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2082120822%_))))
          (let ((_%__kont2082420825%_
                 (lambda (_%L17903%_ _%L17905%_ _%L17906%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17906%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17905%_
                                                 (foldr (lambda (_%g1792517928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1792617931%_)
                  (cons _%g1792517928%_ _%g1792617931%_))
                '()
                _%L17903%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2082820829%_
                 (lambda (_%L17817%_ _%L17819%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17819%_ (cons _%L17817%_ '()))))))
            (let* ((_%__match2087620877%_
                    (lambda (_%e1776817787%_
                             _%hd1776717791%_
                             _%tl1776617794%_
                             _%e1777117797%_
                             _%hd1777017801%_
                             _%tl1776917804%_
                             _%e1777417807%_
                             _%hd1777317811%_
                             _%tl1777217814%_)
                      (let ((_%L17817%_ _%hd1777317811%_)
                            (_%L17819%_ _%hd1777017801%_))
                        (if (gx#identifier? _%L17819%_)
                            (_%__kont2082820829%_ _%L17817%_ _%L17819%_)
                            (let () (declare (not safe)) (_%g1774117780%_))))))
                   (_%__match2086820869%_
                    (lambda (_%e1776817787%_
                             _%hd1776717791%_
                             _%tl1776617794%_
                             _%e1777117797%_
                             _%hd1777017801%_
                             _%tl1776917804%_)
                      (if (gx#stx-pair? _%tl1776917804%_)
                          (let ((_%e1777417807%_
                                 (gx#syntax-e _%tl1776917804%_)))
                            (let ((_%tl1777217814%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1777417807%_)))
                                  (_%hd1777317811%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1777417807%_))))
                              (if (gx#stx-null? _%tl1777217814%_)
                                  (_%__match2087620877%_
                                   _%e1776817787%_
                                   _%hd1776717791%_
                                   _%tl1776617794%_
                                   _%e1777117797%_
                                   _%hd1777017801%_
                                   _%tl1776917804%_
                                   _%e1777417807%_
                                   _%hd1777317811%_
                                   _%tl1777217814%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1774117780%_)))))
                          (let () (declare (not safe)) (_%g1774117780%_)))))
                   (_%__match2085620857%_
                    (lambda (_%e1774817843%_
                             _%hd1774717847%_
                             _%tl1774617850%_
                             _%e1775117853%_
                             _%hd1775017857%_
                             _%tl1774917860%_
                             _%e1775417863%_
                             _%hd1775317867%_
                             _%tl1775217870%_
                             _%__splice2082620827%_
                             _%target1775517873%_
                             _%tl1775717876%_)
                      (letrec ((_%loop1775817879%_
                                (lambda (_%hd1775617883%_ _%body1776217886%_)
                                  (if (gx#stx-pair? _%hd1775617883%_)
                                      (let ((_%e1775917889%_
                                             (gx#syntax-e _%hd1775617883%_)))
                                        (let ((_%lp-tl1776117896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1775917889%_)))
                                              (_%lp-hd1776017893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1775917889%_))))
                                          (_%loop1775817879%_
                                           _%lp-tl1776117896%_
                                           (cons _%lp-hd1776017893%_
                                                 _%body1776217886%_))))
                                      (let ((_%body1776317899%_
                                             (reverse _%body1776217886%_)))
                                        (let ((_%L17903%_ _%body1776317899%_)
                                              (_%L17905%_ _%tl1775217870%_)
                                              (_%L17906%_ _%hd1775317867%_))
                                          (if (gx#identifier? _%L17906%_)
                                              (_%__kont2082420825%_
                                               _%L17903%_
                                               _%L17905%_
                                               _%L17906%_)
                                              (_%__match2086820869%_
                                               _%e1774817843%_
                                               _%hd1774717847%_
                                               _%tl1774617850%_
                                               _%e1775117853%_
                                               _%hd1775017857%_
                                               _%tl1774917860%_))))))))
                        (_%loop1775817879%_ _%target1775517873%_ '())))))
              (if (gx#stx-pair? _%__stx2082120822%_)
                  (let ((_%e1774817843%_ (gx#syntax-e _%__stx2082120822%_)))
                    (let ((_%tl1774617850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1774817843%_)))
                          (_%hd1774717847%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1774817843%_))))
                      (if (gx#stx-pair? _%tl1774617850%_)
                          (let ((_%e1775117853%_
                                 (gx#syntax-e _%tl1774617850%_)))
                            (let ((_%tl1774917860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1775117853%_)))
                                  (_%hd1775017857%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1775117853%_))))
                              (if (gx#stx-pair? _%hd1775017857%_)
                                  (let ((_%e1775417863%_
                                         (gx#syntax-e _%hd1775017857%_)))
                                    (let ((_%tl1775217870%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1775417863%_)))
                                          (_%hd1775317867%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1775417863%_))))
                                      (if (gx#stx-pair/null? _%tl1774917860%_)
                                          (let ((_%__splice2082620827%_
                                                 (gx#syntax-split-splice
                                                  _%tl1774917860%_
                                                  '0)))
                                            (let ((_%tl1775717876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082620827%_
                                                      '1)))
                                                  (_%target1775517873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082620827%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1775717876%_)
                                                  (_%__match2085620857%_
                                                   _%e1774817843%_
                                                   _%hd1774717847%_
                                                   _%tl1774617850%_
                                                   _%e1775117853%_
                                                   _%hd1775017857%_
                                                   _%tl1774917860%_
                                                   _%e1775417863%_
                                                   _%hd1775317867%_
                                                   _%tl1775217870%_
                                                   _%__splice2082620827%_
                                                   _%target1775517873%_
                                                   _%tl1775717876%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1774917860%_)
                                                      (let ((_%e1777417807%_
                                                             (gx#syntax-e
                                                              _%tl1774917860%_)))
                                                        (let ((_%tl1777217814%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1777417807%_)))
                      (_%hd1777317811%_
                       (let () (declare (not safe)) (##car _%e1777417807%_))))
                  (if (gx#stx-null? _%tl1777217814%_)
                      (_%__match2087620877%_
                       _%e1774817843%_
                       _%hd1774717847%_
                       _%tl1774617850%_
                       _%e1775117853%_
                       _%hd1775017857%_
                       _%tl1774917860%_
                       _%e1777417807%_
                       _%hd1777317811%_
                       _%tl1777217814%_)
                      (let () (declare (not safe)) (_%g1774117780%_)))))
              (let () (declare (not safe)) (_%g1774117780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1774917860%_)
                                              (let ((_%e1777417807%_
                                                     (gx#syntax-e
                                                      _%tl1774917860%_)))
                                                (let ((_%tl1777217814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1777417807%_)))
                                                      (_%hd1777317811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1777417807%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1777217814%_)
                                                      (_%__match2087620877%_
                                                       _%e1774817843%_
                                                       _%hd1774717847%_
                                                       _%tl1774617850%_
                                                       _%e1775117853%_
                                                       _%hd1775017857%_
                                                       _%tl1774917860%_
                                                       _%e1777417807%_
                                                       _%hd1777317811%_
                                                       _%tl1777217814%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1774117780%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1774117780%_))))))
                                  (if (gx#stx-pair? _%tl1774917860%_)
                                      (let ((_%e1777417807%_
                                             (gx#syntax-e _%tl1774917860%_)))
                                        (let ((_%tl1777217814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1777417807%_)))
                                              (_%hd1777317811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1777417807%_))))
                                          (if (gx#stx-null? _%tl1777217814%_)
                                              (_%__match2087620877%_
                                               _%e1774817843%_
                                               _%hd1774717847%_
                                               _%tl1774617850%_
                                               _%e1775117853%_
                                               _%hd1775017857%_
                                               _%tl1774917860%_
                                               _%e1777417807%_
                                               _%hd1777317811%_
                                               _%tl1777217814%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1774117780%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1774117780%_))))))
                          (let () (declare (not safe)) (_%g1774117780%_)))))
                  (let () (declare (not safe)) (_%g1774117780%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17939%_)
        (let* ((_%g1794217979%_
                (lambda (_%g1794317975%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1794317975%_)))
               (_%g1794118340%_
                (lambda (_%g1794317983%_)
                  (if (gx#stx-pair? _%g1794317983%_)
                      (let ((_%e1794917986%_ (gx#syntax-e _%g1794317983%_)))
                        (let ((_%hd1794817990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1794917986%_)))
                              (_%tl1794717993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1794917986%_))))
                          (if (gx#stx-pair? _%tl1794717993%_)
                              (let ((_%e1795217996%_
                                     (gx#syntax-e _%tl1794717993%_)))
                                (let ((_%hd1795118000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1795217996%_)))
                                      (_%tl1795018003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1795217996%_))))
                                  (if (gx#stx-pair? _%hd1795118000%_)
                                      (let ((_%e1795518006%_
                                             (gx#syntax-e _%hd1795118000%_)))
                                        (let ((_%hd1795418010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1795518006%_)))
                                              (_%tl1795318013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1795518006%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1795318013%_)
                                              (let ((_g21063_
                                                     (gx#syntax-split-splice
                                                      _%tl1795318013%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21063_)
                                                               (##vector-length
                                                                _g21063_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21064_ 2)))
                (error "Context expects 2 values" _g21064_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1795618016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21063_
                                                            0)))
                                                        (_%tl1795818019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21063_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1795818019%_)
                                                        (letrec ((_%loop1795918022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1795718026%_ _%arg1796318029%_)
                            (if (gx#stx-pair? _%hd1795718026%_)
                                (let ((_%e1796018032%_
                                       (gx#syntax-e _%hd1795718026%_)))
                                  (let ((_%lp-hd1796118036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1796018032%_)))
                                        (_%lp-tl1796218039%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1796018032%_))))
                                    (_%loop1795918022%_
                                     _%lp-tl1796218039%_
                                     (cons _%lp-hd1796118036%_
                                           _%arg1796318029%_))))
                                (let ((_%arg1796418042%_
                                       (reverse _%arg1796318029%_)))
                                  (if (gx#stx-pair/null? _%tl1795018003%_)
                                      (let ((_g21065_
                                             (gx#syntax-split-splice
                                              _%tl1795018003%_
                                              '0)))
                                        (begin
                                          (let ((_g21066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21065_)
                                                       (##vector-length
                                                        _g21065_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21066_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21066_)))
                                          (let ((_%target1796518046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21065_ 0)))
                                                (_%tl1796718049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21065_ 1))))
                                            (if (gx#stx-null? _%tl1796718049%_)
                                                (letrec ((_%loop1796818052%_
                                                          (lambda (_%hd1796618056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1797218059%_)
                    (if (gx#stx-pair? _%hd1796618056%_)
                        (let ((_%e1796918062%_ (gx#syntax-e _%hd1796618056%_)))
                          (let ((_%lp-hd1797018066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1796918062%_)))
                                (_%lp-tl1797118069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1796918062%_))))
                            (_%loop1796818052%_
                             _%lp-tl1797118069%_
                             (cons _%lp-hd1797018066%_ _%body1797218059%_))))
                        (let ((_%body1797318072%_
                               (reverse _%body1797218059%_)))
                          ((lambda (_%L18076%_ _%L18078%_ _%L18079%_)
                             (if (and (gx#identifier? _%L18079%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1810318106%_
                                                       _%g1810418109%_)
                                                (cons _%g1810318106%_
                                                      _%g1810418109%_))
                                              '()
                                              _%L18078%_)))
                                 (let* ((_%g1811218120%_
                                         (lambda (_%g1811318116%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1811318116%_)))
                                        (_%g1811118336%_
                                         (lambda (_%g1811318124%_)
                                           ((lambda (_%L18127%_)
                                              (let ()
                                                (let* ((_%g1813918156%_
                                                        (lambda (_%g1814018152%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1814018152%_)))
                                                       (_%g1813818324%_
                                                        (lambda (_%g1814018160%_)
                                                          (if (gx#stx-pair/null?
                                                               _%g1814018160%_)
                                                              (let ((_g21067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%g1814018160%_ '0)))
                        (begin
                          (let ((_g21068_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g21067_)
                                       (##vector-length _g21067_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g21068_ 2)))
                                (error "Context expects 2 values" _g21068_)))
                          (let ((_%target1814218163%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g21067_ 0)))
                                (_%tl1814418166%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g21067_ 1))))
                            (if (gx#stx-null? _%tl1814418166%_)
                                (letrec ((_%loop1814518169%_
                                          (lambda (_%hd1814318173%_
                                                   _%xarg1814918176%_)
                                            (if (gx#stx-pair? _%hd1814318173%_)
                                                (let ((_%e1814618179%_
                                                       (gx#syntax-e
                                                        _%hd1814318173%_)))
                                                  (let ((_%lp-hd1814718183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1814618179%_)))
                                                        (_%lp-tl1814818186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1814618179%_))))
                                                    (_%loop1814518169%_
                                                     _%lp-tl1814818186%_
                                                     (cons _%lp-hd1814718183%_
                                                           _%xarg1814918176%_))))
                                                (let ((_%xarg1815018189%_
                                                       (reverse _%xarg1814918176%_)))
                                                  ((lambda (_%L18193%_)
                                                     (let ()
                                                       (let* ((_%g1821018218%_
                                                               (lambda (_%g1821118214%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g1821118214%_)))
                      (_%g1820918288%_
                       (lambda (_%g1821118222%_)
                         ((lambda (_%L18225%_)
                            (let ()
                              (let* ((_%g1823818246%_
                                      (lambda (_%g1823918242%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1823918242%_)))
                                     (_%g1823718268%_
                                      (lambda (_%g1823918250%_)
                                        ((lambda (_%L18253%_)
                                           (let ()
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L18253%_
                                                          (cons _%L18225%_
                                                                '())))
                                              (gx#stx-source _%stx17939%_))))
                                         _%g1823918250%_))))
                                (_%g1823718268%_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%L18127%_
                                                    (foldr (lambda (_%g1827318276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g1827418279%_)
                     (cons _%g1827318276%_ _%g1827418279%_))
                   '()
                   _%L18078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (foldr (lambda (_%g1827118282%_
                                                              _%g1827218285%_)
                                                       (cons _%g1827118282%_
                                                             _%g1827218285%_))
                                                     '()
                                                     _%L18076%_)))
                                  (gx#stx-source _%stx17939%_))))))
                          _%g1821118222%_))))
                 (_%g1820918288%_
                  (gx#stx-wrap-source
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18079%_
                               (cons '()
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '_)
                                                       (foldr (lambda (_%g1829718300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1829818303%_)
                        (cons _%g1829718300%_ _%g1829818303%_))
                      '()
                      _%L18193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (foldr (lambda (_%g1829518306%_
                                                 _%g1829618309%_)
                                          (cons _%g1829518306%_
                                                _%g1829618309%_))
                                        '()
                                        _%L18078%_)
                                 (foldr (lambda (_%g1829318312%_
                                                 _%g1829418315%_)
                                          (cons _%g1829318312%_
                                                _%g1829418315%_))
                                        '()
                                        _%L18076%_)))
                     (foldr (lambda (_%g1829118318%_ _%g1829218321%_)
                              (cons _%g1829118318%_ _%g1829218321%_))
                            '()
                            _%L18193%_))
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
                     (cons _%L18127%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   (gx#stx-source _%stx17939%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%xarg1815018189%_))))))
                                  (_%loop1814518169%_
                                   _%target1814218163%_
                                   '()))
                                (_%g1813918156%_ _%g1814018160%_)))))
                      (_%g1813918156%_ _%g1814018160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1813818324%_
                                                   (gx#gentemps
                                                    (foldr (lambda (_%g1832718330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g1832818333%_)
                     (cons _%g1832718330%_ _%g1832818333%_))
                   '()
                   _%L18078%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1811318124%_))))
                                   (_%g1811118336%_
                                    (gx#stx-identifier
                                     _%L18079%_
                                     _%L18079%_
                                     '"__impl")))
                                 (_%g1794217979%_ _%g1794317983%_)))
                           _%body1797318072%_
                           _%arg1796418042%_
                           _%hd1795418010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1796818052%_
                                                   _%target1796518046%_
                                                   '()))
                                                (_%g1794217979%_
                                                 _%g1794317983%_)))))
                                      (_%g1794217979%_ _%g1794317983%_)))))))
                  (_%loop1795918022%_ _%target1795618016%_ '()))
                (_%g1794217979%_ _%g1794317983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1794217979%_
                                               _%g1794317983%_))))
                                      (_%g1794217979%_ _%g1794317983%_))))
                              (_%g1794217979%_ _%g1794317983%_))))
                      (_%g1794217979%_ _%g1794317983%_)))))
          (_%g1794118340%_ _%stx17939%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18347%_)
        (let* ((_%__stx2087920880%_ _%$stx18347%_)
               (_%g1835218388%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2087920880%_))))
          (let ((_%__kont2088220883%_
                 (lambda (_%L18502%_ _%L18504%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18504%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18502%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2088420885%_
                 (lambda (_%L18425%_ _%L18427%_ _%L18428%_)
                   (cons _%L18428%_
                         (cons _%L18427%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18425%_ '()))
                                     '()))))))
            (let* ((_%__match2094420945%_
                    (lambda (_%e1837618395%_
                             _%hd1837518399%_
                             _%tl1837418402%_
                             _%e1837918405%_
                             _%hd1837818409%_
                             _%tl1837718412%_
                             _%e1838218415%_
                             _%hd1838118419%_
                             _%tl1838018422%_)
                      (let ((_%L18425%_ _%hd1838118419%_)
                            (_%L18427%_ _%hd1837818409%_)
                            (_%L18428%_ _%hd1837518399%_))
                        (if (and (gx#identifier? _%L18427%_)
                                 (gx#stx-datum? _%L18425%_))
                            (_%__kont2088420885%_
                             _%L18425%_
                             _%L18427%_
                             _%L18428%_)
                            (let () (declare (not safe)) (_%g1835218388%_))))))
                   (_%__match2092420925%_
                    (lambda (_%e1835818452%_
                             _%hd1835718456%_
                             _%tl1835618459%_
                             _%e1836118462%_
                             _%hd1836018466%_
                             _%tl1835918469%_
                             _%e1836418472%_
                             _%hd1836318476%_
                             _%tl1836218479%_
                             _%e1836718482%_
                             _%hd1836618486%_
                             _%tl1836518489%_
                             _%e1837018492%_
                             _%hd1836918496%_
                             _%tl1836818499%_)
                      (let ((_%L18502%_ _%hd1836918496%_)
                            (_%L18504%_ _%hd1836018466%_))
                        (if (gx#identifier? _%L18504%_)
                            (_%__kont2088220883%_ _%L18502%_ _%L18504%_)
                            (_%__match2094420945%_
                             _%e1835818452%_
                             _%hd1835718456%_
                             _%tl1835618459%_
                             _%e1836118462%_
                             _%hd1836018466%_
                             _%tl1835918469%_
                             _%e1836418472%_
                             _%hd1836318476%_
                             _%tl1836218479%_))))))
              (if (gx#stx-pair? _%__stx2087920880%_)
                  (let ((_%e1835818452%_ (gx#syntax-e _%__stx2087920880%_)))
                    (let ((_%tl1835618459%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1835818452%_)))
                          (_%hd1835718456%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1835818452%_))))
                      (if (gx#stx-pair? _%tl1835618459%_)
                          (let ((_%e1836118462%_
                                 (gx#syntax-e _%tl1835618459%_)))
                            (let ((_%tl1835918469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1836118462%_)))
                                  (_%hd1836018466%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1836118462%_))))
                              (if (gx#stx-pair? _%tl1835918469%_)
                                  (let ((_%e1836418472%_
                                         (gx#syntax-e _%tl1835918469%_)))
                                    (let ((_%tl1836218479%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1836418472%_)))
                                          (_%hd1836318476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1836418472%_))))
                                      (if (gx#stx-pair? _%hd1836318476%_)
                                          (let ((_%e1836718482%_
                                                 (gx#syntax-e
                                                  _%hd1836318476%_)))
                                            (let ((_%tl1836518489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1836718482%_)))
                                                  (_%hd1836618486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1836718482%_))))
                                              (if (gx#identifier?
                                                   _%hd1836618486%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21069_|
                                                       _%hd1836618486%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1836518489%_)
                                                          (let ((_%e1837018492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1836518489%_)))
                    (let ((_%tl1836818499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1837018492%_)))
                          (_%hd1836918496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1837018492%_))))
                      (if (gx#stx-null? _%tl1836818499%_)
                          (if (gx#stx-null? _%tl1836218479%_)
                              (_%__match2092420925%_
                               _%e1835818452%_
                               _%hd1835718456%_
                               _%tl1835618459%_
                               _%e1836118462%_
                               _%hd1836018466%_
                               _%tl1835918469%_
                               _%e1836418472%_
                               _%hd1836318476%_
                               _%tl1836218479%_
                               _%e1836718482%_
                               _%hd1836618486%_
                               _%tl1836518489%_
                               _%e1837018492%_
                               _%hd1836918496%_
                               _%tl1836818499%_)
                              (let () (declare (not safe)) (_%g1835218388%_)))
                          (if (gx#stx-null? _%tl1836218479%_)
                              (_%__match2094420945%_
                               _%e1835818452%_
                               _%hd1835718456%_
                               _%tl1835618459%_
                               _%e1836118462%_
                               _%hd1836018466%_
                               _%tl1835918469%_
                               _%e1836418472%_
                               _%hd1836318476%_
                               _%tl1836218479%_)
                              (let ()
                                (declare (not safe))
                                (_%g1835218388%_))))))
                  (if (gx#stx-null? _%tl1836218479%_)
                      (_%__match2094420945%_
                       _%e1835818452%_
                       _%hd1835718456%_
                       _%tl1835618459%_
                       _%e1836118462%_
                       _%hd1836018466%_
                       _%tl1835918469%_
                       _%e1836418472%_
                       _%hd1836318476%_
                       _%tl1836218479%_)
                      (let () (declare (not safe)) (_%g1835218388%_))))
              (if (gx#stx-null? _%tl1836218479%_)
                  (_%__match2094420945%_
                   _%e1835818452%_
                   _%hd1835718456%_
                   _%tl1835618459%_
                   _%e1836118462%_
                   _%hd1836018466%_
                   _%tl1835918469%_
                   _%e1836418472%_
                   _%hd1836318476%_
                   _%tl1836218479%_)
                  (let () (declare (not safe)) (_%g1835218388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1836218479%_)
                                                      (_%__match2094420945%_
                                                       _%e1835818452%_
                                                       _%hd1835718456%_
                                                       _%tl1835618459%_
                                                       _%e1836118462%_
                                                       _%hd1836018466%_
                                                       _%tl1835918469%_
                                                       _%e1836418472%_
                                                       _%hd1836318476%_
                                                       _%tl1836218479%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1835218388%_))))))
                                          (if (gx#stx-null? _%tl1836218479%_)
                                              (_%__match2094420945%_
                                               _%e1835818452%_
                                               _%hd1835718456%_
                                               _%tl1835618459%_
                                               _%e1836118462%_
                                               _%hd1836018466%_
                                               _%tl1835918469%_
                                               _%e1836418472%_
                                               _%hd1836318476%_
                                               _%tl1836218479%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1835218388%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1835218388%_)))))
                          (let () (declare (not safe)) (_%g1835218388%_)))))
                  (let () (declare (not safe)) (_%g1835218388%_))))))))))

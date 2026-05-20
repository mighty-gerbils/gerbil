(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21053_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17733%_)
        (let* ((_%__stx2081620817%_ _%$stx17733%_)
               (_%g1773817777%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2081620817%_))))
          (let ((_%__kont2081920820%_
                 (lambda (_%g1774017898%_ _%g1774117900%_ _%g1774217901%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1774217901%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g1774117900%_
                                                 (foldr (lambda (_%g1792017923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1792117926%_)
                  (cons _%g1792017923%_ _%g1792117926%_))
                '()
                _%g1774017898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2082320824%_
                 (lambda (_%g1776117814%_ _%g1776217816%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1776217816%_ (cons _%g1776117814%_ '()))))))
            (let* ((_%__match2087120872%_
                    (lambda (_%e1776317784%_
                             _%hd1776417788%_
                             _%tl1776517791%_
                             _%e1776617794%_
                             _%hd1776717798%_
                             _%tl1776817801%_
                             _%e1776917804%_
                             _%hd1777017808%_
                             _%tl1777117811%_)
                      (let ((_%g1776117814%_ _%hd1777017808%_)
                            (_%g1776217816%_ _%hd1776717798%_))
                        (if (gx#identifier? _%g1776217816%_)
                            (_%__kont2082320824%_
                             _%g1776117814%_
                             _%g1776217816%_)
                            (let () (declare (not safe)) (_%g1773817777%_))))))
                   (_%__match2086320864%_
                    (lambda (_%e1776317784%_
                             _%hd1776417788%_
                             _%tl1776517791%_
                             _%e1776617794%_
                             _%hd1776717798%_
                             _%tl1776817801%_)
                      (if (gx#stx-pair? _%tl1776817801%_)
                          (let ((_%e1776917804%_
                                 (gx#syntax-e _%tl1776817801%_)))
                            (let ((_%tl1777117811%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1776917804%_)))
                                  (_%hd1777017808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1776917804%_))))
                              (if (gx#stx-null? _%tl1777117811%_)
                                  (_%__match2087120872%_
                                   _%e1776317784%_
                                   _%hd1776417788%_
                                   _%tl1776517791%_
                                   _%e1776617794%_
                                   _%hd1776717798%_
                                   _%tl1776817801%_
                                   _%e1776917804%_
                                   _%hd1777017808%_
                                   _%tl1777117811%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1773817777%_)))))
                          (let () (declare (not safe)) (_%g1773817777%_)))))
                   (_%__match2085120852%_
                    (lambda (_%e1774317840%_
                             _%hd1774417844%_
                             _%tl1774517847%_
                             _%e1774617850%_
                             _%hd1774717854%_
                             _%tl1774817857%_
                             _%e1774917860%_
                             _%hd1775017864%_
                             _%tl1775117867%_
                             _%__splice2082120822%_
                             _%target1775217870%_
                             _%tl1775417873%_)
                      (letrec ((_%loop1775517876%_
                                (lambda (_%hd1775317880%_ _%body1775917883%_)
                                  (if (gx#stx-pair? _%hd1775317880%_)
                                      (let ((_%e1775617885%_
                                             (gx#syntax-e _%hd1775317880%_)))
                                        (let ((_%lp-tl1775817892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1775617885%_)))
                                              (_%lp-hd1775717889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1775617885%_))))
                                          (_%loop1775517876%_
                                           _%lp-tl1775817892%_
                                           (cons _%lp-hd1775717889%_
                                                 _%body1775917883%_))))
                                      (let ((_%body1776017895%_
                                             (reverse _%body1775917883%_)))
                                        (let ((_%g1774017898%_
                                               _%body1776017895%_)
                                              (_%g1774117900%_
                                               _%tl1775117867%_)
                                              (_%g1774217901%_
                                               _%hd1775017864%_))
                                          (if (gx#identifier? _%g1774217901%_)
                                              (_%__kont2081920820%_
                                               _%g1774017898%_
                                               _%g1774117900%_
                                               _%g1774217901%_)
                                              (_%__match2086320864%_
                                               _%e1774317840%_
                                               _%hd1774417844%_
                                               _%tl1774517847%_
                                               _%e1774617850%_
                                               _%hd1774717854%_
                                               _%tl1774817857%_))))))))
                        (_%loop1775517876%_ _%target1775217870%_ '())))))
              (if (gx#stx-pair? _%__stx2081620817%_)
                  (let ((_%e1774317840%_ (gx#syntax-e _%__stx2081620817%_)))
                    (let ((_%tl1774517847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1774317840%_)))
                          (_%hd1774417844%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1774317840%_))))
                      (if (gx#stx-pair? _%tl1774517847%_)
                          (let ((_%e1774617850%_
                                 (gx#syntax-e _%tl1774517847%_)))
                            (let ((_%tl1774817857%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1774617850%_)))
                                  (_%hd1774717854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1774617850%_))))
                              (if (gx#stx-pair? _%hd1774717854%_)
                                  (let ((_%e1774917860%_
                                         (gx#syntax-e _%hd1774717854%_)))
                                    (let ((_%tl1775117867%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1774917860%_)))
                                          (_%hd1775017864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1774917860%_))))
                                      (if (gx#stx-pair/null? _%tl1774817857%_)
                                          (let ((_%__splice2082120822%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1774817857%_
                                                  '0)))
                                            (let ((_%tl1775417873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082120822%_
                                                      '1)))
                                                  (_%target1775217870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082120822%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1775417873%_)
                                                  (_%__match2085120852%_
                                                   _%e1774317840%_
                                                   _%hd1774417844%_
                                                   _%tl1774517847%_
                                                   _%e1774617850%_
                                                   _%hd1774717854%_
                                                   _%tl1774817857%_
                                                   _%e1774917860%_
                                                   _%hd1775017864%_
                                                   _%tl1775117867%_
                                                   _%__splice2082120822%_
                                                   _%target1775217870%_
                                                   _%tl1775417873%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1774817857%_)
                                                      (let ((_%e1776917804%_
                                                             (gx#syntax-e
                                                              _%tl1774817857%_)))
                                                        (let ((_%tl1777117811%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1776917804%_)))
                      (_%hd1777017808%_
                       (let () (declare (not safe)) (##car _%e1776917804%_))))
                  (if (gx#stx-null? _%tl1777117811%_)
                      (_%__match2087120872%_
                       _%e1774317840%_
                       _%hd1774417844%_
                       _%tl1774517847%_
                       _%e1774617850%_
                       _%hd1774717854%_
                       _%tl1774817857%_
                       _%e1776917804%_
                       _%hd1777017808%_
                       _%tl1777117811%_)
                      (let () (declare (not safe)) (_%g1773817777%_)))))
              (let () (declare (not safe)) (_%g1773817777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1774817857%_)
                                              (let ((_%e1776917804%_
                                                     (gx#syntax-e
                                                      _%tl1774817857%_)))
                                                (let ((_%tl1777117811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1776917804%_)))
                                                      (_%hd1777017808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1776917804%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1777117811%_)
                                                      (_%__match2087120872%_
                                                       _%e1774317840%_
                                                       _%hd1774417844%_
                                                       _%tl1774517847%_
                                                       _%e1774617850%_
                                                       _%hd1774717854%_
                                                       _%tl1774817857%_
                                                       _%e1776917804%_
                                                       _%hd1777017808%_
                                                       _%tl1777117811%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1773817777%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1773817777%_))))))
                                  (if (gx#stx-pair? _%tl1774817857%_)
                                      (let ((_%e1776917804%_
                                             (gx#syntax-e _%tl1774817857%_)))
                                        (let ((_%tl1777117811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1776917804%_)))
                                              (_%hd1777017808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1776917804%_))))
                                          (if (gx#stx-null? _%tl1777117811%_)
                                              (_%__match2087120872%_
                                               _%e1774317840%_
                                               _%hd1774417844%_
                                               _%tl1774517847%_
                                               _%e1774617850%_
                                               _%hd1774717854%_
                                               _%tl1774817857%_
                                               _%e1776917804%_
                                               _%hd1777017808%_
                                               _%tl1777117811%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1773817777%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1773817777%_))))))
                          (let () (declare (not safe)) (_%g1773817777%_)))))
                  (let () (declare (not safe)) (_%g1773817777%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17934%_)
        (let* ((_%g1793717974%_
                (lambda (_%g1793817970%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1793817970%_)))
               (_%g1793618142%_
                (lambda (_%g1793817978%_)
                  (if (gx#stx-pair? _%g1793817978%_)
                      (let ((_%e1794217981%_ (gx#syntax-e _%g1793817978%_)))
                        (let ((_%hd1794317985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1794217981%_)))
                              (_%tl1794417988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1794217981%_))))
                          (if (gx#stx-pair? _%tl1794417988%_)
                              (let ((_%e1794517991%_
                                     (gx#syntax-e _%tl1794417988%_)))
                                (let ((_%hd1794617995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1794517991%_)))
                                      (_%tl1794717998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1794517991%_))))
                                  (if (gx#stx-pair? _%tl1794717998%_)
                                      (let ((_%e1794818001%_
                                             (gx#syntax-e _%tl1794717998%_)))
                                        (let ((_%hd1794918005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1794818001%_)))
                                              (_%tl1795018008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1794818001%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd1794918005%_)
                                              (let ((_g21049_
                                                     (gx#syntax-split-splice
                                                      _%hd1794918005%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21049_)
                                                               (##values-length
                                                                _g21049_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21050_ 2)))
                (error "Context expects 2 values" _g21050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1795118011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21049_
                                                            0)))
                                                        (_%tl1795318014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21049_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1795318014%_)
                                                        (letrec ((_%loop1795418017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1795218021%_ _%lit1795818024%_)
                            (if (gx#stx-pair? _%hd1795218021%_)
                                (let ((_%e1795518026%_
                                       (gx#syntax-e _%hd1795218021%_)))
                                  (let ((_%lp-hd1795618030%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1795518026%_)))
                                        (_%lp-tl1795718033%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1795518026%_))))
                                    (_%loop1795418017%_
                                     _%lp-tl1795718033%_
                                     (cons _%lp-hd1795618030%_
                                           _%lit1795818024%_))))
                                (let ((_%lit1795918036%_
                                       (reverse _%lit1795818024%_)))
                                  (if (gx#stx-pair/null? _%tl1795018008%_)
                                      (let ((_g21051_
                                             (gx#syntax-split-splice
                                              _%tl1795018008%_
                                              '0)))
                                        (begin
                                          (let ((_g21052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21051_)
                                                       (##values-length
                                                        _g21051_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21052_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21052_)))
                                          (let ((_%target1796018039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21051_ 0)))
                                                (_%tl1796218042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21051_ 1))))
                                            (if (gx#stx-null? _%tl1796218042%_)
                                                (letrec ((_%loop1796318045%_
                                                          (lambda (_%hd1796118049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause1796718052%_)
                    (if (gx#stx-pair? _%hd1796118049%_)
                        (let ((_%e1796418054%_ (gx#syntax-e _%hd1796118049%_)))
                          (let ((_%lp-hd1796518058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1796418054%_)))
                                (_%lp-tl1796618061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1796418054%_))))
                            (_%loop1796318045%_
                             _%lp-tl1796618061%_
                             (cons _%lp-hd1796518058%_ _%clause1796718052%_))))
                        (let* ((_%clause1796818064%_
                                (reverse _%clause1796718052%_))
                               (_%g1809518103%_
                                (lambda (_%g1809618099%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1809618099%_)))
                               (_%g1809418138%_
                                (lambda (_%g1809618107%_)
                                  (cons (gx#datum->syntax '#f 'defsyntax)
                                        (cons _%hd1794617995%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons _%g1809618107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons _%g1809618107%_
                                          (cons (foldr (lambda (_%g1812118126%_
                                                                _%g1812218129%_)
                                                         (cons _%g1812118126%_
                                                               _%g1812218129%_))
                                                       '()
                                                       _%lit1795918036%_)
                                                (foldr (lambda (_%g1812318132%_
                                                                _%g1812418135%_)
                                                         (cons _%g1812318132%_
                                                               _%g1812418135%_))
                                                       '()
                                                       _%clause1796818064%_))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                          (_%g1809418138%_
                           (gx#syntax-local-introduce 'stx)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1796318045%_
                                                   _%target1796018039%_
                                                   '()))
                                                (_%g1793717974%_
                                                 _%g1793817978%_)))))
                                      (_%g1793717974%_ _%g1793817978%_)))))))
                  (_%loop1795418017%_ _%target1795118011%_ '()))
                (_%g1793717974%_ _%g1793817978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1793717974%_
                                               _%g1793817978%_))))
                                      (_%g1793717974%_ _%g1793817978%_))))
                              (_%g1793717974%_ _%g1793817978%_))))
                      (_%g1793717974%_ _%g1793817978%_)))))
          (_%g1793618142%_ _%stx17934%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18148%_)
        (let* ((_%__stx2087420875%_ _%$stx18148%_)
               (_%g1815318189%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2087420875%_))))
          (let ((_%__kont2087720878%_
                 (lambda (_%g1815518303%_ _%g1815618305%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1815618305%_
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
                           (cons _%g1815518303%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2087920880%_
                 (lambda (_%g1817218226%_ _%g1817318228%_ _%g1817418229%_)
                   (cons _%g1817418229%_
                         (cons _%g1817318228%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1817218226%_ '()))
                                     '()))))))
            (let* ((_%__match2093920940%_
                    (lambda (_%e1817518196%_
                             _%hd1817618200%_
                             _%tl1817718203%_
                             _%e1817818206%_
                             _%hd1817918210%_
                             _%tl1818018213%_
                             _%e1818118216%_
                             _%hd1818218220%_
                             _%tl1818318223%_)
                      (let ((_%g1817218226%_ _%hd1818218220%_)
                            (_%g1817318228%_ _%hd1817918210%_)
                            (_%g1817418229%_ _%hd1817618200%_))
                        (if (and (gx#identifier? _%g1817318228%_)
                                 (gx#stx-datum? _%g1817218226%_))
                            (_%__kont2087920880%_
                             _%g1817218226%_
                             _%g1817318228%_
                             _%g1817418229%_)
                            (let () (declare (not safe)) (_%g1815318189%_))))))
                   (_%__match2091920920%_
                    (lambda (_%e1815718253%_
                             _%hd1815818257%_
                             _%tl1815918260%_
                             _%e1816018263%_
                             _%hd1816118267%_
                             _%tl1816218270%_
                             _%e1816318273%_
                             _%hd1816418277%_
                             _%tl1816518280%_
                             _%e1816618283%_
                             _%hd1816718287%_
                             _%tl1816818290%_
                             _%e1816918293%_
                             _%hd1817018297%_
                             _%tl1817118300%_)
                      (let ((_%g1815518303%_ _%hd1817018297%_)
                            (_%g1815618305%_ _%hd1816118267%_))
                        (if (gx#identifier? _%g1815618305%_)
                            (_%__kont2087720878%_
                             _%g1815518303%_
                             _%g1815618305%_)
                            (_%__match2093920940%_
                             _%e1815718253%_
                             _%hd1815818257%_
                             _%tl1815918260%_
                             _%e1816018263%_
                             _%hd1816118267%_
                             _%tl1816218270%_
                             _%e1816318273%_
                             _%hd1816418277%_
                             _%tl1816518280%_))))))
              (if (gx#stx-pair? _%__stx2087420875%_)
                  (let ((_%e1815718253%_ (gx#syntax-e _%__stx2087420875%_)))
                    (let ((_%tl1815918260%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1815718253%_)))
                          (_%hd1815818257%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1815718253%_))))
                      (if (gx#stx-pair? _%tl1815918260%_)
                          (let ((_%e1816018263%_
                                 (gx#syntax-e _%tl1815918260%_)))
                            (let ((_%tl1816218270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1816018263%_)))
                                  (_%hd1816118267%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1816018263%_))))
                              (if (gx#stx-pair? _%tl1816218270%_)
                                  (let ((_%e1816318273%_
                                         (gx#syntax-e _%tl1816218270%_)))
                                    (let ((_%tl1816518280%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1816318273%_)))
                                          (_%hd1816418277%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1816318273%_))))
                                      (if (gx#stx-pair? _%hd1816418277%_)
                                          (let ((_%e1816618283%_
                                                 (gx#syntax-e
                                                  _%hd1816418277%_)))
                                            (let ((_%tl1816818290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1816618283%_)))
                                                  (_%hd1816718287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1816618283%_))))
                                              (if (gx#identifier?
                                                   _%hd1816718287%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21053_|
                                                       _%hd1816718287%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1816818290%_)
                                                          (let ((_%e1816918293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1816818290%_)))
                    (let ((_%tl1817118300%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1816918293%_)))
                          (_%hd1817018297%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1816918293%_))))
                      (if (gx#stx-null? _%tl1817118300%_)
                          (if (gx#stx-null? _%tl1816518280%_)
                              (_%__match2091920920%_
                               _%e1815718253%_
                               _%hd1815818257%_
                               _%tl1815918260%_
                               _%e1816018263%_
                               _%hd1816118267%_
                               _%tl1816218270%_
                               _%e1816318273%_
                               _%hd1816418277%_
                               _%tl1816518280%_
                               _%e1816618283%_
                               _%hd1816718287%_
                               _%tl1816818290%_
                               _%e1816918293%_
                               _%hd1817018297%_
                               _%tl1817118300%_)
                              (let () (declare (not safe)) (_%g1815318189%_)))
                          (if (gx#stx-null? _%tl1816518280%_)
                              (_%__match2093920940%_
                               _%e1815718253%_
                               _%hd1815818257%_
                               _%tl1815918260%_
                               _%e1816018263%_
                               _%hd1816118267%_
                               _%tl1816218270%_
                               _%e1816318273%_
                               _%hd1816418277%_
                               _%tl1816518280%_)
                              (let ()
                                (declare (not safe))
                                (_%g1815318189%_))))))
                  (if (gx#stx-null? _%tl1816518280%_)
                      (_%__match2093920940%_
                       _%e1815718253%_
                       _%hd1815818257%_
                       _%tl1815918260%_
                       _%e1816018263%_
                       _%hd1816118267%_
                       _%tl1816218270%_
                       _%e1816318273%_
                       _%hd1816418277%_
                       _%tl1816518280%_)
                      (let () (declare (not safe)) (_%g1815318189%_))))
              (if (gx#stx-null? _%tl1816518280%_)
                  (_%__match2093920940%_
                   _%e1815718253%_
                   _%hd1815818257%_
                   _%tl1815918260%_
                   _%e1816018263%_
                   _%hd1816118267%_
                   _%tl1816218270%_
                   _%e1816318273%_
                   _%hd1816418277%_
                   _%tl1816518280%_)
                  (let () (declare (not safe)) (_%g1815318189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1816518280%_)
                                                      (_%__match2093920940%_
                                                       _%e1815718253%_
                                                       _%hd1815818257%_
                                                       _%tl1815918260%_
                                                       _%e1816018263%_
                                                       _%hd1816118267%_
                                                       _%tl1816218270%_
                                                       _%e1816318273%_
                                                       _%hd1816418277%_
                                                       _%tl1816518280%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1815318189%_))))))
                                          (if (gx#stx-null? _%tl1816518280%_)
                                              (_%__match2093920940%_
                                               _%e1815718253%_
                                               _%hd1815818257%_
                                               _%tl1815918260%_
                                               _%e1816018263%_
                                               _%hd1816118267%_
                                               _%tl1816218270%_
                                               _%e1816318273%_
                                               _%hd1816418277%_
                                               _%tl1816518280%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1815318189%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1815318189%_)))))
                          (let () (declare (not safe)) (_%g1815318189%_)))))
                  (let () (declare (not safe)) (_%g1815318189%_))))))))))

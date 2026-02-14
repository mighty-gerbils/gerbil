(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21054_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17734%_)
        (let* ((_%__stx2081720818%_ _%$stx17734%_)
               (_%g1773917778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2081720818%_))))
          (let ((_%__kont2082020821%_
                 (lambda (_%g1774117899%_ _%g1774217901%_ _%g1774317902%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1774317902%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g1774217901%_
                                                 (foldr (lambda (_%g1792117924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1792217927%_)
                  (cons _%g1792117924%_ _%g1792217927%_))
                '()
                _%g1774117899%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2082420825%_
                 (lambda (_%g1776217815%_ _%g1776317817%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1776317817%_ (cons _%g1776217815%_ '()))))))
            (let* ((_%__match2087220873%_
                    (lambda (_%e1776417785%_
                             _%hd1776517789%_
                             _%tl1776617792%_
                             _%e1776717795%_
                             _%hd1776817799%_
                             _%tl1776917802%_
                             _%e1777017805%_
                             _%hd1777117809%_
                             _%tl1777217812%_)
                      (let ((_%g1776217815%_ _%hd1777117809%_)
                            (_%g1776317817%_ _%hd1776817799%_))
                        (if (gx#identifier? _%g1776317817%_)
                            (_%__kont2082420825%_
                             _%g1776217815%_
                             _%g1776317817%_)
                            (let () (declare (not safe)) (_%g1773917778%_))))))
                   (_%__match2086420865%_
                    (lambda (_%e1776417785%_
                             _%hd1776517789%_
                             _%tl1776617792%_
                             _%e1776717795%_
                             _%hd1776817799%_
                             _%tl1776917802%_)
                      (if (gx#stx-pair? _%tl1776917802%_)
                          (let ((_%e1777017805%_
                                 (gx#syntax-e _%tl1776917802%_)))
                            (let ((_%tl1777217812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1777017805%_)))
                                  (_%hd1777117809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1777017805%_))))
                              (if (gx#stx-null? _%tl1777217812%_)
                                  (_%__match2087220873%_
                                   _%e1776417785%_
                                   _%hd1776517789%_
                                   _%tl1776617792%_
                                   _%e1776717795%_
                                   _%hd1776817799%_
                                   _%tl1776917802%_
                                   _%e1777017805%_
                                   _%hd1777117809%_
                                   _%tl1777217812%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1773917778%_)))))
                          (let () (declare (not safe)) (_%g1773917778%_)))))
                   (_%__match2085220853%_
                    (lambda (_%e1774417841%_
                             _%hd1774517845%_
                             _%tl1774617848%_
                             _%e1774717851%_
                             _%hd1774817855%_
                             _%tl1774917858%_
                             _%e1775017861%_
                             _%hd1775117865%_
                             _%tl1775217868%_
                             _%__splice2082220823%_
                             _%target1775317871%_
                             _%tl1775517874%_)
                      (letrec ((_%loop1775617877%_
                                (lambda (_%hd1775417881%_ _%body1776017884%_)
                                  (if (gx#stx-pair? _%hd1775417881%_)
                                      (let ((_%e1775717886%_
                                             (gx#syntax-e _%hd1775417881%_)))
                                        (let ((_%lp-tl1775917893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1775717886%_)))
                                              (_%lp-hd1775817890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1775717886%_))))
                                          (_%loop1775617877%_
                                           _%lp-tl1775917893%_
                                           (cons _%lp-hd1775817890%_
                                                 _%body1776017884%_))))
                                      (let ((_%body1776117896%_
                                             (reverse _%body1776017884%_)))
                                        (let ((_%g1774117899%_
                                               _%body1776117896%_)
                                              (_%g1774217901%_
                                               _%tl1775217868%_)
                                              (_%g1774317902%_
                                               _%hd1775117865%_))
                                          (if (gx#identifier? _%g1774317902%_)
                                              (_%__kont2082020821%_
                                               _%g1774117899%_
                                               _%g1774217901%_
                                               _%g1774317902%_)
                                              (_%__match2086420865%_
                                               _%e1774417841%_
                                               _%hd1774517845%_
                                               _%tl1774617848%_
                                               _%e1774717851%_
                                               _%hd1774817855%_
                                               _%tl1774917858%_))))))))
                        (_%loop1775617877%_ _%target1775317871%_ '())))))
              (if (gx#stx-pair? _%__stx2081720818%_)
                  (let ((_%e1774417841%_ (gx#syntax-e _%__stx2081720818%_)))
                    (let ((_%tl1774617848%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1774417841%_)))
                          (_%hd1774517845%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1774417841%_))))
                      (if (gx#stx-pair? _%tl1774617848%_)
                          (let ((_%e1774717851%_
                                 (gx#syntax-e _%tl1774617848%_)))
                            (let ((_%tl1774917858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1774717851%_)))
                                  (_%hd1774817855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1774717851%_))))
                              (if (gx#stx-pair? _%hd1774817855%_)
                                  (let ((_%e1775017861%_
                                         (gx#syntax-e _%hd1774817855%_)))
                                    (let ((_%tl1775217868%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1775017861%_)))
                                          (_%hd1775117865%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1775017861%_))))
                                      (if (gx#stx-pair/null? _%tl1774917858%_)
                                          (let ((_%__splice2082220823%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1774917858%_
                                                  '0)))
                                            (let ((_%tl1775517874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082220823%_
                                                      '1)))
                                                  (_%target1775317871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082220823%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1775517874%_)
                                                  (_%__match2085220853%_
                                                   _%e1774417841%_
                                                   _%hd1774517845%_
                                                   _%tl1774617848%_
                                                   _%e1774717851%_
                                                   _%hd1774817855%_
                                                   _%tl1774917858%_
                                                   _%e1775017861%_
                                                   _%hd1775117865%_
                                                   _%tl1775217868%_
                                                   _%__splice2082220823%_
                                                   _%target1775317871%_
                                                   _%tl1775517874%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1774917858%_)
                                                      (let ((_%e1777017805%_
                                                             (gx#syntax-e
                                                              _%tl1774917858%_)))
                                                        (let ((_%tl1777217812%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1777017805%_)))
                      (_%hd1777117809%_
                       (let () (declare (not safe)) (##car _%e1777017805%_))))
                  (if (gx#stx-null? _%tl1777217812%_)
                      (_%__match2087220873%_
                       _%e1774417841%_
                       _%hd1774517845%_
                       _%tl1774617848%_
                       _%e1774717851%_
                       _%hd1774817855%_
                       _%tl1774917858%_
                       _%e1777017805%_
                       _%hd1777117809%_
                       _%tl1777217812%_)
                      (let () (declare (not safe)) (_%g1773917778%_)))))
              (let () (declare (not safe)) (_%g1773917778%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1774917858%_)
                                              (let ((_%e1777017805%_
                                                     (gx#syntax-e
                                                      _%tl1774917858%_)))
                                                (let ((_%tl1777217812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1777017805%_)))
                                                      (_%hd1777117809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1777017805%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1777217812%_)
                                                      (_%__match2087220873%_
                                                       _%e1774417841%_
                                                       _%hd1774517845%_
                                                       _%tl1774617848%_
                                                       _%e1774717851%_
                                                       _%hd1774817855%_
                                                       _%tl1774917858%_
                                                       _%e1777017805%_
                                                       _%hd1777117809%_
                                                       _%tl1777217812%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1773917778%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1773917778%_))))))
                                  (if (gx#stx-pair? _%tl1774917858%_)
                                      (let ((_%e1777017805%_
                                             (gx#syntax-e _%tl1774917858%_)))
                                        (let ((_%tl1777217812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1777017805%_)))
                                              (_%hd1777117809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1777017805%_))))
                                          (if (gx#stx-null? _%tl1777217812%_)
                                              (_%__match2087220873%_
                                               _%e1774417841%_
                                               _%hd1774517845%_
                                               _%tl1774617848%_
                                               _%e1774717851%_
                                               _%hd1774817855%_
                                               _%tl1774917858%_
                                               _%e1777017805%_
                                               _%hd1777117809%_
                                               _%tl1777217812%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1773917778%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1773917778%_))))))
                          (let () (declare (not safe)) (_%g1773917778%_)))))
                  (let () (declare (not safe)) (_%g1773917778%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17935%_)
        (let* ((_%g1793817975%_
                (lambda (_%g1793917971%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1793917971%_)))
               (_%g1793718143%_
                (lambda (_%g1793917979%_)
                  (if (gx#stx-pair? _%g1793917979%_)
                      (let ((_%e1794317982%_ (gx#syntax-e _%g1793917979%_)))
                        (let ((_%hd1794417986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1794317982%_)))
                              (_%tl1794517989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1794317982%_))))
                          (if (gx#stx-pair? _%tl1794517989%_)
                              (let ((_%e1794617992%_
                                     (gx#syntax-e _%tl1794517989%_)))
                                (let ((_%hd1794717996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1794617992%_)))
                                      (_%tl1794817999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1794617992%_))))
                                  (if (gx#stx-pair? _%tl1794817999%_)
                                      (let ((_%e1794918002%_
                                             (gx#syntax-e _%tl1794817999%_)))
                                        (let ((_%hd1795018006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1794918002%_)))
                                              (_%tl1795118009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1794918002%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd1795018006%_)
                                              (let ((_g21050_
                                                     (gx#syntax-split-splice
                                                      _%hd1795018006%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21050_)
                                                               (##values-length
                                                                _g21050_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21051_ 2)))
                (error "Context expects 2 values" _g21051_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1795218012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21050_
                                                            0)))
                                                        (_%tl1795418015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21050_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1795418015%_)
                                                        (letrec ((_%loop1795518018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1795318022%_ _%lit1795918025%_)
                            (if (gx#stx-pair? _%hd1795318022%_)
                                (let ((_%e1795618027%_
                                       (gx#syntax-e _%hd1795318022%_)))
                                  (let ((_%lp-hd1795718031%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1795618027%_)))
                                        (_%lp-tl1795818034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1795618027%_))))
                                    (_%loop1795518018%_
                                     _%lp-tl1795818034%_
                                     (cons _%lp-hd1795718031%_
                                           _%lit1795918025%_))))
                                (let ((_%lit1796018037%_
                                       (reverse _%lit1795918025%_)))
                                  (if (gx#stx-pair/null? _%tl1795118009%_)
                                      (let ((_g21052_
                                             (gx#syntax-split-splice
                                              _%tl1795118009%_
                                              '0)))
                                        (begin
                                          (let ((_g21053_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21052_)
                                                       (##values-length
                                                        _g21052_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21053_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21053_)))
                                          (let ((_%target1796118040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21052_ 0)))
                                                (_%tl1796318043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21052_ 1))))
                                            (if (gx#stx-null? _%tl1796318043%_)
                                                (letrec ((_%loop1796418046%_
                                                          (lambda (_%hd1796218050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause1796818053%_)
                    (if (gx#stx-pair? _%hd1796218050%_)
                        (let ((_%e1796518055%_ (gx#syntax-e _%hd1796218050%_)))
                          (let ((_%lp-hd1796618059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1796518055%_)))
                                (_%lp-tl1796718062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1796518055%_))))
                            (_%loop1796418046%_
                             _%lp-tl1796718062%_
                             (cons _%lp-hd1796618059%_ _%clause1796818053%_))))
                        (let ((_%clause1796918065%_
                               (reverse _%clause1796818053%_)))
                          ((lambda (_%g1794018068%_
                                    _%g1794118070%_
                                    _%g1794218071%_)
                             (let* ((_%g1809618104%_
                                     (lambda (_%g1809718100%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g1809718100%_)))
                                    (_%g1809518139%_
                                     (lambda (_%g1809718108%_)
                                       ((lambda (_%g1809818111%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g1794218071%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g1809818111%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g1809818111%_
                                                  (cons (foldr (lambda (_%g1812218127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g1812318130%_)
                         (cons _%g1812218127%_ _%g1812318130%_))
                       '()
                       _%g1794118070%_)
                (foldr (lambda (_%g1812418133%_ _%g1812518136%_)
                         (cons _%g1812418133%_ _%g1812518136%_))
                       '()
                       _%g1794018068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g1809718108%_))))
                               (_%g1809518139%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause1796918065%_
                           _%lit1796018037%_
                           _%hd1794717996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1796418046%_
                                                   _%target1796118040%_
                                                   '()))
                                                (_%g1793817975%_
                                                 _%g1793917979%_)))))
                                      (_%g1793817975%_ _%g1793917979%_)))))))
                  (_%loop1795518018%_ _%target1795218012%_ '()))
                (_%g1793817975%_ _%g1793917979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1793817975%_
                                               _%g1793917979%_))))
                                      (_%g1793817975%_ _%g1793917979%_))))
                              (_%g1793817975%_ _%g1793917979%_))))
                      (_%g1793817975%_ _%g1793917979%_)))))
          (_%g1793718143%_ _%stx17935%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18149%_)
        (let* ((_%__stx2087520876%_ _%$stx18149%_)
               (_%g1815418190%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2087520876%_))))
          (let ((_%__kont2087820879%_
                 (lambda (_%g1815618304%_ _%g1815718306%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1815718306%_
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
                           (cons _%g1815618304%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2088020881%_
                 (lambda (_%g1817318227%_ _%g1817418229%_ _%g1817518230%_)
                   (cons _%g1817518230%_
                         (cons _%g1817418229%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1817318227%_ '()))
                                     '()))))))
            (let* ((_%__match2094020941%_
                    (lambda (_%e1817618197%_
                             _%hd1817718201%_
                             _%tl1817818204%_
                             _%e1817918207%_
                             _%hd1818018211%_
                             _%tl1818118214%_
                             _%e1818218217%_
                             _%hd1818318221%_
                             _%tl1818418224%_)
                      (let ((_%g1817318227%_ _%hd1818318221%_)
                            (_%g1817418229%_ _%hd1818018211%_)
                            (_%g1817518230%_ _%hd1817718201%_))
                        (if (and (gx#identifier? _%g1817418229%_)
                                 (gx#stx-datum? _%g1817318227%_))
                            (_%__kont2088020881%_
                             _%g1817318227%_
                             _%g1817418229%_
                             _%g1817518230%_)
                            (let () (declare (not safe)) (_%g1815418190%_))))))
                   (_%__match2092020921%_
                    (lambda (_%e1815818254%_
                             _%hd1815918258%_
                             _%tl1816018261%_
                             _%e1816118264%_
                             _%hd1816218268%_
                             _%tl1816318271%_
                             _%e1816418274%_
                             _%hd1816518278%_
                             _%tl1816618281%_
                             _%e1816718284%_
                             _%hd1816818288%_
                             _%tl1816918291%_
                             _%e1817018294%_
                             _%hd1817118298%_
                             _%tl1817218301%_)
                      (let ((_%g1815618304%_ _%hd1817118298%_)
                            (_%g1815718306%_ _%hd1816218268%_))
                        (if (gx#identifier? _%g1815718306%_)
                            (_%__kont2087820879%_
                             _%g1815618304%_
                             _%g1815718306%_)
                            (_%__match2094020941%_
                             _%e1815818254%_
                             _%hd1815918258%_
                             _%tl1816018261%_
                             _%e1816118264%_
                             _%hd1816218268%_
                             _%tl1816318271%_
                             _%e1816418274%_
                             _%hd1816518278%_
                             _%tl1816618281%_))))))
              (if (gx#stx-pair? _%__stx2087520876%_)
                  (let ((_%e1815818254%_ (gx#syntax-e _%__stx2087520876%_)))
                    (let ((_%tl1816018261%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1815818254%_)))
                          (_%hd1815918258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1815818254%_))))
                      (if (gx#stx-pair? _%tl1816018261%_)
                          (let ((_%e1816118264%_
                                 (gx#syntax-e _%tl1816018261%_)))
                            (let ((_%tl1816318271%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1816118264%_)))
                                  (_%hd1816218268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1816118264%_))))
                              (if (gx#stx-pair? _%tl1816318271%_)
                                  (let ((_%e1816418274%_
                                         (gx#syntax-e _%tl1816318271%_)))
                                    (let ((_%tl1816618281%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1816418274%_)))
                                          (_%hd1816518278%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1816418274%_))))
                                      (if (gx#stx-pair? _%hd1816518278%_)
                                          (let ((_%e1816718284%_
                                                 (gx#syntax-e
                                                  _%hd1816518278%_)))
                                            (let ((_%tl1816918291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1816718284%_)))
                                                  (_%hd1816818288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1816718284%_))))
                                              (if (gx#identifier?
                                                   _%hd1816818288%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21054_|
                                                       _%hd1816818288%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1816918291%_)
                                                          (let ((_%e1817018294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1816918291%_)))
                    (let ((_%tl1817218301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1817018294%_)))
                          (_%hd1817118298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1817018294%_))))
                      (if (gx#stx-null? _%tl1817218301%_)
                          (if (gx#stx-null? _%tl1816618281%_)
                              (_%__match2092020921%_
                               _%e1815818254%_
                               _%hd1815918258%_
                               _%tl1816018261%_
                               _%e1816118264%_
                               _%hd1816218268%_
                               _%tl1816318271%_
                               _%e1816418274%_
                               _%hd1816518278%_
                               _%tl1816618281%_
                               _%e1816718284%_
                               _%hd1816818288%_
                               _%tl1816918291%_
                               _%e1817018294%_
                               _%hd1817118298%_
                               _%tl1817218301%_)
                              (let () (declare (not safe)) (_%g1815418190%_)))
                          (if (gx#stx-null? _%tl1816618281%_)
                              (_%__match2094020941%_
                               _%e1815818254%_
                               _%hd1815918258%_
                               _%tl1816018261%_
                               _%e1816118264%_
                               _%hd1816218268%_
                               _%tl1816318271%_
                               _%e1816418274%_
                               _%hd1816518278%_
                               _%tl1816618281%_)
                              (let ()
                                (declare (not safe))
                                (_%g1815418190%_))))))
                  (if (gx#stx-null? _%tl1816618281%_)
                      (_%__match2094020941%_
                       _%e1815818254%_
                       _%hd1815918258%_
                       _%tl1816018261%_
                       _%e1816118264%_
                       _%hd1816218268%_
                       _%tl1816318271%_
                       _%e1816418274%_
                       _%hd1816518278%_
                       _%tl1816618281%_)
                      (let () (declare (not safe)) (_%g1815418190%_))))
              (if (gx#stx-null? _%tl1816618281%_)
                  (_%__match2094020941%_
                   _%e1815818254%_
                   _%hd1815918258%_
                   _%tl1816018261%_
                   _%e1816118264%_
                   _%hd1816218268%_
                   _%tl1816318271%_
                   _%e1816418274%_
                   _%hd1816518278%_
                   _%tl1816618281%_)
                  (let () (declare (not safe)) (_%g1815418190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1816618281%_)
                                                      (_%__match2094020941%_
                                                       _%e1815818254%_
                                                       _%hd1815918258%_
                                                       _%tl1816018261%_
                                                       _%e1816118264%_
                                                       _%hd1816218268%_
                                                       _%tl1816318271%_
                                                       _%e1816418274%_
                                                       _%hd1816518278%_
                                                       _%tl1816618281%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1815418190%_))))))
                                          (if (gx#stx-null? _%tl1816618281%_)
                                              (_%__match2094020941%_
                                               _%e1815818254%_
                                               _%hd1815918258%_
                                               _%tl1816018261%_
                                               _%e1816118264%_
                                               _%hd1816218268%_
                                               _%tl1816318271%_
                                               _%e1816418274%_
                                               _%hd1816518278%_
                                               _%tl1816618281%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1815418190%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1815418190%_)))))
                          (let () (declare (not safe)) (_%g1815418190%_)))))
                  (let () (declare (not safe)) (_%g1815418190%_))))))))))

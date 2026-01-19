(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g20976_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17546%_)
        (let* ((_%__stx2073720738%_ _%$stx17546%_)
               (_%g1755117590%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2073720738%_))))
          (let ((_%__kont2074020741%_
                 (lambda (_%L17713%_ _%L17715%_ _%L17716%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17716%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17715%_
                                                 (foldr (lambda (_%g1773517738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1773617741%_)
                  (cons _%g1773517738%_ _%g1773617741%_))
                '()
                _%L17713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2074420745%_
                 (lambda (_%L17627%_ _%L17629%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17629%_ (cons _%L17627%_ '()))))))
            (let* ((_%__match2079220793%_
                    (lambda (_%e1757617597%_
                             _%hd1757717601%_
                             _%tl1757817604%_
                             _%e1757917607%_
                             _%hd1758017611%_
                             _%tl1758117614%_
                             _%e1758217617%_
                             _%hd1758317621%_
                             _%tl1758417624%_)
                      (let ((_%L17627%_ _%hd1758317621%_)
                            (_%L17629%_ _%hd1758017611%_))
                        (if (gx#identifier? _%L17629%_)
                            (_%__kont2074420745%_ _%L17627%_ _%L17629%_)
                            (let () (declare (not safe)) (_%g1755117590%_))))))
                   (_%__match2078420785%_
                    (lambda (_%e1757617597%_
                             _%hd1757717601%_
                             _%tl1757817604%_
                             _%e1757917607%_
                             _%hd1758017611%_
                             _%tl1758117614%_)
                      (if (gx#stx-pair? _%tl1758117614%_)
                          (let ((_%e1758217617%_
                                 (gx#syntax-e _%tl1758117614%_)))
                            (let ((_%tl1758417624%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1758217617%_)))
                                  (_%hd1758317621%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1758217617%_))))
                              (if (gx#stx-null? _%tl1758417624%_)
                                  (_%__match2079220793%_
                                   _%e1757617597%_
                                   _%hd1757717601%_
                                   _%tl1757817604%_
                                   _%e1757917607%_
                                   _%hd1758017611%_
                                   _%tl1758117614%_
                                   _%e1758217617%_
                                   _%hd1758317621%_
                                   _%tl1758417624%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1755117590%_)))))
                          (let () (declare (not safe)) (_%g1755117590%_)))))
                   (_%__match2077220773%_
                    (lambda (_%e1755617653%_
                             _%hd1755717657%_
                             _%tl1755817660%_
                             _%e1755917663%_
                             _%hd1756017667%_
                             _%tl1756117670%_
                             _%e1756217673%_
                             _%hd1756317677%_
                             _%tl1756417680%_
                             _%__splice2074220743%_
                             _%target1756517683%_
                             _%tl1756717686%_)
                      (letrec ((_%loop1756817689%_
                                (lambda (_%hd1756617693%_ _%body1757217696%_)
                                  (if (gx#stx-pair? _%hd1756617693%_)
                                      (let ((_%e1756917699%_
                                             (gx#syntax-e _%hd1756617693%_)))
                                        (let ((_%lp-tl1757117706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1756917699%_)))
                                              (_%lp-hd1757017703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1756917699%_))))
                                          (_%loop1756817689%_
                                           _%lp-tl1757117706%_
                                           (cons _%lp-hd1757017703%_
                                                 _%body1757217696%_))))
                                      (let ((_%body1757317709%_
                                             (reverse _%body1757217696%_)))
                                        (let ((_%L17713%_ _%body1757317709%_)
                                              (_%L17715%_ _%tl1756417680%_)
                                              (_%L17716%_ _%hd1756317677%_))
                                          (if (gx#identifier? _%L17716%_)
                                              (_%__kont2074020741%_
                                               _%L17713%_
                                               _%L17715%_
                                               _%L17716%_)
                                              (_%__match2078420785%_
                                               _%e1755617653%_
                                               _%hd1755717657%_
                                               _%tl1755817660%_
                                               _%e1755917663%_
                                               _%hd1756017667%_
                                               _%tl1756117670%_))))))))
                        (_%loop1756817689%_ _%target1756517683%_ '())))))
              (if (gx#stx-pair? _%__stx2073720738%_)
                  (let ((_%e1755617653%_ (gx#syntax-e _%__stx2073720738%_)))
                    (let ((_%tl1755817660%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1755617653%_)))
                          (_%hd1755717657%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1755617653%_))))
                      (if (gx#stx-pair? _%tl1755817660%_)
                          (let ((_%e1755917663%_
                                 (gx#syntax-e _%tl1755817660%_)))
                            (let ((_%tl1756117670%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1755917663%_)))
                                  (_%hd1756017667%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1755917663%_))))
                              (if (gx#stx-pair? _%hd1756017667%_)
                                  (let ((_%e1756217673%_
                                         (gx#syntax-e _%hd1756017667%_)))
                                    (let ((_%tl1756417680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1756217673%_)))
                                          (_%hd1756317677%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1756217673%_))))
                                      (if (gx#stx-pair/null? _%tl1756117670%_)
                                          (let ((_%__splice2074220743%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1756117670%_
                                                  '0)))
                                            (let ((_%tl1756717686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074220743%_
                                                      '1)))
                                                  (_%target1756517683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074220743%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1756717686%_)
                                                  (_%__match2077220773%_
                                                   _%e1755617653%_
                                                   _%hd1755717657%_
                                                   _%tl1755817660%_
                                                   _%e1755917663%_
                                                   _%hd1756017667%_
                                                   _%tl1756117670%_
                                                   _%e1756217673%_
                                                   _%hd1756317677%_
                                                   _%tl1756417680%_
                                                   _%__splice2074220743%_
                                                   _%target1756517683%_
                                                   _%tl1756717686%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1756117670%_)
                                                      (let ((_%e1758217617%_
                                                             (gx#syntax-e
                                                              _%tl1756117670%_)))
                                                        (let ((_%tl1758417624%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1758217617%_)))
                      (_%hd1758317621%_
                       (let () (declare (not safe)) (##car _%e1758217617%_))))
                  (if (gx#stx-null? _%tl1758417624%_)
                      (_%__match2079220793%_
                       _%e1755617653%_
                       _%hd1755717657%_
                       _%tl1755817660%_
                       _%e1755917663%_
                       _%hd1756017667%_
                       _%tl1756117670%_
                       _%e1758217617%_
                       _%hd1758317621%_
                       _%tl1758417624%_)
                      (let () (declare (not safe)) (_%g1755117590%_)))))
              (let () (declare (not safe)) (_%g1755117590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1756117670%_)
                                              (let ((_%e1758217617%_
                                                     (gx#syntax-e
                                                      _%tl1756117670%_)))
                                                (let ((_%tl1758417624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1758217617%_)))
                                                      (_%hd1758317621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1758217617%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1758417624%_)
                                                      (_%__match2079220793%_
                                                       _%e1755617653%_
                                                       _%hd1755717657%_
                                                       _%tl1755817660%_
                                                       _%e1755917663%_
                                                       _%hd1756017667%_
                                                       _%tl1756117670%_
                                                       _%e1758217617%_
                                                       _%hd1758317621%_
                                                       _%tl1758417624%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1755117590%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1755117590%_))))))
                                  (if (gx#stx-pair? _%tl1756117670%_)
                                      (let ((_%e1758217617%_
                                             (gx#syntax-e _%tl1756117670%_)))
                                        (let ((_%tl1758417624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1758217617%_)))
                                              (_%hd1758317621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1758217617%_))))
                                          (if (gx#stx-null? _%tl1758417624%_)
                                              (_%__match2079220793%_
                                               _%e1755617653%_
                                               _%hd1755717657%_
                                               _%tl1755817660%_
                                               _%e1755917663%_
                                               _%hd1756017667%_
                                               _%tl1756117670%_
                                               _%e1758217617%_
                                               _%hd1758317621%_
                                               _%tl1758417624%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1755117590%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1755117590%_))))))
                          (let () (declare (not safe)) (_%g1755117590%_)))))
                  (let () (declare (not safe)) (_%g1755117590%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17749%_)
        (let* ((_%g1775217789%_
                (lambda (_%g1775317785%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1775317785%_)))
               (_%g1775118150%_
                (lambda (_%g1775317793%_)
                  (if (gx#stx-pair? _%g1775317793%_)
                      (let ((_%e1775717796%_ (gx#syntax-e _%g1775317793%_)))
                        (let ((_%hd1775817800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1775717796%_)))
                              (_%tl1775917803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1775717796%_))))
                          (if (gx#stx-pair? _%tl1775917803%_)
                              (let ((_%e1776017806%_
                                     (gx#syntax-e _%tl1775917803%_)))
                                (let ((_%hd1776117810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1776017806%_)))
                                      (_%tl1776217813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1776017806%_))))
                                  (if (gx#stx-pair? _%hd1776117810%_)
                                      (let ((_%e1776317816%_
                                             (gx#syntax-e _%hd1776117810%_)))
                                        (let ((_%hd1776417820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1776317816%_)))
                                              (_%tl1776517823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1776317816%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1776517823%_)
                                              (let ((_g20970_
                                                     (gx#syntax-split-splice
                                                      _%tl1776517823%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20970_)
                                                               (##values-length
                                                                _g20970_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20971_ 2)))
                (error "Context expects 2 values" _g20971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1776617826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20970_
                                                            0)))
                                                        (_%tl1776817829%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20970_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1776817829%_)
                                                        (letrec ((_%loop1776917832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1776717836%_ _%arg1777317839%_)
                            (if (gx#stx-pair? _%hd1776717836%_)
                                (let ((_%e1777017842%_
                                       (gx#syntax-e _%hd1776717836%_)))
                                  (let ((_%lp-hd1777117846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1777017842%_)))
                                        (_%lp-tl1777217849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1777017842%_))))
                                    (_%loop1776917832%_
                                     _%lp-tl1777217849%_
                                     (cons _%lp-hd1777117846%_
                                           _%arg1777317839%_))))
                                (let ((_%arg1777417852%_
                                       (reverse _%arg1777317839%_)))
                                  (if (gx#stx-pair/null? _%tl1776217813%_)
                                      (let ((_g20972_
                                             (gx#syntax-split-splice
                                              _%tl1776217813%_
                                              '0)))
                                        (begin
                                          (let ((_g20973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20972_)
                                                       (##values-length
                                                        _g20972_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20973_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20973_)))
                                          (let ((_%target1777517856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20972_ 0)))
                                                (_%tl1777717859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20972_ 1))))
                                            (if (gx#stx-null? _%tl1777717859%_)
                                                (letrec ((_%loop1777817862%_
                                                          (lambda (_%hd1777617866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1778217869%_)
                    (if (gx#stx-pair? _%hd1777617866%_)
                        (let ((_%e1777917872%_ (gx#syntax-e _%hd1777617866%_)))
                          (let ((_%lp-hd1778017876%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1777917872%_)))
                                (_%lp-tl1778117879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1777917872%_))))
                            (_%loop1777817862%_
                             _%lp-tl1778117879%_
                             (cons _%lp-hd1778017876%_ _%body1778217869%_))))
                        (let ((_%body1778317882%_
                               (reverse _%body1778217869%_)))
                          ((lambda (_%L17886%_ _%L17888%_ _%L17889%_)
                             (if (and (gx#identifier? _%L17889%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1791317916%_
                                                       _%g1791417919%_)
                                                (cons _%g1791317916%_
                                                      _%g1791417919%_))
                                              '()
                                              _%L17888%_)))
                                 (let* ((_%g1792217930%_
                                         (lambda (_%g1792317926%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1792317926%_)))
                                        (_%g1792118146%_
                                         (lambda (_%g1792317934%_)
                                           ((lambda (_%L17937%_)
                                              (let* ((_%g1794917966%_
                                                      (lambda (_%g1795017962%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1795017962%_)))
                                                     (_%g1794818134%_
                                                      (lambda (_%g1795017970%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1795017970%_)
                                                            (let ((_g20974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1795017970%_ '0)))
                      (begin
                        (let ((_g20975_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g20974_)
                                     (##values-length _g20974_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g20975_ 2)))
                              (error "Context expects 2 values" _g20975_)))
                        (let ((_%target1795217973%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20974_ 0)))
                              (_%tl1795417976%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20974_ 1))))
                          (if (gx#stx-null? _%tl1795417976%_)
                              (letrec ((_%loop1795517979%_
                                        (lambda (_%hd1795317983%_
                                                 _%xarg1795917986%_)
                                          (if (gx#stx-pair? _%hd1795317983%_)
                                              (let ((_%e1795617989%_
                                                     (gx#syntax-e
                                                      _%hd1795317983%_)))
                                                (let ((_%lp-hd1795717993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1795617989%_)))
                                                      (_%lp-tl1795817996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1795617989%_))))
                                                  (_%loop1795517979%_
                                                   _%lp-tl1795817996%_
                                                   (cons _%lp-hd1795717993%_
                                                         _%xarg1795917986%_))))
                                              (let ((_%xarg1796017999%_
                                                     (reverse _%xarg1795917986%_)))
                                                ((lambda (_%L18003%_)
                                                   (let* ((_%g1802018028%_
                                                           (lambda (_%g1802118024%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1802118024%_)))
                                                          (_%g1801918098%_
                                                           (lambda (_%g1802118032%_)
                                                             ((lambda (_%L18035%_)
                                                                (let* ((_%g1804818056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1804918052%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1804918052%_)))
                               (_%g1804718078%_
                                (lambda (_%g1804918060%_)
                                  ((lambda (_%L18063%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18063%_
                                                  (cons _%L18035%_ '())))
                                      (gx#stx-source _%stx17749%_)))
                                   _%g1804918060%_))))
                          (_%g1804718078%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L17937%_
                                              (foldr (lambda (_%g1808118086%_
                                                              _%g1808218089%_)
                                                       (cons _%g1808118086%_
                                                             _%g1808218089%_))
                                                     '()
                                                     _%L17888%_))
                                        (foldr (lambda (_%g1808318092%_
                                                        _%g1808418095%_)
                                                 (cons _%g1808318092%_
                                                       _%g1808418095%_))
                                               '()
                                               _%L17886%_)))
                            (gx#stx-source _%stx17749%_)))))
                      _%g1802118032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1801918098%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L17889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1810118110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1810218113%_)
                    (cons _%g1810118110%_ _%g1810218113%_))
                  '()
                  _%L18003%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1810318116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1810418119%_)
                                      (cons _%g1810318116%_ _%g1810418119%_))
                                    '()
                                    _%L17888%_)
                             (foldr (lambda (_%g1810518122%_ _%g1810618125%_)
                                      (cons _%g1810518122%_ _%g1810618125%_))
                                    '()
                                    _%L17886%_)))
                 (foldr (lambda (_%g1810718128%_ _%g1810818131%_)
                          (cons _%g1810718128%_ _%g1810818131%_))
                        '()
                        _%L18003%_))
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
                 (cons _%L17937%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1796017999%_))))))
                                (_%loop1795517979%_ _%target1795217973%_ '()))
                              (_%g1794917966%_ _%g1795017970%_)))))
                    (_%g1794917966%_ _%g1795017970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1794818134%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1813718140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1813818143%_)
                   (cons _%g1813718140%_ _%g1813818143%_))
                 '()
                 _%L17888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1792317934%_))))
                                   (_%g1792118146%_
                                    (gx#stx-identifier
                                     _%L17889%_
                                     _%L17889%_
                                     '"__impl")))
                                 (_%g1775217789%_ _%g1775317793%_)))
                           _%body1778317882%_
                           _%arg1777417852%_
                           _%hd1776417820%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1777817862%_
                                                   _%target1777517856%_
                                                   '()))
                                                (_%g1775217789%_
                                                 _%g1775317793%_)))))
                                      (_%g1775217789%_ _%g1775317793%_)))))))
                  (_%loop1776917832%_ _%target1776617826%_ '()))
                (_%g1775217789%_ _%g1775317793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1775217789%_
                                               _%g1775317793%_))))
                                      (_%g1775217789%_ _%g1775317793%_))))
                              (_%g1775217789%_ _%g1775317793%_))))
                      (_%g1775217789%_ _%g1775317793%_)))))
          (_%g1775118150%_ _%stx17749%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18157%_)
        (let* ((_%__stx2079520796%_ _%$stx18157%_)
               (_%g1816218198%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2079520796%_))))
          (let ((_%__kont2079820799%_
                 (lambda (_%L18312%_ _%L18314%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18314%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18312%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2080020801%_
                 (lambda (_%L18235%_ _%L18237%_ _%L18238%_)
                   (cons _%L18238%_
                         (cons _%L18237%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18235%_ '()))
                                     '()))))))
            (let* ((_%__match2086020861%_
                    (lambda (_%e1818418205%_
                             _%hd1818518209%_
                             _%tl1818618212%_
                             _%e1818718215%_
                             _%hd1818818219%_
                             _%tl1818918222%_
                             _%e1819018225%_
                             _%hd1819118229%_
                             _%tl1819218232%_)
                      (let ((_%L18235%_ _%hd1819118229%_)
                            (_%L18237%_ _%hd1818818219%_)
                            (_%L18238%_ _%hd1818518209%_))
                        (if (and (gx#identifier? _%L18237%_)
                                 (gx#stx-datum? _%L18235%_))
                            (_%__kont2080020801%_
                             _%L18235%_
                             _%L18237%_
                             _%L18238%_)
                            (let () (declare (not safe)) (_%g1816218198%_))))))
                   (_%__match2084020841%_
                    (lambda (_%e1816618262%_
                             _%hd1816718266%_
                             _%tl1816818269%_
                             _%e1816918272%_
                             _%hd1817018276%_
                             _%tl1817118279%_
                             _%e1817218282%_
                             _%hd1817318286%_
                             _%tl1817418289%_
                             _%e1817518292%_
                             _%hd1817618296%_
                             _%tl1817718299%_
                             _%e1817818302%_
                             _%hd1817918306%_
                             _%tl1818018309%_)
                      (let ((_%L18312%_ _%hd1817918306%_)
                            (_%L18314%_ _%hd1817018276%_))
                        (if (gx#identifier? _%L18314%_)
                            (_%__kont2079820799%_ _%L18312%_ _%L18314%_)
                            (_%__match2086020861%_
                             _%e1816618262%_
                             _%hd1816718266%_
                             _%tl1816818269%_
                             _%e1816918272%_
                             _%hd1817018276%_
                             _%tl1817118279%_
                             _%e1817218282%_
                             _%hd1817318286%_
                             _%tl1817418289%_))))))
              (if (gx#stx-pair? _%__stx2079520796%_)
                  (let ((_%e1816618262%_ (gx#syntax-e _%__stx2079520796%_)))
                    (let ((_%tl1816818269%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1816618262%_)))
                          (_%hd1816718266%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1816618262%_))))
                      (if (gx#stx-pair? _%tl1816818269%_)
                          (let ((_%e1816918272%_
                                 (gx#syntax-e _%tl1816818269%_)))
                            (let ((_%tl1817118279%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1816918272%_)))
                                  (_%hd1817018276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1816918272%_))))
                              (if (gx#stx-pair? _%tl1817118279%_)
                                  (let ((_%e1817218282%_
                                         (gx#syntax-e _%tl1817118279%_)))
                                    (let ((_%tl1817418289%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1817218282%_)))
                                          (_%hd1817318286%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1817218282%_))))
                                      (if (gx#stx-pair? _%hd1817318286%_)
                                          (let ((_%e1817518292%_
                                                 (gx#syntax-e
                                                  _%hd1817318286%_)))
                                            (let ((_%tl1817718299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1817518292%_)))
                                                  (_%hd1817618296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1817518292%_))))
                                              (if (gx#identifier?
                                                   _%hd1817618296%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g20976_|
                                                       _%hd1817618296%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1817718299%_)
                                                          (let ((_%e1817818302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1817718299%_)))
                    (let ((_%tl1818018309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1817818302%_)))
                          (_%hd1817918306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1817818302%_))))
                      (if (gx#stx-null? _%tl1818018309%_)
                          (if (gx#stx-null? _%tl1817418289%_)
                              (_%__match2084020841%_
                               _%e1816618262%_
                               _%hd1816718266%_
                               _%tl1816818269%_
                               _%e1816918272%_
                               _%hd1817018276%_
                               _%tl1817118279%_
                               _%e1817218282%_
                               _%hd1817318286%_
                               _%tl1817418289%_
                               _%e1817518292%_
                               _%hd1817618296%_
                               _%tl1817718299%_
                               _%e1817818302%_
                               _%hd1817918306%_
                               _%tl1818018309%_)
                              (let () (declare (not safe)) (_%g1816218198%_)))
                          (if (gx#stx-null? _%tl1817418289%_)
                              (_%__match2086020861%_
                               _%e1816618262%_
                               _%hd1816718266%_
                               _%tl1816818269%_
                               _%e1816918272%_
                               _%hd1817018276%_
                               _%tl1817118279%_
                               _%e1817218282%_
                               _%hd1817318286%_
                               _%tl1817418289%_)
                              (let ()
                                (declare (not safe))
                                (_%g1816218198%_))))))
                  (if (gx#stx-null? _%tl1817418289%_)
                      (_%__match2086020861%_
                       _%e1816618262%_
                       _%hd1816718266%_
                       _%tl1816818269%_
                       _%e1816918272%_
                       _%hd1817018276%_
                       _%tl1817118279%_
                       _%e1817218282%_
                       _%hd1817318286%_
                       _%tl1817418289%_)
                      (let () (declare (not safe)) (_%g1816218198%_))))
              (if (gx#stx-null? _%tl1817418289%_)
                  (_%__match2086020861%_
                   _%e1816618262%_
                   _%hd1816718266%_
                   _%tl1816818269%_
                   _%e1816918272%_
                   _%hd1817018276%_
                   _%tl1817118279%_
                   _%e1817218282%_
                   _%hd1817318286%_
                   _%tl1817418289%_)
                  (let () (declare (not safe)) (_%g1816218198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1817418289%_)
                                                      (_%__match2086020861%_
                                                       _%e1816618262%_
                                                       _%hd1816718266%_
                                                       _%tl1816818269%_
                                                       _%e1816918272%_
                                                       _%hd1817018276%_
                                                       _%tl1817118279%_
                                                       _%e1817218282%_
                                                       _%hd1817318286%_
                                                       _%tl1817418289%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1816218198%_))))))
                                          (if (gx#stx-null? _%tl1817418289%_)
                                              (_%__match2086020861%_
                                               _%e1816618262%_
                                               _%hd1816718266%_
                                               _%tl1816818269%_
                                               _%e1816918272%_
                                               _%hd1817018276%_
                                               _%tl1817118279%_
                                               _%e1817218282%_
                                               _%hd1817318286%_
                                               _%tl1817418289%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1816218198%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1816218198%_)))))
                          (let () (declare (not safe)) (_%g1816218198%_)))))
                  (let () (declare (not safe)) (_%g1816218198%_))))))))))

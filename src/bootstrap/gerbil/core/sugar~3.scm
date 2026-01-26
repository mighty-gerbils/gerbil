(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g20812_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17390%_)
        (let* ((_%__stx2057320574%_ _%$stx17390%_)
               (_%g1739517434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2057320574%_))))
          (let ((_%__kont2057620577%_
                 (lambda (_%g1739717555%_ _%g1739817557%_ _%g1739917558%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1739917558%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g1739817557%_
                                                 (foldr (lambda (_%g1757717580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1757817583%_)
                  (cons _%g1757717580%_ _%g1757817583%_))
                '()
                _%g1739717555%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2058020581%_
                 (lambda (_%g1741817471%_ _%g1741917473%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1741917473%_ (cons _%g1741817471%_ '()))))))
            (let* ((_%__match2062820629%_
                    (lambda (_%e1742017441%_
                             _%hd1742117445%_
                             _%tl1742217448%_
                             _%e1742317451%_
                             _%hd1742417455%_
                             _%tl1742517458%_
                             _%e1742617461%_
                             _%hd1742717465%_
                             _%tl1742817468%_)
                      (let ((_%g1741817471%_ _%hd1742717465%_)
                            (_%g1741917473%_ _%hd1742417455%_))
                        (if (gx#identifier? _%g1741917473%_)
                            (_%__kont2058020581%_
                             _%g1741817471%_
                             _%g1741917473%_)
                            (let () (declare (not safe)) (_%g1739517434%_))))))
                   (_%__match2062020621%_
                    (lambda (_%e1742017441%_
                             _%hd1742117445%_
                             _%tl1742217448%_
                             _%e1742317451%_
                             _%hd1742417455%_
                             _%tl1742517458%_)
                      (if (gx#stx-pair? _%tl1742517458%_)
                          (let ((_%e1742617461%_
                                 (gx#syntax-e _%tl1742517458%_)))
                            (let ((_%tl1742817468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1742617461%_)))
                                  (_%hd1742717465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1742617461%_))))
                              (if (gx#stx-null? _%tl1742817468%_)
                                  (_%__match2062820629%_
                                   _%e1742017441%_
                                   _%hd1742117445%_
                                   _%tl1742217448%_
                                   _%e1742317451%_
                                   _%hd1742417455%_
                                   _%tl1742517458%_
                                   _%e1742617461%_
                                   _%hd1742717465%_
                                   _%tl1742817468%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1739517434%_)))))
                          (let () (declare (not safe)) (_%g1739517434%_)))))
                   (_%__match2060820609%_
                    (lambda (_%e1740017497%_
                             _%hd1740117501%_
                             _%tl1740217504%_
                             _%e1740317507%_
                             _%hd1740417511%_
                             _%tl1740517514%_
                             _%e1740617517%_
                             _%hd1740717521%_
                             _%tl1740817524%_
                             _%__splice2057820579%_
                             _%target1740917527%_
                             _%tl1741117530%_)
                      (letrec ((_%loop1741217533%_
                                (lambda (_%hd1741017537%_ _%body1741617540%_)
                                  (if (gx#stx-pair? _%hd1741017537%_)
                                      (let ((_%e1741317542%_
                                             (gx#syntax-e _%hd1741017537%_)))
                                        (let ((_%lp-tl1741517549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1741317542%_)))
                                              (_%lp-hd1741417546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1741317542%_))))
                                          (_%loop1741217533%_
                                           _%lp-tl1741517549%_
                                           (cons _%lp-hd1741417546%_
                                                 _%body1741617540%_))))
                                      (let ((_%body1741717552%_
                                             (reverse _%body1741617540%_)))
                                        (let ((_%g1739717555%_
                                               _%body1741717552%_)
                                              (_%g1739817557%_
                                               _%tl1740817524%_)
                                              (_%g1739917558%_
                                               _%hd1740717521%_))
                                          (if (gx#identifier? _%g1739917558%_)
                                              (_%__kont2057620577%_
                                               _%g1739717555%_
                                               _%g1739817557%_
                                               _%g1739917558%_)
                                              (_%__match2062020621%_
                                               _%e1740017497%_
                                               _%hd1740117501%_
                                               _%tl1740217504%_
                                               _%e1740317507%_
                                               _%hd1740417511%_
                                               _%tl1740517514%_))))))))
                        (_%loop1741217533%_ _%target1740917527%_ '())))))
              (if (gx#stx-pair? _%__stx2057320574%_)
                  (let ((_%e1740017497%_ (gx#syntax-e _%__stx2057320574%_)))
                    (let ((_%tl1740217504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1740017497%_)))
                          (_%hd1740117501%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1740017497%_))))
                      (if (gx#stx-pair? _%tl1740217504%_)
                          (let ((_%e1740317507%_
                                 (gx#syntax-e _%tl1740217504%_)))
                            (let ((_%tl1740517514%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1740317507%_)))
                                  (_%hd1740417511%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1740317507%_))))
                              (if (gx#stx-pair? _%hd1740417511%_)
                                  (let ((_%e1740617517%_
                                         (gx#syntax-e _%hd1740417511%_)))
                                    (let ((_%tl1740817524%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1740617517%_)))
                                          (_%hd1740717521%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1740617517%_))))
                                      (if (gx#stx-pair/null? _%tl1740517514%_)
                                          (let ((_%__splice2057820579%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1740517514%_
                                                  '0)))
                                            (let ((_%tl1741117530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2057820579%_
                                                      '1)))
                                                  (_%target1740917527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2057820579%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1741117530%_)
                                                  (_%__match2060820609%_
                                                   _%e1740017497%_
                                                   _%hd1740117501%_
                                                   _%tl1740217504%_
                                                   _%e1740317507%_
                                                   _%hd1740417511%_
                                                   _%tl1740517514%_
                                                   _%e1740617517%_
                                                   _%hd1740717521%_
                                                   _%tl1740817524%_
                                                   _%__splice2057820579%_
                                                   _%target1740917527%_
                                                   _%tl1741117530%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1740517514%_)
                                                      (let ((_%e1742617461%_
                                                             (gx#syntax-e
                                                              _%tl1740517514%_)))
                                                        (let ((_%tl1742817468%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1742617461%_)))
                      (_%hd1742717465%_
                       (let () (declare (not safe)) (##car _%e1742617461%_))))
                  (if (gx#stx-null? _%tl1742817468%_)
                      (_%__match2062820629%_
                       _%e1740017497%_
                       _%hd1740117501%_
                       _%tl1740217504%_
                       _%e1740317507%_
                       _%hd1740417511%_
                       _%tl1740517514%_
                       _%e1742617461%_
                       _%hd1742717465%_
                       _%tl1742817468%_)
                      (let () (declare (not safe)) (_%g1739517434%_)))))
              (let () (declare (not safe)) (_%g1739517434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1740517514%_)
                                              (let ((_%e1742617461%_
                                                     (gx#syntax-e
                                                      _%tl1740517514%_)))
                                                (let ((_%tl1742817468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1742617461%_)))
                                                      (_%hd1742717465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1742617461%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1742817468%_)
                                                      (_%__match2062820629%_
                                                       _%e1740017497%_
                                                       _%hd1740117501%_
                                                       _%tl1740217504%_
                                                       _%e1740317507%_
                                                       _%hd1740417511%_
                                                       _%tl1740517514%_
                                                       _%e1742617461%_
                                                       _%hd1742717465%_
                                                       _%tl1742817468%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1739517434%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1739517434%_))))))
                                  (if (gx#stx-pair? _%tl1740517514%_)
                                      (let ((_%e1742617461%_
                                             (gx#syntax-e _%tl1740517514%_)))
                                        (let ((_%tl1742817468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1742617461%_)))
                                              (_%hd1742717465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1742617461%_))))
                                          (if (gx#stx-null? _%tl1742817468%_)
                                              (_%__match2062820629%_
                                               _%e1740017497%_
                                               _%hd1740117501%_
                                               _%tl1740217504%_
                                               _%e1740317507%_
                                               _%hd1740417511%_
                                               _%tl1740517514%_
                                               _%e1742617461%_
                                               _%hd1742717465%_
                                               _%tl1742817468%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1739517434%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1739517434%_))))))
                          (let () (declare (not safe)) (_%g1739517434%_)))))
                  (let () (declare (not safe)) (_%g1739517434%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17591%_)
        (let* ((_%g1759417631%_
                (lambda (_%g1759517627%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1759517627%_)))
               (_%g1759317986%_
                (lambda (_%g1759517635%_)
                  (if (gx#stx-pair? _%g1759517635%_)
                      (let ((_%e1759917638%_ (gx#syntax-e _%g1759517635%_)))
                        (let ((_%hd1760017642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1759917638%_)))
                              (_%tl1760117645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1759917638%_))))
                          (if (gx#stx-pair? _%tl1760117645%_)
                              (let ((_%e1760217648%_
                                     (gx#syntax-e _%tl1760117645%_)))
                                (let ((_%hd1760317652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1760217648%_)))
                                      (_%tl1760417655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1760217648%_))))
                                  (if (gx#stx-pair? _%hd1760317652%_)
                                      (let ((_%e1760517658%_
                                             (gx#syntax-e _%hd1760317652%_)))
                                        (let ((_%hd1760617662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1760517658%_)))
                                              (_%tl1760717665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1760517658%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1760717665%_)
                                              (let ((_g20806_
                                                     (gx#syntax-split-splice
                                                      _%tl1760717665%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20807_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20806_)
                                                               (##values-length
                                                                _g20806_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20807_ 2)))
                (error "Context expects 2 values" _g20807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1760817668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20806_
                                                            0)))
                                                        (_%tl1761017671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20806_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1761017671%_)
                                                        (letrec ((_%loop1761117674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1760917678%_ _%arg1761517681%_)
                            (if (gx#stx-pair? _%hd1760917678%_)
                                (let ((_%e1761217683%_
                                       (gx#syntax-e _%hd1760917678%_)))
                                  (let ((_%lp-hd1761317687%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1761217683%_)))
                                        (_%lp-tl1761417690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1761217683%_))))
                                    (_%loop1761117674%_
                                     _%lp-tl1761417690%_
                                     (cons _%lp-hd1761317687%_
                                           _%arg1761517681%_))))
                                (let ((_%arg1761617693%_
                                       (reverse _%arg1761517681%_)))
                                  (if (gx#stx-pair/null? _%tl1760417655%_)
                                      (let ((_g20808_
                                             (gx#syntax-split-splice
                                              _%tl1760417655%_
                                              '0)))
                                        (begin
                                          (let ((_g20809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20808_)
                                                       (##values-length
                                                        _g20808_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20809_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20809_)))
                                          (let ((_%target1761717696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20808_ 0)))
                                                (_%tl1761917699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20808_ 1))))
                                            (if (gx#stx-null? _%tl1761917699%_)
                                                (letrec ((_%loop1762017702%_
                                                          (lambda (_%hd1761817706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1762417709%_)
                    (if (gx#stx-pair? _%hd1761817706%_)
                        (let ((_%e1762117711%_ (gx#syntax-e _%hd1761817706%_)))
                          (let ((_%lp-hd1762217715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1762117711%_)))
                                (_%lp-tl1762317718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1762117711%_))))
                            (_%loop1762017702%_
                             _%lp-tl1762317718%_
                             (cons _%lp-hd1762217715%_ _%body1762417709%_))))
                        (let ((_%body1762517721%_
                               (reverse _%body1762417709%_)))
                          ((lambda (_%g1759617724%_
                                    _%g1759717726%_
                                    _%g1759817727%_)
                             (if (and (gx#identifier? _%g1759817727%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1775117754%_
                                                       _%g1775217757%_)
                                                (cons _%g1775117754%_
                                                      _%g1775217757%_))
                                              '()
                                              _%g1759717726%_)))
                                 (let* ((_%g1776017768%_
                                         (lambda (_%g1776117764%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1776117764%_)))
                                        (_%g1775917982%_
                                         (lambda (_%g1776117772%_)
                                           ((lambda (_%g1776217775%_)
                                              (let* ((_%g1778717804%_
                                                      (lambda (_%g1778817800%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1778817800%_)))
                                                     (_%g1778617970%_
                                                      (lambda (_%g1778817808%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1778817808%_)
                                                            (let ((_g20810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1778817808%_ '0)))
                      (begin
                        (let ((_g20811_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g20810_)
                                     (##values-length _g20810_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g20811_ 2)))
                              (error "Context expects 2 values" _g20811_)))
                        (let ((_%target1779017811%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20810_ 0)))
                              (_%tl1779217814%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20810_ 1))))
                          (if (gx#stx-null? _%tl1779217814%_)
                              (letrec ((_%loop1779317817%_
                                        (lambda (_%hd1779117821%_
                                                 _%xarg1779717824%_)
                                          (if (gx#stx-pair? _%hd1779117821%_)
                                              (let ((_%e1779417826%_
                                                     (gx#syntax-e
                                                      _%hd1779117821%_)))
                                                (let ((_%lp-hd1779517830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1779417826%_)))
                                                      (_%lp-tl1779617833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1779417826%_))))
                                                  (_%loop1779317817%_
                                                   _%lp-tl1779617833%_
                                                   (cons _%lp-hd1779517830%_
                                                         _%xarg1779717824%_))))
                                              (let ((_%xarg1779817836%_
                                                     (reverse _%xarg1779717824%_)))
                                                ((lambda (_%g1778917839%_)
                                                   (let* ((_%g1785617864%_
                                                           (lambda (_%g1785717860%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1785717860%_)))
                                                          (_%g1785517934%_
                                                           (lambda (_%g1785717868%_)
                                                             ((lambda (_%g1785817871%_)
                                                                (let* ((_%g1788417892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1788517888%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1788517888%_)))
                               (_%g1788317914%_
                                (lambda (_%g1788517896%_)
                                  ((lambda (_%g1788617899%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%g1788617899%_
                                                  (cons _%g1785817871%_ '())))
                                      (gx#stx-source _%stx17591%_)))
                                   _%g1788517896%_))))
                          (_%g1788317914%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%g1776217775%_
                                              (foldr (lambda (_%g1791717922%_
                                                              _%g1791817925%_)
                                                       (cons _%g1791717922%_
                                                             _%g1791817925%_))
                                                     '()
                                                     _%g1759717726%_))
                                        (foldr (lambda (_%g1791917928%_
                                                        _%g1792017931%_)
                                                 (cons _%g1791917928%_
                                                       _%g1792017931%_))
                                               '()
                                               _%g1759617724%_)))
                            (gx#stx-source _%stx17591%_)))))
                      _%g1785717868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1785517934%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%g1759817727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1793717946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1793817949%_)
                    (cons _%g1793717946%_ _%g1793817949%_))
                  '()
                  _%g1778917839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1793917952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1794017955%_)
                                      (cons _%g1793917952%_ _%g1794017955%_))
                                    '()
                                    _%g1759717726%_)
                             (foldr (lambda (_%g1794117958%_ _%g1794217961%_)
                                      (cons _%g1794117958%_ _%g1794217961%_))
                                    '()
                                    _%g1759617724%_)))
                 (foldr (lambda (_%g1794317964%_ _%g1794417967%_)
                          (cons _%g1794317964%_ _%g1794417967%_))
                        '()
                        _%g1778917839%_))
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
                 (cons _%g1776217775%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17591%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1779817836%_))))))
                                (_%loop1779317817%_ _%target1779017811%_ '()))
                              (_%g1778717804%_ _%g1778817808%_)))))
                    (_%g1778717804%_ _%g1778817808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1778617970%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1797317976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1797417979%_)
                   (cons _%g1797317976%_ _%g1797417979%_))
                 '()
                 _%g1759717726%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1776117772%_))))
                                   (_%g1775917982%_
                                    (gx#stx-identifier
                                     _%g1759817727%_
                                     _%g1759817727%_
                                     '"__impl")))
                                 (_%g1759417631%_ _%g1759517635%_)))
                           _%body1762517721%_
                           _%arg1761617693%_
                           _%hd1760617662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1762017702%_
                                                   _%target1761717696%_
                                                   '()))
                                                (_%g1759417631%_
                                                 _%g1759517635%_)))))
                                      (_%g1759417631%_ _%g1759517635%_)))))))
                  (_%loop1761117674%_ _%target1760817668%_ '()))
                (_%g1759417631%_ _%g1759517635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1759417631%_
                                               _%g1759517635%_))))
                                      (_%g1759417631%_ _%g1759517635%_))))
                              (_%g1759417631%_ _%g1759517635%_))))
                      (_%g1759417631%_ _%g1759517635%_)))))
          (_%g1759317986%_ _%stx17591%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx17993%_)
        (let* ((_%__stx2063120632%_ _%$stx17993%_)
               (_%g1799818034%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2063120632%_))))
          (let ((_%__kont2063420635%_
                 (lambda (_%g1800018148%_ _%g1800118150%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1800118150%_
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
                           (cons _%g1800018148%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2063620637%_
                 (lambda (_%g1801718071%_ _%g1801818073%_ _%g1801918074%_)
                   (cons _%g1801918074%_
                         (cons _%g1801818073%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1801718071%_ '()))
                                     '()))))))
            (let* ((_%__match2069620697%_
                    (lambda (_%e1802018041%_
                             _%hd1802118045%_
                             _%tl1802218048%_
                             _%e1802318051%_
                             _%hd1802418055%_
                             _%tl1802518058%_
                             _%e1802618061%_
                             _%hd1802718065%_
                             _%tl1802818068%_)
                      (let ((_%g1801718071%_ _%hd1802718065%_)
                            (_%g1801818073%_ _%hd1802418055%_)
                            (_%g1801918074%_ _%hd1802118045%_))
                        (if (and (gx#identifier? _%g1801818073%_)
                                 (gx#stx-datum? _%g1801718071%_))
                            (_%__kont2063620637%_
                             _%g1801718071%_
                             _%g1801818073%_
                             _%g1801918074%_)
                            (let () (declare (not safe)) (_%g1799818034%_))))))
                   (_%__match2067620677%_
                    (lambda (_%e1800218098%_
                             _%hd1800318102%_
                             _%tl1800418105%_
                             _%e1800518108%_
                             _%hd1800618112%_
                             _%tl1800718115%_
                             _%e1800818118%_
                             _%hd1800918122%_
                             _%tl1801018125%_
                             _%e1801118128%_
                             _%hd1801218132%_
                             _%tl1801318135%_
                             _%e1801418138%_
                             _%hd1801518142%_
                             _%tl1801618145%_)
                      (let ((_%g1800018148%_ _%hd1801518142%_)
                            (_%g1800118150%_ _%hd1800618112%_))
                        (if (gx#identifier? _%g1800118150%_)
                            (_%__kont2063420635%_
                             _%g1800018148%_
                             _%g1800118150%_)
                            (_%__match2069620697%_
                             _%e1800218098%_
                             _%hd1800318102%_
                             _%tl1800418105%_
                             _%e1800518108%_
                             _%hd1800618112%_
                             _%tl1800718115%_
                             _%e1800818118%_
                             _%hd1800918122%_
                             _%tl1801018125%_))))))
              (if (gx#stx-pair? _%__stx2063120632%_)
                  (let ((_%e1800218098%_ (gx#syntax-e _%__stx2063120632%_)))
                    (let ((_%tl1800418105%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1800218098%_)))
                          (_%hd1800318102%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1800218098%_))))
                      (if (gx#stx-pair? _%tl1800418105%_)
                          (let ((_%e1800518108%_
                                 (gx#syntax-e _%tl1800418105%_)))
                            (let ((_%tl1800718115%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1800518108%_)))
                                  (_%hd1800618112%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1800518108%_))))
                              (if (gx#stx-pair? _%tl1800718115%_)
                                  (let ((_%e1800818118%_
                                         (gx#syntax-e _%tl1800718115%_)))
                                    (let ((_%tl1801018125%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1800818118%_)))
                                          (_%hd1800918122%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1800818118%_))))
                                      (if (gx#stx-pair? _%hd1800918122%_)
                                          (let ((_%e1801118128%_
                                                 (gx#syntax-e
                                                  _%hd1800918122%_)))
                                            (let ((_%tl1801318135%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1801118128%_)))
                                                  (_%hd1801218132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1801118128%_))))
                                              (if (gx#identifier?
                                                   _%hd1801218132%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g20812_|
                                                       _%hd1801218132%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1801318135%_)
                                                          (let ((_%e1801418138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1801318135%_)))
                    (let ((_%tl1801618145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1801418138%_)))
                          (_%hd1801518142%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1801418138%_))))
                      (if (gx#stx-null? _%tl1801618145%_)
                          (if (gx#stx-null? _%tl1801018125%_)
                              (_%__match2067620677%_
                               _%e1800218098%_
                               _%hd1800318102%_
                               _%tl1800418105%_
                               _%e1800518108%_
                               _%hd1800618112%_
                               _%tl1800718115%_
                               _%e1800818118%_
                               _%hd1800918122%_
                               _%tl1801018125%_
                               _%e1801118128%_
                               _%hd1801218132%_
                               _%tl1801318135%_
                               _%e1801418138%_
                               _%hd1801518142%_
                               _%tl1801618145%_)
                              (let () (declare (not safe)) (_%g1799818034%_)))
                          (if (gx#stx-null? _%tl1801018125%_)
                              (_%__match2069620697%_
                               _%e1800218098%_
                               _%hd1800318102%_
                               _%tl1800418105%_
                               _%e1800518108%_
                               _%hd1800618112%_
                               _%tl1800718115%_
                               _%e1800818118%_
                               _%hd1800918122%_
                               _%tl1801018125%_)
                              (let ()
                                (declare (not safe))
                                (_%g1799818034%_))))))
                  (if (gx#stx-null? _%tl1801018125%_)
                      (_%__match2069620697%_
                       _%e1800218098%_
                       _%hd1800318102%_
                       _%tl1800418105%_
                       _%e1800518108%_
                       _%hd1800618112%_
                       _%tl1800718115%_
                       _%e1800818118%_
                       _%hd1800918122%_
                       _%tl1801018125%_)
                      (let () (declare (not safe)) (_%g1799818034%_))))
              (if (gx#stx-null? _%tl1801018125%_)
                  (_%__match2069620697%_
                   _%e1800218098%_
                   _%hd1800318102%_
                   _%tl1800418105%_
                   _%e1800518108%_
                   _%hd1800618112%_
                   _%tl1800718115%_
                   _%e1800818118%_
                   _%hd1800918122%_
                   _%tl1801018125%_)
                  (let () (declare (not safe)) (_%g1799818034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1801018125%_)
                                                      (_%__match2069620697%_
                                                       _%e1800218098%_
                                                       _%hd1800318102%_
                                                       _%tl1800418105%_
                                                       _%e1800518108%_
                                                       _%hd1800618112%_
                                                       _%tl1800718115%_
                                                       _%e1800818118%_
                                                       _%hd1800918122%_
                                                       _%tl1801018125%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1799818034%_))))))
                                          (if (gx#stx-null? _%tl1801018125%_)
                                              (_%__match2069620697%_
                                               _%e1800218098%_
                                               _%hd1800318102%_
                                               _%tl1800418105%_
                                               _%e1800518108%_
                                               _%hd1800618112%_
                                               _%tl1800718115%_
                                               _%e1800818118%_
                                               _%hd1800918122%_
                                               _%tl1801018125%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1799818034%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1799818034%_)))))
                          (let () (declare (not safe)) (_%g1799818034%_)))))
                  (let () (declare (not safe)) (_%g1799818034%_))))))))))

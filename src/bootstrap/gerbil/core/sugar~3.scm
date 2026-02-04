(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21030_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17390%_)
        (let* ((_%__stx2078720788%_ _%$stx17390%_)
               (_%g1739517434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2078720788%_))))
          (let ((_%__kont2079020791%_
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
                (_%__kont2079420795%_
                 (lambda (_%g1741817471%_ _%g1741917473%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1741917473%_ (cons _%g1741817471%_ '()))))))
            (let* ((_%__match2084220843%_
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
                            (_%__kont2079420795%_
                             _%g1741817471%_
                             _%g1741917473%_)
                            (let () (declare (not safe)) (_%g1739517434%_))))))
                   (_%__match2083420835%_
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
                                  (_%__match2084220843%_
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
                   (_%__match2082220823%_
                    (lambda (_%e1740017497%_
                             _%hd1740117501%_
                             _%tl1740217504%_
                             _%e1740317507%_
                             _%hd1740417511%_
                             _%tl1740517514%_
                             _%e1740617517%_
                             _%hd1740717521%_
                             _%tl1740817524%_
                             _%__splice2079220793%_
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
                                              (_%__kont2079020791%_
                                               _%g1739717555%_
                                               _%g1739817557%_
                                               _%g1739917558%_)
                                              (_%__match2083420835%_
                                               _%e1740017497%_
                                               _%hd1740117501%_
                                               _%tl1740217504%_
                                               _%e1740317507%_
                                               _%hd1740417511%_
                                               _%tl1740517514%_))))))))
                        (_%loop1741217533%_ _%target1740917527%_ '())))))
              (if (gx#stx-pair? _%__stx2078720788%_)
                  (let ((_%e1740017497%_ (gx#syntax-e _%__stx2078720788%_)))
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
                                          (let ((_%__splice2079220793%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1740517514%_
                                                  '0)))
                                            (let ((_%tl1741117530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2079220793%_
                                                      '1)))
                                                  (_%target1740917527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2079220793%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1741117530%_)
                                                  (_%__match2082220823%_
                                                   _%e1740017497%_
                                                   _%hd1740117501%_
                                                   _%tl1740217504%_
                                                   _%e1740317507%_
                                                   _%hd1740417511%_
                                                   _%tl1740517514%_
                                                   _%e1740617517%_
                                                   _%hd1740717521%_
                                                   _%tl1740817524%_
                                                   _%__splice2079220793%_
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
                      (_%__match2084220843%_
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
                                                      (_%__match2084220843%_
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
                                              (_%__match2084220843%_
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
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17591%_)
        (let* ((_%g1759417631%_
                (lambda (_%g1759517627%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1759517627%_)))
               (_%g1759317799%_
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
                                  (if (gx#stx-pair? _%tl1760417655%_)
                                      (let ((_%e1760517658%_
                                             (gx#syntax-e _%tl1760417655%_)))
                                        (let ((_%hd1760617662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1760517658%_)))
                                              (_%tl1760717665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1760517658%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd1760617662%_)
                                              (let ((_g21020_
                                                     (gx#syntax-split-splice
                                                      _%hd1760617662%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21020_)
                                                               (##values-length
                                                                _g21020_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21021_ 2)))
                (error "Context expects 2 values" _g21021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1760817668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21020_
                                                            0)))
                                                        (_%tl1761017671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21020_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1761017671%_)
                                                        (letrec ((_%loop1761117674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1760917678%_ _%lit1761517681%_)
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
                                           _%lit1761517681%_))))
                                (let ((_%lit1761617693%_
                                       (reverse _%lit1761517681%_)))
                                  (if (gx#stx-pair/null? _%tl1760717665%_)
                                      (let ((_g21022_
                                             (gx#syntax-split-splice
                                              _%tl1760717665%_
                                              '0)))
                                        (begin
                                          (let ((_g21023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21022_)
                                                       (##values-length
                                                        _g21022_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21023_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21023_)))
                                          (let ((_%target1761717696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21022_ 0)))
                                                (_%tl1761917699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21022_ 1))))
                                            (if (gx#stx-null? _%tl1761917699%_)
                                                (letrec ((_%loop1762017702%_
                                                          (lambda (_%hd1761817706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause1762417709%_)
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
                             (cons _%lp-hd1762217715%_ _%clause1762417709%_))))
                        (let ((_%clause1762517721%_
                               (reverse _%clause1762417709%_)))
                          ((lambda (_%g1759617724%_
                                    _%g1759717726%_
                                    _%g1759817727%_)
                             (let* ((_%g1775217760%_
                                     (lambda (_%g1775317756%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g1775317756%_)))
                                    (_%g1775117795%_
                                     (lambda (_%g1775317764%_)
                                       ((lambda (_%g1775417767%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g1759817727%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g1775417767%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g1775417767%_
                                                  (cons (foldr (lambda (_%g1777817783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g1777917786%_)
                         (cons _%g1777817783%_ _%g1777917786%_))
                       '()
                       _%g1759717726%_)
                (foldr (lambda (_%g1778017789%_ _%g1778117792%_)
                         (cons _%g1778017789%_ _%g1778117792%_))
                       '()
                       _%g1759617724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g1775317764%_))))
                               (_%g1775117795%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause1762517721%_
                           _%lit1761617693%_
                           _%hd1760317652%_))))))
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
          (_%g1759317799%_ _%stx17591%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17805%_)
        (let* ((_%g1780817845%_
                (lambda (_%g1780917841%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1780917841%_)))
               (_%g1780718200%_
                (lambda (_%g1780917849%_)
                  (if (gx#stx-pair? _%g1780917849%_)
                      (let ((_%e1781317852%_ (gx#syntax-e _%g1780917849%_)))
                        (let ((_%hd1781417856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1781317852%_)))
                              (_%tl1781517859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1781317852%_))))
                          (if (gx#stx-pair? _%tl1781517859%_)
                              (let ((_%e1781617862%_
                                     (gx#syntax-e _%tl1781517859%_)))
                                (let ((_%hd1781717866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1781617862%_)))
                                      (_%tl1781817869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1781617862%_))))
                                  (if (gx#stx-pair? _%hd1781717866%_)
                                      (let ((_%e1781917872%_
                                             (gx#syntax-e _%hd1781717866%_)))
                                        (let ((_%hd1782017876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1781917872%_)))
                                              (_%tl1782117879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1781917872%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1782117879%_)
                                              (let ((_g21024_
                                                     (gx#syntax-split-splice
                                                      _%tl1782117879%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21024_)
                                                               (##values-length
                                                                _g21024_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21025_ 2)))
                (error "Context expects 2 values" _g21025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1782217882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21024_
                                                            0)))
                                                        (_%tl1782417885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21024_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1782417885%_)
                                                        (letrec ((_%loop1782517888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1782317892%_ _%arg1782917895%_)
                            (if (gx#stx-pair? _%hd1782317892%_)
                                (let ((_%e1782617897%_
                                       (gx#syntax-e _%hd1782317892%_)))
                                  (let ((_%lp-hd1782717901%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1782617897%_)))
                                        (_%lp-tl1782817904%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1782617897%_))))
                                    (_%loop1782517888%_
                                     _%lp-tl1782817904%_
                                     (cons _%lp-hd1782717901%_
                                           _%arg1782917895%_))))
                                (let ((_%arg1783017907%_
                                       (reverse _%arg1782917895%_)))
                                  (if (gx#stx-pair/null? _%tl1781817869%_)
                                      (let ((_g21026_
                                             (gx#syntax-split-splice
                                              _%tl1781817869%_
                                              '0)))
                                        (begin
                                          (let ((_g21027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21026_)
                                                       (##values-length
                                                        _g21026_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21027_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21027_)))
                                          (let ((_%target1783117910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21026_ 0)))
                                                (_%tl1783317913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21026_ 1))))
                                            (if (gx#stx-null? _%tl1783317913%_)
                                                (letrec ((_%loop1783417916%_
                                                          (lambda (_%hd1783217920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1783817923%_)
                    (if (gx#stx-pair? _%hd1783217920%_)
                        (let ((_%e1783517925%_ (gx#syntax-e _%hd1783217920%_)))
                          (let ((_%lp-hd1783617929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1783517925%_)))
                                (_%lp-tl1783717932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1783517925%_))))
                            (_%loop1783417916%_
                             _%lp-tl1783717932%_
                             (cons _%lp-hd1783617929%_ _%body1783817923%_))))
                        (let ((_%body1783917935%_
                               (reverse _%body1783817923%_)))
                          ((lambda (_%g1781017938%_
                                    _%g1781117940%_
                                    _%g1781217941%_)
                             (if (and (gx#identifier? _%g1781217941%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1796517968%_
                                                       _%g1796617971%_)
                                                (cons _%g1796517968%_
                                                      _%g1796617971%_))
                                              '()
                                              _%g1781117940%_)))
                                 (let* ((_%g1797417982%_
                                         (lambda (_%g1797517978%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1797517978%_)))
                                        (_%g1797318196%_
                                         (lambda (_%g1797517986%_)
                                           ((lambda (_%g1797617989%_)
                                              (let* ((_%g1800118018%_
                                                      (lambda (_%g1800218014%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1800218014%_)))
                                                     (_%g1800018184%_
                                                      (lambda (_%g1800218022%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1800218022%_)
                                                            (let ((_g21028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1800218022%_ '0)))
                      (begin
                        (let ((_g21029_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g21028_)
                                     (##values-length _g21028_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g21029_ 2)))
                              (error "Context expects 2 values" _g21029_)))
                        (let ((_%target1800418025%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21028_ 0)))
                              (_%tl1800618028%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21028_ 1))))
                          (if (gx#stx-null? _%tl1800618028%_)
                              (letrec ((_%loop1800718031%_
                                        (lambda (_%hd1800518035%_
                                                 _%xarg1801118038%_)
                                          (if (gx#stx-pair? _%hd1800518035%_)
                                              (let ((_%e1800818040%_
                                                     (gx#syntax-e
                                                      _%hd1800518035%_)))
                                                (let ((_%lp-hd1800918044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1800818040%_)))
                                                      (_%lp-tl1801018047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1800818040%_))))
                                                  (_%loop1800718031%_
                                                   _%lp-tl1801018047%_
                                                   (cons _%lp-hd1800918044%_
                                                         _%xarg1801118038%_))))
                                              (let ((_%xarg1801218050%_
                                                     (reverse _%xarg1801118038%_)))
                                                ((lambda (_%g1800318053%_)
                                                   (let* ((_%g1807018078%_
                                                           (lambda (_%g1807118074%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1807118074%_)))
                                                          (_%g1806918148%_
                                                           (lambda (_%g1807118082%_)
                                                             ((lambda (_%g1807218085%_)
                                                                (let* ((_%g1809818106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1809918102%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1809918102%_)))
                               (_%g1809718128%_
                                (lambda (_%g1809918110%_)
                                  ((lambda (_%g1810018113%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%g1810018113%_
                                                  (cons _%g1807218085%_ '())))
                                      (gx#stx-source _%stx17805%_)))
                                   _%g1809918110%_))))
                          (_%g1809718128%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%g1797617989%_
                                              (foldr (lambda (_%g1813118136%_
                                                              _%g1813218139%_)
                                                       (cons _%g1813118136%_
                                                             _%g1813218139%_))
                                                     '()
                                                     _%g1781117940%_))
                                        (foldr (lambda (_%g1813318142%_
                                                        _%g1813418145%_)
                                                 (cons _%g1813318142%_
                                                       _%g1813418145%_))
                                               '()
                                               _%g1781017938%_)))
                            (gx#stx-source _%stx17805%_)))))
                      _%g1807118082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1806918148%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%g1781217941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1815118160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1815218163%_)
                    (cons _%g1815118160%_ _%g1815218163%_))
                  '()
                  _%g1800318053%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1815318166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1815418169%_)
                                      (cons _%g1815318166%_ _%g1815418169%_))
                                    '()
                                    _%g1781117940%_)
                             (foldr (lambda (_%g1815518172%_ _%g1815618175%_)
                                      (cons _%g1815518172%_ _%g1815618175%_))
                                    '()
                                    _%g1781017938%_)))
                 (foldr (lambda (_%g1815718178%_ _%g1815818181%_)
                          (cons _%g1815718178%_ _%g1815818181%_))
                        '()
                        _%g1800318053%_))
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
                 (cons _%g1797617989%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1801218050%_))))))
                                (_%loop1800718031%_ _%target1800418025%_ '()))
                              (_%g1800118018%_ _%g1800218022%_)))))
                    (_%g1800118018%_ _%g1800218022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1800018184%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1818718190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1818818193%_)
                   (cons _%g1818718190%_ _%g1818818193%_))
                 '()
                 _%g1781117940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1797517986%_))))
                                   (_%g1797318196%_
                                    (gx#stx-identifier
                                     _%g1781217941%_
                                     _%g1781217941%_
                                     '"__impl")))
                                 (_%g1780817845%_ _%g1780917849%_)))
                           _%body1783917935%_
                           _%arg1783017907%_
                           _%hd1782017876%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1783417916%_
                                                   _%target1783117910%_
                                                   '()))
                                                (_%g1780817845%_
                                                 _%g1780917849%_)))))
                                      (_%g1780817845%_ _%g1780917849%_)))))))
                  (_%loop1782517888%_ _%target1782217882%_ '()))
                (_%g1780817845%_ _%g1780917849%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1780817845%_
                                               _%g1780917849%_))))
                                      (_%g1780817845%_ _%g1780917849%_))))
                              (_%g1780817845%_ _%g1780917849%_))))
                      (_%g1780817845%_ _%g1780917849%_)))))
          (_%g1780718200%_ _%stx17805%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18207%_)
        (let* ((_%__stx2084520846%_ _%$stx18207%_)
               (_%g1821218248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2084520846%_))))
          (let ((_%__kont2084820849%_
                 (lambda (_%g1821418362%_ _%g1821518364%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1821518364%_
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
                           (cons _%g1821418362%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2085020851%_
                 (lambda (_%g1823118285%_ _%g1823218287%_ _%g1823318288%_)
                   (cons _%g1823318288%_
                         (cons _%g1823218287%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1823118285%_ '()))
                                     '()))))))
            (let* ((_%__match2091020911%_
                    (lambda (_%e1823418255%_
                             _%hd1823518259%_
                             _%tl1823618262%_
                             _%e1823718265%_
                             _%hd1823818269%_
                             _%tl1823918272%_
                             _%e1824018275%_
                             _%hd1824118279%_
                             _%tl1824218282%_)
                      (let ((_%g1823118285%_ _%hd1824118279%_)
                            (_%g1823218287%_ _%hd1823818269%_)
                            (_%g1823318288%_ _%hd1823518259%_))
                        (if (and (gx#identifier? _%g1823218287%_)
                                 (gx#stx-datum? _%g1823118285%_))
                            (_%__kont2085020851%_
                             _%g1823118285%_
                             _%g1823218287%_
                             _%g1823318288%_)
                            (let () (declare (not safe)) (_%g1821218248%_))))))
                   (_%__match2089020891%_
                    (lambda (_%e1821618312%_
                             _%hd1821718316%_
                             _%tl1821818319%_
                             _%e1821918322%_
                             _%hd1822018326%_
                             _%tl1822118329%_
                             _%e1822218332%_
                             _%hd1822318336%_
                             _%tl1822418339%_
                             _%e1822518342%_
                             _%hd1822618346%_
                             _%tl1822718349%_
                             _%e1822818352%_
                             _%hd1822918356%_
                             _%tl1823018359%_)
                      (let ((_%g1821418362%_ _%hd1822918356%_)
                            (_%g1821518364%_ _%hd1822018326%_))
                        (if (gx#identifier? _%g1821518364%_)
                            (_%__kont2084820849%_
                             _%g1821418362%_
                             _%g1821518364%_)
                            (_%__match2091020911%_
                             _%e1821618312%_
                             _%hd1821718316%_
                             _%tl1821818319%_
                             _%e1821918322%_
                             _%hd1822018326%_
                             _%tl1822118329%_
                             _%e1822218332%_
                             _%hd1822318336%_
                             _%tl1822418339%_))))))
              (if (gx#stx-pair? _%__stx2084520846%_)
                  (let ((_%e1821618312%_ (gx#syntax-e _%__stx2084520846%_)))
                    (let ((_%tl1821818319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1821618312%_)))
                          (_%hd1821718316%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1821618312%_))))
                      (if (gx#stx-pair? _%tl1821818319%_)
                          (let ((_%e1821918322%_
                                 (gx#syntax-e _%tl1821818319%_)))
                            (let ((_%tl1822118329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1821918322%_)))
                                  (_%hd1822018326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1821918322%_))))
                              (if (gx#stx-pair? _%tl1822118329%_)
                                  (let ((_%e1822218332%_
                                         (gx#syntax-e _%tl1822118329%_)))
                                    (let ((_%tl1822418339%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1822218332%_)))
                                          (_%hd1822318336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1822218332%_))))
                                      (if (gx#stx-pair? _%hd1822318336%_)
                                          (let ((_%e1822518342%_
                                                 (gx#syntax-e
                                                  _%hd1822318336%_)))
                                            (let ((_%tl1822718349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1822518342%_)))
                                                  (_%hd1822618346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1822518342%_))))
                                              (if (gx#identifier?
                                                   _%hd1822618346%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21030_|
                                                       _%hd1822618346%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1822718349%_)
                                                          (let ((_%e1822818352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1822718349%_)))
                    (let ((_%tl1823018359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1822818352%_)))
                          (_%hd1822918356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1822818352%_))))
                      (if (gx#stx-null? _%tl1823018359%_)
                          (if (gx#stx-null? _%tl1822418339%_)
                              (_%__match2089020891%_
                               _%e1821618312%_
                               _%hd1821718316%_
                               _%tl1821818319%_
                               _%e1821918322%_
                               _%hd1822018326%_
                               _%tl1822118329%_
                               _%e1822218332%_
                               _%hd1822318336%_
                               _%tl1822418339%_
                               _%e1822518342%_
                               _%hd1822618346%_
                               _%tl1822718349%_
                               _%e1822818352%_
                               _%hd1822918356%_
                               _%tl1823018359%_)
                              (let () (declare (not safe)) (_%g1821218248%_)))
                          (if (gx#stx-null? _%tl1822418339%_)
                              (_%__match2091020911%_
                               _%e1821618312%_
                               _%hd1821718316%_
                               _%tl1821818319%_
                               _%e1821918322%_
                               _%hd1822018326%_
                               _%tl1822118329%_
                               _%e1822218332%_
                               _%hd1822318336%_
                               _%tl1822418339%_)
                              (let ()
                                (declare (not safe))
                                (_%g1821218248%_))))))
                  (if (gx#stx-null? _%tl1822418339%_)
                      (_%__match2091020911%_
                       _%e1821618312%_
                       _%hd1821718316%_
                       _%tl1821818319%_
                       _%e1821918322%_
                       _%hd1822018326%_
                       _%tl1822118329%_
                       _%e1822218332%_
                       _%hd1822318336%_
                       _%tl1822418339%_)
                      (let () (declare (not safe)) (_%g1821218248%_))))
              (if (gx#stx-null? _%tl1822418339%_)
                  (_%__match2091020911%_
                   _%e1821618312%_
                   _%hd1821718316%_
                   _%tl1821818319%_
                   _%e1821918322%_
                   _%hd1822018326%_
                   _%tl1822118329%_
                   _%e1822218332%_
                   _%hd1822318336%_
                   _%tl1822418339%_)
                  (let () (declare (not safe)) (_%g1821218248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1822418339%_)
                                                      (_%__match2091020911%_
                                                       _%e1821618312%_
                                                       _%hd1821718316%_
                                                       _%tl1821818319%_
                                                       _%e1821918322%_
                                                       _%hd1822018326%_
                                                       _%tl1822118329%_
                                                       _%e1822218332%_
                                                       _%hd1822318336%_
                                                       _%tl1822418339%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1821218248%_))))))
                                          (if (gx#stx-null? _%tl1822418339%_)
                                              (_%__match2091020911%_
                                               _%e1821618312%_
                                               _%hd1821718316%_
                                               _%tl1821818319%_
                                               _%e1821918322%_
                                               _%hd1822018326%_
                                               _%tl1822118329%_
                                               _%e1822218332%_
                                               _%hd1822318336%_
                                               _%tl1822418339%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1821218248%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1821218248%_)))))
                          (let () (declare (not safe)) (_%g1821218248%_)))))
                  (let () (declare (not safe)) (_%g1821218248%_))))))))))

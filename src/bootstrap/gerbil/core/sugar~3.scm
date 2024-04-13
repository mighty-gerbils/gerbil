(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g20985_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17655%_)
        (let* ((_%__stx2074020741%_ _%$stx17655%_)
               (_%g1766017699%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2074020741%_))))
          (let ((_%__kont2074320744%_
                 (lambda (_%L17822%_ _%L17824%_ _%L17825%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17825%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17824%_
                                                 (foldr (lambda (_%g1784417847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1784517850%_)
                  (cons _%g1784417847%_ _%g1784517850%_))
                '()
                _%L17822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2074720748%_
                 (lambda (_%L17736%_ _%L17738%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17738%_ (cons _%L17736%_ '()))))))
            (let* ((_%__match2079520796%_
                    (lambda (_%e1768517706%_
                             _%hd1768617710%_
                             _%tl1768717713%_
                             _%e1768817716%_
                             _%hd1768917720%_
                             _%tl1769017723%_
                             _%e1769117726%_
                             _%hd1769217730%_
                             _%tl1769317733%_)
                      (let ((_%L17736%_ _%hd1769217730%_)
                            (_%L17738%_ _%hd1768917720%_))
                        (if (gx#identifier? _%L17738%_)
                            (_%__kont2074720748%_ _%L17736%_ _%L17738%_)
                            (let () (declare (not safe)) (_%g1766017699%_))))))
                   (_%__match2078720788%_
                    (lambda (_%e1768517706%_
                             _%hd1768617710%_
                             _%tl1768717713%_
                             _%e1768817716%_
                             _%hd1768917720%_
                             _%tl1769017723%_)
                      (if (gx#stx-pair? _%tl1769017723%_)
                          (let ((_%e1769117726%_
                                 (gx#syntax-e _%tl1769017723%_)))
                            (let ((_%tl1769317733%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1769117726%_)))
                                  (_%hd1769217730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1769117726%_))))
                              (if (gx#stx-null? _%tl1769317733%_)
                                  (_%__match2079520796%_
                                   _%e1768517706%_
                                   _%hd1768617710%_
                                   _%tl1768717713%_
                                   _%e1768817716%_
                                   _%hd1768917720%_
                                   _%tl1769017723%_
                                   _%e1769117726%_
                                   _%hd1769217730%_
                                   _%tl1769317733%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1766017699%_)))))
                          (let () (declare (not safe)) (_%g1766017699%_)))))
                   (_%__match2077520776%_
                    (lambda (_%e1766517762%_
                             _%hd1766617766%_
                             _%tl1766717769%_
                             _%e1766817772%_
                             _%hd1766917776%_
                             _%tl1767017779%_
                             _%e1767117782%_
                             _%hd1767217786%_
                             _%tl1767317789%_
                             _%__splice2074520746%_
                             _%target1767417792%_
                             _%tl1767617795%_)
                      (letrec ((_%loop1767717798%_
                                (lambda (_%hd1767517802%_ _%body1768117805%_)
                                  (if (gx#stx-pair? _%hd1767517802%_)
                                      (let ((_%e1767817808%_
                                             (gx#syntax-e _%hd1767517802%_)))
                                        (let ((_%lp-tl1768017815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1767817808%_)))
                                              (_%lp-hd1767917812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1767817808%_))))
                                          (_%loop1767717798%_
                                           _%lp-tl1768017815%_
                                           (cons _%lp-hd1767917812%_
                                                 _%body1768117805%_))))
                                      (let ((_%body1768217818%_
                                             (reverse _%body1768117805%_)))
                                        (let ((_%L17822%_ _%body1768217818%_)
                                              (_%L17824%_ _%tl1767317789%_)
                                              (_%L17825%_ _%hd1767217786%_))
                                          (if (gx#identifier? _%L17825%_)
                                              (_%__kont2074320744%_
                                               _%L17822%_
                                               _%L17824%_
                                               _%L17825%_)
                                              (_%__match2078720788%_
                                               _%e1766517762%_
                                               _%hd1766617766%_
                                               _%tl1766717769%_
                                               _%e1766817772%_
                                               _%hd1766917776%_
                                               _%tl1767017779%_))))))))
                        (_%loop1767717798%_ _%target1767417792%_ '())))))
              (if (gx#stx-pair? _%__stx2074020741%_)
                  (let ((_%e1766517762%_ (gx#syntax-e _%__stx2074020741%_)))
                    (let ((_%tl1766717769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1766517762%_)))
                          (_%hd1766617766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1766517762%_))))
                      (if (gx#stx-pair? _%tl1766717769%_)
                          (let ((_%e1766817772%_
                                 (gx#syntax-e _%tl1766717769%_)))
                            (let ((_%tl1767017779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1766817772%_)))
                                  (_%hd1766917776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1766817772%_))))
                              (if (gx#stx-pair? _%hd1766917776%_)
                                  (let ((_%e1767117782%_
                                         (gx#syntax-e _%hd1766917776%_)))
                                    (let ((_%tl1767317789%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1767117782%_)))
                                          (_%hd1767217786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1767117782%_))))
                                      (if (gx#stx-pair/null? _%tl1767017779%_)
                                          (let ((_%__splice2074520746%_
                                                 (gx#syntax-split-splice
                                                  _%tl1767017779%_
                                                  '0)))
                                            (let ((_%tl1767617795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074520746%_
                                                      '1)))
                                                  (_%target1767417792%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2074520746%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1767617795%_)
                                                  (_%__match2077520776%_
                                                   _%e1766517762%_
                                                   _%hd1766617766%_
                                                   _%tl1766717769%_
                                                   _%e1766817772%_
                                                   _%hd1766917776%_
                                                   _%tl1767017779%_
                                                   _%e1767117782%_
                                                   _%hd1767217786%_
                                                   _%tl1767317789%_
                                                   _%__splice2074520746%_
                                                   _%target1767417792%_
                                                   _%tl1767617795%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1767017779%_)
                                                      (let ((_%e1769117726%_
                                                             (gx#syntax-e
                                                              _%tl1767017779%_)))
                                                        (let ((_%tl1769317733%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1769117726%_)))
                      (_%hd1769217730%_
                       (let () (declare (not safe)) (##car _%e1769117726%_))))
                  (if (gx#stx-null? _%tl1769317733%_)
                      (_%__match2079520796%_
                       _%e1766517762%_
                       _%hd1766617766%_
                       _%tl1766717769%_
                       _%e1766817772%_
                       _%hd1766917776%_
                       _%tl1767017779%_
                       _%e1769117726%_
                       _%hd1769217730%_
                       _%tl1769317733%_)
                      (let () (declare (not safe)) (_%g1766017699%_)))))
              (let () (declare (not safe)) (_%g1766017699%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1767017779%_)
                                              (let ((_%e1769117726%_
                                                     (gx#syntax-e
                                                      _%tl1767017779%_)))
                                                (let ((_%tl1769317733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1769117726%_)))
                                                      (_%hd1769217730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1769117726%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1769317733%_)
                                                      (_%__match2079520796%_
                                                       _%e1766517762%_
                                                       _%hd1766617766%_
                                                       _%tl1766717769%_
                                                       _%e1766817772%_
                                                       _%hd1766917776%_
                                                       _%tl1767017779%_
                                                       _%e1769117726%_
                                                       _%hd1769217730%_
                                                       _%tl1769317733%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1766017699%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1766017699%_))))))
                                  (if (gx#stx-pair? _%tl1767017779%_)
                                      (let ((_%e1769117726%_
                                             (gx#syntax-e _%tl1767017779%_)))
                                        (let ((_%tl1769317733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1769117726%_)))
                                              (_%hd1769217730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1769117726%_))))
                                          (if (gx#stx-null? _%tl1769317733%_)
                                              (_%__match2079520796%_
                                               _%e1766517762%_
                                               _%hd1766617766%_
                                               _%tl1766717769%_
                                               _%e1766817772%_
                                               _%hd1766917776%_
                                               _%tl1767017779%_
                                               _%e1769117726%_
                                               _%hd1769217730%_
                                               _%tl1769317733%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1766017699%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1766017699%_))))))
                          (let () (declare (not safe)) (_%g1766017699%_)))))
                  (let () (declare (not safe)) (_%g1766017699%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17858%_)
        (let* ((_%g1786117898%_
                (lambda (_%g1786217894%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1786217894%_)))
               (_%g1786018259%_
                (lambda (_%g1786217902%_)
                  (if (gx#stx-pair? _%g1786217902%_)
                      (let ((_%e1786617905%_ (gx#syntax-e _%g1786217902%_)))
                        (let ((_%hd1786717909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1786617905%_)))
                              (_%tl1786817912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1786617905%_))))
                          (if (gx#stx-pair? _%tl1786817912%_)
                              (let ((_%e1786917915%_
                                     (gx#syntax-e _%tl1786817912%_)))
                                (let ((_%hd1787017919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1786917915%_)))
                                      (_%tl1787117922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1786917915%_))))
                                  (if (gx#stx-pair? _%hd1787017919%_)
                                      (let ((_%e1787217925%_
                                             (gx#syntax-e _%hd1787017919%_)))
                                        (let ((_%hd1787317929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1787217925%_)))
                                              (_%tl1787417932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1787217925%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1787417932%_)
                                              (let ((_g20979_
                                                     (gx#syntax-split-splice
                                                      _%tl1787417932%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20979_)
                                                               (##vector-length
                                                                _g20979_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20980_ 2)))
                (error "Context expects 2 values" _g20980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1787517935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20979_
                                                            0)))
                                                        (_%tl1787717938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20979_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1787717938%_)
                                                        (letrec ((_%loop1787817941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1787617945%_ _%arg1788217948%_)
                            (if (gx#stx-pair? _%hd1787617945%_)
                                (let ((_%e1787917951%_
                                       (gx#syntax-e _%hd1787617945%_)))
                                  (let ((_%lp-hd1788017955%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1787917951%_)))
                                        (_%lp-tl1788117958%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1787917951%_))))
                                    (_%loop1787817941%_
                                     _%lp-tl1788117958%_
                                     (cons _%lp-hd1788017955%_
                                           _%arg1788217948%_))))
                                (let ((_%arg1788317961%_
                                       (reverse _%arg1788217948%_)))
                                  (if (gx#stx-pair/null? _%tl1787117922%_)
                                      (let ((_g20981_
                                             (gx#syntax-split-splice
                                              _%tl1787117922%_
                                              '0)))
                                        (begin
                                          (let ((_g20982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20981_)
                                                       (##vector-length
                                                        _g20981_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20982_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20982_)))
                                          (let ((_%target1788417965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20981_ 0)))
                                                (_%tl1788617968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20981_ 1))))
                                            (if (gx#stx-null? _%tl1788617968%_)
                                                (letrec ((_%loop1788717971%_
                                                          (lambda (_%hd1788517975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1789117978%_)
                    (if (gx#stx-pair? _%hd1788517975%_)
                        (let ((_%e1788817981%_ (gx#syntax-e _%hd1788517975%_)))
                          (let ((_%lp-hd1788917985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1788817981%_)))
                                (_%lp-tl1789017988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1788817981%_))))
                            (_%loop1788717971%_
                             _%lp-tl1789017988%_
                             (cons _%lp-hd1788917985%_ _%body1789117978%_))))
                        (let ((_%body1789217991%_
                               (reverse _%body1789117978%_)))
                          ((lambda (_%L17995%_ _%L17997%_ _%L17998%_)
                             (if (and (gx#identifier? _%L17998%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1802218025%_
                                                       _%g1802318028%_)
                                                (cons _%g1802218025%_
                                                      _%g1802318028%_))
                                              '()
                                              _%L17997%_)))
                                 (let* ((_%g1803118039%_
                                         (lambda (_%g1803218035%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1803218035%_)))
                                        (_%g1803018255%_
                                         (lambda (_%g1803218043%_)
                                           ((lambda (_%L18046%_)
                                              (let* ((_%g1805818075%_
                                                      (lambda (_%g1805918071%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1805918071%_)))
                                                     (_%g1805718243%_
                                                      (lambda (_%g1805918079%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1805918079%_)
                                                            (let ((_g20983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1805918079%_ '0)))
                      (begin
                        (let ((_g20984_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g20983_)
                                     (##vector-length _g20983_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g20984_ 2)))
                              (error "Context expects 2 values" _g20984_)))
                        (let ((_%target1806118082%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20983_ 0)))
                              (_%tl1806318085%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20983_ 1))))
                          (if (gx#stx-null? _%tl1806318085%_)
                              (letrec ((_%loop1806418088%_
                                        (lambda (_%hd1806218092%_
                                                 _%xarg1806818095%_)
                                          (if (gx#stx-pair? _%hd1806218092%_)
                                              (let ((_%e1806518098%_
                                                     (gx#syntax-e
                                                      _%hd1806218092%_)))
                                                (let ((_%lp-hd1806618102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1806518098%_)))
                                                      (_%lp-tl1806718105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1806518098%_))))
                                                  (_%loop1806418088%_
                                                   _%lp-tl1806718105%_
                                                   (cons _%lp-hd1806618102%_
                                                         _%xarg1806818095%_))))
                                              (let ((_%xarg1806918108%_
                                                     (reverse _%xarg1806818095%_)))
                                                ((lambda (_%L18112%_)
                                                   (let* ((_%g1812918137%_
                                                           (lambda (_%g1813018133%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1813018133%_)))
                                                          (_%g1812818207%_
                                                           (lambda (_%g1813018141%_)
                                                             ((lambda (_%L18144%_)
                                                                (let* ((_%g1815718165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1815818161%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1815818161%_)))
                               (_%g1815618187%_
                                (lambda (_%g1815818169%_)
                                  ((lambda (_%L18172%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18172%_
                                                  (cons _%L18144%_ '())))
                                      (gx#stx-source _%stx17858%_)))
                                   _%g1815818169%_))))
                          (_%g1815618187%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L18046%_
                                              (foldr (lambda (_%g1819218195%_
                                                              _%g1819318198%_)
                                                       (cons _%g1819218195%_
                                                             _%g1819318198%_))
                                                     '()
                                                     _%L17997%_))
                                        (foldr (lambda (_%g1819018201%_
                                                        _%g1819118204%_)
                                                 (cons _%g1819018201%_
                                                       _%g1819118204%_))
                                               '()
                                               _%L17995%_)))
                            (gx#stx-source _%stx17858%_)))))
                      _%g1813018141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1812818207%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L17998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1821618219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1821718222%_)
                    (cons _%g1821618219%_ _%g1821718222%_))
                  '()
                  _%L18112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1821418225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1821518228%_)
                                      (cons _%g1821418225%_ _%g1821518228%_))
                                    '()
                                    _%L17997%_)
                             (foldr (lambda (_%g1821218231%_ _%g1821318234%_)
                                      (cons _%g1821218231%_ _%g1821318234%_))
                                    '()
                                    _%L17995%_)))
                 (foldr (lambda (_%g1821018237%_ _%g1821118240%_)
                          (cons _%g1821018237%_ _%g1821118240%_))
                        '()
                        _%L18112%_))
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
                 (cons _%L18046%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1806918108%_))))))
                                (_%loop1806418088%_ _%target1806118082%_ '()))
                              (_%g1805818075%_ _%g1805918079%_)))))
                    (_%g1805818075%_ _%g1805918079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1805718243%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1824618249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1824718252%_)
                   (cons _%g1824618249%_ _%g1824718252%_))
                 '()
                 _%L17997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1803218043%_))))
                                   (_%g1803018255%_
                                    (gx#stx-identifier
                                     _%L17998%_
                                     _%L17998%_
                                     '"__impl")))
                                 (_%g1786117898%_ _%g1786217902%_)))
                           _%body1789217991%_
                           _%arg1788317961%_
                           _%hd1787317929%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1788717971%_
                                                   _%target1788417965%_
                                                   '()))
                                                (_%g1786117898%_
                                                 _%g1786217902%_)))))
                                      (_%g1786117898%_ _%g1786217902%_)))))))
                  (_%loop1787817941%_ _%target1787517935%_ '()))
                (_%g1786117898%_ _%g1786217902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1786117898%_
                                               _%g1786217902%_))))
                                      (_%g1786117898%_ _%g1786217902%_))))
                              (_%g1786117898%_ _%g1786217902%_))))
                      (_%g1786117898%_ _%g1786217902%_)))))
          (_%g1786018259%_ _%stx17858%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18266%_)
        (let* ((_%__stx2079820799%_ _%$stx18266%_)
               (_%g1827118307%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2079820799%_))))
          (let ((_%__kont2080120802%_
                 (lambda (_%L18421%_ _%L18423%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18423%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18421%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2080320804%_
                 (lambda (_%L18344%_ _%L18346%_ _%L18347%_)
                   (cons _%L18347%_
                         (cons _%L18346%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18344%_ '()))
                                     '()))))))
            (let* ((_%__match2086320864%_
                    (lambda (_%e1829318314%_
                             _%hd1829418318%_
                             _%tl1829518321%_
                             _%e1829618324%_
                             _%hd1829718328%_
                             _%tl1829818331%_
                             _%e1829918334%_
                             _%hd1830018338%_
                             _%tl1830118341%_)
                      (let ((_%L18344%_ _%hd1830018338%_)
                            (_%L18346%_ _%hd1829718328%_)
                            (_%L18347%_ _%hd1829418318%_))
                        (if (and (gx#identifier? _%L18346%_)
                                 (gx#stx-datum? _%L18344%_))
                            (_%__kont2080320804%_
                             _%L18344%_
                             _%L18346%_
                             _%L18347%_)
                            (let () (declare (not safe)) (_%g1827118307%_))))))
                   (_%__match2084320844%_
                    (lambda (_%e1827518371%_
                             _%hd1827618375%_
                             _%tl1827718378%_
                             _%e1827818381%_
                             _%hd1827918385%_
                             _%tl1828018388%_
                             _%e1828118391%_
                             _%hd1828218395%_
                             _%tl1828318398%_
                             _%e1828418401%_
                             _%hd1828518405%_
                             _%tl1828618408%_
                             _%e1828718411%_
                             _%hd1828818415%_
                             _%tl1828918418%_)
                      (let ((_%L18421%_ _%hd1828818415%_)
                            (_%L18423%_ _%hd1827918385%_))
                        (if (gx#identifier? _%L18423%_)
                            (_%__kont2080120802%_ _%L18421%_ _%L18423%_)
                            (_%__match2086320864%_
                             _%e1827518371%_
                             _%hd1827618375%_
                             _%tl1827718378%_
                             _%e1827818381%_
                             _%hd1827918385%_
                             _%tl1828018388%_
                             _%e1828118391%_
                             _%hd1828218395%_
                             _%tl1828318398%_))))))
              (if (gx#stx-pair? _%__stx2079820799%_)
                  (let ((_%e1827518371%_ (gx#syntax-e _%__stx2079820799%_)))
                    (let ((_%tl1827718378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1827518371%_)))
                          (_%hd1827618375%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1827518371%_))))
                      (if (gx#stx-pair? _%tl1827718378%_)
                          (let ((_%e1827818381%_
                                 (gx#syntax-e _%tl1827718378%_)))
                            (let ((_%tl1828018388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1827818381%_)))
                                  (_%hd1827918385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1827818381%_))))
                              (if (gx#stx-pair? _%tl1828018388%_)
                                  (let ((_%e1828118391%_
                                         (gx#syntax-e _%tl1828018388%_)))
                                    (let ((_%tl1828318398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1828118391%_)))
                                          (_%hd1828218395%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1828118391%_))))
                                      (if (gx#stx-pair? _%hd1828218395%_)
                                          (let ((_%e1828418401%_
                                                 (gx#syntax-e
                                                  _%hd1828218395%_)))
                                            (let ((_%tl1828618408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1828418401%_)))
                                                  (_%hd1828518405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1828418401%_))))
                                              (if (gx#identifier?
                                                   _%hd1828518405%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g20985_|
                                                       _%hd1828518405%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1828618408%_)
                                                          (let ((_%e1828718411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1828618408%_)))
                    (let ((_%tl1828918418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1828718411%_)))
                          (_%hd1828818415%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1828718411%_))))
                      (if (gx#stx-null? _%tl1828918418%_)
                          (if (gx#stx-null? _%tl1828318398%_)
                              (_%__match2084320844%_
                               _%e1827518371%_
                               _%hd1827618375%_
                               _%tl1827718378%_
                               _%e1827818381%_
                               _%hd1827918385%_
                               _%tl1828018388%_
                               _%e1828118391%_
                               _%hd1828218395%_
                               _%tl1828318398%_
                               _%e1828418401%_
                               _%hd1828518405%_
                               _%tl1828618408%_
                               _%e1828718411%_
                               _%hd1828818415%_
                               _%tl1828918418%_)
                              (let () (declare (not safe)) (_%g1827118307%_)))
                          (if (gx#stx-null? _%tl1828318398%_)
                              (_%__match2086320864%_
                               _%e1827518371%_
                               _%hd1827618375%_
                               _%tl1827718378%_
                               _%e1827818381%_
                               _%hd1827918385%_
                               _%tl1828018388%_
                               _%e1828118391%_
                               _%hd1828218395%_
                               _%tl1828318398%_)
                              (let ()
                                (declare (not safe))
                                (_%g1827118307%_))))))
                  (if (gx#stx-null? _%tl1828318398%_)
                      (_%__match2086320864%_
                       _%e1827518371%_
                       _%hd1827618375%_
                       _%tl1827718378%_
                       _%e1827818381%_
                       _%hd1827918385%_
                       _%tl1828018388%_
                       _%e1828118391%_
                       _%hd1828218395%_
                       _%tl1828318398%_)
                      (let () (declare (not safe)) (_%g1827118307%_))))
              (if (gx#stx-null? _%tl1828318398%_)
                  (_%__match2086320864%_
                   _%e1827518371%_
                   _%hd1827618375%_
                   _%tl1827718378%_
                   _%e1827818381%_
                   _%hd1827918385%_
                   _%tl1828018388%_
                   _%e1828118391%_
                   _%hd1828218395%_
                   _%tl1828318398%_)
                  (let () (declare (not safe)) (_%g1827118307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1828318398%_)
                                                      (_%__match2086320864%_
                                                       _%e1827518371%_
                                                       _%hd1827618375%_
                                                       _%tl1827718378%_
                                                       _%e1827818381%_
                                                       _%hd1827918385%_
                                                       _%tl1828018388%_
                                                       _%e1828118391%_
                                                       _%hd1828218395%_
                                                       _%tl1828318398%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1827118307%_))))))
                                          (if (gx#stx-null? _%tl1828318398%_)
                                              (_%__match2086320864%_
                                               _%e1827518371%_
                                               _%hd1827618375%_
                                               _%tl1827718378%_
                                               _%e1827818381%_
                                               _%hd1827918385%_
                                               _%tl1828018388%_
                                               _%e1828118391%_
                                               _%hd1828218395%_
                                               _%tl1828318398%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1827118307%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1827118307%_)))))
                          (let () (declare (not safe)) (_%g1827118307%_)))))
                  (let () (declare (not safe)) (_%g1827118307%_))))))))))

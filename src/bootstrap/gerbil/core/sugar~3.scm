(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21019_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17689%_)
        (let* ((_%__stx2077420775%_ _%$stx17689%_)
               (_%g1769417733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2077420775%_))))
          (let ((_%__kont2077720778%_
                 (lambda (_%L17856%_ _%L17858%_ _%L17859%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17859%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17858%_
                                                 (foldr (lambda (_%g1787817881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1787917884%_)
                  (cons _%g1787817881%_ _%g1787917884%_))
                '()
                _%L17856%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2078120782%_
                 (lambda (_%L17770%_ _%L17772%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17772%_ (cons _%L17770%_ '()))))))
            (let* ((_%__match2082920830%_
                    (lambda (_%e1771917740%_
                             _%hd1772017744%_
                             _%tl1772117747%_
                             _%e1772217750%_
                             _%hd1772317754%_
                             _%tl1772417757%_
                             _%e1772517760%_
                             _%hd1772617764%_
                             _%tl1772717767%_)
                      (let ((_%L17770%_ _%hd1772617764%_)
                            (_%L17772%_ _%hd1772317754%_))
                        (if (gx#identifier? _%L17772%_)
                            (_%__kont2078120782%_ _%L17770%_ _%L17772%_)
                            (let () (declare (not safe)) (_%g1769417733%_))))))
                   (_%__match2082120822%_
                    (lambda (_%e1771917740%_
                             _%hd1772017744%_
                             _%tl1772117747%_
                             _%e1772217750%_
                             _%hd1772317754%_
                             _%tl1772417757%_)
                      (if (gx#stx-pair? _%tl1772417757%_)
                          (let ((_%e1772517760%_
                                 (gx#syntax-e _%tl1772417757%_)))
                            (let ((_%tl1772717767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1772517760%_)))
                                  (_%hd1772617764%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1772517760%_))))
                              (if (gx#stx-null? _%tl1772717767%_)
                                  (_%__match2082920830%_
                                   _%e1771917740%_
                                   _%hd1772017744%_
                                   _%tl1772117747%_
                                   _%e1772217750%_
                                   _%hd1772317754%_
                                   _%tl1772417757%_
                                   _%e1772517760%_
                                   _%hd1772617764%_
                                   _%tl1772717767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1769417733%_)))))
                          (let () (declare (not safe)) (_%g1769417733%_)))))
                   (_%__match2080920810%_
                    (lambda (_%e1769917796%_
                             _%hd1770017800%_
                             _%tl1770117803%_
                             _%e1770217806%_
                             _%hd1770317810%_
                             _%tl1770417813%_
                             _%e1770517816%_
                             _%hd1770617820%_
                             _%tl1770717823%_
                             _%__splice2077920780%_
                             _%target1770817826%_
                             _%tl1771017829%_)
                      (letrec ((_%loop1771117832%_
                                (lambda (_%hd1770917836%_ _%body1771517839%_)
                                  (if (gx#stx-pair? _%hd1770917836%_)
                                      (let ((_%e1771217842%_
                                             (gx#syntax-e _%hd1770917836%_)))
                                        (let ((_%lp-tl1771417849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1771217842%_)))
                                              (_%lp-hd1771317846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1771217842%_))))
                                          (_%loop1771117832%_
                                           _%lp-tl1771417849%_
                                           (cons _%lp-hd1771317846%_
                                                 _%body1771517839%_))))
                                      (let ((_%body1771617852%_
                                             (reverse _%body1771517839%_)))
                                        (let ((_%L17856%_ _%body1771617852%_)
                                              (_%L17858%_ _%tl1770717823%_)
                                              (_%L17859%_ _%hd1770617820%_))
                                          (if (gx#identifier? _%L17859%_)
                                              (_%__kont2077720778%_
                                               _%L17856%_
                                               _%L17858%_
                                               _%L17859%_)
                                              (_%__match2082120822%_
                                               _%e1769917796%_
                                               _%hd1770017800%_
                                               _%tl1770117803%_
                                               _%e1770217806%_
                                               _%hd1770317810%_
                                               _%tl1770417813%_))))))))
                        (_%loop1771117832%_ _%target1770817826%_ '())))))
              (if (gx#stx-pair? _%__stx2077420775%_)
                  (let ((_%e1769917796%_ (gx#syntax-e _%__stx2077420775%_)))
                    (let ((_%tl1770117803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1769917796%_)))
                          (_%hd1770017800%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1769917796%_))))
                      (if (gx#stx-pair? _%tl1770117803%_)
                          (let ((_%e1770217806%_
                                 (gx#syntax-e _%tl1770117803%_)))
                            (let ((_%tl1770417813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1770217806%_)))
                                  (_%hd1770317810%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1770217806%_))))
                              (if (gx#stx-pair? _%hd1770317810%_)
                                  (let ((_%e1770517816%_
                                         (gx#syntax-e _%hd1770317810%_)))
                                    (let ((_%tl1770717823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1770517816%_)))
                                          (_%hd1770617820%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1770517816%_))))
                                      (if (gx#stx-pair/null? _%tl1770417813%_)
                                          (let ((_%__splice2077920780%_
                                                 (gx#syntax-split-splice
                                                  _%tl1770417813%_
                                                  '0)))
                                            (let ((_%tl1771017829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2077920780%_
                                                      '1)))
                                                  (_%target1770817826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2077920780%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1771017829%_)
                                                  (_%__match2080920810%_
                                                   _%e1769917796%_
                                                   _%hd1770017800%_
                                                   _%tl1770117803%_
                                                   _%e1770217806%_
                                                   _%hd1770317810%_
                                                   _%tl1770417813%_
                                                   _%e1770517816%_
                                                   _%hd1770617820%_
                                                   _%tl1770717823%_
                                                   _%__splice2077920780%_
                                                   _%target1770817826%_
                                                   _%tl1771017829%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1770417813%_)
                                                      (let ((_%e1772517760%_
                                                             (gx#syntax-e
                                                              _%tl1770417813%_)))
                                                        (let ((_%tl1772717767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1772517760%_)))
                      (_%hd1772617764%_
                       (let () (declare (not safe)) (##car _%e1772517760%_))))
                  (if (gx#stx-null? _%tl1772717767%_)
                      (_%__match2082920830%_
                       _%e1769917796%_
                       _%hd1770017800%_
                       _%tl1770117803%_
                       _%e1770217806%_
                       _%hd1770317810%_
                       _%tl1770417813%_
                       _%e1772517760%_
                       _%hd1772617764%_
                       _%tl1772717767%_)
                      (let () (declare (not safe)) (_%g1769417733%_)))))
              (let () (declare (not safe)) (_%g1769417733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1770417813%_)
                                              (let ((_%e1772517760%_
                                                     (gx#syntax-e
                                                      _%tl1770417813%_)))
                                                (let ((_%tl1772717767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1772517760%_)))
                                                      (_%hd1772617764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1772517760%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1772717767%_)
                                                      (_%__match2082920830%_
                                                       _%e1769917796%_
                                                       _%hd1770017800%_
                                                       _%tl1770117803%_
                                                       _%e1770217806%_
                                                       _%hd1770317810%_
                                                       _%tl1770417813%_
                                                       _%e1772517760%_
                                                       _%hd1772617764%_
                                                       _%tl1772717767%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1769417733%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1769417733%_))))))
                                  (if (gx#stx-pair? _%tl1770417813%_)
                                      (let ((_%e1772517760%_
                                             (gx#syntax-e _%tl1770417813%_)))
                                        (let ((_%tl1772717767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1772517760%_)))
                                              (_%hd1772617764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1772517760%_))))
                                          (if (gx#stx-null? _%tl1772717767%_)
                                              (_%__match2082920830%_
                                               _%e1769917796%_
                                               _%hd1770017800%_
                                               _%tl1770117803%_
                                               _%e1770217806%_
                                               _%hd1770317810%_
                                               _%tl1770417813%_
                                               _%e1772517760%_
                                               _%hd1772617764%_
                                               _%tl1772717767%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1769417733%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1769417733%_))))))
                          (let () (declare (not safe)) (_%g1769417733%_)))))
                  (let () (declare (not safe)) (_%g1769417733%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17892%_)
        (let* ((_%g1789517932%_
                (lambda (_%g1789617928%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1789617928%_)))
               (_%g1789418293%_
                (lambda (_%g1789617936%_)
                  (if (gx#stx-pair? _%g1789617936%_)
                      (let ((_%e1790017939%_ (gx#syntax-e _%g1789617936%_)))
                        (let ((_%hd1790117943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1790017939%_)))
                              (_%tl1790217946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1790017939%_))))
                          (if (gx#stx-pair? _%tl1790217946%_)
                              (let ((_%e1790317949%_
                                     (gx#syntax-e _%tl1790217946%_)))
                                (let ((_%hd1790417953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1790317949%_)))
                                      (_%tl1790517956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1790317949%_))))
                                  (if (gx#stx-pair? _%hd1790417953%_)
                                      (let ((_%e1790617959%_
                                             (gx#syntax-e _%hd1790417953%_)))
                                        (let ((_%hd1790717963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1790617959%_)))
                                              (_%tl1790817966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1790617959%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1790817966%_)
                                              (let ((_g21013_
                                                     (gx#syntax-split-splice
                                                      _%tl1790817966%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21013_)
                                                               (##vector-length
                                                                _g21013_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21014_ 2)))
                (error "Context expects 2 values" _g21014_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1790917969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21013_
                                                            0)))
                                                        (_%tl1791117972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21013_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1791117972%_)
                                                        (letrec ((_%loop1791217975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1791017979%_ _%arg1791617982%_)
                            (if (gx#stx-pair? _%hd1791017979%_)
                                (let ((_%e1791317985%_
                                       (gx#syntax-e _%hd1791017979%_)))
                                  (let ((_%lp-hd1791417989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1791317985%_)))
                                        (_%lp-tl1791517992%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1791317985%_))))
                                    (_%loop1791217975%_
                                     _%lp-tl1791517992%_
                                     (cons _%lp-hd1791417989%_
                                           _%arg1791617982%_))))
                                (let ((_%arg1791717995%_
                                       (reverse _%arg1791617982%_)))
                                  (if (gx#stx-pair/null? _%tl1790517956%_)
                                      (let ((_g21015_
                                             (gx#syntax-split-splice
                                              _%tl1790517956%_
                                              '0)))
                                        (begin
                                          (let ((_g21016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21015_)
                                                       (##vector-length
                                                        _g21015_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21016_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21016_)))
                                          (let ((_%target1791817999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21015_ 0)))
                                                (_%tl1792018002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21015_ 1))))
                                            (if (gx#stx-null? _%tl1792018002%_)
                                                (letrec ((_%loop1792118005%_
                                                          (lambda (_%hd1791918009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1792518012%_)
                    (if (gx#stx-pair? _%hd1791918009%_)
                        (let ((_%e1792218015%_ (gx#syntax-e _%hd1791918009%_)))
                          (let ((_%lp-hd1792318019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1792218015%_)))
                                (_%lp-tl1792418022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1792218015%_))))
                            (_%loop1792118005%_
                             _%lp-tl1792418022%_
                             (cons _%lp-hd1792318019%_ _%body1792518012%_))))
                        (let ((_%body1792618025%_
                               (reverse _%body1792518012%_)))
                          ((lambda (_%L18029%_ _%L18031%_ _%L18032%_)
                             (if (and (gx#identifier? _%L18032%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1805618059%_
                                                       _%g1805718062%_)
                                                (cons _%g1805618059%_
                                                      _%g1805718062%_))
                                              '()
                                              _%L18031%_)))
                                 (let* ((_%g1806518073%_
                                         (lambda (_%g1806618069%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1806618069%_)))
                                        (_%g1806418289%_
                                         (lambda (_%g1806618077%_)
                                           ((lambda (_%L18080%_)
                                              (let* ((_%g1809218109%_
                                                      (lambda (_%g1809318105%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1809318105%_)))
                                                     (_%g1809118277%_
                                                      (lambda (_%g1809318113%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1809318113%_)
                                                            (let ((_g21017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1809318113%_ '0)))
                      (begin
                        (let ((_g21018_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g21017_)
                                     (##vector-length _g21017_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g21018_ 2)))
                              (error "Context expects 2 values" _g21018_)))
                        (let ((_%target1809518116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21017_ 0)))
                              (_%tl1809718119%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21017_ 1))))
                          (if (gx#stx-null? _%tl1809718119%_)
                              (letrec ((_%loop1809818122%_
                                        (lambda (_%hd1809618126%_
                                                 _%xarg1810218129%_)
                                          (if (gx#stx-pair? _%hd1809618126%_)
                                              (let ((_%e1809918132%_
                                                     (gx#syntax-e
                                                      _%hd1809618126%_)))
                                                (let ((_%lp-hd1810018136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1809918132%_)))
                                                      (_%lp-tl1810118139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1809918132%_))))
                                                  (_%loop1809818122%_
                                                   _%lp-tl1810118139%_
                                                   (cons _%lp-hd1810018136%_
                                                         _%xarg1810218129%_))))
                                              (let ((_%xarg1810318142%_
                                                     (reverse _%xarg1810218129%_)))
                                                ((lambda (_%L18146%_)
                                                   (let* ((_%g1816318171%_
                                                           (lambda (_%g1816418167%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1816418167%_)))
                                                          (_%g1816218241%_
                                                           (lambda (_%g1816418175%_)
                                                             ((lambda (_%L18178%_)
                                                                (let* ((_%g1819118199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1819218195%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1819218195%_)))
                               (_%g1819018221%_
                                (lambda (_%g1819218203%_)
                                  ((lambda (_%L18206%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18206%_
                                                  (cons _%L18178%_ '())))
                                      (gx#stx-source _%stx17892%_)))
                                   _%g1819218203%_))))
                          (_%g1819018221%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L18080%_
                                              (foldr (lambda (_%g1822618229%_
                                                              _%g1822718232%_)
                                                       (cons _%g1822618229%_
                                                             _%g1822718232%_))
                                                     '()
                                                     _%L18031%_))
                                        (foldr (lambda (_%g1822418235%_
                                                        _%g1822518238%_)
                                                 (cons _%g1822418235%_
                                                       _%g1822518238%_))
                                               '()
                                               _%L18029%_)))
                            (gx#stx-source _%stx17892%_)))))
                      _%g1816418175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1816218241%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L18032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1825018253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1825118256%_)
                    (cons _%g1825018253%_ _%g1825118256%_))
                  '()
                  _%L18146%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1824818259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1824918262%_)
                                      (cons _%g1824818259%_ _%g1824918262%_))
                                    '()
                                    _%L18031%_)
                             (foldr (lambda (_%g1824618265%_ _%g1824718268%_)
                                      (cons _%g1824618265%_ _%g1824718268%_))
                                    '()
                                    _%L18029%_)))
                 (foldr (lambda (_%g1824418271%_ _%g1824518274%_)
                          (cons _%g1824418271%_ _%g1824518274%_))
                        '()
                        _%L18146%_))
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
                 (cons _%L18080%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1810318142%_))))))
                                (_%loop1809818122%_ _%target1809518116%_ '()))
                              (_%g1809218109%_ _%g1809318113%_)))))
                    (_%g1809218109%_ _%g1809318113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1809118277%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1828018283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1828118286%_)
                   (cons _%g1828018283%_ _%g1828118286%_))
                 '()
                 _%L18031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1806618077%_))))
                                   (_%g1806418289%_
                                    (gx#stx-identifier
                                     _%L18032%_
                                     _%L18032%_
                                     '"__impl")))
                                 (_%g1789517932%_ _%g1789617936%_)))
                           _%body1792618025%_
                           _%arg1791717995%_
                           _%hd1790717963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1792118005%_
                                                   _%target1791817999%_
                                                   '()))
                                                (_%g1789517932%_
                                                 _%g1789617936%_)))))
                                      (_%g1789517932%_ _%g1789617936%_)))))))
                  (_%loop1791217975%_ _%target1790917969%_ '()))
                (_%g1789517932%_ _%g1789617936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1789517932%_
                                               _%g1789617936%_))))
                                      (_%g1789517932%_ _%g1789617936%_))))
                              (_%g1789517932%_ _%g1789617936%_))))
                      (_%g1789517932%_ _%g1789617936%_)))))
          (_%g1789418293%_ _%stx17892%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18300%_)
        (let* ((_%__stx2083220833%_ _%$stx18300%_)
               (_%g1830518341%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2083220833%_))))
          (let ((_%__kont2083520836%_
                 (lambda (_%L18455%_ _%L18457%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18457%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18455%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2083720838%_
                 (lambda (_%L18378%_ _%L18380%_ _%L18381%_)
                   (cons _%L18381%_
                         (cons _%L18380%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18378%_ '()))
                                     '()))))))
            (let* ((_%__match2089720898%_
                    (lambda (_%e1832718348%_
                             _%hd1832818352%_
                             _%tl1832918355%_
                             _%e1833018358%_
                             _%hd1833118362%_
                             _%tl1833218365%_
                             _%e1833318368%_
                             _%hd1833418372%_
                             _%tl1833518375%_)
                      (let ((_%L18378%_ _%hd1833418372%_)
                            (_%L18380%_ _%hd1833118362%_)
                            (_%L18381%_ _%hd1832818352%_))
                        (if (and (gx#identifier? _%L18380%_)
                                 (gx#stx-datum? _%L18378%_))
                            (_%__kont2083720838%_
                             _%L18378%_
                             _%L18380%_
                             _%L18381%_)
                            (let () (declare (not safe)) (_%g1830518341%_))))))
                   (_%__match2087720878%_
                    (lambda (_%e1830918405%_
                             _%hd1831018409%_
                             _%tl1831118412%_
                             _%e1831218415%_
                             _%hd1831318419%_
                             _%tl1831418422%_
                             _%e1831518425%_
                             _%hd1831618429%_
                             _%tl1831718432%_
                             _%e1831818435%_
                             _%hd1831918439%_
                             _%tl1832018442%_
                             _%e1832118445%_
                             _%hd1832218449%_
                             _%tl1832318452%_)
                      (let ((_%L18455%_ _%hd1832218449%_)
                            (_%L18457%_ _%hd1831318419%_))
                        (if (gx#identifier? _%L18457%_)
                            (_%__kont2083520836%_ _%L18455%_ _%L18457%_)
                            (_%__match2089720898%_
                             _%e1830918405%_
                             _%hd1831018409%_
                             _%tl1831118412%_
                             _%e1831218415%_
                             _%hd1831318419%_
                             _%tl1831418422%_
                             _%e1831518425%_
                             _%hd1831618429%_
                             _%tl1831718432%_))))))
              (if (gx#stx-pair? _%__stx2083220833%_)
                  (let ((_%e1830918405%_ (gx#syntax-e _%__stx2083220833%_)))
                    (let ((_%tl1831118412%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1830918405%_)))
                          (_%hd1831018409%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1830918405%_))))
                      (if (gx#stx-pair? _%tl1831118412%_)
                          (let ((_%e1831218415%_
                                 (gx#syntax-e _%tl1831118412%_)))
                            (let ((_%tl1831418422%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1831218415%_)))
                                  (_%hd1831318419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1831218415%_))))
                              (if (gx#stx-pair? _%tl1831418422%_)
                                  (let ((_%e1831518425%_
                                         (gx#syntax-e _%tl1831418422%_)))
                                    (let ((_%tl1831718432%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1831518425%_)))
                                          (_%hd1831618429%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1831518425%_))))
                                      (if (gx#stx-pair? _%hd1831618429%_)
                                          (let ((_%e1831818435%_
                                                 (gx#syntax-e
                                                  _%hd1831618429%_)))
                                            (let ((_%tl1832018442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1831818435%_)))
                                                  (_%hd1831918439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1831818435%_))))
                                              (if (gx#identifier?
                                                   _%hd1831918439%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21019_|
                                                       _%hd1831918439%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1832018442%_)
                                                          (let ((_%e1832118445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1832018442%_)))
                    (let ((_%tl1832318452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1832118445%_)))
                          (_%hd1832218449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1832118445%_))))
                      (if (gx#stx-null? _%tl1832318452%_)
                          (if (gx#stx-null? _%tl1831718432%_)
                              (_%__match2087720878%_
                               _%e1830918405%_
                               _%hd1831018409%_
                               _%tl1831118412%_
                               _%e1831218415%_
                               _%hd1831318419%_
                               _%tl1831418422%_
                               _%e1831518425%_
                               _%hd1831618429%_
                               _%tl1831718432%_
                               _%e1831818435%_
                               _%hd1831918439%_
                               _%tl1832018442%_
                               _%e1832118445%_
                               _%hd1832218449%_
                               _%tl1832318452%_)
                              (let () (declare (not safe)) (_%g1830518341%_)))
                          (if (gx#stx-null? _%tl1831718432%_)
                              (_%__match2089720898%_
                               _%e1830918405%_
                               _%hd1831018409%_
                               _%tl1831118412%_
                               _%e1831218415%_
                               _%hd1831318419%_
                               _%tl1831418422%_
                               _%e1831518425%_
                               _%hd1831618429%_
                               _%tl1831718432%_)
                              (let ()
                                (declare (not safe))
                                (_%g1830518341%_))))))
                  (if (gx#stx-null? _%tl1831718432%_)
                      (_%__match2089720898%_
                       _%e1830918405%_
                       _%hd1831018409%_
                       _%tl1831118412%_
                       _%e1831218415%_
                       _%hd1831318419%_
                       _%tl1831418422%_
                       _%e1831518425%_
                       _%hd1831618429%_
                       _%tl1831718432%_)
                      (let () (declare (not safe)) (_%g1830518341%_))))
              (if (gx#stx-null? _%tl1831718432%_)
                  (_%__match2089720898%_
                   _%e1830918405%_
                   _%hd1831018409%_
                   _%tl1831118412%_
                   _%e1831218415%_
                   _%hd1831318419%_
                   _%tl1831418422%_
                   _%e1831518425%_
                   _%hd1831618429%_
                   _%tl1831718432%_)
                  (let () (declare (not safe)) (_%g1830518341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1831718432%_)
                                                      (_%__match2089720898%_
                                                       _%e1830918405%_
                                                       _%hd1831018409%_
                                                       _%tl1831118412%_
                                                       _%e1831218415%_
                                                       _%hd1831318419%_
                                                       _%tl1831418422%_
                                                       _%e1831518425%_
                                                       _%hd1831618429%_
                                                       _%tl1831718432%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1830518341%_))))))
                                          (if (gx#stx-null? _%tl1831718432%_)
                                              (_%__match2089720898%_
                                               _%e1830918405%_
                                               _%hd1831018409%_
                                               _%tl1831118412%_
                                               _%e1831218415%_
                                               _%hd1831318419%_
                                               _%tl1831418422%_
                                               _%e1831518425%_
                                               _%hd1831618429%_
                                               _%tl1831718432%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1830518341%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1830518341%_)))))
                          (let () (declare (not safe)) (_%g1830518341%_)))))
                  (let () (declare (not safe)) (_%g1830518341%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21082_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17752%_)
        (let* ((_%__stx2083720838%_ _%$stx17752%_)
               (_%g1775717796%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2083720838%_))))
          (let ((_%__kont2084020841%_
                 (lambda (_%L17919%_ _%L17921%_ _%L17922%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17922%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17921%_
                                                 (foldr (lambda (_%g1794117944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1794217947%_)
                  (cons _%g1794117944%_ _%g1794217947%_))
                '()
                _%L17919%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2084420845%_
                 (lambda (_%L17833%_ _%L17835%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17835%_ (cons _%L17833%_ '()))))))
            (let* ((_%__match2089220893%_
                    (lambda (_%e1778217803%_
                             _%hd1778317807%_
                             _%tl1778417810%_
                             _%e1778517813%_
                             _%hd1778617817%_
                             _%tl1778717820%_
                             _%e1778817823%_
                             _%hd1778917827%_
                             _%tl1779017830%_)
                      (let ((_%L17833%_ _%hd1778917827%_)
                            (_%L17835%_ _%hd1778617817%_))
                        (if (gx#identifier? _%L17835%_)
                            (_%__kont2084420845%_ _%L17833%_ _%L17835%_)
                            (let () (declare (not safe)) (_%g1775717796%_))))))
                   (_%__match2088420885%_
                    (lambda (_%e1778217803%_
                             _%hd1778317807%_
                             _%tl1778417810%_
                             _%e1778517813%_
                             _%hd1778617817%_
                             _%tl1778717820%_)
                      (if (gx#stx-pair? _%tl1778717820%_)
                          (let ((_%e1778817823%_
                                 (gx#syntax-e _%tl1778717820%_)))
                            (let ((_%tl1779017830%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1778817823%_)))
                                  (_%hd1778917827%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1778817823%_))))
                              (if (gx#stx-null? _%tl1779017830%_)
                                  (_%__match2089220893%_
                                   _%e1778217803%_
                                   _%hd1778317807%_
                                   _%tl1778417810%_
                                   _%e1778517813%_
                                   _%hd1778617817%_
                                   _%tl1778717820%_
                                   _%e1778817823%_
                                   _%hd1778917827%_
                                   _%tl1779017830%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1775717796%_)))))
                          (let () (declare (not safe)) (_%g1775717796%_)))))
                   (_%__match2087220873%_
                    (lambda (_%e1776217859%_
                             _%hd1776317863%_
                             _%tl1776417866%_
                             _%e1776517869%_
                             _%hd1776617873%_
                             _%tl1776717876%_
                             _%e1776817879%_
                             _%hd1776917883%_
                             _%tl1777017886%_
                             _%__splice2084220843%_
                             _%target1777117889%_
                             _%tl1777317892%_)
                      (letrec ((_%loop1777417895%_
                                (lambda (_%hd1777217899%_ _%body1777817902%_)
                                  (if (gx#stx-pair? _%hd1777217899%_)
                                      (let ((_%e1777517905%_
                                             (gx#syntax-e _%hd1777217899%_)))
                                        (let ((_%lp-tl1777717912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1777517905%_)))
                                              (_%lp-hd1777617909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1777517905%_))))
                                          (_%loop1777417895%_
                                           _%lp-tl1777717912%_
                                           (cons _%lp-hd1777617909%_
                                                 _%body1777817902%_))))
                                      (let ((_%body1777917915%_
                                             (reverse _%body1777817902%_)))
                                        (let ((_%L17919%_ _%body1777917915%_)
                                              (_%L17921%_ _%tl1777017886%_)
                                              (_%L17922%_ _%hd1776917883%_))
                                          (if (gx#identifier? _%L17922%_)
                                              (_%__kont2084020841%_
                                               _%L17919%_
                                               _%L17921%_
                                               _%L17922%_)
                                              (_%__match2088420885%_
                                               _%e1776217859%_
                                               _%hd1776317863%_
                                               _%tl1776417866%_
                                               _%e1776517869%_
                                               _%hd1776617873%_
                                               _%tl1776717876%_))))))))
                        (_%loop1777417895%_ _%target1777117889%_ '())))))
              (if (gx#stx-pair? _%__stx2083720838%_)
                  (let ((_%e1776217859%_ (gx#syntax-e _%__stx2083720838%_)))
                    (let ((_%tl1776417866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1776217859%_)))
                          (_%hd1776317863%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1776217859%_))))
                      (if (gx#stx-pair? _%tl1776417866%_)
                          (let ((_%e1776517869%_
                                 (gx#syntax-e _%tl1776417866%_)))
                            (let ((_%tl1776717876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1776517869%_)))
                                  (_%hd1776617873%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1776517869%_))))
                              (if (gx#stx-pair? _%hd1776617873%_)
                                  (let ((_%e1776817879%_
                                         (gx#syntax-e _%hd1776617873%_)))
                                    (let ((_%tl1777017886%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1776817879%_)))
                                          (_%hd1776917883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1776817879%_))))
                                      (if (gx#stx-pair/null? _%tl1776717876%_)
                                          (let ((_%__splice2084220843%_
                                                 (gx#syntax-split-splice
                                                  _%tl1776717876%_
                                                  '0)))
                                            (let ((_%tl1777317892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2084220843%_
                                                      '1)))
                                                  (_%target1777117889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2084220843%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1777317892%_)
                                                  (_%__match2087220873%_
                                                   _%e1776217859%_
                                                   _%hd1776317863%_
                                                   _%tl1776417866%_
                                                   _%e1776517869%_
                                                   _%hd1776617873%_
                                                   _%tl1776717876%_
                                                   _%e1776817879%_
                                                   _%hd1776917883%_
                                                   _%tl1777017886%_
                                                   _%__splice2084220843%_
                                                   _%target1777117889%_
                                                   _%tl1777317892%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1776717876%_)
                                                      (let ((_%e1778817823%_
                                                             (gx#syntax-e
                                                              _%tl1776717876%_)))
                                                        (let ((_%tl1779017830%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1778817823%_)))
                      (_%hd1778917827%_
                       (let () (declare (not safe)) (##car _%e1778817823%_))))
                  (if (gx#stx-null? _%tl1779017830%_)
                      (_%__match2089220893%_
                       _%e1776217859%_
                       _%hd1776317863%_
                       _%tl1776417866%_
                       _%e1776517869%_
                       _%hd1776617873%_
                       _%tl1776717876%_
                       _%e1778817823%_
                       _%hd1778917827%_
                       _%tl1779017830%_)
                      (let () (declare (not safe)) (_%g1775717796%_)))))
              (let () (declare (not safe)) (_%g1775717796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1776717876%_)
                                              (let ((_%e1778817823%_
                                                     (gx#syntax-e
                                                      _%tl1776717876%_)))
                                                (let ((_%tl1779017830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1778817823%_)))
                                                      (_%hd1778917827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1778817823%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1779017830%_)
                                                      (_%__match2089220893%_
                                                       _%e1776217859%_
                                                       _%hd1776317863%_
                                                       _%tl1776417866%_
                                                       _%e1776517869%_
                                                       _%hd1776617873%_
                                                       _%tl1776717876%_
                                                       _%e1778817823%_
                                                       _%hd1778917827%_
                                                       _%tl1779017830%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1775717796%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1775717796%_))))))
                                  (if (gx#stx-pair? _%tl1776717876%_)
                                      (let ((_%e1778817823%_
                                             (gx#syntax-e _%tl1776717876%_)))
                                        (let ((_%tl1779017830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1778817823%_)))
                                              (_%hd1778917827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1778817823%_))))
                                          (if (gx#stx-null? _%tl1779017830%_)
                                              (_%__match2089220893%_
                                               _%e1776217859%_
                                               _%hd1776317863%_
                                               _%tl1776417866%_
                                               _%e1776517869%_
                                               _%hd1776617873%_
                                               _%tl1776717876%_
                                               _%e1778817823%_
                                               _%hd1778917827%_
                                               _%tl1779017830%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1775717796%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1775717796%_))))))
                          (let () (declare (not safe)) (_%g1775717796%_)))))
                  (let () (declare (not safe)) (_%g1775717796%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17955%_)
        (let* ((_%g1795817995%_
                (lambda (_%g1795917991%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1795917991%_)))
               (_%g1795718356%_
                (lambda (_%g1795917999%_)
                  (if (gx#stx-pair? _%g1795917999%_)
                      (let ((_%e1796318002%_ (gx#syntax-e _%g1795917999%_)))
                        (let ((_%hd1796418006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1796318002%_)))
                              (_%tl1796518009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1796318002%_))))
                          (if (gx#stx-pair? _%tl1796518009%_)
                              (let ((_%e1796618012%_
                                     (gx#syntax-e _%tl1796518009%_)))
                                (let ((_%hd1796718016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1796618012%_)))
                                      (_%tl1796818019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1796618012%_))))
                                  (if (gx#stx-pair? _%hd1796718016%_)
                                      (let ((_%e1796918022%_
                                             (gx#syntax-e _%hd1796718016%_)))
                                        (let ((_%hd1797018026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1796918022%_)))
                                              (_%tl1797118029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1796918022%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1797118029%_)
                                              (let ((_g21076_
                                                     (gx#syntax-split-splice
                                                      _%tl1797118029%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21076_)
                                                               (##values-length
                                                                _g21076_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21077_ 2)))
                (error "Context expects 2 values" _g21077_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1797218032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21076_
                                                            0)))
                                                        (_%tl1797418035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21076_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1797418035%_)
                                                        (letrec ((_%loop1797518038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1797318042%_ _%arg1797918045%_)
                            (if (gx#stx-pair? _%hd1797318042%_)
                                (let ((_%e1797618048%_
                                       (gx#syntax-e _%hd1797318042%_)))
                                  (let ((_%lp-hd1797718052%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1797618048%_)))
                                        (_%lp-tl1797818055%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1797618048%_))))
                                    (_%loop1797518038%_
                                     _%lp-tl1797818055%_
                                     (cons _%lp-hd1797718052%_
                                           _%arg1797918045%_))))
                                (let ((_%arg1798018058%_
                                       (reverse _%arg1797918045%_)))
                                  (if (gx#stx-pair/null? _%tl1796818019%_)
                                      (let ((_g21078_
                                             (gx#syntax-split-splice
                                              _%tl1796818019%_
                                              '0)))
                                        (begin
                                          (let ((_g21079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21078_)
                                                       (##values-length
                                                        _g21078_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21079_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21079_)))
                                          (let ((_%target1798118062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21078_ 0)))
                                                (_%tl1798318065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21078_ 1))))
                                            (if (gx#stx-null? _%tl1798318065%_)
                                                (letrec ((_%loop1798418068%_
                                                          (lambda (_%hd1798218072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1798818075%_)
                    (if (gx#stx-pair? _%hd1798218072%_)
                        (let ((_%e1798518078%_ (gx#syntax-e _%hd1798218072%_)))
                          (let ((_%lp-hd1798618082%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1798518078%_)))
                                (_%lp-tl1798718085%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1798518078%_))))
                            (_%loop1798418068%_
                             _%lp-tl1798718085%_
                             (cons _%lp-hd1798618082%_ _%body1798818075%_))))
                        (let ((_%body1798918088%_
                               (reverse _%body1798818075%_)))
                          ((lambda (_%L18092%_ _%L18094%_ _%L18095%_)
                             (if (and (gx#identifier? _%L18095%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1811918122%_
                                                       _%g1812018125%_)
                                                (cons _%g1811918122%_
                                                      _%g1812018125%_))
                                              '()
                                              _%L18094%_)))
                                 (let* ((_%g1812818136%_
                                         (lambda (_%g1812918132%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1812918132%_)))
                                        (_%g1812718352%_
                                         (lambda (_%g1812918140%_)
                                           ((lambda (_%L18143%_)
                                              (let* ((_%g1815518172%_
                                                      (lambda (_%g1815618168%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1815618168%_)))
                                                     (_%g1815418340%_
                                                      (lambda (_%g1815618176%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1815618176%_)
                                                            (let ((_g21080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1815618176%_ '0)))
                      (begin
                        (let ((_g21081_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g21080_)
                                     (##values-length _g21080_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g21081_ 2)))
                              (error "Context expects 2 values" _g21081_)))
                        (let ((_%target1815818179%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21080_ 0)))
                              (_%tl1816018182%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21080_ 1))))
                          (if (gx#stx-null? _%tl1816018182%_)
                              (letrec ((_%loop1816118185%_
                                        (lambda (_%hd1815918189%_
                                                 _%xarg1816518192%_)
                                          (if (gx#stx-pair? _%hd1815918189%_)
                                              (let ((_%e1816218195%_
                                                     (gx#syntax-e
                                                      _%hd1815918189%_)))
                                                (let ((_%lp-hd1816318199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1816218195%_)))
                                                      (_%lp-tl1816418202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1816218195%_))))
                                                  (_%loop1816118185%_
                                                   _%lp-tl1816418202%_
                                                   (cons _%lp-hd1816318199%_
                                                         _%xarg1816518192%_))))
                                              (let ((_%xarg1816618205%_
                                                     (reverse _%xarg1816518192%_)))
                                                ((lambda (_%L18209%_)
                                                   (let* ((_%g1822618234%_
                                                           (lambda (_%g1822718230%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1822718230%_)))
                                                          (_%g1822518304%_
                                                           (lambda (_%g1822718238%_)
                                                             ((lambda (_%L18241%_)
                                                                (let* ((_%g1825418262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1825518258%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1825518258%_)))
                               (_%g1825318284%_
                                (lambda (_%g1825518266%_)
                                  ((lambda (_%L18269%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18269%_
                                                  (cons _%L18241%_ '())))
                                      (gx#stx-source _%stx17955%_)))
                                   _%g1825518266%_))))
                          (_%g1825318284%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L18143%_
                                              (foldr (lambda (_%g1828918292%_
                                                              _%g1829018295%_)
                                                       (cons _%g1828918292%_
                                                             _%g1829018295%_))
                                                     '()
                                                     _%L18094%_))
                                        (foldr (lambda (_%g1828718298%_
                                                        _%g1828818301%_)
                                                 (cons _%g1828718298%_
                                                       _%g1828818301%_))
                                               '()
                                               _%L18092%_)))
                            (gx#stx-source _%stx17955%_)))))
                      _%g1822718238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1822518304%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L18095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1831318316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1831418319%_)
                    (cons _%g1831318316%_ _%g1831418319%_))
                  '()
                  _%L18209%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1831118322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1831218325%_)
                                      (cons _%g1831118322%_ _%g1831218325%_))
                                    '()
                                    _%L18094%_)
                             (foldr (lambda (_%g1830918328%_ _%g1831018331%_)
                                      (cons _%g1830918328%_ _%g1831018331%_))
                                    '()
                                    _%L18092%_)))
                 (foldr (lambda (_%g1830718334%_ _%g1830818337%_)
                          (cons _%g1830718334%_ _%g1830818337%_))
                        '()
                        _%L18209%_))
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
                 (cons _%L18143%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1816618205%_))))))
                                (_%loop1816118185%_ _%target1815818179%_ '()))
                              (_%g1815518172%_ _%g1815618176%_)))))
                    (_%g1815518172%_ _%g1815618176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1815418340%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1834318346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1834418349%_)
                   (cons _%g1834318346%_ _%g1834418349%_))
                 '()
                 _%L18094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1812918140%_))))
                                   (_%g1812718352%_
                                    (gx#stx-identifier
                                     _%L18095%_
                                     _%L18095%_
                                     '"__impl")))
                                 (_%g1795817995%_ _%g1795917999%_)))
                           _%body1798918088%_
                           _%arg1798018058%_
                           _%hd1797018026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1798418068%_
                                                   _%target1798118062%_
                                                   '()))
                                                (_%g1795817995%_
                                                 _%g1795917999%_)))))
                                      (_%g1795817995%_ _%g1795917999%_)))))))
                  (_%loop1797518038%_ _%target1797218032%_ '()))
                (_%g1795817995%_ _%g1795917999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1795817995%_
                                               _%g1795917999%_))))
                                      (_%g1795817995%_ _%g1795917999%_))))
                              (_%g1795817995%_ _%g1795917999%_))))
                      (_%g1795817995%_ _%g1795917999%_)))))
          (_%g1795718356%_ _%stx17955%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18363%_)
        (let* ((_%__stx2089520896%_ _%$stx18363%_)
               (_%g1836818404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2089520896%_))))
          (let ((_%__kont2089820899%_
                 (lambda (_%L18518%_ _%L18520%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18520%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18518%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2090020901%_
                 (lambda (_%L18441%_ _%L18443%_ _%L18444%_)
                   (cons _%L18444%_
                         (cons _%L18443%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18441%_ '()))
                                     '()))))))
            (let* ((_%__match2096020961%_
                    (lambda (_%e1839018411%_
                             _%hd1839118415%_
                             _%tl1839218418%_
                             _%e1839318421%_
                             _%hd1839418425%_
                             _%tl1839518428%_
                             _%e1839618431%_
                             _%hd1839718435%_
                             _%tl1839818438%_)
                      (let ((_%L18441%_ _%hd1839718435%_)
                            (_%L18443%_ _%hd1839418425%_)
                            (_%L18444%_ _%hd1839118415%_))
                        (if (and (gx#identifier? _%L18443%_)
                                 (gx#stx-datum? _%L18441%_))
                            (_%__kont2090020901%_
                             _%L18441%_
                             _%L18443%_
                             _%L18444%_)
                            (let () (declare (not safe)) (_%g1836818404%_))))))
                   (_%__match2094020941%_
                    (lambda (_%e1837218468%_
                             _%hd1837318472%_
                             _%tl1837418475%_
                             _%e1837518478%_
                             _%hd1837618482%_
                             _%tl1837718485%_
                             _%e1837818488%_
                             _%hd1837918492%_
                             _%tl1838018495%_
                             _%e1838118498%_
                             _%hd1838218502%_
                             _%tl1838318505%_
                             _%e1838418508%_
                             _%hd1838518512%_
                             _%tl1838618515%_)
                      (let ((_%L18518%_ _%hd1838518512%_)
                            (_%L18520%_ _%hd1837618482%_))
                        (if (gx#identifier? _%L18520%_)
                            (_%__kont2089820899%_ _%L18518%_ _%L18520%_)
                            (_%__match2096020961%_
                             _%e1837218468%_
                             _%hd1837318472%_
                             _%tl1837418475%_
                             _%e1837518478%_
                             _%hd1837618482%_
                             _%tl1837718485%_
                             _%e1837818488%_
                             _%hd1837918492%_
                             _%tl1838018495%_))))))
              (if (gx#stx-pair? _%__stx2089520896%_)
                  (let ((_%e1837218468%_ (gx#syntax-e _%__stx2089520896%_)))
                    (let ((_%tl1837418475%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1837218468%_)))
                          (_%hd1837318472%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1837218468%_))))
                      (if (gx#stx-pair? _%tl1837418475%_)
                          (let ((_%e1837518478%_
                                 (gx#syntax-e _%tl1837418475%_)))
                            (let ((_%tl1837718485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1837518478%_)))
                                  (_%hd1837618482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1837518478%_))))
                              (if (gx#stx-pair? _%tl1837718485%_)
                                  (let ((_%e1837818488%_
                                         (gx#syntax-e _%tl1837718485%_)))
                                    (let ((_%tl1838018495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1837818488%_)))
                                          (_%hd1837918492%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1837818488%_))))
                                      (if (gx#stx-pair? _%hd1837918492%_)
                                          (let ((_%e1838118498%_
                                                 (gx#syntax-e
                                                  _%hd1837918492%_)))
                                            (let ((_%tl1838318505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1838118498%_)))
                                                  (_%hd1838218502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1838118498%_))))
                                              (if (gx#identifier?
                                                   _%hd1838218502%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21082_|
                                                       _%hd1838218502%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1838318505%_)
                                                          (let ((_%e1838418508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1838318505%_)))
                    (let ((_%tl1838618515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1838418508%_)))
                          (_%hd1838518512%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1838418508%_))))
                      (if (gx#stx-null? _%tl1838618515%_)
                          (if (gx#stx-null? _%tl1838018495%_)
                              (_%__match2094020941%_
                               _%e1837218468%_
                               _%hd1837318472%_
                               _%tl1837418475%_
                               _%e1837518478%_
                               _%hd1837618482%_
                               _%tl1837718485%_
                               _%e1837818488%_
                               _%hd1837918492%_
                               _%tl1838018495%_
                               _%e1838118498%_
                               _%hd1838218502%_
                               _%tl1838318505%_
                               _%e1838418508%_
                               _%hd1838518512%_
                               _%tl1838618515%_)
                              (let () (declare (not safe)) (_%g1836818404%_)))
                          (if (gx#stx-null? _%tl1838018495%_)
                              (_%__match2096020961%_
                               _%e1837218468%_
                               _%hd1837318472%_
                               _%tl1837418475%_
                               _%e1837518478%_
                               _%hd1837618482%_
                               _%tl1837718485%_
                               _%e1837818488%_
                               _%hd1837918492%_
                               _%tl1838018495%_)
                              (let ()
                                (declare (not safe))
                                (_%g1836818404%_))))))
                  (if (gx#stx-null? _%tl1838018495%_)
                      (_%__match2096020961%_
                       _%e1837218468%_
                       _%hd1837318472%_
                       _%tl1837418475%_
                       _%e1837518478%_
                       _%hd1837618482%_
                       _%tl1837718485%_
                       _%e1837818488%_
                       _%hd1837918492%_
                       _%tl1838018495%_)
                      (let () (declare (not safe)) (_%g1836818404%_))))
              (if (gx#stx-null? _%tl1838018495%_)
                  (_%__match2096020961%_
                   _%e1837218468%_
                   _%hd1837318472%_
                   _%tl1837418475%_
                   _%e1837518478%_
                   _%hd1837618482%_
                   _%tl1837718485%_
                   _%e1837818488%_
                   _%hd1837918492%_
                   _%tl1838018495%_)
                  (let () (declare (not safe)) (_%g1836818404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1838018495%_)
                                                      (_%__match2096020961%_
                                                       _%e1837218468%_
                                                       _%hd1837318472%_
                                                       _%tl1837418475%_
                                                       _%e1837518478%_
                                                       _%hd1837618482%_
                                                       _%tl1837718485%_
                                                       _%e1837818488%_
                                                       _%hd1837918492%_
                                                       _%tl1838018495%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1836818404%_))))))
                                          (if (gx#stx-null? _%tl1838018495%_)
                                              (_%__match2096020961%_
                                               _%e1837218468%_
                                               _%hd1837318472%_
                                               _%tl1837418475%_
                                               _%e1837518478%_
                                               _%hd1837618482%_
                                               _%tl1837718485%_
                                               _%e1837818488%_
                                               _%hd1837918492%_
                                               _%tl1838018495%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1836818404%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1836818404%_)))))
                          (let () (declare (not safe)) (_%g1836818404%_)))))
                  (let () (declare (not safe)) (_%g1836818404%_))))))))))

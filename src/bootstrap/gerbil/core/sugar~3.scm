(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21064_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17734%_)
        (let* ((_%__stx2081920820%_ _%$stx17734%_)
               (_%g1773917778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2081920820%_))))
          (let ((_%__kont2082220823%_
                 (lambda (_%L17901%_ _%L17903%_ _%L17904%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17904%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17903%_
                                                 (foldr (lambda (_%g1792317926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1792417929%_)
                  (cons _%g1792317926%_ _%g1792417929%_))
                '()
                _%L17901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2082620827%_
                 (lambda (_%L17815%_ _%L17817%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17817%_ (cons _%L17815%_ '()))))))
            (let* ((_%__match2087420875%_
                    (lambda (_%e1776417785%_
                             _%hd1776517789%_
                             _%tl1776617792%_
                             _%e1776717795%_
                             _%hd1776817799%_
                             _%tl1776917802%_
                             _%e1777017805%_
                             _%hd1777117809%_
                             _%tl1777217812%_)
                      (let ((_%L17815%_ _%hd1777117809%_)
                            (_%L17817%_ _%hd1776817799%_))
                        (if (gx#identifier? _%L17817%_)
                            (_%__kont2082620827%_ _%L17815%_ _%L17817%_)
                            (let () (declare (not safe)) (_%g1773917778%_))))))
                   (_%__match2086620867%_
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
                                  (_%__match2087420875%_
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
                   (_%__match2085420855%_
                    (lambda (_%e1774417841%_
                             _%hd1774517845%_
                             _%tl1774617848%_
                             _%e1774717851%_
                             _%hd1774817855%_
                             _%tl1774917858%_
                             _%e1775017861%_
                             _%hd1775117865%_
                             _%tl1775217868%_
                             _%__splice2082420825%_
                             _%target1775317871%_
                             _%tl1775517874%_)
                      (letrec ((_%loop1775617877%_
                                (lambda (_%hd1775417881%_ _%body1776017884%_)
                                  (if (gx#stx-pair? _%hd1775417881%_)
                                      (let ((_%e1775717887%_
                                             (gx#syntax-e _%hd1775417881%_)))
                                        (let ((_%lp-tl1775917894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1775717887%_)))
                                              (_%lp-hd1775817891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1775717887%_))))
                                          (_%loop1775617877%_
                                           _%lp-tl1775917894%_
                                           (cons _%lp-hd1775817891%_
                                                 _%body1776017884%_))))
                                      (let ((_%body1776117897%_
                                             (reverse _%body1776017884%_)))
                                        (let ((_%L17901%_ _%body1776117897%_)
                                              (_%L17903%_ _%tl1775217868%_)
                                              (_%L17904%_ _%hd1775117865%_))
                                          (if (gx#identifier? _%L17904%_)
                                              (_%__kont2082220823%_
                                               _%L17901%_
                                               _%L17903%_
                                               _%L17904%_)
                                              (_%__match2086620867%_
                                               _%e1774417841%_
                                               _%hd1774517845%_
                                               _%tl1774617848%_
                                               _%e1774717851%_
                                               _%hd1774817855%_
                                               _%tl1774917858%_))))))))
                        (_%loop1775617877%_ _%target1775317871%_ '())))))
              (if (gx#stx-pair? _%__stx2081920820%_)
                  (let ((_%e1774417841%_ (gx#syntax-e _%__stx2081920820%_)))
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
                                          (let ((_%__splice2082420825%_
                                                 (gx#syntax-split-splice
                                                  _%tl1774917858%_
                                                  '0)))
                                            (let ((_%tl1775517874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082420825%_
                                                      '1)))
                                                  (_%target1775317871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2082420825%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1775517874%_)
                                                  (_%__match2085420855%_
                                                   _%e1774417841%_
                                                   _%hd1774517845%_
                                                   _%tl1774617848%_
                                                   _%e1774717851%_
                                                   _%hd1774817855%_
                                                   _%tl1774917858%_
                                                   _%e1775017861%_
                                                   _%hd1775117865%_
                                                   _%tl1775217868%_
                                                   _%__splice2082420825%_
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
                      (_%__match2087420875%_
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
                                                      (_%__match2087420875%_
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
                                              (_%__match2087420875%_
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
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17937%_)
        (let* ((_%g1794017977%_
                (lambda (_%g1794117973%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1794117973%_)))
               (_%g1793918338%_
                (lambda (_%g1794117981%_)
                  (if (gx#stx-pair? _%g1794117981%_)
                      (let ((_%e1794517984%_ (gx#syntax-e _%g1794117981%_)))
                        (let ((_%hd1794617988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1794517984%_)))
                              (_%tl1794717991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1794517984%_))))
                          (if (gx#stx-pair? _%tl1794717991%_)
                              (let ((_%e1794817994%_
                                     (gx#syntax-e _%tl1794717991%_)))
                                (let ((_%hd1794917998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1794817994%_)))
                                      (_%tl1795018001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1794817994%_))))
                                  (if (gx#stx-pair? _%hd1794917998%_)
                                      (let ((_%e1795118004%_
                                             (gx#syntax-e _%hd1794917998%_)))
                                        (let ((_%hd1795218008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1795118004%_)))
                                              (_%tl1795318011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1795118004%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1795318011%_)
                                              (let ((_g21058_
                                                     (gx#syntax-split-splice
                                                      _%tl1795318011%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21058_)
                                                               (##vector-length
                                                                _g21058_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21059_ 2)))
                (error "Context expects 2 values" _g21059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1795418014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21058_
                                                            0)))
                                                        (_%tl1795618017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21058_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1795618017%_)
                                                        (letrec ((_%loop1795718020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1795518024%_ _%arg1796118027%_)
                            (if (gx#stx-pair? _%hd1795518024%_)
                                (let ((_%e1795818030%_
                                       (gx#syntax-e _%hd1795518024%_)))
                                  (let ((_%lp-hd1795918034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1795818030%_)))
                                        (_%lp-tl1796018037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1795818030%_))))
                                    (_%loop1795718020%_
                                     _%lp-tl1796018037%_
                                     (cons _%lp-hd1795918034%_
                                           _%arg1796118027%_))))
                                (let ((_%arg1796218040%_
                                       (reverse _%arg1796118027%_)))
                                  (if (gx#stx-pair/null? _%tl1795018001%_)
                                      (let ((_g21060_
                                             (gx#syntax-split-splice
                                              _%tl1795018001%_
                                              '0)))
                                        (begin
                                          (let ((_g21061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21060_)
                                                       (##vector-length
                                                        _g21060_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21061_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21061_)))
                                          (let ((_%target1796318044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21060_ 0)))
                                                (_%tl1796518047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21060_ 1))))
                                            (if (gx#stx-null? _%tl1796518047%_)
                                                (letrec ((_%loop1796618050%_
                                                          (lambda (_%hd1796418054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1797018057%_)
                    (if (gx#stx-pair? _%hd1796418054%_)
                        (let ((_%e1796718060%_ (gx#syntax-e _%hd1796418054%_)))
                          (let ((_%lp-hd1796818064%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1796718060%_)))
                                (_%lp-tl1796918067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1796718060%_))))
                            (_%loop1796618050%_
                             _%lp-tl1796918067%_
                             (cons _%lp-hd1796818064%_ _%body1797018057%_))))
                        (let ((_%body1797118070%_
                               (reverse _%body1797018057%_)))
                          ((lambda (_%L18074%_ _%L18076%_ _%L18077%_)
                             (if (and (gx#identifier? _%L18077%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1810118104%_
                                                       _%g1810218107%_)
                                                (cons _%g1810118104%_
                                                      _%g1810218107%_))
                                              '()
                                              _%L18076%_)))
                                 (let* ((_%g1811018118%_
                                         (lambda (_%g1811118114%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1811118114%_)))
                                        (_%g1810918334%_
                                         (lambda (_%g1811118122%_)
                                           ((lambda (_%L18125%_)
                                              (let* ((_%g1813718154%_
                                                      (lambda (_%g1813818150%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1813818150%_)))
                                                     (_%g1813618322%_
                                                      (lambda (_%g1813818158%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1813818158%_)
                                                            (let ((_g21062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1813818158%_ '0)))
                      (begin
                        (let ((_g21063_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g21062_)
                                     (##vector-length _g21062_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g21063_ 2)))
                              (error "Context expects 2 values" _g21063_)))
                        (let ((_%target1814018161%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21062_ 0)))
                              (_%tl1814218164%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21062_ 1))))
                          (if (gx#stx-null? _%tl1814218164%_)
                              (letrec ((_%loop1814318167%_
                                        (lambda (_%hd1814118171%_
                                                 _%xarg1814718174%_)
                                          (if (gx#stx-pair? _%hd1814118171%_)
                                              (let ((_%e1814418177%_
                                                     (gx#syntax-e
                                                      _%hd1814118171%_)))
                                                (let ((_%lp-hd1814518181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1814418177%_)))
                                                      (_%lp-tl1814618184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1814418177%_))))
                                                  (_%loop1814318167%_
                                                   _%lp-tl1814618184%_
                                                   (cons _%lp-hd1814518181%_
                                                         _%xarg1814718174%_))))
                                              (let ((_%xarg1814818187%_
                                                     (reverse _%xarg1814718174%_)))
                                                ((lambda (_%L18191%_)
                                                   (let* ((_%g1820818216%_
                                                           (lambda (_%g1820918212%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1820918212%_)))
                                                          (_%g1820718286%_
                                                           (lambda (_%g1820918220%_)
                                                             ((lambda (_%L18223%_)
                                                                (let* ((_%g1823618244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1823718240%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1823718240%_)))
                               (_%g1823518266%_
                                (lambda (_%g1823718248%_)
                                  ((lambda (_%L18251%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L18251%_
                                                  (cons _%L18223%_ '())))
                                      (gx#stx-source _%stx17937%_)))
                                   _%g1823718248%_))))
                          (_%g1823518266%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L18125%_
                                              (foldr (lambda (_%g1827118274%_
                                                              _%g1827218277%_)
                                                       (cons _%g1827118274%_
                                                             _%g1827218277%_))
                                                     '()
                                                     _%L18076%_))
                                        (foldr (lambda (_%g1826918280%_
                                                        _%g1827018283%_)
                                                 (cons _%g1826918280%_
                                                       _%g1827018283%_))
                                               '()
                                               _%L18074%_)))
                            (gx#stx-source _%stx17937%_)))))
                      _%g1820918220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1820718286%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L18077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1829518298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1829618301%_)
                    (cons _%g1829518298%_ _%g1829618301%_))
                  '()
                  _%L18191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1829318304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1829418307%_)
                                      (cons _%g1829318304%_ _%g1829418307%_))
                                    '()
                                    _%L18076%_)
                             (foldr (lambda (_%g1829118310%_ _%g1829218313%_)
                                      (cons _%g1829118310%_ _%g1829218313%_))
                                    '()
                                    _%L18074%_)))
                 (foldr (lambda (_%g1828918316%_ _%g1829018319%_)
                          (cons _%g1828918316%_ _%g1829018319%_))
                        '()
                        _%L18191%_))
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
                 (cons _%L18125%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1814818187%_))))))
                                (_%loop1814318167%_ _%target1814018161%_ '()))
                              (_%g1813718154%_ _%g1813818158%_)))))
                    (_%g1813718154%_ _%g1813818158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1813618322%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1832518328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1832618331%_)
                   (cons _%g1832518328%_ _%g1832618331%_))
                 '()
                 _%L18076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1811118122%_))))
                                   (_%g1810918334%_
                                    (gx#stx-identifier
                                     _%L18077%_
                                     _%L18077%_
                                     '"__impl")))
                                 (_%g1794017977%_ _%g1794117981%_)))
                           _%body1797118070%_
                           _%arg1796218040%_
                           _%hd1795218008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1796618050%_
                                                   _%target1796318044%_
                                                   '()))
                                                (_%g1794017977%_
                                                 _%g1794117981%_)))))
                                      (_%g1794017977%_ _%g1794117981%_)))))))
                  (_%loop1795718020%_ _%target1795418014%_ '()))
                (_%g1794017977%_ _%g1794117981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1794017977%_
                                               _%g1794117981%_))))
                                      (_%g1794017977%_ _%g1794117981%_))))
                              (_%g1794017977%_ _%g1794117981%_))))
                      (_%g1794017977%_ _%g1794117981%_)))))
          (_%g1793918338%_ _%stx17937%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18345%_)
        (let* ((_%__stx2087720878%_ _%$stx18345%_)
               (_%g1835018386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2087720878%_))))
          (let ((_%__kont2088020881%_
                 (lambda (_%L18500%_ _%L18502%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18502%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18500%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2088220883%_
                 (lambda (_%L18423%_ _%L18425%_ _%L18426%_)
                   (cons _%L18426%_
                         (cons _%L18425%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L18423%_ '()))
                                     '()))))))
            (let* ((_%__match2094220943%_
                    (lambda (_%e1837218393%_
                             _%hd1837318397%_
                             _%tl1837418400%_
                             _%e1837518403%_
                             _%hd1837618407%_
                             _%tl1837718410%_
                             _%e1837818413%_
                             _%hd1837918417%_
                             _%tl1838018420%_)
                      (let ((_%L18423%_ _%hd1837918417%_)
                            (_%L18425%_ _%hd1837618407%_)
                            (_%L18426%_ _%hd1837318397%_))
                        (if (and (gx#identifier? _%L18425%_)
                                 (gx#stx-datum? _%L18423%_))
                            (_%__kont2088220883%_
                             _%L18423%_
                             _%L18425%_
                             _%L18426%_)
                            (let () (declare (not safe)) (_%g1835018386%_))))))
                   (_%__match2092220923%_
                    (lambda (_%e1835418450%_
                             _%hd1835518454%_
                             _%tl1835618457%_
                             _%e1835718460%_
                             _%hd1835818464%_
                             _%tl1835918467%_
                             _%e1836018470%_
                             _%hd1836118474%_
                             _%tl1836218477%_
                             _%e1836318480%_
                             _%hd1836418484%_
                             _%tl1836518487%_
                             _%e1836618490%_
                             _%hd1836718494%_
                             _%tl1836818497%_)
                      (let ((_%L18500%_ _%hd1836718494%_)
                            (_%L18502%_ _%hd1835818464%_))
                        (if (gx#identifier? _%L18502%_)
                            (_%__kont2088020881%_ _%L18500%_ _%L18502%_)
                            (_%__match2094220943%_
                             _%e1835418450%_
                             _%hd1835518454%_
                             _%tl1835618457%_
                             _%e1835718460%_
                             _%hd1835818464%_
                             _%tl1835918467%_
                             _%e1836018470%_
                             _%hd1836118474%_
                             _%tl1836218477%_))))))
              (if (gx#stx-pair? _%__stx2087720878%_)
                  (let ((_%e1835418450%_ (gx#syntax-e _%__stx2087720878%_)))
                    (let ((_%tl1835618457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1835418450%_)))
                          (_%hd1835518454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1835418450%_))))
                      (if (gx#stx-pair? _%tl1835618457%_)
                          (let ((_%e1835718460%_
                                 (gx#syntax-e _%tl1835618457%_)))
                            (let ((_%tl1835918467%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1835718460%_)))
                                  (_%hd1835818464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1835718460%_))))
                              (if (gx#stx-pair? _%tl1835918467%_)
                                  (let ((_%e1836018470%_
                                         (gx#syntax-e _%tl1835918467%_)))
                                    (let ((_%tl1836218477%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1836018470%_)))
                                          (_%hd1836118474%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1836018470%_))))
                                      (if (gx#stx-pair? _%hd1836118474%_)
                                          (let ((_%e1836318480%_
                                                 (gx#syntax-e
                                                  _%hd1836118474%_)))
                                            (let ((_%tl1836518487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1836318480%_)))
                                                  (_%hd1836418484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1836318480%_))))
                                              (if (gx#identifier?
                                                   _%hd1836418484%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21064_|
                                                       _%hd1836418484%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1836518487%_)
                                                          (let ((_%e1836618490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1836518487%_)))
                    (let ((_%tl1836818497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1836618490%_)))
                          (_%hd1836718494%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1836618490%_))))
                      (if (gx#stx-null? _%tl1836818497%_)
                          (if (gx#stx-null? _%tl1836218477%_)
                              (_%__match2092220923%_
                               _%e1835418450%_
                               _%hd1835518454%_
                               _%tl1835618457%_
                               _%e1835718460%_
                               _%hd1835818464%_
                               _%tl1835918467%_
                               _%e1836018470%_
                               _%hd1836118474%_
                               _%tl1836218477%_
                               _%e1836318480%_
                               _%hd1836418484%_
                               _%tl1836518487%_
                               _%e1836618490%_
                               _%hd1836718494%_
                               _%tl1836818497%_)
                              (let () (declare (not safe)) (_%g1835018386%_)))
                          (if (gx#stx-null? _%tl1836218477%_)
                              (_%__match2094220943%_
                               _%e1835418450%_
                               _%hd1835518454%_
                               _%tl1835618457%_
                               _%e1835718460%_
                               _%hd1835818464%_
                               _%tl1835918467%_
                               _%e1836018470%_
                               _%hd1836118474%_
                               _%tl1836218477%_)
                              (let ()
                                (declare (not safe))
                                (_%g1835018386%_))))))
                  (if (gx#stx-null? _%tl1836218477%_)
                      (_%__match2094220943%_
                       _%e1835418450%_
                       _%hd1835518454%_
                       _%tl1835618457%_
                       _%e1835718460%_
                       _%hd1835818464%_
                       _%tl1835918467%_
                       _%e1836018470%_
                       _%hd1836118474%_
                       _%tl1836218477%_)
                      (let () (declare (not safe)) (_%g1835018386%_))))
              (if (gx#stx-null? _%tl1836218477%_)
                  (_%__match2094220943%_
                   _%e1835418450%_
                   _%hd1835518454%_
                   _%tl1835618457%_
                   _%e1835718460%_
                   _%hd1835818464%_
                   _%tl1835918467%_
                   _%e1836018470%_
                   _%hd1836118474%_
                   _%tl1836218477%_)
                  (let () (declare (not safe)) (_%g1835018386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1836218477%_)
                                                      (_%__match2094220943%_
                                                       _%e1835418450%_
                                                       _%hd1835518454%_
                                                       _%tl1835618457%_
                                                       _%e1835718460%_
                                                       _%hd1835818464%_
                                                       _%tl1835918467%_
                                                       _%e1836018470%_
                                                       _%hd1836118474%_
                                                       _%tl1836218477%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1835018386%_))))))
                                          (if (gx#stx-null? _%tl1836218477%_)
                                              (_%__match2094220943%_
                                               _%e1835418450%_
                                               _%hd1835518454%_
                                               _%tl1835618457%_
                                               _%e1835718460%_
                                               _%hd1835818464%_
                                               _%tl1835918467%_
                                               _%e1836018470%_
                                               _%hd1836118474%_
                                               _%tl1836218477%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1835018386%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1835018386%_)))))
                          (let () (declare (not safe)) (_%g1835018386%_)))))
                  (let () (declare (not safe)) (_%g1835018386%_))))))))))

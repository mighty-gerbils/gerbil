(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g17946_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17181%_)
        (let* ((_%$%g1718617225%_
                (lambda (_%$%g1718717221%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1718717221%_)))
               (_%$%g1718517281%_
                (lambda (_%$%g1718717229%_)
                  (if (gx#stx-pair? _%$%g1718717229%_)
                      (let ((_%$%e1721117232%_
                             (gx#syntax-e _%$%g1718717229%_)))
                        (let ((_%$%hd1721217236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1721117232%_)))
                              (_%$%tl1721317239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1721117232%_))))
                          (if (gx#stx-pair? _%$%tl1721317239%_)
                              (let ((_%$%e1721417242%_
                                     (gx#syntax-e _%$%tl1721317239%_)))
                                (let ((_%$%hd1721517246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1721417242%_)))
                                      (_%$%tl1721617249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1721417242%_))))
                                  (if (gx#stx-pair? _%$%tl1721617249%_)
                                      (let ((_%$%e1721717252%_
                                             (gx#syntax-e _%$%tl1721617249%_)))
                                        (let ((_%$%hd1721817256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1721717252%_)))
                                              (_%$%tl1721917259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1721717252%_))))
                                          (if (gx#stx-null? _%$%tl1721917259%_)
                                              ((lambda (_%$%g1720917262%_
                                                        _%$%g1721017264%_)
                                                 (if (gx#identifier?
                                                      _%$%g1721017264%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _%$%g1721017264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g1720917262%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g1718617225%_
                                                      _%$%g1718717229%_)))
                                               _%$%hd1721817256%_
                                               _%$%hd1721517246%_)
                                              (_%$%g1718617225%_
                                               _%$%g1718717229%_))))
                                      (_%$%g1718617225%_ _%$%g1718717229%_))))
                              (_%$%g1718617225%_ _%$%g1718717229%_))))
                      (_%$%g1718617225%_ _%$%g1718717229%_))))
               (_%$%g1718417377%_
                (lambda (_%$%g1718717285%_)
                  (if (gx#stx-pair? _%$%g1718717285%_)
                      (let ((_%$%e1719117288%_
                             (gx#syntax-e _%$%g1718717285%_)))
                        (let ((_%$%hd1719217292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1719117288%_)))
                              (_%$%tl1719317295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1719117288%_))))
                          (if (gx#stx-pair? _%$%tl1719317295%_)
                              (let ((_%$%e1719417298%_
                                     (gx#syntax-e _%$%tl1719317295%_)))
                                (let ((_%$%hd1719517302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1719417298%_)))
                                      (_%$%tl1719617305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1719417298%_))))
                                  (if (gx#stx-pair? _%$%hd1719517302%_)
                                      (let ((_%$%e1719717308%_
                                             (gx#syntax-e _%$%hd1719517302%_)))
                                        (let ((_%$%hd1719817312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1719717308%_)))
                                              (_%$%tl1719917315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1719717308%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1719617305%_)
                                              (let ((_g17940_
                                                     (gx#syntax-split-splice
                                                      _%$%tl1719617305%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17941_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17940_)
                                                               (##values-length
                                                                _g17940_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17941_ 2)))
                (error "Context expects 2 values" _g17941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target1720017318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17940_
                                                            0)))
                                                        (_%$%tl1720217321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17940_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1720217321%_)
                                                        (letrec ((_%$%loop1720317324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd1720117328%_ _%$%body1720717331%_)
                            (if (gx#stx-pair? _%$%hd1720117328%_)
                                (let ((_%$%e1720417333%_
                                       (gx#syntax-e _%$%hd1720117328%_)))
                                  (let ((_%$%lp-hd1720517337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1720417333%_)))
                                        (_%$%lp-tl1720617340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1720417333%_))))
                                    (_%$%loop1720317324%_
                                     _%$%lp-tl1720617340%_
                                     (cons _%$%lp-hd1720517337%_
                                           _%$%body1720717331%_))))
                                (let ((_%$%body1720817343%_
                                       (reverse _%$%body1720717331%_)))
                                  ((lambda (_%$%g1718817346%_
                                            _%$%g1718917348%_
                                            _%$%g1719017349%_)
                                     (if (gx#identifier? _%$%g1719017349%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%$%g1719017349%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons _%$%g1718917348%_
                               (foldr (lambda (_%$%g1736817371%_
                                               _%$%g1736917374%_)
                                        (cons _%$%g1736817371%_
                                              _%$%g1736917374%_))
                                      '()
                                      _%$%g1718817346%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g1718517281%_
                                          _%$%g1718717285%_)))
                                   _%$%body1720817343%_
                                   _%$%tl1719917315%_
                                   _%$%hd1719817312%_))))))
                  (_%$%loop1720317324%_ _%$%target1720017318%_ '()))
                (_%$%g1718517281%_ _%$%g1718717285%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1718517281%_
                                               _%$%g1718717285%_))))
                                      (_%$%g1718517281%_ _%$%g1718717285%_))))
                              (_%$%g1718517281%_ _%$%g1718717285%_))))
                      (_%$%g1718517281%_ _%$%g1718717285%_)))))
          (_%$%g1718417377%_ _%$stx17181%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17382%_)
        (let* ((_%$%g1738517422%_
                (lambda (_%$%g1738617418%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1738617418%_)))
               (_%$%g1738417590%_
                (lambda (_%$%g1738617426%_)
                  (if (gx#stx-pair? _%$%g1738617426%_)
                      (let ((_%$%e1739017429%_
                             (gx#syntax-e _%$%g1738617426%_)))
                        (let ((_%$%hd1739117433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1739017429%_)))
                              (_%$%tl1739217436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1739017429%_))))
                          (if (gx#stx-pair? _%$%tl1739217436%_)
                              (let ((_%$%e1739317439%_
                                     (gx#syntax-e _%$%tl1739217436%_)))
                                (let ((_%$%hd1739417443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1739317439%_)))
                                      (_%$%tl1739517446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1739317439%_))))
                                  (if (gx#stx-pair? _%$%tl1739517446%_)
                                      (let ((_%$%e1739617449%_
                                             (gx#syntax-e _%$%tl1739517446%_)))
                                        (let ((_%$%hd1739717453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1739617449%_)))
                                              (_%$%tl1739817456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1739617449%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%hd1739717453%_)
                                              (let ((_g17942_
                                                     (gx#syntax-split-splice
                                                      _%$%hd1739717453%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17942_)
                                                               (##values-length
                                                                _g17942_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17943_ 2)))
                (error "Context expects 2 values" _g17943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target1739917459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17942_
                                                            0)))
                                                        (_%$%tl1740117462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17942_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1740117462%_)
                                                        (letrec ((_%$%loop1740217465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd1740017469%_ _%$%lit1740617472%_)
                            (if (gx#stx-pair? _%$%hd1740017469%_)
                                (let ((_%$%e1740317474%_
                                       (gx#syntax-e _%$%hd1740017469%_)))
                                  (let ((_%$%lp-hd1740417478%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1740317474%_)))
                                        (_%$%lp-tl1740517481%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1740317474%_))))
                                    (_%$%loop1740217465%_
                                     _%$%lp-tl1740517481%_
                                     (cons _%$%lp-hd1740417478%_
                                           _%$%lit1740617472%_))))
                                (let ((_%$%lit1740717484%_
                                       (reverse _%$%lit1740617472%_)))
                                  (if (gx#stx-pair/null? _%$%tl1739817456%_)
                                      (let ((_g17944_
                                             (gx#syntax-split-splice
                                              _%$%tl1739817456%_
                                              '0)))
                                        (begin
                                          (let ((_g17945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17944_)
                                                       (##values-length
                                                        _g17944_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17945_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17945_)))
                                          (let ((_%$%target1740817487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17944_ 0)))
                                                (_%$%tl1741017490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17944_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl1741017490%_)
                                                (letrec ((_%$%loop1741117493%_
                                                          (lambda (_%$%hd1740917497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause1741517500%_)
                    (if (gx#stx-pair? _%$%hd1740917497%_)
                        (let ((_%$%e1741217502%_
                               (gx#syntax-e _%$%hd1740917497%_)))
                          (let ((_%$%lp-hd1741317506%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1741217502%_)))
                                (_%$%lp-tl1741417509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1741217502%_))))
                            (_%$%loop1741117493%_
                             _%$%lp-tl1741417509%_
                             (cons _%$%lp-hd1741317506%_
                                   _%$%clause1741517500%_))))
                        (let ((_%$%clause1741617512%_
                               (reverse _%$%clause1741517500%_)))
                          ((lambda (_%$%g1738717515%_
                                    _%$%g1738817517%_
                                    _%$%g1738917518%_)
                             (let* ((_%$%g1754317551%_
                                     (lambda (_%$%g1754417547%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g1754417547%_)))
                                    (_%$%g1754217586%_
                                     (lambda (_%$%g1754417555%_)
                                       ((lambda (_%$%g1754517558%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%$%g1738917518%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%$%g1754517558%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%$%g1754517558%_
                                                  (cons (foldr (lambda (_%$%g1756917574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g1757017577%_)
                         (cons _%$%g1756917574%_ _%$%g1757017577%_))
                       '()
                       _%$%g1738817517%_)
                (foldr (lambda (_%$%g1757117580%_ _%$%g1757217583%_)
                         (cons _%$%g1757117580%_ _%$%g1757217583%_))
                       '()
                       _%$%g1738717515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$%g1754417555%_))))
                               (_%$%g1754217586%_
                                (gx#syntax-local-introduce 'stx))))
                           _%$%clause1741617512%_
                           _%$%lit1740717484%_
                           _%$%hd1739417443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop1741117493%_
                                                   _%$%target1740817487%_
                                                   '()))
                                                (_%$%g1738517422%_
                                                 _%$%g1738617426%_)))))
                                      (_%$%g1738517422%_
                                       _%$%g1738617426%_)))))))
                  (_%$%loop1740217465%_ _%$%target1739917459%_ '()))
                (_%$%g1738517422%_ _%$%g1738617426%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1738517422%_
                                               _%$%g1738617426%_))))
                                      (_%$%g1738517422%_ _%$%g1738617426%_))))
                              (_%$%g1738517422%_ _%$%g1738617426%_))))
                      (_%$%g1738517422%_ _%$%g1738617426%_)))))
          (_%$%g1738417590%_ _%stx17382%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx17596%_)
        (let* ((_%$%g1760117637%_
                (lambda (_%$%g1760217633%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1760217633%_)))
               (_%$%g1760017694%_
                (lambda (_%$%g1760217641%_)
                  (if (gx#stx-pair? _%$%g1760217641%_)
                      (let ((_%$%e1762317644%_
                             (gx#syntax-e _%$%g1760217641%_)))
                        (let ((_%$%hd1762417648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1762317644%_)))
                              (_%$%tl1762517651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1762317644%_))))
                          (if (gx#stx-pair? _%$%tl1762517651%_)
                              (let ((_%$%e1762617654%_
                                     (gx#syntax-e _%$%tl1762517651%_)))
                                (let ((_%$%hd1762717658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1762617654%_)))
                                      (_%$%tl1762817661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1762617654%_))))
                                  (if (gx#stx-pair? _%$%tl1762817661%_)
                                      (let ((_%$%e1762917664%_
                                             (gx#syntax-e _%$%tl1762817661%_)))
                                        (let ((_%$%hd1763017668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1762917664%_)))
                                              (_%$%tl1763117671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1762917664%_))))
                                          (if (gx#stx-null? _%$%tl1763117671%_)
                                              ((lambda (_%$%g1762017674%_
                                                        _%$%g1762117676%_
                                                        _%$%g1762217677%_)
                                                 (if (and (gx#identifier?
                                                           _%$%g1762117676%_)
                                                          (gx#stx-datum?
                                                           _%$%g1762017674%_))
                                                     (cons _%$%g1762217677%_
                                                           (cons _%$%g1762117676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g1762017674%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g1760117637%_
                                                      _%$%g1760217641%_)))
                                               _%$%hd1763017668%_
                                               _%$%hd1762717658%_
                                               _%$%hd1762417648%_)
                                              (_%$%g1760117637%_
                                               _%$%g1760217641%_))))
                                      (_%$%g1760117637%_ _%$%g1760217641%_))))
                              (_%$%g1760117637%_ _%$%g1760217641%_))))
                      (_%$%g1760117637%_ _%$%g1760217641%_))))
               (_%$%g1759917772%_
                (lambda (_%$%g1760217698%_)
                  (if (gx#stx-pair? _%$%g1760217698%_)
                      (let ((_%$%e1760517701%_
                             (gx#syntax-e _%$%g1760217698%_)))
                        (let ((_%$%hd1760617705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1760517701%_)))
                              (_%$%tl1760717708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1760517701%_))))
                          (if (gx#stx-pair? _%$%tl1760717708%_)
                              (let ((_%$%e1760817711%_
                                     (gx#syntax-e _%$%tl1760717708%_)))
                                (let ((_%$%hd1760917715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1760817711%_)))
                                      (_%$%tl1761017718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1760817711%_))))
                                  (if (gx#stx-pair? _%$%tl1761017718%_)
                                      (let ((_%$%e1761117721%_
                                             (gx#syntax-e _%$%tl1761017718%_)))
                                        (let ((_%$%hd1761217725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1761117721%_)))
                                              (_%$%tl1761317728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1761117721%_))))
                                          (if (gx#stx-pair? _%$%hd1761217725%_)
                                              (let ((_%$%e1761417731%_
                                                     (gx#syntax-e
                                                      _%$%hd1761217725%_)))
                                                (let ((_%$%hd1761517735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1761417731%_)))
                                                      (_%$%tl1761617738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1761417731%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd1761517735%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/sugar~Sugar-3[1]#_g17946_|
                                                           _%$%hd1761517735%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl1761617738%_)
                                                              (let ((_%$%e1761717741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl1761617738%_)))
                        (let ((_%$%hd1761817745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1761717741%_)))
                              (_%$%tl1761917748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1761717741%_))))
                          (if (gx#stx-null? _%$%tl1761917748%_)
                              (if (gx#stx-null? _%$%tl1761317728%_)
                                  ((lambda (_%$%g1760317751%_
                                            _%$%g1760417753%_)
                                     (if (gx#identifier? _%$%g1760417753%_)
                                         (cons (gx#datum->syntax '#f 'defrules)
                                               (cons _%$%g1760417753%_
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'x)
                               (cons (cons (gx#datum->syntax '#f 'identifier?)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'x)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g1760317751%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g1760017694%_
                                          _%$%g1760217698%_)))
                                   _%$%hd1761817745%_
                                   _%$%hd1760917715%_)
                                  (_%$%g1760017694%_ _%$%g1760217698%_))
                              (_%$%g1760017694%_ _%$%g1760217698%_))))
                      (_%$%g1760017694%_ _%$%g1760217698%_))
                  (_%$%g1760017694%_ _%$%g1760217698%_))
              (_%$%g1760017694%_ _%$%g1760217698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1760017694%_
                                               _%$%g1760217698%_))))
                                      (_%$%g1760017694%_ _%$%g1760217698%_))))
                              (_%$%g1760017694%_ _%$%g1760217698%_))))
                      (_%$%g1760017694%_ _%$%g1760217698%_)))))
          (_%$%g1759917772%_ _%$stx17596%_))))))

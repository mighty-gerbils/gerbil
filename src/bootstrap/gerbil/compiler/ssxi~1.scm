(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g209261_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209268_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209270_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209272_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209274_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209276_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209288_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209290_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209292_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209294_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209296_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx202679%_)
        (let* ((_%g202683202701%_
                (lambda (_%g202684202697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202684202697%_))))
               (_%g202682202756%_
                (lambda (_%g202684202705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202684202705%_))
                      (let ((_%e202687202708%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202684202705%_))))
                        (let ((_%hd202688202712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202687202708%_)))
                              (_%tl202689202715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202687202708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202689202715%_))
                              (let ((_%e202690202718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202689202715%_))))
                                (let ((_%hd202691202722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202690202718%_)))
                                      (_%tl202692202725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202690202718%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202692202725%_))
                                      (let ((_%e202693202728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202692202725%_))))
                                        (let ((_%hd202694202732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202693202728%_)))
                                              (_%tl202695202735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202693202728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202695202735%_))
                                              ((lambda (_%L202738%_
                                                        _%L202740%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202740%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L202740%_ '()))
                         (cons _%L202738%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202683202701%_
                                                      _%g202684202705%_)))
                                               _%hd202694202732%_
                                               _%hd202691202722%_)
                                              (_%g202683202701%_
                                               _%g202684202705%_))))
                                      (_%g202683202701%_ _%g202684202705%_))))
                              (_%g202683202701%_ _%g202684202705%_))))
                      (_%g202683202701%_ _%g202684202705%_)))))
          (_%g202682202756%_ _%$stx202679%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx202760%_)
        (let* ((_%g202764202782%_
                (lambda (_%g202765202778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202765202778%_))))
               (_%g202763202837%_
                (lambda (_%g202765202786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202765202786%_))
                      (let ((_%e202768202789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202765202786%_))))
                        (let ((_%hd202769202793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202768202789%_)))
                              (_%tl202770202796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202768202789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202770202796%_))
                              (let ((_%e202771202799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202770202796%_))))
                                (let ((_%hd202772202803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202771202799%_)))
                                      (_%tl202773202806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202771202799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202773202806%_))
                                      (let ((_%e202774202809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202773202806%_))))
                                        (let ((_%hd202775202813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202774202809%_)))
                                              (_%tl202776202816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202774202809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202776202816%_))
                                              ((lambda (_%L202819%_
                                                        _%L202821%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202821%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L202821%_ '()))
                         (cons _%L202819%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202764202782%_
                                                      _%g202765202786%_)))
                                               _%hd202775202813%_
                                               _%hd202772202803%_)
                                              (_%g202764202782%_
                                               _%g202765202786%_))))
                                      (_%g202764202782%_ _%g202765202786%_))))
                              (_%g202764202782%_ _%g202765202786%_))))
                      (_%g202764202782%_ _%g202765202786%_)))))
          (_%g202763202837%_ _%$stx202760%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx202841%_)
        (let* ((_%g202845202874%_
                (lambda (_%g202846202870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202846202870%_))))
               (_%g202844202974%_
                (lambda (_%g202846202878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202846202878%_))
                      (let ((_%e202849202881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202846202878%_))))
                        (let ((_%hd202850202885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202849202881%_)))
                              (_%tl202851202888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202849202881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202851202888%_))
                              (let ((_g209239_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202851202888%_
                                        '0))))
                                (begin
                                  (let ((_g209240_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209239_)
                                               (##vector-length _g209239_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209240_ 2)))
                                        (error "Context expects 2 values"
                                               _g209240_)))
                                  (let ((_%target202852202891%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209239_ 0)))
                                        (_%tl202854202894%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209239_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202854202894%_))
                                        (letrec ((_%loop202855202897%_
                                                  (lambda (_%hd202853202901%_
                                                           _%type202859202904%_
                                                           _%symbol202860202906%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202853202901%_))
                                                        (let ((_%e202856202909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202853202901%_))))
                  (let ((_%lp-hd202857202913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202856202909%_)))
                        (_%lp-tl202858202916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202856202909%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202857202913%_))
                        (let ((_%e202863202919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202857202913%_))))
                          (let ((_%hd202864202923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202863202919%_)))
                                (_%tl202865202926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202863202919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202865202926%_))
                                (let ((_%e202866202929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202865202926%_))))
                                  (let ((_%hd202867202933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202866202929%_)))
                                        (_%tl202868202936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202866202929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202868202936%_))
                                        (_%loop202855202897%_
                                         _%lp-tl202858202916%_
                                         (cons _%hd202867202933%_
                                               _%type202859202904%_)
                                         (cons _%hd202864202923%_
                                               _%symbol202860202906%_))
                                        (_%g202845202874%_
                                         _%g202846202878%_))))
                                (_%g202845202874%_ _%g202846202878%_))))
                        (_%g202845202874%_ _%g202846202878%_))))
                (let ((_%type202861202939%_ (reverse _%type202859202904%_))
                      (_%symbol202862202942%_
                       (reverse _%symbol202860202906%_)))
                  ((lambda (_%L202945%_ _%L202947%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202945%_
                                _%L202947%_))
                             (let ((__tmp209241
                                    (lambda (_%g202962202966%_
                                             _%g202963202969%_
                                             _%g202964202971%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g202963202969%_
                                                        (cons _%g202962202966%_
                                                              '())))
                                            _%g202964202971%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209241
                                '()
                                _%L202945%_
                                _%L202947%_)))))
                   _%type202861202939%_
                   _%symbol202862202942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202855202897%_
                                           _%target202852202891%_
                                           '()
                                           '()))
                                        (_%g202845202874%_
                                         _%g202846202878%_)))))
                              (_%g202845202874%_ _%g202846202878%_))))
                      (_%g202845202874%_ _%g202846202878%_)))))
          (_%g202844202974%_ _%$stx202841%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx202979%_)
        (let* ((_%__stx208550208551%_ _%$stx202979%_)
               (_%g202984203026%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208550208551%_)))))
          (let ((_%__kont208553208554%_
                 (lambda (_%L203154%_ _%L203156%_ _%L203157%_ _%L203158%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203158%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203157%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203156%_ '()))
                                           (cons _%L203154%_ '())))))))
                (_%__kont208555208556%_
                 (lambda (_%L203073%_ _%L203075%_ _%L203076%_ _%L203077%_)
                   (cons _%L203077%_
                         (cons _%L203076%_
                               (cons _%L203075%_
                                     (cons _%L203073%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match208589208590%_
                   (lambda (_%e202990203104%_
                            _%hd202991203108%_
                            _%tl202992203111%_
                            _%e202993203114%_
                            _%hd202994203118%_
                            _%tl202995203121%_
                            _%e202996203124%_
                            _%hd202997203128%_
                            _%tl202998203131%_
                            _%e202999203134%_
                            _%hd203000203138%_
                            _%tl203001203141%_
                            _%e203002203144%_
                            _%hd203003203148%_
                            _%tl203004203151%_)
                     (let ((_%L203154%_ _%hd203003203148%_)
                           (_%L203156%_ _%hd203000203138%_)
                           (_%L203157%_ _%hd202997203128%_)
                           (_%L203158%_ _%hd202994203118%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203158%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203157%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203156%_)))
                           (_%__kont208553208554%_
                            _%L203154%_
                            _%L203156%_
                            _%L203157%_
                            _%L203158%_)
                           (let ()
                             (declare (not safe))
                             (_%g202984203026%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208550208551%_))
                  (let ((_%e202990203104%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208550208551%_))))
                    (let ((_%tl202992203111%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202990203104%_)))
                          (_%hd202991203108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202990203104%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202992203111%_))
                          (let ((_%e202993203114%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202992203111%_))))
                            (let ((_%tl202995203121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202993203114%_)))
                                  (_%hd202994203118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202993203114%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202995203121%_))
                                  (let ((_%e202996203124%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202995203121%_))))
                                    (let ((_%tl202998203131%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202996203124%_)))
                                          (_%hd202997203128%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202996203124%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202998203131%_))
                                          (let ((_%e202999203134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl202998203131%_))))
                                            (let ((_%tl203001203141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202999203134%_)))
                                                  (_%hd203000203138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202999203134%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203001203141%_))
                                                  (let ((_%e203002203144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203001203141%_))))
                                                    (let ((_%tl203004203151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203002203144%_)))
                                                          (_%hd203003203148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203002203144%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203004203151%_))
                                                          (_%__match208589208590%_
                                                           _%e202990203104%_
                                                           _%hd202991203108%_
                                                           _%tl202992203111%_
                                                           _%e202993203114%_
                                                           _%hd202994203118%_
                                                           _%tl202995203121%_
                                                           _%e202996203124%_
                                                           _%hd202997203128%_
                                                           _%tl202998203131%_
                                                           _%e202999203134%_
                                                           _%hd203000203138%_
                                                           _%tl203001203141%_
                                                           _%e203002203144%_
                                                           _%hd203003203148%_
                                                           _%tl203004203151%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202984203026%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203001203141%_))
                                                      (_%__kont208555208556%_
                                                       _%hd203000203138%_
                                                       _%hd202997203128%_
                                                       _%hd202994203118%_
                                                       _%hd202991203108%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202984203026%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202984203026%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202984203026%_)))))
                          (let () (declare (not safe)) (_%g202984203026%_)))))
                  (let () (declare (not safe)) (_%g202984203026%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx203183%_)
        (let* ((_%g203187203222%_
                (lambda (_%g203188203218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203188203218%_))))
               (_%g203186203341%_
                (lambda (_%g203188203226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203188203226%_))
                      (let ((_%e203192203229%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203188203226%_))))
                        (let ((_%hd203193203233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203192203229%_)))
                              (_%tl203194203236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203192203229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203194203236%_))
                              (let ((_g209242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203194203236%_
                                        '0))))
                                (begin
                                  (let ((_g209243_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209242_)
                                               (##vector-length _g209242_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209243_ 2)))
                                        (error "Context expects 2 values"
                                               _g209243_)))
                                  (let ((_%target203195203239%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209242_ 0)))
                                        (_%tl203197203242%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209242_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203197203242%_))
                                        (letrec ((_%loop203198203245%_
                                                  (lambda (_%hd203196203249%_
                                                           _%symbol203202203252%_
                                                           _%method203203203254%_
                                                           _%type-t203204203256%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203196203249%_))
                                                        (let ((_%e203199203259%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203196203249%_))))
                  (let ((_%lp-hd203200203263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203199203259%_)))
                        (_%lp-tl203201203266%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203199203259%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203200203263%_))
                        (let ((_%e203208203269%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203200203263%_))))
                          (let ((_%hd203209203273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203208203269%_)))
                                (_%tl203210203276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203208203269%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203210203276%_))
                                (let ((_%e203211203279%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203210203276%_))))
                                  (let ((_%hd203212203283%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203211203279%_)))
                                        (_%tl203213203286%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203211203279%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203213203286%_))
                                        (let ((_%e203214203289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203213203286%_))))
                                          (let ((_%hd203215203293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203214203289%_)))
                                                (_%tl203216203296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203214203289%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203216203296%_))
                                                (_%loop203198203245%_
                                                 _%lp-tl203201203266%_
                                                 (cons _%hd203215203293%_
                                                       _%symbol203202203252%_)
                                                 (cons _%hd203212203283%_
                                                       _%method203203203254%_)
                                                 (cons _%hd203209203273%_
                                                       _%type-t203204203256%_))
                                                (_%g203187203222%_
                                                 _%g203188203226%_))))
                                        (_%g203187203222%_
                                         _%g203188203226%_))))
                                (_%g203187203222%_ _%g203188203226%_))))
                        (_%g203187203222%_ _%g203188203226%_))))
                (let ((_%symbol203205203299%_ (reverse _%symbol203202203252%_))
                      (_%method203206203302%_ (reverse _%method203203203254%_))
                      (_%type-t203207203304%_
                       (reverse _%type-t203204203256%_)))
                  ((lambda (_%L203307%_ _%L203309%_ _%L203310%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203307%_
                                _%L203309%_
                                _%L203310%_))
                             (let ((__tmp209244
                                    (lambda (_%g203326203331%_
                                             _%g203327203334%_
                                             _%g203328203336%_
                                             _%g203329203338%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g203328203336%_
                                                        (cons _%g203327203334%_
                                                              (cons _%g203326203331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g203329203338%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp209244
                                '()
                                _%L203307%_
                                _%L203309%_
                                _%L203310%_)))))
                   _%symbol203205203299%_
                   _%method203206203302%_
                   _%type-t203207203304%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203198203245%_
                                           _%target203195203239%_
                                           '()
                                           '()
                                           '()))
                                        (_%g203187203222%_
                                         _%g203188203226%_)))))
                              (_%g203187203222%_ _%g203188203226%_))))
                      (_%g203187203222%_ _%g203188203226%_)))))
          (_%g203186203341%_ _%$stx203183%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx203346%_)
        (let* ((_%g203350203383%_
                (lambda (_%g203351203379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203351203379%_))))
               (_%g203349203497%_
                (lambda (_%g203351203387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203351203387%_))
                      (let ((_%e203355203390%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203351203387%_))))
                        (let ((_%hd203356203394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203355203390%_)))
                              (_%tl203357203397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203355203390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203357203397%_))
                              (let ((_%e203358203400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203357203397%_))))
                                (let ((_%hd203359203404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203358203400%_)))
                                      (_%tl203360203407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203358203400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203360203407%_))
                                      (let ((_g209245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203360203407%_
                                                '0))))
                                        (begin
                                          (let ((_g209246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209245_)
                                                       (##vector-length
                                                        _g209245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209246_)))
                                          (let ((_%target203361203410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209245_ 0)))
                                                (_%tl203363203413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209245_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203363203413%_))
                                                (letrec ((_%loop203364203416%_
                                                          (lambda (_%hd203362203420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol203368203423%_
                           _%method203369203425%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203362203420%_))
                        (let ((_%e203365203428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203362203420%_))))
                          (let ((_%lp-hd203366203432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203365203428%_)))
                                (_%lp-tl203367203435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203365203428%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd203366203432%_))
                                (let ((_%e203372203438%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd203366203432%_))))
                                  (let ((_%hd203373203442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203372203438%_)))
                                        (_%tl203374203445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203372203438%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203374203445%_))
                                        (let ((_%e203375203448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203374203445%_))))
                                          (let ((_%hd203376203452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203375203448%_)))
                                                (_%tl203377203455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203375203448%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203377203455%_))
                                                (_%loop203364203416%_
                                                 _%lp-tl203367203435%_
                                                 (cons _%hd203376203452%_
                                                       _%symbol203368203423%_)
                                                 (cons _%hd203373203442%_
                                                       _%method203369203425%_))
                                                (_%g203350203383%_
                                                 _%g203351203387%_))))
                                        (_%g203350203383%_
                                         _%g203351203387%_))))
                                (_%g203350203383%_ _%g203351203387%_))))
                        (let ((_%symbol203370203458%_
                               (reverse _%symbol203368203423%_))
                              (_%method203371203461%_
                               (reverse _%method203369203425%_)))
                          ((lambda (_%L203464%_ _%L203466%_ _%L203467%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L203464%_
                                        _%L203466%_))
                                     (let ((__tmp209247
                                            (lambda (_%g203485203489%_
                                                     _%g203486203492%_
                                                     _%g203487203494%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L203467%_
                                                                (cons _%g203486203492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g203485203489%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g203487203494%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp209247
                                        '()
                                        _%L203464%_
                                        _%L203466%_)))))
                           _%symbol203370203458%_
                           _%method203371203461%_
                           _%hd203359203404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203364203416%_
                                                   _%target203361203410%_
                                                   '()
                                                   '()))
                                                (_%g203350203383%_
                                                 _%g203351203387%_)))))
                                      (_%g203350203383%_ _%g203351203387%_))))
                              (_%g203350203383%_ _%g203351203387%_))))
                      (_%g203350203383%_ _%g203351203387%_)))))
          (_%g203349203497%_ _%$stx203346%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx203502%_)
        (let* ((_%g203506203520%_
                (lambda (_%g203507203516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203507203516%_))))
               (_%g203505203561%_
                (lambda (_%g203507203524%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203507203524%_))
                      (let ((_%e203509203527%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203507203524%_))))
                        (let ((_%hd203510203531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203509203527%_)))
                              (_%tl203511203534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203509203527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203511203534%_))
                              (let ((_%e203512203537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203511203534%_))))
                                (let ((_%hd203513203541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203512203537%_)))
                                      (_%tl203514203544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203512203537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203514203544%_))
                                      ((lambda (_%L203547%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L203547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203513203541%_)
                                      (_%g203506203520%_ _%g203507203524%_))))
                              (_%g203506203520%_ _%g203507203524%_))))
                      (_%g203506203520%_ _%g203507203524%_)))))
          (_%g203505203561%_ _%$stx203502%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx203565%_)
        (let* ((_%g203569203623%_
                (lambda (_%g203570203619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203570203619%_))))
               (_%g203568203804%_
                (lambda (_%g203570203627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203570203627%_))
                      (let ((_%e203582203630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203570203627%_))))
                        (let ((_%hd203583203634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203582203630%_)))
                              (_%tl203584203637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203582203630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203584203637%_))
                              (let ((_%e203585203640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203584203637%_))))
                                (let ((_%hd203586203644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203585203640%_)))
                                      (_%tl203587203647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203585203640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203587203647%_))
                                      (let ((_%e203588203650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203587203647%_))))
                                        (let ((_%hd203589203654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203588203650%_)))
                                              (_%tl203590203657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203588203650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203590203657%_))
                                              (let ((_%e203591203660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203590203657%_))))
                                                (let ((_%hd203592203664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203591203660%_)))
                                                      (_%tl203593203667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203591203660%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203593203667%_))
                                                      (let ((_%e203594203670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203593203667%_))))
                (let ((_%hd203595203674%_
                       (let () (declare (not safe)) (##car _%e203594203670%_)))
                      (_%tl203596203677%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203594203670%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203596203677%_))
                      (let ((_%e203597203680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203596203677%_))))
                        (let ((_%hd203598203684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203597203680%_)))
                              (_%tl203599203687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203597203680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203599203687%_))
                              (let ((_%e203600203690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203599203687%_))))
                                (let ((_%hd203601203694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203600203690%_)))
                                      (_%tl203602203697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203600203690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203602203697%_))
                                      (let ((_%e203603203700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203602203697%_))))
                                        (let ((_%hd203604203704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203603203700%_)))
                                              (_%tl203605203707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203603203700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203605203707%_))
                                              (let ((_%e203606203710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203605203707%_))))
                                                (let ((_%hd203607203714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203606203710%_)))
                                                      (_%tl203608203717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203606203710%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203608203717%_))
                                                      (let ((_%e203609203720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203608203717%_))))
                (let ((_%hd203610203724%_
                       (let () (declare (not safe)) (##car _%e203609203720%_)))
                      (_%tl203611203727%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203609203720%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203611203727%_))
                      (let ((_%e203612203730%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203611203727%_))))
                        (let ((_%hd203613203734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203612203730%_)))
                              (_%tl203614203737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203612203730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203614203737%_))
                              (let ((_%e203615203740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203614203737%_))))
                                (let ((_%hd203616203744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203615203740%_)))
                                      (_%tl203617203747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203615203740%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203617203747%_))
                                      ((lambda (_%L203750%_
                                                _%L203752%_
                                                _%L203753%_
                                                _%L203754%_
                                                _%L203755%_
                                                _%L203756%_
                                                _%L203757%_
                                                _%L203758%_
                                                _%L203759%_
                                                _%L203760%_
                                                _%L203761%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L203761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L203760%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203759%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203758%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203757%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203756%_ '()))
                                           (cons _%L203755%_
                                                 (cons _%L203754%_
                                                       (cons _%L203753%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203752%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203750%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203616203744%_
                                       _%hd203613203734%_
                                       _%hd203610203724%_
                                       _%hd203607203714%_
                                       _%hd203604203704%_
                                       _%hd203601203694%_
                                       _%hd203598203684%_
                                       _%hd203595203674%_
                                       _%hd203592203664%_
                                       _%hd203589203654%_
                                       _%hd203586203644%_)
                                      (_%g203569203623%_ _%g203570203627%_))))
                              (_%g203569203623%_ _%g203570203627%_))))
                      (_%g203569203623%_ _%g203570203627%_))))
              (_%g203569203623%_ _%g203570203627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203569203623%_
                                               _%g203570203627%_))))
                                      (_%g203569203623%_ _%g203570203627%_))))
                              (_%g203569203623%_ _%g203570203627%_))))
                      (_%g203569203623%_ _%g203570203627%_))))
              (_%g203569203623%_ _%g203570203627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203569203623%_
                                               _%g203570203627%_))))
                                      (_%g203569203623%_ _%g203570203627%_))))
                              (_%g203569203623%_ _%g203570203627%_))))
                      (_%g203569203623%_ _%g203570203627%_)))))
          (_%g203568203804%_ _%$stx203565%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx203808%_)
        (let* ((_%g203812203826%_
                (lambda (_%g203813203822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203813203822%_))))
               (_%g203811203867%_
                (lambda (_%g203813203830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203813203830%_))
                      (let ((_%e203815203833%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203813203830%_))))
                        (let ((_%hd203816203837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203815203833%_)))
                              (_%tl203817203840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203815203833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203817203840%_))
                              (let ((_%e203818203843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203817203840%_))))
                                (let ((_%hd203819203847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203818203843%_)))
                                      (_%tl203820203850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203818203843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203820203850%_))
                                      ((lambda (_%L203853%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L203853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203819203847%_)
                                      (_%g203812203826%_ _%g203813203830%_))))
                              (_%g203812203826%_ _%g203813203830%_))))
                      (_%g203812203826%_ _%g203813203830%_)))))
          (_%g203811203867%_ _%$stx203808%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx203871%_)
        (let* ((_%g203875203889%_
                (lambda (_%g203876203885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203876203885%_))))
               (_%g203874203930%_
                (lambda (_%g203876203893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203876203893%_))
                      (let ((_%e203878203896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203876203893%_))))
                        (let ((_%hd203879203900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203878203896%_)))
                              (_%tl203880203903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203878203896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203880203903%_))
                              (let ((_%e203881203906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203880203903%_))))
                                (let ((_%hd203882203910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203881203906%_)))
                                      (_%tl203883203913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203881203906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203883203913%_))
                                      ((lambda (_%L203916%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L203916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203882203910%_)
                                      (_%g203875203889%_ _%g203876203893%_))))
                              (_%g203875203889%_ _%g203876203893%_))))
                      (_%g203875203889%_ _%g203876203893%_)))))
          (_%g203874203930%_ _%$stx203871%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx203934%_)
        (let* ((_%g203938203960%_
                (lambda (_%g203939203956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203939203956%_))))
               (_%g203937204029%_
                (lambda (_%g203939203964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203939203964%_))
                      (let ((_%e203943203967%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203939203964%_))))
                        (let ((_%hd203944203971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203943203967%_)))
                              (_%tl203945203974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203943203967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203945203974%_))
                              (let ((_%e203946203977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203945203974%_))))
                                (let ((_%hd203947203981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203946203977%_)))
                                      (_%tl203948203984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203946203977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203948203984%_))
                                      (let ((_%e203949203987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203948203984%_))))
                                        (let ((_%hd203950203991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203949203987%_)))
                                              (_%tl203951203994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203949203987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203951203994%_))
                                              (let ((_%e203952203997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203951203994%_))))
                                                (let ((_%hd203953204001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203952203997%_)))
                                                      (_%tl203954204004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203952203997%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203954204004%_))
                                                      ((lambda (_%L204007%_
                                                                _%L204009%_
                                                                _%L204010%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204010%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204009%_ '()))
                                   (cons _%L204007%_ '())))))
               _%hd203953204001%_
               _%hd203950203991%_
               _%hd203947203981%_)
              (_%g203938203960%_ _%g203939203964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203938203960%_
                                               _%g203939203964%_))))
                                      (_%g203938203960%_ _%g203939203964%_))))
                              (_%g203938203960%_ _%g203939203964%_))))
                      (_%g203938203960%_ _%g203939203964%_)))))
          (_%g203937204029%_ _%$stx203934%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx204033%_)
        (let* ((_%g204037204059%_
                (lambda (_%g204038204055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204038204055%_))))
               (_%g204036204128%_
                (lambda (_%g204038204063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204038204063%_))
                      (let ((_%e204042204066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204038204063%_))))
                        (let ((_%hd204043204070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204042204066%_)))
                              (_%tl204044204073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204042204066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204044204073%_))
                              (let ((_%e204045204076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204044204073%_))))
                                (let ((_%hd204046204080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204045204076%_)))
                                      (_%tl204047204083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204045204076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204047204083%_))
                                      (let ((_%e204048204086%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204047204083%_))))
                                        (let ((_%hd204049204090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204048204086%_)))
                                              (_%tl204050204093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204048204086%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204050204093%_))
                                              (let ((_%e204051204096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204050204093%_))))
                                                (let ((_%hd204052204100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204051204096%_)))
                                                      (_%tl204053204103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204051204096%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204053204103%_))
                                                      ((lambda (_%L204106%_
                                                                _%L204108%_
                                                                _%L204109%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204109%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204108%_ '()))
                                   (cons _%L204106%_ '())))))
               _%hd204052204100%_
               _%hd204049204090%_
               _%hd204046204080%_)
              (_%g204037204059%_ _%g204038204063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204037204059%_
                                               _%g204038204063%_))))
                                      (_%g204037204059%_ _%g204038204063%_))))
                              (_%g204037204059%_ _%g204038204063%_))))
                      (_%g204037204059%_ _%g204038204063%_)))))
          (_%g204036204128%_ _%$stx204033%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx204132%_)
        (let* ((_%g204136204150%_
                (lambda (_%g204137204146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204137204146%_))))
               (_%g204135204191%_
                (lambda (_%g204137204154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204137204154%_))
                      (let ((_%e204139204157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204137204154%_))))
                        (let ((_%hd204140204161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204139204157%_)))
                              (_%tl204141204164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204139204157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204141204164%_))
                              (let ((_%e204142204167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204141204164%_))))
                                (let ((_%hd204143204171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204142204167%_)))
                                      (_%tl204144204174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204142204167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204144204174%_))
                                      ((lambda (_%L204177%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L204177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204143204171%_)
                                      (_%g204136204150%_ _%g204137204154%_))))
                              (_%g204136204150%_ _%g204137204154%_))))
                      (_%g204136204150%_ _%g204137204154%_)))))
          (_%g204135204191%_ _%$stx204132%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx204195%_)
        (let* ((_%g204199204217%_
                (lambda (_%g204200204213%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204200204213%_))))
               (_%g204198204272%_
                (lambda (_%g204200204221%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204200204221%_))
                      (let ((_%e204203204224%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204200204221%_))))
                        (let ((_%hd204204204228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204203204224%_)))
                              (_%tl204205204231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204203204224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204205204231%_))
                              (let ((_%e204206204234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204205204231%_))))
                                (let ((_%hd204207204238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204206204234%_)))
                                      (_%tl204208204241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204206204234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204208204241%_))
                                      (let ((_%e204209204244%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204208204241%_))))
                                        (let ((_%hd204210204248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204209204244%_)))
                                              (_%tl204211204251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204209204244%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204211204251%_))
                                              ((lambda (_%L204254%_
                                                        _%L204256%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204256%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204254%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204210204248%_
                                               _%hd204207204238%_)
                                              (_%g204199204217%_
                                               _%g204200204221%_))))
                                      (_%g204199204217%_ _%g204200204221%_))))
                              (_%g204199204217%_ _%g204200204221%_))))
                      (_%g204199204217%_ _%g204200204221%_)))))
          (_%g204198204272%_ _%$stx204195%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx204276%_)
        (let* ((_%__stx208618208619%_ _%$stx204276%_)
               (_%g204283204344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208618208619%_)))))
          (let ((_%__kont208621208622%_
                 (lambda (_%L204582%_ _%L204584%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204584%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204582%_ '()))
                                     '())))))
                (_%__kont208623208624%_
                 (lambda (_%L204521%_ _%L204523%_ _%L204524%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204524%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204523%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204521%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont208625208626%_
                 (lambda (_%L204445%_ _%L204447%_)
                   (cons _%L204447%_ (cons _%L204445%_ (cons '#f '())))))
                (_%__kont208627208628%_
                 (lambda (_%L204395%_ _%L204397%_ _%L204398%_)
                   (cons _%L204398%_
                         (cons _%L204397%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L204395%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208618208619%_))
                (let ((_%e204287204552%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208618208619%_))))
                  (let ((_%tl204289204559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204287204552%_)))
                        (_%hd204288204556%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204287204552%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204289204559%_))
                        (let ((_%e204290204562%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204289204559%_))))
                          (let ((_%tl204292204569%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204290204562%_)))
                                (_%hd204291204566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204290204562%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204292204569%_))
                                (let ((_%e204293204572%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204292204569%_))))
                                  (let ((_%tl204295204579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204293204572%_)))
                                        (_%hd204294204576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204293204572%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204295204579%_))
                                        (_%__kont208621208622%_
                                         _%hd204294204576%_
                                         _%hd204291204566%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204295204579%_))
                                            (let ((_%e204308204497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204295204579%_))))
                                              (let ((_%tl204310204504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204308204497%_)))
                                                    (_%hd204309204501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204308204497%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204309204501%_))
                                                    (let ((_%e204311204507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204309204501%_))))
                                                      (if (equal? _%e204311204507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204310204504%_))
                      (let ((_%e204312204511%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204310204504%_))))
                        (let ((_%tl204314204518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204312204511%_)))
                              (_%hd204313204515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204312204511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204314204518%_))
                              (_%__kont208623208624%_
                               _%hd204313204515%_
                               _%hd204294204576%_
                               _%hd204291204566%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd204294204576%_))
                                  (let ((_%e204335204381%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204294204576%_))))
                                    (declare (not safe))
                                    (_%g204283204344%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204283204344%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204294204576%_))
                          (let ((_%e204335204381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204294204576%_))))
                            (if (equal? _%e204335204381%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204310204504%_))
                                    (_%__kont208627208628%_
                                     _%hd204309204501%_
                                     _%hd204291204566%_
                                     _%hd204288204556%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204283204344%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204283204344%_))))
                          (let () (declare (not safe)) (_%g204283204344%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd204294204576%_))
                      (let ((_%e204335204381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204294204576%_))))
                        (if (equal? _%e204335204381%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204310204504%_))
                                (_%__kont208627208628%_
                                 _%hd204309204501%_
                                 _%hd204291204566%_
                                 _%hd204288204556%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204283204344%_)))
                            (let () (declare (not safe)) (_%g204283204344%_))))
                      (let () (declare (not safe)) (_%g204283204344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd204294204576%_))
                                                        (let ((_%e204335204381%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204294204576%_))))
                  (if (equal? _%e204335204381%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204310204504%_))
                          (_%__kont208627208628%_
                           _%hd204309204501%_
                           _%hd204291204566%_
                           _%hd204288204556%_)
                          (let () (declare (not safe)) (_%g204283204344%_)))
                      (let () (declare (not safe)) (_%g204283204344%_))))
                (let () (declare (not safe)) (_%g204283204344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204294204576%_))
                                                (let ((_%e204335204381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204294204576%_))))
                                                  (declare (not safe))
                                                  (_%g204283204344%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204283204344%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204292204569%_))
                                    (_%__kont208625208626%_
                                     _%hd204291204566%_
                                     _%hd204288204556%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204283204344%_))))))
                        (let () (declare (not safe)) (_%g204283204344%_)))))
                (let () (declare (not safe)) (_%g204283204344%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx204603%_)
        (let* ((_%g204607204636%_
                (lambda (_%g204608204632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204608204632%_))))
               (_%g204606204745%_
                (lambda (_%g204608204640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204608204640%_))
                      (let ((_%e204610204643%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204608204640%_))))
                        (let ((_%hd204611204647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204610204643%_)))
                              (_%tl204612204650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204610204643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204612204650%_))
                              (let ((_g209248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204612204650%_
                                        '0))))
                                (begin
                                  (let ((_g209249_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209248_)
                                               (##vector-length _g209248_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209249_ 2)))
                                        (error "Context expects 2 values"
                                               _g209249_)))
                                  (let ((_%target204613204653%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209248_ 0)))
                                        (_%tl204615204656%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209248_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204615204656%_))
                                        (letrec ((_%loop204616204659%_
                                                  (lambda (_%hd204614204663%_
                                                           _%clause204620204666%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204614204663%_))
                                                        (let ((_%e204617204669%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204614204663%_))))
                  (let ((_%lp-hd204618204673%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204617204669%_)))
                        (_%lp-tl204619204676%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204617204669%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd204618204673%_))
                        (let ((_g209250_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd204618204673%_
                                  '0))))
                          (begin
                            (let ((_g209251_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g209250_)
                                         (##vector-length _g209250_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g209251_ 2)))
                                  (error "Context expects 2 values"
                                         _g209251_)))
                            (let ((_%target204622204679%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g209250_ 0)))
                                  (_%tl204624204682%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g209250_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204624204682%_))
                                  (letrec ((_%loop204625204685%_
                                            (lambda (_%hd204623204689%_
                                                     _%clause204629204692%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204623204689%_))
                                                  (let ((_%e204626204695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd204623204689%_))))
                                                    (let ((_%lp-hd204627204699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204626204695%_)))
                                                          (_%lp-tl204628204702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204626204695%_))))
                                                      (_%loop204625204685%_
                                                       _%lp-tl204628204702%_
                                                       (cons _%lp-hd204627204699%_
                                                             _%clause204629204692%_))))
                                                  (let ((_%clause204630204705%_
                                                         (reverse _%clause204629204692%_)))
                                                    (_%loop204616204659%_
                                                     _%lp-tl204619204676%_
                                                     (cons _%clause204630204705%_
                                                           _%clause204620204666%_)))))))
                                    (_%loop204625204685%_
                                     _%target204622204679%_
                                     '()))
                                  (_%g204607204636%_ _%g204608204640%_)))))
                        (_%g204607204636%_ _%g204608204640%_))))
                (let ((_%clause204621204709%_
                       (reverse _%clause204620204666%_)))
                  ((lambda (_%L204713%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp209252
                                              (lambda (_%g204728204733%_
                                                       _%g204729204736%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp209253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g204730204739%_ _%g204731204742%_)
                             (cons _%g204730204739%_ _%g204731204742%_))))
                      (declare (not safe))
                      (__foldr1 __tmp209253 '() _%g204728204733%_)))
              _%g204729204736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp209252
                                          '()
                                          _%L204713%_)))
                                 '())))
                   _%clause204621204709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204616204659%_
                                           _%target204613204653%_
                                           '()))
                                        (_%g204607204636%_
                                         _%g204608204640%_)))))
                              (_%g204607204636%_ _%g204608204640%_))))
                      (_%g204607204636%_ _%g204608204640%_)))))
          (_%g204606204745%_ _%$stx204603%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx204751%_)
        (let* ((_%g204755204773%_
                (lambda (_%g204756204769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204756204769%_))))
               (_%g204754204828%_
                (lambda (_%g204756204777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204756204777%_))
                      (let ((_%e204759204780%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204756204777%_))))
                        (let ((_%hd204760204784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204759204780%_)))
                              (_%tl204761204787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204759204780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204761204787%_))
                              (let ((_%e204762204790%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204761204787%_))))
                                (let ((_%hd204763204794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204762204790%_)))
                                      (_%tl204764204797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204762204790%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204764204797%_))
                                      (let ((_%e204765204800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204764204797%_))))
                                        (let ((_%hd204766204804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204765204800%_)))
                                              (_%tl204767204807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204765204800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204767204807%_))
                                              ((lambda (_%L204810%_
                                                        _%L204812%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204812%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204810%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204766204804%_
                                               _%hd204763204794%_)
                                              (_%g204755204773%_
                                               _%g204756204777%_))))
                                      (_%g204755204773%_ _%g204756204777%_))))
                              (_%g204755204773%_ _%g204756204777%_))))
                      (_%g204755204773%_ _%g204756204777%_)))))
          (_%g204754204828%_ _%$stx204751%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx204832%_)
        (let* ((_%g204836204854%_
                (lambda (_%g204837204850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204837204850%_))))
               (_%g204835204909%_
                (lambda (_%g204837204858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204837204858%_))
                      (let ((_%e204840204861%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204837204858%_))))
                        (let ((_%hd204841204865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204840204861%_)))
                              (_%tl204842204868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204840204861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204842204868%_))
                              (let ((_%e204843204871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204842204868%_))))
                                (let ((_%hd204844204875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204843204871%_)))
                                      (_%tl204845204878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204843204871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204845204878%_))
                                      (let ((_%e204846204881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204845204878%_))))
                                        (let ((_%hd204847204885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204846204881%_)))
                                              (_%tl204848204888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204846204881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204848204888%_))
                                              ((lambda (_%L204891%_
                                                        _%L204893%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204893%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204891%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204847204885%_
                                               _%hd204844204875%_)
                                              (_%g204836204854%_
                                               _%g204837204858%_))))
                                      (_%g204836204854%_ _%g204837204858%_))))
                              (_%g204836204854%_ _%g204837204858%_))))
                      (_%g204836204854%_ _%g204837204858%_)))))
          (_%g204835204909%_ _%$stx204832%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx204913%_)
        (let* ((_%g204917204946%_
                (lambda (_%g204918204942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204918204942%_))))
               (_%g204916205046%_
                (lambda (_%g204918204950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204918204950%_))
                      (let ((_%e204921204953%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204918204950%_))))
                        (let ((_%hd204922204957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204921204953%_)))
                              (_%tl204923204960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204921204953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204923204960%_))
                              (let ((_g209254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204923204960%_
                                        '0))))
                                (begin
                                  (let ((_g209255_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209254_)
                                               (##vector-length _g209254_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209255_ 2)))
                                        (error "Context expects 2 values"
                                               _g209255_)))
                                  (let ((_%target204924204963%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209254_ 0)))
                                        (_%tl204926204966%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209254_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204926204966%_))
                                        (letrec ((_%loop204927204969%_
                                                  (lambda (_%hd204925204973%_
                                                           _%rule204931204976%_
                                                           _%proc204932204978%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204925204973%_))
                                                        (let ((_%e204928204981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204925204973%_))))
                  (let ((_%lp-hd204929204985%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204928204981%_)))
                        (_%lp-tl204930204988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204928204981%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204929204985%_))
                        (let ((_%e204935204991%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204929204985%_))))
                          (let ((_%hd204936204995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204935204991%_)))
                                (_%tl204937204998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204935204991%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204937204998%_))
                                (let ((_%e204938205001%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204937204998%_))))
                                  (let ((_%hd204939205005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204938205001%_)))
                                        (_%tl204940205008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204938205001%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204940205008%_))
                                        (_%loop204927204969%_
                                         _%lp-tl204930204988%_
                                         (cons _%hd204939205005%_
                                               _%rule204931204976%_)
                                         (cons _%hd204936204995%_
                                               _%proc204932204978%_))
                                        (_%g204917204946%_
                                         _%g204918204950%_))))
                                (_%g204917204946%_ _%g204918204950%_))))
                        (_%g204917204946%_ _%g204918204950%_))))
                (let ((_%rule204933205011%_ (reverse _%rule204931204976%_))
                      (_%proc204934205014%_ (reverse _%proc204932204978%_)))
                  ((lambda (_%L205017%_ _%L205019%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L205017%_
                                _%L205019%_))
                             (let ((__tmp209256
                                    (lambda (_%g205034205038%_
                                             _%g205035205041%_
                                             _%g205036205043%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g205035205041%_
                                                        (cons _%g205034205038%_
                                                              '())))
                                            _%g205036205043%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209256
                                '()
                                _%L205017%_
                                _%L205019%_)))))
                   _%rule204933205011%_
                   _%proc204934205014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204927204969%_
                                           _%target204924204963%_
                                           '()
                                           '()))
                                        (_%g204917204946%_
                                         _%g204918204950%_)))))
                              (_%g204917204946%_ _%g204918204950%_))))
                      (_%g204917204946%_ _%g204918204950%_)))))
          (_%g204916205046%_ _%$stx204913%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx205051%_)
        (let* ((_%g205055205073%_
                (lambda (_%g205056205069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205056205069%_))))
               (_%g205054205128%_
                (lambda (_%g205056205077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205056205077%_))
                      (let ((_%e205059205080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205056205077%_))))
                        (let ((_%hd205060205084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205059205080%_)))
                              (_%tl205061205087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205059205080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205061205087%_))
                              (let ((_%e205062205090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205061205087%_))))
                                (let ((_%hd205063205094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205062205090%_)))
                                      (_%tl205064205097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205062205090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205064205097%_))
                                      (let ((_%e205065205100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205064205097%_))))
                                        (let ((_%hd205066205104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205065205100%_)))
                                              (_%tl205067205107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205065205100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205067205107%_))
                                              ((lambda (_%L205110%_
                                                        _%L205112%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L205112%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L205110%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205112%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205066205104%_
                                               _%hd205063205094%_)
                                              (_%g205055205073%_
                                               _%g205056205077%_))))
                                      (_%g205055205073%_ _%g205056205077%_))))
                              (_%g205055205073%_ _%g205056205077%_))))
                      (_%g205055205073%_ _%g205056205077%_)))))
          (_%g205054205128%_ _%$stx205051%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx205132%_)
        (let* ((_%__stx208736208737%_ _%$stx205132%_)
               (_%g205137205162%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208736208737%_)))))
          (let ((_%__kont208739208740%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208741208742%_
                 (lambda (_%L205209%_ _%L205211%_ _%L205212%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L205212%_ (cons _%L205211%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L205209%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208736208737%_))
                (let ((_%e205139205238%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208736208737%_))))
                  (let ((_%tl205141205245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205139205238%_)))
                        (_%hd205140205242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205139205238%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205141205245%_))
                        (_%__kont208739208740%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205141205245%_))
                            (let ((_%e205148205179%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205141205245%_))))
                              (let ((_%tl205150205186%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205148205179%_)))
                                    (_%hd205149205183%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205148205179%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd205149205183%_))
                                    (let ((_%e205151205189%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd205149205183%_))))
                                      (let ((_%tl205153205196%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205151205189%_)))
                                            (_%hd205152205193%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205151205189%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205153205196%_))
                                            (let ((_%e205154205199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205153205196%_))))
                                              (let ((_%tl205156205206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205154205199%_)))
                                                    (_%hd205155205203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205154205199%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl205156205206%_))
                                                    (_%__kont208741208742%_
                                                     _%tl205150205186%_
                                                     _%hd205155205203%_
                                                     _%hd205152205193%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g205137205162%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g205137205162%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g205137205162%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g205137205162%_))))))
                (let () (declare (not safe)) (_%g205137205162%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx205256%_)
        (let* ((_%__stx208780208781%_ _%$stx205256%_)
               (_%g205261205292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208780208781%_)))))
          (let ((_%__kont208783208784%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208785208786%_
                 (lambda (_%L205359%_ _%L205361%_ _%L205362%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L205362%_
                                           (let ((__tmp209257
                                                  (lambda (_%g205382205385%_
                                                           _%g205383205388%_)
                                                    (cons _%g205382205385%_
                                                          _%g205383205388%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp209257
                                              '()
                                              _%L205361%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L205359%_)
                                     '()))))))
            (let ((_%__match208823208824%_
                   (lambda (_%e205269205299%_
                            _%hd205270205303%_
                            _%tl205271205306%_
                            _%e205272205309%_
                            _%hd205273205313%_
                            _%tl205274205316%_
                            _%e205275205319%_
                            _%hd205276205323%_
                            _%tl205277205326%_
                            _%__splice208787208788%_
                            _%target205278205329%_
                            _%tl205280205332%_)
                     (letrec ((_%loop205281205335%_
                               (lambda (_%hd205279205339%_ _%sig205285205342%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205279205339%_))
                                     (let ((_%e205282205345%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd205279205339%_))))
                                       (let ((_%lp-tl205284205352%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205282205345%_)))
                                             (_%lp-hd205283205349%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205282205345%_))))
                                         (_%loop205281205335%_
                                          _%lp-tl205284205352%_
                                          (cons _%lp-hd205283205349%_
                                                _%sig205285205342%_))))
                                     (let ((_%sig205286205355%_
                                            (reverse _%sig205285205342%_)))
                                       (_%__kont208785208786%_
                                        _%tl205274205316%_
                                        _%sig205286205355%_
                                        _%hd205276205323%_))))))
                       (_%loop205281205335%_ _%target205278205329%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208780208781%_))
                  (let ((_%e205263205398%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208780208781%_))))
                    (let ((_%tl205265205405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205263205398%_)))
                          (_%hd205264205402%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205263205398%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205265205405%_))
                          (_%__kont208783208784%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205265205405%_))
                              (let ((_%e205272205309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205265205405%_))))
                                (let ((_%tl205274205316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205272205309%_)))
                                      (_%hd205273205313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205272205309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205273205313%_))
                                      (let ((_%e205275205319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205273205313%_))))
                                        (let ((_%tl205277205326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205275205319%_)))
                                              (_%hd205276205323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205275205319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205277205326%_))
                                              (let ((_%__splice208787208788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205277205326%_
                                                        '0))))
                                                (let ((_%tl205280205332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208787208788%_
                                                          '1)))
                                                      (_%target205278205329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208787208788%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205280205332%_))
                                                      (_%__match208823208824%_
                                                       _%e205263205398%_
                                                       _%hd205264205402%_
                                                       _%tl205265205405%_
                                                       _%e205272205309%_
                                                       _%hd205273205313%_
                                                       _%tl205274205316%_
                                                       _%e205275205319%_
                                                       _%hd205276205323%_
                                                       _%tl205277205326%_
                                                       _%__splice208787208788%_
                                                       _%target205278205329%_
                                                       _%tl205280205332%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205261205292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205261205292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205261205292%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205261205292%_))))))
                  (let () (declare (not safe)) (_%g205261205292%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx205417%_)
        (let* ((_%__stx208826208827%_ _%$stx205417%_)
               (_%g205422205469%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208826208827%_)))))
          (let ((_%__kont208829208830%_
                 (lambda (_%L205631%_ _%L205633%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L205633%_
                               (let ((__tmp209258
                                      (lambda (_%g205653205656%_
                                               _%g205654205659%_)
                                        (cons _%g205653205656%_
                                              _%g205654205659%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209258 '() _%L205631%_))))))
                (_%__kont208833208834%_
                 (lambda (_%L205526%_ _%L205528%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L205528%_
                               (let ((__tmp209259
                                      (lambda (_%g205545205548%_
                                               _%g205546205551%_)
                                        (cons _%g205545205548%_
                                              _%g205546205551%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209259 '() _%L205526%_)))))))
            (let* ((_%__match208893208894%_
                    (lambda (_%e205449205476%_
                             _%hd205450205480%_
                             _%tl205451205483%_
                             _%e205452205486%_
                             _%hd205453205490%_
                             _%tl205454205493%_
                             _%__splice208835208836%_
                             _%target205455205496%_
                             _%tl205457205499%_)
                      (letrec ((_%loop205458205502%_
                                (lambda (_%hd205456205506%_
                                         _%sig205462205509%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205456205506%_))
                                      (let ((_%e205459205512%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205456205506%_))))
                                        (let ((_%lp-tl205461205519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205459205512%_)))
                                              (_%lp-hd205460205516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205459205512%_))))
                                          (_%loop205458205502%_
                                           _%lp-tl205461205519%_
                                           (cons _%lp-hd205460205516%_
                                                 _%sig205462205509%_))))
                                      (let ((_%sig205463205522%_
                                             (reverse _%sig205462205509%_)))
                                        (_%__kont208833208834%_
                                         _%sig205463205522%_
                                         _%hd205453205490%_))))))
                        (_%loop205458205502%_ _%target205455205496%_ '()))))
                   (_%__match208885208886%_
                    (lambda (_%e205449205476%_
                             _%hd205450205480%_
                             _%tl205451205483%_
                             _%e205452205486%_
                             _%hd205453205490%_
                             _%tl205454205493%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl205454205493%_))
                          (let ((_%__splice208835208836%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl205454205493%_
                                    '0))))
                            (let ((_%tl205457205499%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208835208836%_
                                      '1)))
                                  (_%target205455205496%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208835208836%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205457205499%_))
                                  (_%__match208893208894%_
                                   _%e205449205476%_
                                   _%hd205450205480%_
                                   _%tl205451205483%_
                                   _%e205452205486%_
                                   _%hd205453205490%_
                                   _%tl205454205493%_
                                   _%__splice208835208836%_
                                   _%target205455205496%_
                                   _%tl205457205499%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205422205469%_)))))
                          (let () (declare (not safe)) (_%g205422205469%_)))))
                   (_%__match208873208874%_
                    (lambda (_%e205426205561%_
                             _%hd205427205565%_
                             _%tl205428205568%_
                             _%e205429205571%_
                             _%hd205430205575%_
                             _%tl205431205578%_
                             _%e205432205581%_
                             _%hd205433205585%_
                             _%tl205434205588%_
                             _%e205435205591%_
                             _%hd205436205595%_
                             _%tl205437205598%_
                             _%__splice208831208832%_
                             _%target205438205601%_
                             _%tl205440205604%_)
                      (letrec ((_%loop205441205607%_
                                (lambda (_%hd205439205611%_
                                         _%sig205445205614%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205439205611%_))
                                      (let ((_%e205442205617%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205439205611%_))))
                                        (let ((_%lp-tl205444205624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205442205617%_)))
                                              (_%lp-hd205443205621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205442205617%_))))
                                          (_%loop205441205607%_
                                           _%lp-tl205444205624%_
                                           (cons _%lp-hd205443205621%_
                                                 _%sig205445205614%_))))
                                      (let ((_%sig205446205627%_
                                             (reverse _%sig205445205614%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl205434205588%_))
                                            (_%__kont208829208830%_
                                             _%sig205446205627%_
                                             _%hd205430205575%_)
                                            (_%__match208885208886%_
                                             _%e205426205561%_
                                             _%hd205427205565%_
                                             _%tl205428205568%_
                                             _%e205429205571%_
                                             _%hd205430205575%_
                                             _%tl205431205578%_)))))))
                        (_%loop205441205607%_ _%target205438205601%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208826208827%_))
                  (let ((_%e205426205561%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208826208827%_))))
                    (let ((_%tl205428205568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205426205561%_)))
                          (_%hd205427205565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205426205561%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205428205568%_))
                          (let ((_%e205429205571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205428205568%_))))
                            (let ((_%tl205431205578%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205429205571%_)))
                                  (_%hd205430205575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205429205571%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205431205578%_))
                                  (let ((_%e205432205581%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205431205578%_))))
                                    (let ((_%tl205434205588%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205432205581%_)))
                                          (_%hd205433205585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205432205581%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd205433205585%_))
                                          (let ((_%e205435205591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd205433205585%_))))
                                            (let ((_%tl205437205598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205435205591%_)))
                                                  (_%hd205436205595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205435205591%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd205436205595%_))
                                                  (if (let ((__tmp209260
                                                             |gxc[1]#_g209261_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp209260
                                                         _%hd205436205595%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl205437205598%_))
                                                          (let ((_%__splice208831208832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205437205598%_ '0))))
                    (let ((_%tl205440205604%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208831208832%_ '1)))
                          (_%target205438205601%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208831208832%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205440205604%_))
                          (_%__match208873208874%_
                           _%e205426205561%_
                           _%hd205427205565%_
                           _%tl205428205568%_
                           _%e205429205571%_
                           _%hd205430205575%_
                           _%tl205431205578%_
                           _%e205432205581%_
                           _%hd205433205585%_
                           _%tl205434205588%_
                           _%e205435205591%_
                           _%hd205436205595%_
                           _%tl205437205598%_
                           _%__splice208831208832%_
                           _%target205438205601%_
                           _%tl205440205604%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205431205578%_))
                              (let ((_%__splice208835208836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205431205578%_
                                        '0))))
                                (let ((_%tl205457205499%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208835208836%_
                                          '1)))
                                      (_%target205455205496%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208835208836%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205457205499%_))
                                      (_%__match208893208894%_
                                       _%e205426205561%_
                                       _%hd205427205565%_
                                       _%tl205428205568%_
                                       _%e205429205571%_
                                       _%hd205430205575%_
                                       _%tl205431205578%_
                                       _%__splice208835208836%_
                                       _%target205455205496%_
                                       _%tl205457205499%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g205422205469%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205422205469%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl205431205578%_))
                      (let ((_%__splice208835208836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl205431205578%_
                                '0))))
                        (let ((_%tl205457205499%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208835208836%_ '1)))
                              (_%target205455205496%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208835208836%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205457205499%_))
                              (_%__match208893208894%_
                               _%e205426205561%_
                               _%hd205427205565%_
                               _%tl205428205568%_
                               _%e205429205571%_
                               _%hd205430205575%_
                               _%tl205431205578%_
                               _%__splice208835208836%_
                               _%target205455205496%_
                               _%tl205457205499%_)
                              (let ()
                                (declare (not safe))
                                (_%g205422205469%_)))))
                      (let () (declare (not safe)) (_%g205422205469%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl205431205578%_))
                  (let ((_%__splice208835208836%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205431205578%_ '0))))
                    (let ((_%tl205457205499%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208835208836%_ '1)))
                          (_%target205455205496%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208835208836%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205457205499%_))
                          (_%__match208893208894%_
                           _%e205426205561%_
                           _%hd205427205565%_
                           _%tl205428205568%_
                           _%e205429205571%_
                           _%hd205430205575%_
                           _%tl205431205578%_
                           _%__splice208835208836%_
                           _%target205455205496%_
                           _%tl205457205499%_)
                          (let () (declare (not safe)) (_%g205422205469%_)))))
                  (let () (declare (not safe)) (_%g205422205469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205431205578%_))
                                                      (let ((_%__splice208835208836%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl205431205578%_ '0))))
                (let ((_%tl205457205499%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208835208836%_ '1)))
                      (_%target205455205496%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208835208836%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205457205499%_))
                      (_%__match208893208894%_
                       _%e205426205561%_
                       _%hd205427205565%_
                       _%tl205428205568%_
                       _%e205429205571%_
                       _%hd205430205575%_
                       _%tl205431205578%_
                       _%__splice208835208836%_
                       _%target205455205496%_
                       _%tl205457205499%_)
                      (let () (declare (not safe)) (_%g205422205469%_)))))
              (let () (declare (not safe)) (_%g205422205469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205431205578%_))
                                              (let ((_%__splice208835208836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205431205578%_
                                                        '0))))
                                                (let ((_%tl205457205499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208835208836%_
                                                          '1)))
                                                      (_%target205455205496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208835208836%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205457205499%_))
                                                      (_%__match208893208894%_
                                                       _%e205426205561%_
                                                       _%hd205427205565%_
                                                       _%tl205428205568%_
                                                       _%e205429205571%_
                                                       _%hd205430205575%_
                                                       _%tl205431205578%_
                                                       _%__splice208835208836%_
                                                       _%target205455205496%_
                                                       _%tl205457205499%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205422205469%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205422205469%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205431205578%_))
                                      (let ((_%__splice208835208836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205431205578%_
                                                '0))))
                                        (let ((_%tl205457205499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208835208836%_
                                                  '1)))
                                              (_%target205455205496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208835208836%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205457205499%_))
                                              (_%__match208893208894%_
                                               _%e205426205561%_
                                               _%hd205427205565%_
                                               _%tl205428205568%_
                                               _%e205429205571%_
                                               _%hd205430205575%_
                                               _%tl205431205578%_
                                               _%__splice208835208836%_
                                               _%target205455205496%_
                                               _%tl205457205499%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205422205469%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205422205469%_))))))
                          (let () (declare (not safe)) (_%g205422205469%_)))))
                  (let () (declare (not safe)) (_%g205422205469%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx206816%_ _%id206818%_)
        (let ((_%proc206822%_
               (let ((__tmp209262
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206818%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209262))))
          (if (procedure? _%proc206822%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx206816%_
                 _%id206818%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx206807%_ _%id206809%_)
        (let ((_%klass206813%_
               (let ((__tmp209263
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206809%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209263))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass206813%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx206807%_
                 _%id206809%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx206057%_ _%proc206059%_ _%sig206060%_)
        (letrec ((_%signature-arity206062%_
                  (lambda (_%args206739%_)
                    (let _%loop206742%_ ((_%rest206745%_ _%args206739%_)
                                         (_%count206747%_ '0))
                      (let* ((_%rest206748206759%_ _%rest206745%_)
                             (_%E206752206765%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest206748206759%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K206755206796%_
                               (lambda (_%rest206793%_)
                                 (_%loop206742%_
                                  _%rest206793%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count206747%_ '1)))))
                              (_%K206754206785%_ (lambda () _%count206747%_))
                              (_%K206753206773%_
                               (lambda () (cons _%count206747%_ '()))))
                          (let ((_%try-match206750206789%_
                                 (lambda ()
                                   (if (null? _%rest206748206759%_)
                                       (_%K206754206785%_)
                                       (_%K206753206773%_)))))
                            (if (pair? _%rest206748206759%_)
                                (let* ((_%tl206757206800%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest206748206759%_)))
                                       (_%rest206804%_ _%tl206757206800%_))
                                  (_%K206755206796%_ _%rest206804%_))
                                (_%try-match206750206789%_))))))))
                 (_%make-signature206064%_
                  (lambda (_%args206621%_
                           _%return206623%_
                           _%effect206624%_
                           _%unchecked206625%_)
                    (let ((__tmp209264
                           (lambda (_%g206626206628%_)
                             (|gxc[1]#verify-class!|
                              _%ctx206057%_
                              _%g206626206628%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp209264 _%args206621%_))
                    (|gxc[1]#verify-class!| _%ctx206057%_ _%return206623%_)
                    (if _%unchecked206625%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx206057%_
                         _%unchecked206625%_)
                        '#!void)
                    (let ((_%arity206632%_
                           (_%signature-arity206062%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args206621%_)))))
                      (if _%effect206624%_
                          (let ((_%effect206635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect206624%_))))
                            (if (and (list? _%effect206635%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect206635%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx206057%_
                                   _%proc206059%_
                                   _%effect206635%_))))
                          '#!void)
                      (cons _%arity206632%_
                            (cons (let* ((_%g206638206661%_
                                          (lambda (_%g206639206657%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g206639206657%_))))
                                         (_%g206637206735%_
                                          (lambda (_%g206639206665%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g206639206665%_))
                                                (let ((_%e206644206668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g206639206665%_))))
                                                  (let ((_%hd206645206672%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206644206668%_)))
                                                        (_%tl206646206675%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206644206668%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206646206675%_))
                                                        (let ((_%e206647206678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206646206675%_))))
                  (let ((_%hd206648206682%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206647206678%_)))
                        (_%tl206649206685%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206647206678%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206649206685%_))
                        (let ((_%e206650206688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206649206685%_))))
                          (let ((_%hd206651206692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206650206688%_)))
                                (_%tl206652206695%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206650206688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206652206695%_))
                                (let ((_%e206653206698%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206652206695%_))))
                                  (let ((_%hd206654206702%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206653206698%_)))
                                        (_%tl206655206705%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206653206698%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206655206705%_))
                                        ((lambda (_%L206708%_
                                                  _%L206710%_
                                                  _%L206711%_
                                                  _%L206712%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206712%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L206711%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206710%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L206708%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd206654206702%_
                                         _%hd206651206692%_
                                         _%hd206648206682%_
                                         _%hd206645206672%_)
                                        (_%g206638206661%_
                                         _%g206639206665%_))))
                                (_%g206638206661%_ _%g206639206665%_))))
                        (_%g206638206661%_ _%g206639206665%_))))
                (_%g206638206661%_ _%g206639206665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206638206661%_
                                                 _%g206639206665%_)))))
                                    (_%g206637206735%_
                                     (list _%args206621%_
                                           _%return206623%_
                                           _%effect206624%_
                                           _%unchecked206625%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx206057%_ _%proc206059%_)
          (let* ((_%__stx208904208905%_ _%sig206060%_)
                 (_%g206071206174%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208904208905%_)))))
            (let ((_%__kont208907208908%_
                   (lambda (_%L206602%_ _%L206604%_)
                     (_%make-signature206064%_
                      _%L206604%_
                      _%L206602%_
                      '#f
                      '#f)))
                  (_%__kont208909208910%_
                   (lambda (_%L206553%_ _%L206555%_ _%L206556%_)
                     (_%make-signature206064%_
                      _%L206556%_
                      _%L206555%_
                      _%L206553%_
                      '#f)))
                  (_%__kont208911208912%_
                   (lambda (_%L206477%_ _%L206479%_ _%L206480%_)
                     (_%make-signature206064%_
                      _%L206480%_
                      _%L206479%_
                      _%L206477%_
                      (let ((__tmp209265
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206059%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209265)))))
                  (_%__kont208913208914%_
                   (lambda (_%L206383%_ _%L206385%_ _%L206386%_ _%L206387%_)
                     (_%make-signature206064%_
                      _%L206387%_
                      _%L206386%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206383%_)))))
                  (_%__kont208915208916%_
                   (lambda (_%L206290%_ _%L206292%_)
                     (_%make-signature206064%_
                      _%L206292%_
                      _%L206290%_
                      '#f
                      (let ((__tmp209266
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206059%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209266)))))
                  (_%__kont208917208918%_
                   (lambda (_%L206225%_ _%L206227%_ _%L206228%_)
                     (_%make-signature206064%_
                      _%L206228%_
                      _%L206227%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206225%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208904208905%_))
                  (let ((_%e206075206582%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208904208905%_))))
                    (let ((_%tl206077206589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206075206582%_)))
                          (_%hd206076206586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206075206582%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206077206589%_))
                          (let ((_%e206078206592%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206077206589%_))))
                            (let ((_%tl206080206599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206078206592%_)))
                                  (_%hd206079206596%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206078206592%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206080206599%_))
                                  (_%__kont208907208908%_
                                   _%hd206079206596%_
                                   _%hd206076206586%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206080206599%_))
                                      (let ((_%e206090206529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206080206599%_))))
                                        (let ((_%tl206092206536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206090206529%_)))
                                              (_%hd206091206533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206090206529%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd206091206533%_))
                                              (let ((_%e206093206539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd206091206533%_))))
                                                (if (equal? _%e206093206539%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206092206536%_))
                                                        (let ((_%e206094206543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206092206536%_))))
                  (let ((_%tl206096206550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206094206543%_)))
                        (_%hd206095206547%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206094206543%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206096206550%_))
                        (_%__kont208909208910%_
                         _%hd206095206547%_
                         _%hd206079206596%_
                         _%hd206076206586%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206096206550%_))
                            (let ((_%e206113206463%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206096206550%_))))
                              (let ((_%tl206115206470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206113206463%_)))
                                    (_%hd206114206467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206113206463%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd206114206467%_))
                                    (let ((_%e206116206473%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd206114206467%_))))
                                      (if (equal? _%e206116206473%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206115206470%_))
                                              (_%__kont208911208912%_
                                               _%hd206095206547%_
                                               _%hd206079206596%_
                                               _%hd206076206586%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206115206470%_))
                                                  (let ((_%e206138206373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206115206470%_))))
                                                    (let ((_%tl206140206380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206138206373%_)))
                                                          (_%hd206139206377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206138206373%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206140206380%_))
                                                          (_%__kont208913208914%_
                                                           _%hd206139206377%_
                                                           _%hd206095206547%_
                                                           _%hd206079206596%_
                                                           _%hd206076206586%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206071206174%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206071206174%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206071206174%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206071206174%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206071206174%_))))))
                (let () (declare (not safe)) (_%g206071206174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e206093206539%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206092206536%_))
                                                            (_%__kont208915208916%_
                                                             _%hd206079206596%_
                                                             _%hd206076206586%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl206092206536%_))
                        (let ((_%e206166206215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206092206536%_))))
                          (let ((_%tl206168206222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206166206215%_)))
                                (_%hd206167206219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206166206215%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl206168206222%_))
                                (_%__kont208917208918%_
                                 _%hd206167206219%_
                                 _%hd206079206596%_
                                 _%hd206076206586%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g206071206174%_)))))
                        (let () (declare (not safe)) (_%g206071206174%_))))
                (let () (declare (not safe)) (_%g206071206174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206071206174%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206071206174%_))))))
                          (let () (declare (not safe)) (_%g206071206174%_)))))
                  (let () (declare (not safe)) (_%g206071206174%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig205668%_)
        (let* ((_%g205671205751%_
                (lambda (_%g205672205747%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205672205747%_))))
               (_%g205670206053%_
                (lambda (_%g205672205755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205672205755%_))
                      (let ((_%e205678205758%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205672205755%_))))
                        (let ((_%hd205679205762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205678205758%_)))
                              (_%tl205680205765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205678205758%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205680205765%_))
                              (let ((_%e205681205768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205680205765%_))))
                                (let ((_%hd205682205772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205681205768%_)))
                                      (_%tl205683205775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205681205768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd205682205772%_))
                                      (let ((_%e205684205778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205682205772%_))))
                                        (if (equal? _%e205684205778%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205683205775%_))
                                                (let ((_%e205685205782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205683205775%_))))
                                                  (let ((_%hd205686205786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205685205782%_)))
                                                        (_%tl205687205789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205685205782%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205686205786%_))
                                                        (let ((_%e205688205792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205686205786%_))))
                  (let ((_%hd205689205796%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205688205792%_)))
                        (_%tl205690205799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205688205792%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd205689205796%_))
                        (if (let ((__tmp209267 |gxc[1]#_g209268_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp209267
                               _%hd205689205796%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205690205799%_))
                                (let ((_%e205691205802%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205690205799%_))))
                                  (let ((_%hd205692205806%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205691205802%_)))
                                        (_%tl205693205809%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205691205802%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205693205809%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205687205789%_))
                                            (let ((_%e205694205812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205687205789%_))))
                                              (let ((_%hd205695205816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205694205812%_)))
                                                    (_%tl205696205819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205694205812%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205695205816%_))
                                                    (let ((_%e205697205822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205695205816%_))))
                                                      (if (equal? _%e205697205822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205696205819%_))
                      (let ((_%e205698205826%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205696205819%_))))
                        (let ((_%hd205699205830%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205698205826%_)))
                              (_%tl205700205833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205698205826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd205699205830%_))
                              (let ((_%e205701205836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd205699205830%_))))
                                (let ((_%hd205702205840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205701205836%_)))
                                      (_%tl205703205843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205701205836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd205702205840%_))
                                      (if (let ((__tmp209269
                                                 |gxc[1]#_g209270_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp209269
                                             _%hd205702205840%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205703205843%_))
                                              (let ((_%e205704205846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205703205843%_))))
                                                (let ((_%hd205705205850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205704205846%_)))
                                                      (_%tl205706205853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205704205846%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205706205853%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205700205833%_))
                                                          (let ((_%e205707205856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205700205833%_))))
                    (let ((_%hd205708205860%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205707205856%_)))
                          (_%tl205709205863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205707205856%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205708205860%_))
                          (let ((_%e205710205866%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205708205860%_))))
                            (if (equal? _%e205710205866%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl205709205863%_))
                                    (let ((_%e205711205870%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl205709205863%_))))
                                      (let ((_%hd205712205874%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205711205870%_)))
                                            (_%tl205713205877%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205711205870%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd205712205874%_))
                                            (let ((_%e205714205880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd205712205874%_))))
                                              (let ((_%hd205715205884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205714205880%_)))
                                                    (_%tl205716205887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205714205880%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd205715205884%_))
                                                    (if (let ((__tmp209271
                                                               |gxc[1]#_g209272_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp209271
                                                           _%hd205715205884%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205716205887%_))
                                                            (let ((_%e205717205890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl205716205887%_))))
                      (let ((_%hd205718205894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205717205890%_)))
                            (_%tl205719205897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205717205890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl205719205897%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205713205877%_))
                                (let ((_%e205720205900%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205713205877%_))))
                                  (let ((_%hd205721205904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205720205900%_)))
                                        (_%tl205722205907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205720205900%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd205721205904%_))
                                        (let ((_%e205723205910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd205721205904%_))))
                                          (if (equal? _%e205723205910%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205722205907%_))
                                                  (let ((_%e205724205914%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205722205907%_))))
                                                    (let ((_%hd205725205918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205724205914%_)))
                                                          (_%tl205726205921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205724205914%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205725205918%_))
                                                          (let ((_%e205727205924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd205725205918%_))))
                    (let ((_%hd205728205928%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205727205924%_)))
                          (_%tl205729205931%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205727205924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd205728205928%_))
                          (if (let ((__tmp209273 |gxc[1]#_g209274_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp209273
                                 _%hd205728205928%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205729205931%_))
                                  (let ((_%e205730205934%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205729205931%_))))
                                    (let ((_%hd205731205938%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205730205934%_)))
                                          (_%tl205732205941%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205730205934%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205732205941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205726205921%_))
                                              (let ((_%e205733205944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205726205921%_))))
                                                (let ((_%hd205734205948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205733205944%_)))
                                                      (_%tl205735205951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205733205944%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd205734205948%_))
                                                      (let ((_%e205736205954%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd205734205948%_))))
                (if (equal? _%e205736205954%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205735205951%_))
                        (let ((_%e205737205958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205735205951%_))))
                          (let ((_%hd205738205962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205737205958%_)))
                                (_%tl205739205965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205737205958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205738205962%_))
                                (let ((_%e205740205968%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd205738205962%_))))
                                  (let ((_%hd205741205972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205740205968%_)))
                                        (_%tl205742205975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205740205968%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd205741205972%_))
                                        (if (let ((__tmp209275
                                                   |gxc[1]#_g209276_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp209275
                                               _%hd205741205972%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205742205975%_))
                                                (let ((_%e205743205978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205742205975%_))))
                                                  (let ((_%hd205744205982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205743205978%_)))
                                                        (_%tl205745205985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205743205978%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205745205985%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205739205965%_))
                                                            ((lambda (_%L205988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L205990%_
                              _%L205991%_
                              _%L205992%_
                              _%L205993%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L205990%_))
                           (cons _%L205990%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L205992%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205988%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd205744205982%_
                     _%hd205731205938%_
                     _%hd205718205894%_
                     _%hd205705205850%_
                     _%hd205692205806%_)
                    (_%g205671205751%_ _%g205672205755%_))
                (_%g205671205751%_ _%g205672205755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205671205751%_
                                                 _%g205672205755%_))
                                            (_%g205671205751%_
                                             _%g205672205755%_))
                                        (_%g205671205751%_
                                         _%g205672205755%_))))
                                (_%g205671205751%_ _%g205672205755%_))))
                        (_%g205671205751%_ _%g205672205755%_))
                    (_%g205671205751%_ _%g205672205755%_)))
              (_%g205671205751%_ _%g205672205755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205671205751%_
                                               _%g205672205755%_))
                                          (_%g205671205751%_
                                           _%g205672205755%_))))
                                  (_%g205671205751%_ _%g205672205755%_))
                              (_%g205671205751%_ _%g205672205755%_))
                          (_%g205671205751%_ _%g205672205755%_))))
                  (_%g205671205751%_ _%g205672205755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g205671205751%_
                                                   _%g205672205755%_))
                                              (_%g205671205751%_
                                               _%g205672205755%_)))
                                        (_%g205671205751%_
                                         _%g205672205755%_))))
                                (_%g205671205751%_ _%g205672205755%_))
                            (_%g205671205751%_ _%g205672205755%_))))
                    (_%g205671205751%_ _%g205672205755%_))
                (_%g205671205751%_ _%g205672205755%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205671205751%_
                                                     _%g205672205755%_))))
                                            (_%g205671205751%_
                                             _%g205672205755%_))))
                                    (_%g205671205751%_ _%g205672205755%_))
                                (_%g205671205751%_ _%g205672205755%_)))
                          (_%g205671205751%_ _%g205672205755%_))))
                  (_%g205671205751%_ _%g205672205755%_))
              (_%g205671205751%_ _%g205672205755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205671205751%_
                                               _%g205672205755%_))
                                          (_%g205671205751%_
                                           _%g205672205755%_))
                                      (_%g205671205751%_ _%g205672205755%_))))
                              (_%g205671205751%_ _%g205672205755%_))))
                      (_%g205671205751%_ _%g205672205755%_))
                  (_%g205671205751%_ _%g205672205755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205671205751%_
                                                     _%g205672205755%_))))
                                            (_%g205671205751%_
                                             _%g205672205755%_))
                                        (_%g205671205751%_
                                         _%g205672205755%_))))
                                (_%g205671205751%_ _%g205672205755%_))
                            (_%g205671205751%_ _%g205672205755%_))
                        (_%g205671205751%_ _%g205672205755%_))))
                (_%g205671205751%_ _%g205672205755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205671205751%_
                                                 _%g205672205755%_))
                                            (_%g205671205751%_
                                             _%g205672205755%_)))
                                      (_%g205671205751%_ _%g205672205755%_))))
                              (_%g205671205751%_ _%g205672205755%_))))
                      (_%g205671205751%_ _%g205672205755%_)))))
          (_%g205670206053%_ _%sig205668%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx206825%_)
        (let* ((_%g206828206846%_
                (lambda (_%g206829206842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206829206842%_))))
               (_%g206827206901%_
                (lambda (_%g206829206850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206829206850%_))
                      (let ((_%e206832206853%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206829206850%_))))
                        (let ((_%hd206833206857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206832206853%_)))
                              (_%tl206834206860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206832206853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206834206860%_))
                              (let ((_%e206835206863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206834206860%_))))
                                (let ((_%hd206836206867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206835206863%_)))
                                      (_%tl206837206870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206835206863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206837206870%_))
                                      (let ((_%e206838206873%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206837206870%_))))
                                        (let ((_%hd206839206877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206838206873%_)))
                                              (_%tl206840206880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206838206873%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206840206880%_))
                                              ((lambda (_%L206883%_
                                                        _%L206885%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206885%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206883%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx206825%_
                                                        _%L206885%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx206825%_
                                                        _%L206883%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L206885%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206883%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206828206846%_
                                                      _%g206829206850%_)))
                                               _%hd206839206877%_
                                               _%hd206836206867%_)
                                              (_%g206828206846%_
                                               _%g206829206850%_))))
                                      (_%g206828206846%_ _%g206829206850%_))))
                              (_%g206828206846%_ _%g206829206850%_))))
                      (_%g206828206846%_ _%g206829206850%_)))))
          (_%g206827206901%_ _%stx206825%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx206905%_)
        (let* ((_%g206908206932%_
                (lambda (_%g206909206928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206909206928%_))))
               (_%g206907207215%_
                (lambda (_%g206909206936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206909206936%_))
                      (let ((_%e206912206939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206909206936%_))))
                        (let ((_%hd206913206943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206912206939%_)))
                              (_%tl206914206946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206912206939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206914206946%_))
                              (let ((_%e206915206949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206914206946%_))))
                                (let ((_%hd206916206953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206915206949%_)))
                                      (_%tl206917206956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206915206949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206917206956%_))
                                      (let ((_g209277_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206917206956%_
                                                '0))))
                                        (begin
                                          (let ((_g209278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209277_)
                                                       (##vector-length
                                                        _g209277_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209278_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209278_)))
                                          (let ((_%target206918206959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209277_ 0)))
                                                (_%tl206920206962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209277_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl206920206962%_))
                                                (letrec ((_%loop206921206965%_
                                                          (lambda (_%hd206919206969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature206925206972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd206919206969%_))
                        (let ((_%e206922206975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd206919206969%_))))
                          (let ((_%lp-hd206923206979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206922206975%_)))
                                (_%lp-tl206924206982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206922206975%_))))
                            (_%loop206921206965%_
                             _%lp-tl206924206982%_
                             (cons _%lp-hd206923206979%_
                                   _%signature206925206972%_))))
                        (let ((_%signature206926206985%_
                               (reverse _%signature206925206972%_)))
                          ((lambda (_%L206989%_ _%L206991%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L206991%_))
                                 (let* ((_%g207009207024%_
                                         (lambda (_%g207010207020%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207010207020%_))))
                                        (_%g207008207203%_
                                         (lambda (_%g207010207028%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207010207028%_))
                                               (let ((_%e207013207031%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207010207028%_))))
                                                 (let ((_%hd207014207035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207013207031%_)))
                                                       (_%tl207015207038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207013207031%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207015207038%_))
                                                       (let ((_%e207016207041%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207015207038%_))))
                 (let ((_%hd207017207045%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207016207041%_)))
                       (_%tl207018207048%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207016207041%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl207018207048%_))
                       ((lambda (_%L207051%_ _%L207053%_)
                          (let* ((_%g207069207077%_
                                  (lambda (_%g207070207073%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g207070207073%_))))
                                 (_%g207068207199%_
                                  (lambda (_%g207070207081%_)
                                    ((lambda (_%L207084%_)
                                       (let* ((_%unchecked207097%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L207051%_))
                                              (_%g207100207108%_
                                               (lambda (_%g207101207104%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g207101207104%_))))
                                              (_%g207099207131%_
                                               (lambda (_%g207101207112%_)
                                                 ((lambda (_%L207115%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L207084%_
                                                                (cons _%L207115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g207101207112%_))))
                                         (_%g207099207131%_
                                          (if _%unchecked207097%_
                                              (let* ((_%g207135207150%_
                                                      (lambda (_%g207136207146%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g207136207146%_))))
                                                     (_%g207134207195%_
                                                      (lambda (_%g207136207154%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g207136207154%_))
                                                            (let ((_%e207139207157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g207136207154%_))))
                      (let ((_%hd207140207161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207139207157%_)))
                            (_%tl207141207164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207139207157%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207141207164%_))
                            (let ((_%e207142207167%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207141207164%_))))
                              (let ((_%hd207143207171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207142207167%_)))
                                    (_%tl207144207174%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207142207167%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl207144207174%_))
                                    ((lambda (_%L207177%_ _%L207179%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L207179%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207053%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L207177%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd207143207171%_
                                     _%hd207140207161%_)
                                    (_%g207135207150%_ _%g207136207154%_))))
                            (_%g207135207150%_ _%g207136207154%_))))
                    (_%g207135207150%_ _%g207136207154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207134207195%_
                                                 _%unchecked207097%_))
                                              '(begin)))))
                                     _%g207070207081%_))))
                            (_%g207068207199%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L206991%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L207053%_ '()))
                   (cons '#f (cons 'signature: (cons _%L207051%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd207017207045%_
                        _%hd207014207035%_)
                       (_%g207009207024%_ _%g207010207028%_))))
               (_%g207009207024%_ _%g207010207028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207009207024%_
                                                _%g207010207028%_)))))
                                   (_%g207008207203%_
                                    (|gxc[1]#parse-signature|
                                     _%stx206905%_
                                     _%L206991%_
                                     (let ((__tmp209279
                                            (lambda (_%g207206207209%_
                                                     _%g207207207212%_)
                                              (cons _%g207206207209%_
                                                    _%g207207207212%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp209279
                                        '()
                                        _%L206989%_)))))
                                 (_%g206908206932%_ _%g206909206936%_)))
                           _%signature206926206985%_
                           _%hd206916206953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop206921206965%_
                                                   _%target206918206959%_
                                                   '()))
                                                (_%g206908206932%_
                                                 _%g206909206936%_)))))
                                      (_%g206908206932%_ _%g206909206936%_))))
                              (_%g206908206932%_ _%g206909206936%_))))
                      (_%g206908206932%_ _%g206909206936%_)))))
          (_%g206907207215%_ _%stx206905%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx207220%_)
        (let* ((_%g207223207247%_
                (lambda (_%g207224207243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207224207243%_))))
               (_%g207222208130%_
                (lambda (_%g207224207251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207224207251%_))
                      (let ((_%e207227207254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207224207251%_))))
                        (let ((_%hd207228207258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207227207254%_)))
                              (_%tl207229207261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207227207254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207229207261%_))
                              (let ((_%e207230207264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207229207261%_))))
                                (let ((_%hd207231207268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207230207264%_)))
                                      (_%tl207232207271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207230207264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207232207271%_))
                                      (let ((_g209280_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207232207271%_
                                                '0))))
                                        (begin
                                          (let ((_g209281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209280_)
                                                       (##vector-length
                                                        _g209280_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209281_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209281_)))
                                          (let ((_%target207233207274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209280_ 0)))
                                                (_%tl207235207277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209280_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207235207277%_))
                                                (letrec ((_%loop207236207280%_
                                                          (lambda (_%hd207234207284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature207240207287%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207234207284%_))
                        (let ((_%e207237207290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207234207284%_))))
                          (let ((_%lp-hd207238207294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207237207290%_)))
                                (_%lp-tl207239207297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207237207290%_))))
                            (_%loop207236207280%_
                             _%lp-tl207239207297%_
                             (cons _%lp-hd207238207294%_
                                   _%case-signature207240207287%_))))
                        (let ((_%case-signature207241207300%_
                               (reverse _%case-signature207240207287%_)))
                          ((lambda (_%L207304%_ _%L207306%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207306%_))
                                 (let* ((_%signatures207337%_
                                         (map (lambda (_%g207323207325%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx207220%_
                                                 _%L207306%_
                                                 _%g207323207325%_))
                                              (let ((__tmp209282
                                                     (lambda (_%g207328207331%_
                                                              _%g207329207334%_)
                                                       (cons _%g207328207331%_
                                                             _%g207329207334%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp209282
                                                 '()
                                                 _%L207304%_))))
                                        (_%g207340207366%_
                                         (lambda (_%g207341207362%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207341207362%_))))
                                        (_%g207339208126%_
                                         (lambda (_%g207341207370%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g207341207370%_))
                                               (let ((_g209283_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g207341207370%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g209284_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g209283_)
                        (##vector-length _g209283_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g209284_ 2)))
                 (error "Context expects 2 values" _g209284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target207344207373%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g209283_
                                                             0)))
                                                         (_%tl207346207376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g209283_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207346207376%_))
                                                         (letrec ((_%loop207347207379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd207345207383%_
                                    _%sig207351207386%_
                                    _%arity207352207388%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207345207383%_))
                                 (let ((_%e207348207391%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207345207383%_))))
                                   (let ((_%lp-hd207349207395%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207348207391%_)))
                                         (_%lp-tl207350207398%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207348207391%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd207349207395%_))
                                         (let ((_%e207355207401%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd207349207395%_))))
                                           (let ((_%hd207356207405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e207355207401%_)))
                                                 (_%tl207357207408%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e207355207401%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207357207408%_))
                                                 (let ((_%e207358207411%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207357207408%_))))
                                                   (let ((_%hd207359207415%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207358207411%_)))
                                                         (_%tl207360207418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207358207411%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207360207418%_))
                                                         (_%loop207347207379%_
                                                          _%lp-tl207350207398%_
                                                          (cons _%hd207359207415%_
                                                                _%sig207351207386%_)
                                                          (cons _%hd207356207405%_
                                                                _%arity207352207388%_))
                                                         (_%g207340207366%_
                                                          _%g207341207370%_))))
                                                 (_%g207340207366%_
                                                  _%g207341207370%_))))
                                         (_%g207340207366%_
                                          _%g207341207370%_))))
                                 (let ((_%sig207353207421%_
                                        (reverse _%sig207351207386%_))
                                       (_%arity207354207424%_
                                        (reverse _%arity207352207388%_)))
                                   ((lambda (_%L207427%_ _%L207429%_)
                                      (let* ((_%g207446207454%_
                                              (lambda (_%g207447207450%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g207447207450%_))))
                                             (_%g207445208111%_
                                              (lambda (_%g207447207458%_)
                                                ((lambda (_%L207461%_)
                                                   (let* ((_%g207474207482%_
                                                           (lambda (_%g207475207478%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g207475207478%_))))
                  (_%g207473207504%_
                   (lambda (_%g207475207486%_)
                     ((lambda (_%L207489%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L207461%_ (cons _%L207489%_ '()))))
                      _%g207475207486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207473207504%_
                                                      (let ((_g209285_
                                                             (let _%loop207508%_ ((_%rest207511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures207337%_)
                                          (_%unchecked-proc207513%_ '#f)
                                          (_%unchecked-clauses207514%_ '()))
                       (let* ((_%rest207515207523%_ _%rest207511%_)
                              (_%else207517207535%_
                               (lambda ()
                                 (values _%unchecked-proc207513%_
                                         (reverse!
                                          _%unchecked-clauses207514%_))))
                              (_%K207519207976%_
                               (lambda (_%rest207539%_ _%hd207541%_)
                                 (let* ((_%g207543207630%_
                                         (lambda (_%g207544207626%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207544207626%_))))
                                        (_%g207542207972%_
                                         (lambda (_%g207544207634%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207544207634%_))
                                               (let ((_%e207551207637%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207544207634%_))))
                                                 (let ((_%hd207552207641%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207551207637%_)))
                                                       (_%tl207553207644%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207551207637%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207553207644%_))
                                                       (let ((_%e207554207647%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207553207644%_))))
                 (let ((_%hd207555207651%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207554207647%_)))
                       (_%tl207556207654%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207554207647%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd207555207651%_))
                       (let ((_%e207557207657%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd207555207651%_))))
                         (let ((_%hd207558207661%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207557207657%_)))
                               (_%tl207559207664%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207557207657%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl207559207664%_))
                               (let ((_%e207560207667%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl207559207664%_))))
                                 (let ((_%hd207561207671%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207560207667%_)))
                                       (_%tl207562207674%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207560207667%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd207561207671%_))
                                       (let ((_%e207563207677%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd207561207671%_))))
                                         (if (equal? _%e207563207677%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207562207674%_))
                                                 (let ((_%e207564207681%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207562207674%_))))
                                                   (let ((_%hd207565207685%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207564207681%_)))
                                                         (_%tl207566207688%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207564207681%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd207565207685%_))
                                                         (let ((_%e207567207691%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd207565207685%_))))
                   (let ((_%hd207568207695%_
                          (let ()
                            (declare (not safe))
                            (##car _%e207567207691%_)))
                         (_%tl207569207698%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e207567207691%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd207568207695%_))
                         (if (let ((__tmp209287 |gxc[1]#_g209288_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp209287
                                _%hd207568207695%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207569207698%_))
                                 (let ((_%e207570207701%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207569207698%_))))
                                   (let ((_%hd207571207705%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207570207701%_)))
                                         (_%tl207572207708%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207570207701%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl207572207708%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl207566207688%_))
                                             (let ((_%e207573207711%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl207566207688%_))))
                                               (let ((_%hd207574207715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207573207711%_)))
                                                     (_%tl207575207718%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207573207711%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd207574207715%_))
                                                     (let ((_%e207576207721%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd207574207715%_))))
                                                       (if (equal? _%e207576207721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl207575207718%_))
                       (let ((_%e207577207725%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl207575207718%_))))
                         (let ((_%hd207578207729%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207577207725%_)))
                               (_%tl207579207732%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207577207725%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd207578207729%_))
                               (let ((_%e207580207735%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd207578207729%_))))
                                 (let ((_%hd207581207739%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207580207735%_)))
                                       (_%tl207582207742%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207580207735%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd207581207739%_))
                                       (if (let ((__tmp209289
                                                  |gxc[1]#_g209290_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp209289
                                              _%hd207581207739%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207582207742%_))
                                               (let ((_%e207583207745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207582207742%_))))
                                                 (let ((_%hd207584207749%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207583207745%_)))
                                                       (_%tl207585207752%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207583207745%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl207585207752%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl207579207732%_))
                                                           (let ((_%e207586207755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl207579207732%_))))
                     (let ((_%hd207587207759%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207586207755%_)))
                           (_%tl207588207762%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207586207755%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd207587207759%_))
                           (let ((_%e207589207765%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd207587207759%_))))
                             (if (equal? _%e207589207765%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl207588207762%_))
                                     (let ((_%e207590207769%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl207588207762%_))))
                                       (let ((_%hd207591207773%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207590207769%_)))
                                             (_%tl207592207776%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207590207769%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd207591207773%_))
                                             (let ((_%e207593207779%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd207591207773%_))))
                                               (let ((_%hd207594207783%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207593207779%_)))
                                                     (_%tl207595207786%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207593207779%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd207594207783%_))
                                                     (if (let ((__tmp209291
                                                                |gxc[1]#_g209292_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp209291
                                                            _%hd207594207783%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl207595207786%_))
                     (let ((_%e207596207789%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl207595207786%_))))
                       (let ((_%hd207597207793%_
                              (let ()
                                (declare (not safe))
                                (##car _%e207596207789%_)))
                             (_%tl207598207796%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e207596207789%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl207598207796%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207592207776%_))
                                 (let ((_%e207599207799%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207592207776%_))))
                                   (let ((_%hd207600207803%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207599207799%_)))
                                         (_%tl207601207806%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207599207799%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd207600207803%_))
                                         (let ((_%e207602207809%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd207600207803%_))))
                                           (if (equal? _%e207602207809%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl207601207806%_))
                                                   (let ((_%e207603207813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl207601207806%_))))
                                                     (let ((_%hd207604207817%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e207603207813%_)))
                                                           (_%tl207605207820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e207603207813%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd207604207817%_))
                                                           (let ((_%e207606207823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd207604207817%_))))
                     (let ((_%hd207607207827%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207606207823%_)))
                           (_%tl207608207830%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207606207823%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd207607207827%_))
                           (if (let ((__tmp209293 |gxc[1]#_g209294_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp209293
                                  _%hd207607207827%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl207608207830%_))
                                   (let ((_%e207609207833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl207608207830%_))))
                                     (let ((_%hd207610207837%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e207609207833%_)))
                                           (_%tl207611207840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e207609207833%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl207611207840%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207605207820%_))
                                               (let ((_%e207612207843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207605207820%_))))
                                                 (let ((_%hd207613207847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207612207843%_)))
                                                       (_%tl207614207850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207612207843%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd207613207847%_))
                                                       (let ((_%e207615207853%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd207613207847%_))))
                 (if (equal? _%e207615207853%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl207614207850%_))
                         (let ((_%e207616207857%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl207614207850%_))))
                           (let ((_%hd207617207861%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e207616207857%_)))
                                 (_%tl207618207864%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e207616207857%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207617207861%_))
                                 (let ((_%e207619207867%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207617207861%_))))
                                   (let ((_%hd207620207871%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207619207867%_)))
                                         (_%tl207621207874%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207619207867%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207620207871%_))
                                         (if (let ((__tmp209295
                                                    |gxc[1]#_g209296_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp209295
                                                _%hd207620207871%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207621207874%_))
                                                 (let ((_%e207622207877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207621207874%_))))
                                                   (let ((_%hd207623207881%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207622207877%_)))
                                                         (_%tl207624207884%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207622207877%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207624207884%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl207618207864%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl207556207654%_))
                         ((lambda (_%L207887%_
                                   _%L207889%_
                                   _%L207890%_
                                   _%L207891%_
                                   _%L207892%_
                                   _%L207893%_)
                            (let ((_%clause207964%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L207893%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L207891%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207887%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked207966%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L207889%_))))
                              (_%loop207508%_
                               _%rest207539%_
                               (let ((_%$e207968%_ _%unchecked207966%_))
                                 (if _%$e207968%_
                                     _%$e207968%_
                                     _%unchecked-proc207513%_))
                               (cons _%clause207964%_
                                     _%unchecked-clauses207514%_))))
                          _%hd207623207881%_
                          _%hd207610207837%_
                          _%hd207597207793%_
                          _%hd207584207749%_
                          _%hd207571207705%_
                          _%hd207552207641%_)
                         (_%g207543207630%_ _%g207544207634%_))
                     (_%g207543207630%_ _%g207544207634%_))
                 (_%g207543207630%_ _%g207544207634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207543207630%_
                                                  _%g207544207634%_))
                                             (_%g207543207630%_
                                              _%g207544207634%_))
                                         (_%g207543207630%_
                                          _%g207544207634%_))))
                                 (_%g207543207630%_ _%g207544207634%_))))
                         (_%g207543207630%_ _%g207544207634%_))
                     (_%g207543207630%_ _%g207544207634%_)))
               (_%g207543207630%_ _%g207544207634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207543207630%_
                                                _%g207544207634%_))
                                           (_%g207543207630%_
                                            _%g207544207634%_))))
                                   (_%g207543207630%_ _%g207544207634%_))
                               (_%g207543207630%_ _%g207544207634%_))
                           (_%g207543207630%_ _%g207544207634%_))))
                   (_%g207543207630%_ _%g207544207634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g207543207630%_
                                                    _%g207544207634%_))
                                               (_%g207543207630%_
                                                _%g207544207634%_)))
                                         (_%g207543207630%_
                                          _%g207544207634%_))))
                                 (_%g207543207630%_ _%g207544207634%_))
                             (_%g207543207630%_ _%g207544207634%_))))
                     (_%g207543207630%_ _%g207544207634%_))
                 (_%g207543207630%_ _%g207544207634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207543207630%_
                                                      _%g207544207634%_))))
                                             (_%g207543207630%_
                                              _%g207544207634%_))))
                                     (_%g207543207630%_ _%g207544207634%_))
                                 (_%g207543207630%_ _%g207544207634%_)))
                           (_%g207543207630%_ _%g207544207634%_))))
                   (_%g207543207630%_ _%g207544207634%_))
               (_%g207543207630%_ _%g207544207634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207543207630%_
                                                _%g207544207634%_))
                                           (_%g207543207630%_
                                            _%g207544207634%_))
                                       (_%g207543207630%_ _%g207544207634%_))))
                               (_%g207543207630%_ _%g207544207634%_))))
                       (_%g207543207630%_ _%g207544207634%_))
                   (_%g207543207630%_ _%g207544207634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207543207630%_
                                                      _%g207544207634%_))))
                                             (_%g207543207630%_
                                              _%g207544207634%_))
                                         (_%g207543207630%_
                                          _%g207544207634%_))))
                                 (_%g207543207630%_ _%g207544207634%_))
                             (_%g207543207630%_ _%g207544207634%_))
                         (_%g207543207630%_ _%g207544207634%_))))
                 (_%g207543207630%_ _%g207544207634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207543207630%_
                                                  _%g207544207634%_))
                                             (_%g207543207630%_
                                              _%g207544207634%_)))
                                       (_%g207543207630%_ _%g207544207634%_))))
                               (_%g207543207630%_ _%g207544207634%_))))
                       (_%g207543207630%_ _%g207544207634%_))))
               (_%g207543207630%_ _%g207544207634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207543207630%_
                                                _%g207544207634%_)))))
                                   (_%g207542207972%_ _%hd207541%_)))))
                         (if (pair? _%rest207515207523%_)
                             (let ((_%hd207520207980%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest207515207523%_)))
                                   (_%tl207521207983%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest207515207523%_))))
                               (let* ((_%hd207986%_ _%hd207520207980%_)
                                      (_%rest207989%_ _%tl207521207983%_))
                                 (_%K207519207976%_
                                  _%rest207989%_
                                  _%hd207986%_)))
                             (_%else207517207535%_))))))
                (begin
                  (let ((_g209286_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209285_)
                               (##vector-length _g209285_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209286_ 2)))
                        (error "Context expects 2 values" _g209286_)))
                  (let ((_%unchecked-proc207992%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209285_ 0)))
                        (_%unchecked-clauses207994%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209285_ 1))))
                    (if _%unchecked-proc207992%_
                        (let* ((_%g207996208020%_
                                (lambda (_%g207997208016%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g207997208016%_))))
                               (_%g207995208107%_
                                (lambda (_%g207997208024%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g207997208024%_))
                                      (let ((_%e208000208027%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g207997208024%_))))
                                        (let ((_%hd208001208031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208000208027%_)))
                                              (_%tl208002208034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208000208027%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208002208034%_))
                                              (let ((_%e208003208037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208002208034%_))))
                                                (let ((_%hd208004208041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208003208037%_)))
                                                      (_%tl208005208044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208003208037%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd208004208041%_))
                                                      (let ((_g209297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd208004208041%_ '0))))
                (begin
                  (let ((_g209298_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209297_)
                               (##vector-length _g209297_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209298_ 2)))
                        (error "Context expects 2 values" _g209298_)))
                  (let ((_%target208006208047%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209297_ 0)))
                        (_%tl208008208050%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209297_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl208008208050%_))
                        (letrec ((_%loop208009208053%_
                                  (lambda (_%hd208007208057%_
                                           _%clause208013208060%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd208007208057%_))
                                        (let ((_%e208010208063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd208007208057%_))))
                                          (let ((_%lp-hd208011208067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208010208063%_)))
                                                (_%lp-tl208012208070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208010208063%_))))
                                            (_%loop208009208053%_
                                             _%lp-tl208012208070%_
                                             (cons _%lp-hd208011208067%_
                                                   _%clause208013208060%_))))
                                        (let ((_%clause208014208073%_
                                               (reverse _%clause208013208060%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208005208044%_))
                                              ((lambda (_%L208077%_
                                                        _%L208079%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L208079%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp209299
                                                    (lambda (_%g208098208101%_
                                                             _%g208099208104%_)
                                                      (cons _%g208098208101%_
                                                            _%g208099208104%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp209299
                                                '()
                                                _%L208077%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause208014208073%_
                                               _%hd208001208031%_)
                                              (_%g207996208020%_
                                               _%g207997208024%_)))))))
                          (_%loop208009208053%_ _%target208006208047%_ '()))
                        (_%g207996208020%_ _%g207997208024%_)))))
              (_%g207996208020%_ _%g207997208024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g207996208020%_
                                               _%g207997208024%_))))
                                      (_%g207996208020%_ _%g207997208024%_)))))
                          (_%g207995208107%_
                           (list _%unchecked-proc207992%_
                                 _%unchecked-clauses207994%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g207447207458%_))))
                                        (_%g207445208111%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L207306%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L207427%_
                                          _%L207429%_))
                                       (let ((__tmp209300
                                              (lambda (_%g208114208118%_
                                                       _%g208115208121%_
                                                       _%g208116208123%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g208115208121%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g208114208118%_ '())))))
              _%g208116208123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp209300
                                          '()
                                          _%L207427%_
                                          _%L207429%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig207353207421%_
                                    _%arity207354207424%_))))))
                   (_%loop207347207379%_ _%target207344207373%_ '() '()))
                 (_%g207340207366%_ _%g207341207370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207340207366%_
                                                _%g207341207370%_)))))
                                   (_%g207339208126%_ _%signatures207337%_))
                                 (_%g207223207247%_ _%g207224207251%_)))
                           _%case-signature207241207300%_
                           _%hd207231207268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207236207280%_
                                                   _%target207233207274%_
                                                   '()))
                                                (_%g207223207247%_
                                                 _%g207224207251%_)))))
                                      (_%g207223207247%_ _%g207224207251%_))))
                              (_%g207223207247%_ _%g207224207251%_))))
                      (_%g207223207247%_ _%g207224207251%_)))))
          (_%g207222208130%_ _%stx207220%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx208138%_)
        (let* ((_%__stx209120209121%_ _%$stx208138%_)
               (_%g208144208204%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209120209121%_)))))
          (let ((_%__kont209123209124%_
                 (lambda (_%L208426%_ _%L208428%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208428%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L208428%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208426%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209125209126%_
                 (lambda (_%L208351%_ _%L208353%_ _%L208354%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208354%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L208354%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208353%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208351%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209127209128%_
                 (lambda (_%L208265%_ _%L208267%_ _%L208268%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208268%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L208268%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208267%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208265%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209120209121%_))
                (let ((_%e208148208382%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209120209121%_))))
                  (let ((_%tl208150208389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208148208382%_)))
                        (_%hd208149208386%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208148208382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl208150208389%_))
                        (let ((_%e208151208392%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl208150208389%_))))
                          (let ((_%tl208153208399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208151208392%_)))
                                (_%hd208152208396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208151208392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd208152208396%_))
                                (let ((_%e208154208402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd208152208396%_))))
                                  (if (equal? _%e208154208402%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl208153208399%_))
                                          (let ((_%e208155208406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl208153208399%_))))
                                            (let ((_%tl208157208413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e208155208406%_)))
                                                  (_%hd208156208410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e208155208406%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208157208413%_))
                                                  (let ((_%e208158208416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208157208413%_))))
                                                    (let ((_%tl208160208423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208158208416%_)))
                                                          (_%hd208159208420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208158208416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208160208423%_))
                                                          (_%__kont209123209124%_
                                                           _%hd208159208420%_
                                                           _%hd208156208410%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208144208204%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208144208204%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g208144208204%_)))
                                      (if (equal? _%e208154208402%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208153208399%_))
                                              (let ((_%e208171208321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208153208399%_))))
                                                (let ((_%tl208173208328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208171208321%_)))
                                                      (_%hd208172208325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208171208321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208173208328%_))
                                                      (let ((_%e208174208331%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl208173208328%_))))
                (let ((_%tl208176208338%_
                       (let () (declare (not safe)) (##cdr _%e208174208331%_)))
                      (_%hd208175208335%_
                       (let ()
                         (declare (not safe))
                         (##car _%e208174208331%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208176208338%_))
                      (let ((_%e208177208341%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208176208338%_))))
                        (let ((_%tl208179208348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208177208341%_)))
                              (_%hd208178208345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208177208341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208179208348%_))
                              (_%__kont209125209126%_
                               _%hd208178208345%_
                               _%hd208175208335%_
                               _%hd208172208325%_)
                              (let ()
                                (declare (not safe))
                                (_%g208144208204%_)))))
                      (let () (declare (not safe)) (_%g208144208204%_)))))
              (let () (declare (not safe)) (_%g208144208204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g208144208204%_)))
                                          (if (equal? _%e208154208402%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208153208399%_))
                                                  (let ((_%e208190208235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208153208399%_))))
                                                    (let ((_%tl208192208242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208190208235%_)))
                                                          (_%hd208191208239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208190208235%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl208192208242%_))
                                                          (let ((_%e208193208245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl208192208242%_))))
                    (let ((_%tl208195208252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208193208245%_)))
                          (_%hd208194208249%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208193208245%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208195208252%_))
                          (let ((_%e208196208255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl208195208252%_))))
                            (let ((_%tl208198208262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208196208255%_)))
                                  (_%hd208197208259%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208196208255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl208198208262%_))
                                  (_%__kont209127209128%_
                                   _%hd208197208259%_
                                   _%hd208194208249%_
                                   _%hd208191208239%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g208144208204%_)))))
                          (let () (declare (not safe)) (_%g208144208204%_)))))
                  (let () (declare (not safe)) (_%g208144208204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208144208204%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208144208204%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g208144208204%_)))))
                        (let () (declare (not safe)) (_%g208144208204%_)))))
                (let () (declare (not safe)) (_%g208144208204%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx208450%_)
        (let* ((_%g208454208474%_
                (lambda (_%g208455208470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208455208470%_))))
               (_%g208453208545%_
                (lambda (_%g208455208478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208455208478%_))
                      (let ((_%e208457208481%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208455208478%_))))
                        (let ((_%hd208458208485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208457208481%_)))
                              (_%tl208459208488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208457208481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208459208488%_))
                              (let ((_g209301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208459208488%_
                                        '0))))
                                (begin
                                  (let ((_g209302_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209301_)
                                               (##vector-length _g209301_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209302_ 2)))
                                        (error "Context expects 2 values"
                                               _g209302_)))
                                  (let ((_%target208460208491%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209301_ 0)))
                                        (_%tl208462208494%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209301_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208462208494%_))
                                        (letrec ((_%loop208463208497%_
                                                  (lambda (_%hd208461208501%_
                                                           _%decl208467208504%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208461208501%_))
                                                        (let ((_%e208464208507%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd208461208501%_))))
                  (let ((_%lp-hd208465208511%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208464208507%_)))
                        (_%lp-tl208466208514%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208464208507%_))))
                    (_%loop208463208497%_
                     _%lp-tl208466208514%_
                     (cons _%lp-hd208465208511%_ _%decl208467208504%_))))
                (let ((_%decl208468208517%_ (reverse _%decl208467208504%_)))
                  ((lambda (_%L208521%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp209303
                                  (lambda (_%g208536208539%_ _%g208537208542%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g208536208539%_)
                                          _%g208537208542%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209303 '() _%L208521%_))))
                   _%decl208468208517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208463208497%_
                                           _%target208460208491%_
                                           '()))
                                        (_%g208454208474%_
                                         _%g208455208478%_)))))
                              (_%g208454208474%_ _%g208455208478%_))))
                      (_%g208454208474%_ _%g208455208478%_)))))
          (_%g208453208545%_ _%$stx208450%_))))))

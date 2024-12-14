(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g209501_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209508_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209510_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209512_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209514_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209516_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209528_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209530_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209532_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209534_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209536_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx202919%_)
        (let* ((_%g202923202941%_
                (lambda (_%g202924202937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202924202937%_))))
               (_%g202922202996%_
                (lambda (_%g202924202945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202924202945%_))
                      (let ((_%e202927202948%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202924202945%_))))
                        (let ((_%hd202928202952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202927202948%_)))
                              (_%tl202929202955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202927202948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202929202955%_))
                              (let ((_%e202930202958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202929202955%_))))
                                (let ((_%hd202931202962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202930202958%_)))
                                      (_%tl202932202965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202930202958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202932202965%_))
                                      (let ((_%e202933202968%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202932202965%_))))
                                        (let ((_%hd202934202972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202933202968%_)))
                                              (_%tl202935202975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202933202968%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202935202975%_))
                                              ((lambda (_%L202978%_
                                                        _%L202980%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202980%_))
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
                               (cons _%L202980%_ '()))
                         (cons _%L202978%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202923202941%_
                                                      _%g202924202945%_)))
                                               _%hd202934202972%_
                                               _%hd202931202962%_)
                                              (_%g202923202941%_
                                               _%g202924202945%_))))
                                      (_%g202923202941%_ _%g202924202945%_))))
                              (_%g202923202941%_ _%g202924202945%_))))
                      (_%g202923202941%_ _%g202924202945%_)))))
          (_%g202922202996%_ _%$stx202919%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203000%_)
        (let* ((_%g203004203022%_
                (lambda (_%g203005203018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203005203018%_))))
               (_%g203003203077%_
                (lambda (_%g203005203026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203005203026%_))
                      (let ((_%e203008203029%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203005203026%_))))
                        (let ((_%hd203009203033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203008203029%_)))
                              (_%tl203010203036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203008203029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203010203036%_))
                              (let ((_%e203011203039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203010203036%_))))
                                (let ((_%hd203012203043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203011203039%_)))
                                      (_%tl203013203046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203011203039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203013203046%_))
                                      (let ((_%e203014203049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203013203046%_))))
                                        (let ((_%hd203015203053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203014203049%_)))
                                              (_%tl203016203056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203014203049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203016203056%_))
                                              ((lambda (_%L203059%_
                                                        _%L203061%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203061%_))
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
                               (cons _%L203061%_ '()))
                         (cons _%L203059%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203004203022%_
                                                      _%g203005203026%_)))
                                               _%hd203015203053%_
                                               _%hd203012203043%_)
                                              (_%g203004203022%_
                                               _%g203005203026%_))))
                                      (_%g203004203022%_ _%g203005203026%_))))
                              (_%g203004203022%_ _%g203005203026%_))))
                      (_%g203004203022%_ _%g203005203026%_)))))
          (_%g203003203077%_ _%$stx203000%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx203081%_)
        (let* ((_%g203085203114%_
                (lambda (_%g203086203110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203086203110%_))))
               (_%g203084203214%_
                (lambda (_%g203086203118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203086203118%_))
                      (let ((_%e203089203121%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203086203118%_))))
                        (let ((_%hd203090203125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203089203121%_)))
                              (_%tl203091203128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203089203121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203091203128%_))
                              (let ((_g209479_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203091203128%_
                                        '0))))
                                (begin
                                  (let ((_g209480_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209479_)
                                               (##values-length _g209479_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209480_ 2)))
                                        (error "Context expects 2 values"
                                               _g209480_)))
                                  (let ((_%target203092203131%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209479_ 0)))
                                        (_%tl203094203134%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209479_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203094203134%_))
                                        (letrec ((_%loop203095203137%_
                                                  (lambda (_%hd203093203141%_
                                                           _%type203099203144%_
                                                           _%symbol203100203146%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203093203141%_))
                                                        (let ((_%e203096203149%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203093203141%_))))
                  (let ((_%lp-hd203097203153%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203096203149%_)))
                        (_%lp-tl203098203156%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203096203149%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203097203153%_))
                        (let ((_%e203103203159%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203097203153%_))))
                          (let ((_%hd203104203163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203103203159%_)))
                                (_%tl203105203166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203103203159%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203105203166%_))
                                (let ((_%e203106203169%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203105203166%_))))
                                  (let ((_%hd203107203173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203106203169%_)))
                                        (_%tl203108203176%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203106203169%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203108203176%_))
                                        (_%loop203095203137%_
                                         _%lp-tl203098203156%_
                                         (cons _%hd203107203173%_
                                               _%type203099203144%_)
                                         (cons _%hd203104203163%_
                                               _%symbol203100203146%_))
                                        (_%g203085203114%_
                                         _%g203086203118%_))))
                                (_%g203085203114%_ _%g203086203118%_))))
                        (_%g203085203114%_ _%g203086203118%_))))
                (let ((_%type203101203179%_ (reverse _%type203099203144%_))
                      (_%symbol203102203182%_
                       (reverse _%symbol203100203146%_)))
                  ((lambda (_%L203185%_ _%L203187%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203185%_
                                _%L203187%_))
                             (let ((__tmp209481
                                    (lambda (_%g203202203206%_
                                             _%g203203203209%_
                                             _%g203204203211%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g203203203209%_
                                                        (cons _%g203202203206%_
                                                              '())))
                                            _%g203204203211%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209481
                                '()
                                _%L203185%_
                                _%L203187%_)))))
                   _%type203101203179%_
                   _%symbol203102203182%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203095203137%_
                                           _%target203092203131%_
                                           '()
                                           '()))
                                        (_%g203085203114%_
                                         _%g203086203118%_)))))
                              (_%g203085203114%_ _%g203086203118%_))))
                      (_%g203085203114%_ _%g203086203118%_)))))
          (_%g203084203214%_ _%$stx203081%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx203219%_)
        (let* ((_%__stx208790208791%_ _%$stx203219%_)
               (_%g203224203266%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208790208791%_)))))
          (let ((_%__kont208793208794%_
                 (lambda (_%L203394%_ _%L203396%_ _%L203397%_ _%L203398%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203398%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203397%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203396%_ '()))
                                           (cons _%L203394%_ '())))))))
                (_%__kont208795208796%_
                 (lambda (_%L203313%_ _%L203315%_ _%L203316%_ _%L203317%_)
                   (cons _%L203317%_
                         (cons _%L203316%_
                               (cons _%L203315%_
                                     (cons _%L203313%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match208829208830%_
                   (lambda (_%e203230203344%_
                            _%hd203231203348%_
                            _%tl203232203351%_
                            _%e203233203354%_
                            _%hd203234203358%_
                            _%tl203235203361%_
                            _%e203236203364%_
                            _%hd203237203368%_
                            _%tl203238203371%_
                            _%e203239203374%_
                            _%hd203240203378%_
                            _%tl203241203381%_
                            _%e203242203384%_
                            _%hd203243203388%_
                            _%tl203244203391%_)
                     (let ((_%L203394%_ _%hd203243203388%_)
                           (_%L203396%_ _%hd203240203378%_)
                           (_%L203397%_ _%hd203237203368%_)
                           (_%L203398%_ _%hd203234203358%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203398%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203397%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L203396%_)))
                           (_%__kont208793208794%_
                            _%L203394%_
                            _%L203396%_
                            _%L203397%_
                            _%L203398%_)
                           (let ()
                             (declare (not safe))
                             (_%g203224203266%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208790208791%_))
                  (let ((_%e203230203344%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208790208791%_))))
                    (let ((_%tl203232203351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203230203344%_)))
                          (_%hd203231203348%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203230203344%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203232203351%_))
                          (let ((_%e203233203354%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203232203351%_))))
                            (let ((_%tl203235203361%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203233203354%_)))
                                  (_%hd203234203358%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203233203354%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203235203361%_))
                                  (let ((_%e203236203364%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203235203361%_))))
                                    (let ((_%tl203238203371%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203236203364%_)))
                                          (_%hd203237203368%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203236203364%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203238203371%_))
                                          (let ((_%e203239203374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl203238203371%_))))
                                            (let ((_%tl203241203381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203239203374%_)))
                                                  (_%hd203240203378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203239203374%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203241203381%_))
                                                  (let ((_%e203242203384%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203241203381%_))))
                                                    (let ((_%tl203244203391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203242203384%_)))
                                                          (_%hd203243203388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203242203384%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203244203391%_))
                                                          (_%__match208829208830%_
                                                           _%e203230203344%_
                                                           _%hd203231203348%_
                                                           _%tl203232203351%_
                                                           _%e203233203354%_
                                                           _%hd203234203358%_
                                                           _%tl203235203361%_
                                                           _%e203236203364%_
                                                           _%hd203237203368%_
                                                           _%tl203238203371%_
                                                           _%e203239203374%_
                                                           _%hd203240203378%_
                                                           _%tl203241203381%_
                                                           _%e203242203384%_
                                                           _%hd203243203388%_
                                                           _%tl203244203391%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203224203266%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203241203381%_))
                                                      (_%__kont208795208796%_
                                                       _%hd203240203378%_
                                                       _%hd203237203368%_
                                                       _%hd203234203358%_
                                                       _%hd203231203348%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203224203266%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203224203266%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g203224203266%_)))))
                          (let () (declare (not safe)) (_%g203224203266%_)))))
                  (let () (declare (not safe)) (_%g203224203266%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx203423%_)
        (let* ((_%g203427203462%_
                (lambda (_%g203428203458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203428203458%_))))
               (_%g203426203581%_
                (lambda (_%g203428203466%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203428203466%_))
                      (let ((_%e203432203469%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203428203466%_))))
                        (let ((_%hd203433203473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203432203469%_)))
                              (_%tl203434203476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203432203469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203434203476%_))
                              (let ((_g209482_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203434203476%_
                                        '0))))
                                (begin
                                  (let ((_g209483_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209482_)
                                               (##values-length _g209482_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209483_ 2)))
                                        (error "Context expects 2 values"
                                               _g209483_)))
                                  (let ((_%target203435203479%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209482_ 0)))
                                        (_%tl203437203482%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209482_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203437203482%_))
                                        (letrec ((_%loop203438203485%_
                                                  (lambda (_%hd203436203489%_
                                                           _%symbol203442203492%_
                                                           _%method203443203494%_
                                                           _%type-t203444203496%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203436203489%_))
                                                        (let ((_%e203439203499%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203436203489%_))))
                  (let ((_%lp-hd203440203503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203439203499%_)))
                        (_%lp-tl203441203506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203439203499%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203440203503%_))
                        (let ((_%e203448203509%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203440203503%_))))
                          (let ((_%hd203449203513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203448203509%_)))
                                (_%tl203450203516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203448203509%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203450203516%_))
                                (let ((_%e203451203519%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203450203516%_))))
                                  (let ((_%hd203452203523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203451203519%_)))
                                        (_%tl203453203526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203451203519%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203453203526%_))
                                        (let ((_%e203454203529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203453203526%_))))
                                          (let ((_%hd203455203533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203454203529%_)))
                                                (_%tl203456203536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203454203529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203456203536%_))
                                                (_%loop203438203485%_
                                                 _%lp-tl203441203506%_
                                                 (cons _%hd203455203533%_
                                                       _%symbol203442203492%_)
                                                 (cons _%hd203452203523%_
                                                       _%method203443203494%_)
                                                 (cons _%hd203449203513%_
                                                       _%type-t203444203496%_))
                                                (_%g203427203462%_
                                                 _%g203428203466%_))))
                                        (_%g203427203462%_
                                         _%g203428203466%_))))
                                (_%g203427203462%_ _%g203428203466%_))))
                        (_%g203427203462%_ _%g203428203466%_))))
                (let ((_%symbol203445203539%_ (reverse _%symbol203442203492%_))
                      (_%method203446203542%_ (reverse _%method203443203494%_))
                      (_%type-t203447203544%_
                       (reverse _%type-t203444203496%_)))
                  ((lambda (_%L203547%_ _%L203549%_ _%L203550%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203547%_
                                _%L203549%_
                                _%L203550%_))
                             (let ((__tmp209484
                                    (lambda (_%g203566203571%_
                                             _%g203567203574%_
                                             _%g203568203576%_
                                             _%g203569203578%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g203568203576%_
                                                        (cons _%g203567203574%_
                                                              (cons _%g203566203571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g203569203578%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp209484
                                '()
                                _%L203547%_
                                _%L203549%_
                                _%L203550%_)))))
                   _%symbol203445203539%_
                   _%method203446203542%_
                   _%type-t203447203544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203438203485%_
                                           _%target203435203479%_
                                           '()
                                           '()
                                           '()))
                                        (_%g203427203462%_
                                         _%g203428203466%_)))))
                              (_%g203427203462%_ _%g203428203466%_))))
                      (_%g203427203462%_ _%g203428203466%_)))))
          (_%g203426203581%_ _%$stx203423%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx203586%_)
        (let* ((_%g203590203623%_
                (lambda (_%g203591203619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203591203619%_))))
               (_%g203589203737%_
                (lambda (_%g203591203627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203591203627%_))
                      (let ((_%e203595203630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203591203627%_))))
                        (let ((_%hd203596203634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203595203630%_)))
                              (_%tl203597203637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203595203630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203597203637%_))
                              (let ((_%e203598203640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203597203637%_))))
                                (let ((_%hd203599203644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203598203640%_)))
                                      (_%tl203600203647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203598203640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203600203647%_))
                                      (let ((_g209485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203600203647%_
                                                '0))))
                                        (begin
                                          (let ((_g209486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209485_)
                                                       (##values-length
                                                        _g209485_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209486_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209486_)))
                                          (let ((_%target203601203650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209485_ 0)))
                                                (_%tl203603203653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209485_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203603203653%_))
                                                (letrec ((_%loop203604203656%_
                                                          (lambda (_%hd203602203660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol203608203663%_
                           _%method203609203665%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203602203660%_))
                        (let ((_%e203605203668%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203602203660%_))))
                          (let ((_%lp-hd203606203672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203605203668%_)))
                                (_%lp-tl203607203675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203605203668%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd203606203672%_))
                                (let ((_%e203612203678%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd203606203672%_))))
                                  (let ((_%hd203613203682%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203612203678%_)))
                                        (_%tl203614203685%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203612203678%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203614203685%_))
                                        (let ((_%e203615203688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203614203685%_))))
                                          (let ((_%hd203616203692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203615203688%_)))
                                                (_%tl203617203695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203615203688%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203617203695%_))
                                                (_%loop203604203656%_
                                                 _%lp-tl203607203675%_
                                                 (cons _%hd203616203692%_
                                                       _%symbol203608203663%_)
                                                 (cons _%hd203613203682%_
                                                       _%method203609203665%_))
                                                (_%g203590203623%_
                                                 _%g203591203627%_))))
                                        (_%g203590203623%_
                                         _%g203591203627%_))))
                                (_%g203590203623%_ _%g203591203627%_))))
                        (let ((_%symbol203610203698%_
                               (reverse _%symbol203608203663%_))
                              (_%method203611203701%_
                               (reverse _%method203609203665%_)))
                          ((lambda (_%L203704%_ _%L203706%_ _%L203707%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L203704%_
                                        _%L203706%_))
                                     (let ((__tmp209487
                                            (lambda (_%g203725203729%_
                                                     _%g203726203732%_
                                                     _%g203727203734%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L203707%_
                                                                (cons _%g203726203732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g203725203729%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g203727203734%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp209487
                                        '()
                                        _%L203704%_
                                        _%L203706%_)))))
                           _%symbol203610203698%_
                           _%method203611203701%_
                           _%hd203599203644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203604203656%_
                                                   _%target203601203650%_
                                                   '()
                                                   '()))
                                                (_%g203590203623%_
                                                 _%g203591203627%_)))))
                                      (_%g203590203623%_ _%g203591203627%_))))
                              (_%g203590203623%_ _%g203591203627%_))))
                      (_%g203590203623%_ _%g203591203627%_)))))
          (_%g203589203737%_ _%$stx203586%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx203742%_)
        (let* ((_%g203746203760%_
                (lambda (_%g203747203756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203747203756%_))))
               (_%g203745203801%_
                (lambda (_%g203747203764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203747203764%_))
                      (let ((_%e203749203767%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203747203764%_))))
                        (let ((_%hd203750203771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203749203767%_)))
                              (_%tl203751203774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203749203767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203751203774%_))
                              (let ((_%e203752203777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203751203774%_))))
                                (let ((_%hd203753203781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203752203777%_)))
                                      (_%tl203754203784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203752203777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203754203784%_))
                                      ((lambda (_%L203787%_)
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
                                                           (cons _%L203787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203753203781%_)
                                      (_%g203746203760%_ _%g203747203764%_))))
                              (_%g203746203760%_ _%g203747203764%_))))
                      (_%g203746203760%_ _%g203747203764%_)))))
          (_%g203745203801%_ _%$stx203742%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx203805%_)
        (let* ((_%g203809203863%_
                (lambda (_%g203810203859%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203810203859%_))))
               (_%g203808204044%_
                (lambda (_%g203810203867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203810203867%_))
                      (let ((_%e203822203870%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203810203867%_))))
                        (let ((_%hd203823203874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203822203870%_)))
                              (_%tl203824203877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203822203870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203824203877%_))
                              (let ((_%e203825203880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203824203877%_))))
                                (let ((_%hd203826203884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203825203880%_)))
                                      (_%tl203827203887%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203825203880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203827203887%_))
                                      (let ((_%e203828203890%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203827203887%_))))
                                        (let ((_%hd203829203894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203828203890%_)))
                                              (_%tl203830203897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203828203890%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203830203897%_))
                                              (let ((_%e203831203900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203830203897%_))))
                                                (let ((_%hd203832203904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203831203900%_)))
                                                      (_%tl203833203907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203831203900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203833203907%_))
                                                      (let ((_%e203834203910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203833203907%_))))
                (let ((_%hd203835203914%_
                       (let () (declare (not safe)) (##car _%e203834203910%_)))
                      (_%tl203836203917%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203834203910%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203836203917%_))
                      (let ((_%e203837203920%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203836203917%_))))
                        (let ((_%hd203838203924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203837203920%_)))
                              (_%tl203839203927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203837203920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203839203927%_))
                              (let ((_%e203840203930%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203839203927%_))))
                                (let ((_%hd203841203934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203840203930%_)))
                                      (_%tl203842203937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203840203930%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203842203937%_))
                                      (let ((_%e203843203940%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203842203937%_))))
                                        (let ((_%hd203844203944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203843203940%_)))
                                              (_%tl203845203947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203843203940%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203845203947%_))
                                              (let ((_%e203846203950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203845203947%_))))
                                                (let ((_%hd203847203954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203846203950%_)))
                                                      (_%tl203848203957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203846203950%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203848203957%_))
                                                      (let ((_%e203849203960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203848203957%_))))
                (let ((_%hd203850203964%_
                       (let () (declare (not safe)) (##car _%e203849203960%_)))
                      (_%tl203851203967%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203849203960%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203851203967%_))
                      (let ((_%e203852203970%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203851203967%_))))
                        (let ((_%hd203853203974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203852203970%_)))
                              (_%tl203854203977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203852203970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203854203977%_))
                              (let ((_%e203855203980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203854203977%_))))
                                (let ((_%hd203856203984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203855203980%_)))
                                      (_%tl203857203987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203855203980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203857203987%_))
                                      ((lambda (_%L203990%_
                                                _%L203992%_
                                                _%L203993%_
                                                _%L203994%_
                                                _%L203995%_
                                                _%L203996%_
                                                _%L203997%_
                                                _%L203998%_
                                                _%L203999%_
                                                _%L204000%_
                                                _%L204001%_)
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
                                                           (cons _%L204001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204000%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203999%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203998%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203997%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203996%_ '()))
                                           (cons _%L203995%_
                                                 (cons _%L203994%_
                                                       (cons _%L203993%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203992%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203990%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203856203984%_
                                       _%hd203853203974%_
                                       _%hd203850203964%_
                                       _%hd203847203954%_
                                       _%hd203844203944%_
                                       _%hd203841203934%_
                                       _%hd203838203924%_
                                       _%hd203835203914%_
                                       _%hd203832203904%_
                                       _%hd203829203894%_
                                       _%hd203826203884%_)
                                      (_%g203809203863%_ _%g203810203867%_))))
                              (_%g203809203863%_ _%g203810203867%_))))
                      (_%g203809203863%_ _%g203810203867%_))))
              (_%g203809203863%_ _%g203810203867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203809203863%_
                                               _%g203810203867%_))))
                                      (_%g203809203863%_ _%g203810203867%_))))
                              (_%g203809203863%_ _%g203810203867%_))))
                      (_%g203809203863%_ _%g203810203867%_))))
              (_%g203809203863%_ _%g203810203867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203809203863%_
                                               _%g203810203867%_))))
                                      (_%g203809203863%_ _%g203810203867%_))))
                              (_%g203809203863%_ _%g203810203867%_))))
                      (_%g203809203863%_ _%g203810203867%_)))))
          (_%g203808204044%_ _%$stx203805%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx204048%_)
        (let* ((_%g204052204066%_
                (lambda (_%g204053204062%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204053204062%_))))
               (_%g204051204107%_
                (lambda (_%g204053204070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204053204070%_))
                      (let ((_%e204055204073%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204053204070%_))))
                        (let ((_%hd204056204077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204055204073%_)))
                              (_%tl204057204080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204055204073%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204057204080%_))
                              (let ((_%e204058204083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204057204080%_))))
                                (let ((_%hd204059204087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204058204083%_)))
                                      (_%tl204060204090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204058204083%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204060204090%_))
                                      ((lambda (_%L204093%_)
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
                                                           (cons _%L204093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204059204087%_)
                                      (_%g204052204066%_ _%g204053204070%_))))
                              (_%g204052204066%_ _%g204053204070%_))))
                      (_%g204052204066%_ _%g204053204070%_)))))
          (_%g204051204107%_ _%$stx204048%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx204111%_)
        (let* ((_%g204115204129%_
                (lambda (_%g204116204125%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204116204125%_))))
               (_%g204114204170%_
                (lambda (_%g204116204133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204116204133%_))
                      (let ((_%e204118204136%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204116204133%_))))
                        (let ((_%hd204119204140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204118204136%_)))
                              (_%tl204120204143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204118204136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204120204143%_))
                              (let ((_%e204121204146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204120204143%_))))
                                (let ((_%hd204122204150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204121204146%_)))
                                      (_%tl204123204153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204121204146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204123204153%_))
                                      ((lambda (_%L204156%_)
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
                                                           (cons _%L204156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204122204150%_)
                                      (_%g204115204129%_ _%g204116204133%_))))
                              (_%g204115204129%_ _%g204116204133%_))))
                      (_%g204115204129%_ _%g204116204133%_)))))
          (_%g204114204170%_ _%$stx204111%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx204174%_)
        (let* ((_%g204178204200%_
                (lambda (_%g204179204196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204179204196%_))))
               (_%g204177204269%_
                (lambda (_%g204179204204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204179204204%_))
                      (let ((_%e204183204207%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204179204204%_))))
                        (let ((_%hd204184204211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204183204207%_)))
                              (_%tl204185204214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204183204207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204185204214%_))
                              (let ((_%e204186204217%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204185204214%_))))
                                (let ((_%hd204187204221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204186204217%_)))
                                      (_%tl204188204224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204186204217%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204188204224%_))
                                      (let ((_%e204189204227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204188204224%_))))
                                        (let ((_%hd204190204231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204189204227%_)))
                                              (_%tl204191204234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204189204227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204191204234%_))
                                              (let ((_%e204192204237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204191204234%_))))
                                                (let ((_%hd204193204241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204192204237%_)))
                                                      (_%tl204194204244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204192204237%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204194204244%_))
                                                      ((lambda (_%L204247%_
                                                                _%L204249%_
                                                                _%L204250%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204250%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204249%_ '()))
                                   (cons _%L204247%_ '())))))
               _%hd204193204241%_
               _%hd204190204231%_
               _%hd204187204221%_)
              (_%g204178204200%_ _%g204179204204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204178204200%_
                                               _%g204179204204%_))))
                                      (_%g204178204200%_ _%g204179204204%_))))
                              (_%g204178204200%_ _%g204179204204%_))))
                      (_%g204178204200%_ _%g204179204204%_)))))
          (_%g204177204269%_ _%$stx204174%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx204273%_)
        (let* ((_%g204277204299%_
                (lambda (_%g204278204295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204278204295%_))))
               (_%g204276204368%_
                (lambda (_%g204278204303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204278204303%_))
                      (let ((_%e204282204306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204278204303%_))))
                        (let ((_%hd204283204310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204282204306%_)))
                              (_%tl204284204313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204282204306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204284204313%_))
                              (let ((_%e204285204316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204284204313%_))))
                                (let ((_%hd204286204320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204285204316%_)))
                                      (_%tl204287204323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204285204316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204287204323%_))
                                      (let ((_%e204288204326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204287204323%_))))
                                        (let ((_%hd204289204330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204288204326%_)))
                                              (_%tl204290204333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204288204326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204290204333%_))
                                              (let ((_%e204291204336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204290204333%_))))
                                                (let ((_%hd204292204340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204291204336%_)))
                                                      (_%tl204293204343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204291204336%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204293204343%_))
                                                      ((lambda (_%L204346%_
                                                                _%L204348%_
                                                                _%L204349%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204349%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L204348%_ '()))
                                   (cons _%L204346%_ '())))))
               _%hd204292204340%_
               _%hd204289204330%_
               _%hd204286204320%_)
              (_%g204277204299%_ _%g204278204303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204277204299%_
                                               _%g204278204303%_))))
                                      (_%g204277204299%_ _%g204278204303%_))))
                              (_%g204277204299%_ _%g204278204303%_))))
                      (_%g204277204299%_ _%g204278204303%_)))))
          (_%g204276204368%_ _%$stx204273%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx204372%_)
        (let* ((_%g204376204390%_
                (lambda (_%g204377204386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204377204386%_))))
               (_%g204375204431%_
                (lambda (_%g204377204394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204377204394%_))
                      (let ((_%e204379204397%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204377204394%_))))
                        (let ((_%hd204380204401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204379204397%_)))
                              (_%tl204381204404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204379204397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204381204404%_))
                              (let ((_%e204382204407%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204381204404%_))))
                                (let ((_%hd204383204411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204382204407%_)))
                                      (_%tl204384204414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204382204407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204384204414%_))
                                      ((lambda (_%L204417%_)
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
                                                           (cons _%L204417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204383204411%_)
                                      (_%g204376204390%_ _%g204377204394%_))))
                              (_%g204376204390%_ _%g204377204394%_))))
                      (_%g204376204390%_ _%g204377204394%_)))))
          (_%g204375204431%_ _%$stx204372%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx204435%_)
        (let* ((_%g204439204457%_
                (lambda (_%g204440204453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204440204453%_))))
               (_%g204438204512%_
                (lambda (_%g204440204461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204440204461%_))
                      (let ((_%e204443204464%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204440204461%_))))
                        (let ((_%hd204444204468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204443204464%_)))
                              (_%tl204445204471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204443204464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204445204471%_))
                              (let ((_%e204446204474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204445204471%_))))
                                (let ((_%hd204447204478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204446204474%_)))
                                      (_%tl204448204481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204446204474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204448204481%_))
                                      (let ((_%e204449204484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204448204481%_))))
                                        (let ((_%hd204450204488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204449204484%_)))
                                              (_%tl204451204491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204449204484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204451204491%_))
                                              ((lambda (_%L204494%_
                                                        _%L204496%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204496%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204494%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204450204488%_
                                               _%hd204447204478%_)
                                              (_%g204439204457%_
                                               _%g204440204461%_))))
                                      (_%g204439204457%_ _%g204440204461%_))))
                              (_%g204439204457%_ _%g204440204461%_))))
                      (_%g204439204457%_ _%g204440204461%_)))))
          (_%g204438204512%_ _%$stx204435%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx204516%_)
        (let* ((_%__stx208858208859%_ _%$stx204516%_)
               (_%g204523204584%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208858208859%_)))))
          (let ((_%__kont208861208862%_
                 (lambda (_%L204822%_ _%L204824%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204824%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204822%_ '()))
                                     '())))))
                (_%__kont208863208864%_
                 (lambda (_%L204761%_ _%L204763%_ _%L204764%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204764%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204763%_ '()))
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
                                 (cons _%L204761%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont208865208866%_
                 (lambda (_%L204685%_ _%L204687%_)
                   (cons _%L204687%_ (cons _%L204685%_ (cons '#f '())))))
                (_%__kont208867208868%_
                 (lambda (_%L204635%_ _%L204637%_ _%L204638%_)
                   (cons _%L204638%_
                         (cons _%L204637%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L204635%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208858208859%_))
                (let ((_%e204527204792%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208858208859%_))))
                  (let ((_%tl204529204799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204527204792%_)))
                        (_%hd204528204796%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204527204792%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204529204799%_))
                        (let ((_%e204530204802%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204529204799%_))))
                          (let ((_%tl204532204809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204530204802%_)))
                                (_%hd204531204806%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204530204802%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204532204809%_))
                                (let ((_%e204533204812%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204532204809%_))))
                                  (let ((_%tl204535204819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204533204812%_)))
                                        (_%hd204534204816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204533204812%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204535204819%_))
                                        (_%__kont208861208862%_
                                         _%hd204534204816%_
                                         _%hd204531204806%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204535204819%_))
                                            (let ((_%e204548204737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204535204819%_))))
                                              (let ((_%tl204550204744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204548204737%_)))
                                                    (_%hd204549204741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204548204737%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204549204741%_))
                                                    (let ((_%e204551204747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204549204741%_))))
                                                      (if (equal? _%e204551204747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204550204744%_))
                      (let ((_%e204552204751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204550204744%_))))
                        (let ((_%tl204554204758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204552204751%_)))
                              (_%hd204553204755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204552204751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204554204758%_))
                              (_%__kont208863208864%_
                               _%hd204553204755%_
                               _%hd204534204816%_
                               _%hd204531204806%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd204534204816%_))
                                  (let ((_%e204575204621%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204534204816%_))))
                                    (declare (not safe))
                                    (_%g204523204584%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204523204584%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204534204816%_))
                          (let ((_%e204575204621%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204534204816%_))))
                            (if (equal? _%e204575204621%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204550204744%_))
                                    (_%__kont208867208868%_
                                     _%hd204549204741%_
                                     _%hd204531204806%_
                                     _%hd204528204796%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204523204584%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204523204584%_))))
                          (let () (declare (not safe)) (_%g204523204584%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd204534204816%_))
                      (let ((_%e204575204621%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204534204816%_))))
                        (if (equal? _%e204575204621%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204550204744%_))
                                (_%__kont208867208868%_
                                 _%hd204549204741%_
                                 _%hd204531204806%_
                                 _%hd204528204796%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204523204584%_)))
                            (let () (declare (not safe)) (_%g204523204584%_))))
                      (let () (declare (not safe)) (_%g204523204584%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd204534204816%_))
                                                        (let ((_%e204575204621%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204534204816%_))))
                  (if (equal? _%e204575204621%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204550204744%_))
                          (_%__kont208867208868%_
                           _%hd204549204741%_
                           _%hd204531204806%_
                           _%hd204528204796%_)
                          (let () (declare (not safe)) (_%g204523204584%_)))
                      (let () (declare (not safe)) (_%g204523204584%_))))
                (let () (declare (not safe)) (_%g204523204584%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204534204816%_))
                                                (let ((_%e204575204621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204534204816%_))))
                                                  (declare (not safe))
                                                  (_%g204523204584%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204523204584%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204532204809%_))
                                    (_%__kont208865208866%_
                                     _%hd204531204806%_
                                     _%hd204528204796%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204523204584%_))))))
                        (let () (declare (not safe)) (_%g204523204584%_)))))
                (let () (declare (not safe)) (_%g204523204584%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx204843%_)
        (let* ((_%g204847204876%_
                (lambda (_%g204848204872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204848204872%_))))
               (_%g204846204985%_
                (lambda (_%g204848204880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204848204880%_))
                      (let ((_%e204850204883%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204848204880%_))))
                        (let ((_%hd204851204887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204850204883%_)))
                              (_%tl204852204890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204850204883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204852204890%_))
                              (let ((_g209488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204852204890%_
                                        '0))))
                                (begin
                                  (let ((_g209489_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209488_)
                                               (##values-length _g209488_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209489_ 2)))
                                        (error "Context expects 2 values"
                                               _g209489_)))
                                  (let ((_%target204853204893%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209488_ 0)))
                                        (_%tl204855204896%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209488_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204855204896%_))
                                        (letrec ((_%loop204856204899%_
                                                  (lambda (_%hd204854204903%_
                                                           _%clause204860204906%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204854204903%_))
                                                        (let ((_%e204857204909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204854204903%_))))
                  (let ((_%lp-hd204858204913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204857204909%_)))
                        (_%lp-tl204859204916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204857204909%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd204858204913%_))
                        (let ((_g209490_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd204858204913%_
                                  '0))))
                          (begin
                            (let ((_g209491_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g209490_)
                                         (##values-length _g209490_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g209491_ 2)))
                                  (error "Context expects 2 values"
                                         _g209491_)))
                            (let ((_%target204862204919%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g209490_ 0)))
                                  (_%tl204864204922%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g209490_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204864204922%_))
                                  (letrec ((_%loop204865204925%_
                                            (lambda (_%hd204863204929%_
                                                     _%clause204869204932%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204863204929%_))
                                                  (let ((_%e204866204935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd204863204929%_))))
                                                    (let ((_%lp-hd204867204939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204866204935%_)))
                                                          (_%lp-tl204868204942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204866204935%_))))
                                                      (_%loop204865204925%_
                                                       _%lp-tl204868204942%_
                                                       (cons _%lp-hd204867204939%_
                                                             _%clause204869204932%_))))
                                                  (let ((_%clause204870204945%_
                                                         (reverse _%clause204869204932%_)))
                                                    (_%loop204856204899%_
                                                     _%lp-tl204859204916%_
                                                     (cons _%clause204870204945%_
                                                           _%clause204860204906%_)))))))
                                    (_%loop204865204925%_
                                     _%target204862204919%_
                                     '()))
                                  (_%g204847204876%_ _%g204848204880%_)))))
                        (_%g204847204876%_ _%g204848204880%_))))
                (let ((_%clause204861204949%_
                       (reverse _%clause204860204906%_)))
                  ((lambda (_%L204953%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp209492
                                              (lambda (_%g204968204973%_
                                                       _%g204969204976%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp209493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g204970204979%_ _%g204971204982%_)
                             (cons _%g204970204979%_ _%g204971204982%_))))
                      (declare (not safe))
                      (__foldr1 __tmp209493 '() _%g204968204973%_)))
              _%g204969204976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp209492
                                          '()
                                          _%L204953%_)))
                                 '())))
                   _%clause204861204949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204856204899%_
                                           _%target204853204893%_
                                           '()))
                                        (_%g204847204876%_
                                         _%g204848204880%_)))))
                              (_%g204847204876%_ _%g204848204880%_))))
                      (_%g204847204876%_ _%g204848204880%_)))))
          (_%g204846204985%_ _%$stx204843%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx204991%_)
        (let* ((_%g204995205013%_
                (lambda (_%g204996205009%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204996205009%_))))
               (_%g204994205068%_
                (lambda (_%g204996205017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204996205017%_))
                      (let ((_%e204999205020%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204996205017%_))))
                        (let ((_%hd205000205024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204999205020%_)))
                              (_%tl205001205027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204999205020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205001205027%_))
                              (let ((_%e205002205030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205001205027%_))))
                                (let ((_%hd205003205034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205002205030%_)))
                                      (_%tl205004205037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205002205030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205004205037%_))
                                      (let ((_%e205005205040%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205004205037%_))))
                                        (let ((_%hd205006205044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205005205040%_)))
                                              (_%tl205007205047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205005205040%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205007205047%_))
                                              ((lambda (_%L205050%_
                                                        _%L205052%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205052%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205050%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205006205044%_
                                               _%hd205003205034%_)
                                              (_%g204995205013%_
                                               _%g204996205017%_))))
                                      (_%g204995205013%_ _%g204996205017%_))))
                              (_%g204995205013%_ _%g204996205017%_))))
                      (_%g204995205013%_ _%g204996205017%_)))))
          (_%g204994205068%_ _%$stx204991%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx205072%_)
        (let* ((_%g205076205094%_
                (lambda (_%g205077205090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205077205090%_))))
               (_%g205075205149%_
                (lambda (_%g205077205098%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205077205098%_))
                      (let ((_%e205080205101%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205077205098%_))))
                        (let ((_%hd205081205105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205080205101%_)))
                              (_%tl205082205108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205080205101%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205082205108%_))
                              (let ((_%e205083205111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205082205108%_))))
                                (let ((_%hd205084205115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205083205111%_)))
                                      (_%tl205085205118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205083205111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205085205118%_))
                                      (let ((_%e205086205121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205085205118%_))))
                                        (let ((_%hd205087205125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205086205121%_)))
                                              (_%tl205088205128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205086205121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205088205128%_))
                                              ((lambda (_%L205131%_
                                                        _%L205133%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205133%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205131%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205087205125%_
                                               _%hd205084205115%_)
                                              (_%g205076205094%_
                                               _%g205077205098%_))))
                                      (_%g205076205094%_ _%g205077205098%_))))
                              (_%g205076205094%_ _%g205077205098%_))))
                      (_%g205076205094%_ _%g205077205098%_)))))
          (_%g205075205149%_ _%$stx205072%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx205153%_)
        (let* ((_%g205157205186%_
                (lambda (_%g205158205182%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205158205182%_))))
               (_%g205156205286%_
                (lambda (_%g205158205190%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205158205190%_))
                      (let ((_%e205161205193%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205158205190%_))))
                        (let ((_%hd205162205197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205161205193%_)))
                              (_%tl205163205200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205161205193%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205163205200%_))
                              (let ((_g209494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205163205200%_
                                        '0))))
                                (begin
                                  (let ((_g209495_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209494_)
                                               (##values-length _g209494_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209495_ 2)))
                                        (error "Context expects 2 values"
                                               _g209495_)))
                                  (let ((_%target205164205203%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209494_ 0)))
                                        (_%tl205166205206%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209494_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205166205206%_))
                                        (letrec ((_%loop205167205209%_
                                                  (lambda (_%hd205165205213%_
                                                           _%rule205171205216%_
                                                           _%proc205172205218%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205165205213%_))
                                                        (let ((_%e205168205221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205165205213%_))))
                  (let ((_%lp-hd205169205225%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205168205221%_)))
                        (_%lp-tl205170205228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205168205221%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd205169205225%_))
                        (let ((_%e205175205231%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd205169205225%_))))
                          (let ((_%hd205176205235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205175205231%_)))
                                (_%tl205177205238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205175205231%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205177205238%_))
                                (let ((_%e205178205241%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205177205238%_))))
                                  (let ((_%hd205179205245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205178205241%_)))
                                        (_%tl205180205248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205178205241%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205180205248%_))
                                        (_%loop205167205209%_
                                         _%lp-tl205170205228%_
                                         (cons _%hd205179205245%_
                                               _%rule205171205216%_)
                                         (cons _%hd205176205235%_
                                               _%proc205172205218%_))
                                        (_%g205157205186%_
                                         _%g205158205190%_))))
                                (_%g205157205186%_ _%g205158205190%_))))
                        (_%g205157205186%_ _%g205158205190%_))))
                (let ((_%rule205173205251%_ (reverse _%rule205171205216%_))
                      (_%proc205174205254%_ (reverse _%proc205172205218%_)))
                  ((lambda (_%L205257%_ _%L205259%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L205257%_
                                _%L205259%_))
                             (let ((__tmp209496
                                    (lambda (_%g205274205278%_
                                             _%g205275205281%_
                                             _%g205276205283%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g205275205281%_
                                                        (cons _%g205274205278%_
                                                              '())))
                                            _%g205276205283%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209496
                                '()
                                _%L205257%_
                                _%L205259%_)))))
                   _%rule205173205251%_
                   _%proc205174205254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205167205209%_
                                           _%target205164205203%_
                                           '()
                                           '()))
                                        (_%g205157205186%_
                                         _%g205158205190%_)))))
                              (_%g205157205186%_ _%g205158205190%_))))
                      (_%g205157205186%_ _%g205158205190%_)))))
          (_%g205156205286%_ _%$stx205153%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx205291%_)
        (let* ((_%g205295205313%_
                (lambda (_%g205296205309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205296205309%_))))
               (_%g205294205368%_
                (lambda (_%g205296205317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205296205317%_))
                      (let ((_%e205299205320%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205296205317%_))))
                        (let ((_%hd205300205324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205299205320%_)))
                              (_%tl205301205327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205299205320%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205301205327%_))
                              (let ((_%e205302205330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205301205327%_))))
                                (let ((_%hd205303205334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205302205330%_)))
                                      (_%tl205304205337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205302205330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205304205337%_))
                                      (let ((_%e205305205340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205304205337%_))))
                                        (let ((_%hd205306205344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205305205340%_)))
                                              (_%tl205307205347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205305205340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205307205347%_))
                                              ((lambda (_%L205350%_
                                                        _%L205352%_)
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
                                                   (cons _%L205352%_ '()))
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
                 (cons _%L205350%_ '())))
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
                                   (cons _%L205352%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205306205344%_
                                               _%hd205303205334%_)
                                              (_%g205295205313%_
                                               _%g205296205317%_))))
                                      (_%g205295205313%_ _%g205296205317%_))))
                              (_%g205295205313%_ _%g205296205317%_))))
                      (_%g205295205313%_ _%g205296205317%_)))))
          (_%g205294205368%_ _%$stx205291%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx205372%_)
        (let* ((_%__stx208976208977%_ _%$stx205372%_)
               (_%g205377205402%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208976208977%_)))))
          (let ((_%__kont208979208980%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208981208982%_
                 (lambda (_%L205449%_ _%L205451%_ _%L205452%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L205452%_ (cons _%L205451%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L205449%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208976208977%_))
                (let ((_%e205379205478%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208976208977%_))))
                  (let ((_%tl205381205485%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205379205478%_)))
                        (_%hd205380205482%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205379205478%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205381205485%_))
                        (_%__kont208979208980%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205381205485%_))
                            (let ((_%e205388205419%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205381205485%_))))
                              (let ((_%tl205390205426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205388205419%_)))
                                    (_%hd205389205423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205388205419%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd205389205423%_))
                                    (let ((_%e205391205429%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd205389205423%_))))
                                      (let ((_%tl205393205436%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205391205429%_)))
                                            (_%hd205392205433%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205391205429%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205393205436%_))
                                            (let ((_%e205394205439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205393205436%_))))
                                              (let ((_%tl205396205446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205394205439%_)))
                                                    (_%hd205395205443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205394205439%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl205396205446%_))
                                                    (_%__kont208981208982%_
                                                     _%tl205390205426%_
                                                     _%hd205395205443%_
                                                     _%hd205392205433%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g205377205402%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g205377205402%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g205377205402%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g205377205402%_))))))
                (let () (declare (not safe)) (_%g205377205402%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx205496%_)
        (let* ((_%__stx209020209021%_ _%$stx205496%_)
               (_%g205501205532%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209020209021%_)))))
          (let ((_%__kont209023209024%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209025209026%_
                 (lambda (_%L205599%_ _%L205601%_ _%L205602%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L205602%_
                                           (let ((__tmp209497
                                                  (lambda (_%g205622205625%_
                                                           _%g205623205628%_)
                                                    (cons _%g205622205625%_
                                                          _%g205623205628%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp209497
                                              '()
                                              _%L205601%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L205599%_)
                                     '()))))))
            (let ((_%__match209063209064%_
                   (lambda (_%e205509205539%_
                            _%hd205510205543%_
                            _%tl205511205546%_
                            _%e205512205549%_
                            _%hd205513205553%_
                            _%tl205514205556%_
                            _%e205515205559%_
                            _%hd205516205563%_
                            _%tl205517205566%_
                            _%__splice209027209028%_
                            _%target205518205569%_
                            _%tl205520205572%_)
                     (letrec ((_%loop205521205575%_
                               (lambda (_%hd205519205579%_ _%sig205525205582%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205519205579%_))
                                     (let ((_%e205522205585%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd205519205579%_))))
                                       (let ((_%lp-tl205524205592%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205522205585%_)))
                                             (_%lp-hd205523205589%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205522205585%_))))
                                         (_%loop205521205575%_
                                          _%lp-tl205524205592%_
                                          (cons _%lp-hd205523205589%_
                                                _%sig205525205582%_))))
                                     (let ((_%sig205526205595%_
                                            (reverse _%sig205525205582%_)))
                                       (_%__kont209025209026%_
                                        _%tl205514205556%_
                                        _%sig205526205595%_
                                        _%hd205516205563%_))))))
                       (_%loop205521205575%_ _%target205518205569%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209020209021%_))
                  (let ((_%e205503205638%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209020209021%_))))
                    (let ((_%tl205505205645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205503205638%_)))
                          (_%hd205504205642%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205503205638%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205505205645%_))
                          (_%__kont209023209024%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205505205645%_))
                              (let ((_%e205512205549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205505205645%_))))
                                (let ((_%tl205514205556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205512205549%_)))
                                      (_%hd205513205553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205512205549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205513205553%_))
                                      (let ((_%e205515205559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205513205553%_))))
                                        (let ((_%tl205517205566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205515205559%_)))
                                              (_%hd205516205563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205515205559%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205517205566%_))
                                              (let ((_%__splice209027209028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205517205566%_
                                                        '0))))
                                                (let ((_%tl205520205572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209027209028%_
                                                          '1)))
                                                      (_%target205518205569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209027209028%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205520205572%_))
                                                      (_%__match209063209064%_
                                                       _%e205503205638%_
                                                       _%hd205504205642%_
                                                       _%tl205505205645%_
                                                       _%e205512205549%_
                                                       _%hd205513205553%_
                                                       _%tl205514205556%_
                                                       _%e205515205559%_
                                                       _%hd205516205563%_
                                                       _%tl205517205566%_
                                                       _%__splice209027209028%_
                                                       _%target205518205569%_
                                                       _%tl205520205572%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205501205532%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205501205532%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205501205532%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205501205532%_))))))
                  (let () (declare (not safe)) (_%g205501205532%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx205657%_)
        (let* ((_%__stx209066209067%_ _%$stx205657%_)
               (_%g205662205709%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209066209067%_)))))
          (let ((_%__kont209069209070%_
                 (lambda (_%L205871%_ _%L205873%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L205873%_
                               (let ((__tmp209498
                                      (lambda (_%g205893205896%_
                                               _%g205894205899%_)
                                        (cons _%g205893205896%_
                                              _%g205894205899%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209498 '() _%L205871%_))))))
                (_%__kont209073209074%_
                 (lambda (_%L205766%_ _%L205768%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L205768%_
                               (let ((__tmp209499
                                      (lambda (_%g205785205788%_
                                               _%g205786205791%_)
                                        (cons _%g205785205788%_
                                              _%g205786205791%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209499 '() _%L205766%_)))))))
            (let* ((_%__match209133209134%_
                    (lambda (_%e205689205716%_
                             _%hd205690205720%_
                             _%tl205691205723%_
                             _%e205692205726%_
                             _%hd205693205730%_
                             _%tl205694205733%_
                             _%__splice209075209076%_
                             _%target205695205736%_
                             _%tl205697205739%_)
                      (letrec ((_%loop205698205742%_
                                (lambda (_%hd205696205746%_
                                         _%sig205702205749%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205696205746%_))
                                      (let ((_%e205699205752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205696205746%_))))
                                        (let ((_%lp-tl205701205759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205699205752%_)))
                                              (_%lp-hd205700205756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205699205752%_))))
                                          (_%loop205698205742%_
                                           _%lp-tl205701205759%_
                                           (cons _%lp-hd205700205756%_
                                                 _%sig205702205749%_))))
                                      (let ((_%sig205703205762%_
                                             (reverse _%sig205702205749%_)))
                                        (_%__kont209073209074%_
                                         _%sig205703205762%_
                                         _%hd205693205730%_))))))
                        (_%loop205698205742%_ _%target205695205736%_ '()))))
                   (_%__match209125209126%_
                    (lambda (_%e205689205716%_
                             _%hd205690205720%_
                             _%tl205691205723%_
                             _%e205692205726%_
                             _%hd205693205730%_
                             _%tl205694205733%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl205694205733%_))
                          (let ((_%__splice209075209076%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl205694205733%_
                                    '0))))
                            (let ((_%tl205697205739%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209075209076%_
                                      '1)))
                                  (_%target205695205736%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209075209076%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205697205739%_))
                                  (_%__match209133209134%_
                                   _%e205689205716%_
                                   _%hd205690205720%_
                                   _%tl205691205723%_
                                   _%e205692205726%_
                                   _%hd205693205730%_
                                   _%tl205694205733%_
                                   _%__splice209075209076%_
                                   _%target205695205736%_
                                   _%tl205697205739%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205662205709%_)))))
                          (let () (declare (not safe)) (_%g205662205709%_)))))
                   (_%__match209113209114%_
                    (lambda (_%e205666205801%_
                             _%hd205667205805%_
                             _%tl205668205808%_
                             _%e205669205811%_
                             _%hd205670205815%_
                             _%tl205671205818%_
                             _%e205672205821%_
                             _%hd205673205825%_
                             _%tl205674205828%_
                             _%e205675205831%_
                             _%hd205676205835%_
                             _%tl205677205838%_
                             _%__splice209071209072%_
                             _%target205678205841%_
                             _%tl205680205844%_)
                      (letrec ((_%loop205681205847%_
                                (lambda (_%hd205679205851%_
                                         _%sig205685205854%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205679205851%_))
                                      (let ((_%e205682205857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205679205851%_))))
                                        (let ((_%lp-tl205684205864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205682205857%_)))
                                              (_%lp-hd205683205861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205682205857%_))))
                                          (_%loop205681205847%_
                                           _%lp-tl205684205864%_
                                           (cons _%lp-hd205683205861%_
                                                 _%sig205685205854%_))))
                                      (let ((_%sig205686205867%_
                                             (reverse _%sig205685205854%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl205674205828%_))
                                            (_%__kont209069209070%_
                                             _%sig205686205867%_
                                             _%hd205670205815%_)
                                            (_%__match209125209126%_
                                             _%e205666205801%_
                                             _%hd205667205805%_
                                             _%tl205668205808%_
                                             _%e205669205811%_
                                             _%hd205670205815%_
                                             _%tl205671205818%_)))))))
                        (_%loop205681205847%_ _%target205678205841%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209066209067%_))
                  (let ((_%e205666205801%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209066209067%_))))
                    (let ((_%tl205668205808%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205666205801%_)))
                          (_%hd205667205805%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205666205801%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205668205808%_))
                          (let ((_%e205669205811%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205668205808%_))))
                            (let ((_%tl205671205818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205669205811%_)))
                                  (_%hd205670205815%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205669205811%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205671205818%_))
                                  (let ((_%e205672205821%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205671205818%_))))
                                    (let ((_%tl205674205828%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205672205821%_)))
                                          (_%hd205673205825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205672205821%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd205673205825%_))
                                          (let ((_%e205675205831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd205673205825%_))))
                                            (let ((_%tl205677205838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205675205831%_)))
                                                  (_%hd205676205835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205675205831%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd205676205835%_))
                                                  (if (let ((__tmp209500
                                                             |gxc[1]#_g209501_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp209500
                                                         _%hd205676205835%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl205677205838%_))
                                                          (let ((_%__splice209071209072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205677205838%_ '0))))
                    (let ((_%tl205680205844%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209071209072%_ '1)))
                          (_%target205678205841%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209071209072%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205680205844%_))
                          (_%__match209113209114%_
                           _%e205666205801%_
                           _%hd205667205805%_
                           _%tl205668205808%_
                           _%e205669205811%_
                           _%hd205670205815%_
                           _%tl205671205818%_
                           _%e205672205821%_
                           _%hd205673205825%_
                           _%tl205674205828%_
                           _%e205675205831%_
                           _%hd205676205835%_
                           _%tl205677205838%_
                           _%__splice209071209072%_
                           _%target205678205841%_
                           _%tl205680205844%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205671205818%_))
                              (let ((_%__splice209075209076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205671205818%_
                                        '0))))
                                (let ((_%tl205697205739%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209075209076%_
                                          '1)))
                                      (_%target205695205736%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209075209076%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205697205739%_))
                                      (_%__match209133209134%_
                                       _%e205666205801%_
                                       _%hd205667205805%_
                                       _%tl205668205808%_
                                       _%e205669205811%_
                                       _%hd205670205815%_
                                       _%tl205671205818%_
                                       _%__splice209075209076%_
                                       _%target205695205736%_
                                       _%tl205697205739%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g205662205709%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205662205709%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl205671205818%_))
                      (let ((_%__splice209075209076%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl205671205818%_
                                '0))))
                        (let ((_%tl205697205739%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209075209076%_ '1)))
                              (_%target205695205736%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209075209076%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205697205739%_))
                              (_%__match209133209134%_
                               _%e205666205801%_
                               _%hd205667205805%_
                               _%tl205668205808%_
                               _%e205669205811%_
                               _%hd205670205815%_
                               _%tl205671205818%_
                               _%__splice209075209076%_
                               _%target205695205736%_
                               _%tl205697205739%_)
                              (let ()
                                (declare (not safe))
                                (_%g205662205709%_)))))
                      (let () (declare (not safe)) (_%g205662205709%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl205671205818%_))
                  (let ((_%__splice209075209076%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205671205818%_ '0))))
                    (let ((_%tl205697205739%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209075209076%_ '1)))
                          (_%target205695205736%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209075209076%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205697205739%_))
                          (_%__match209133209134%_
                           _%e205666205801%_
                           _%hd205667205805%_
                           _%tl205668205808%_
                           _%e205669205811%_
                           _%hd205670205815%_
                           _%tl205671205818%_
                           _%__splice209075209076%_
                           _%target205695205736%_
                           _%tl205697205739%_)
                          (let () (declare (not safe)) (_%g205662205709%_)))))
                  (let () (declare (not safe)) (_%g205662205709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205671205818%_))
                                                      (let ((_%__splice209075209076%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl205671205818%_ '0))))
                (let ((_%tl205697205739%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209075209076%_ '1)))
                      (_%target205695205736%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209075209076%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205697205739%_))
                      (_%__match209133209134%_
                       _%e205666205801%_
                       _%hd205667205805%_
                       _%tl205668205808%_
                       _%e205669205811%_
                       _%hd205670205815%_
                       _%tl205671205818%_
                       _%__splice209075209076%_
                       _%target205695205736%_
                       _%tl205697205739%_)
                      (let () (declare (not safe)) (_%g205662205709%_)))))
              (let () (declare (not safe)) (_%g205662205709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205671205818%_))
                                              (let ((_%__splice209075209076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205671205818%_
                                                        '0))))
                                                (let ((_%tl205697205739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209075209076%_
                                                          '1)))
                                                      (_%target205695205736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209075209076%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205697205739%_))
                                                      (_%__match209133209134%_
                                                       _%e205666205801%_
                                                       _%hd205667205805%_
                                                       _%tl205668205808%_
                                                       _%e205669205811%_
                                                       _%hd205670205815%_
                                                       _%tl205671205818%_
                                                       _%__splice209075209076%_
                                                       _%target205695205736%_
                                                       _%tl205697205739%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205662205709%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205662205709%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205671205818%_))
                                      (let ((_%__splice209075209076%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205671205818%_
                                                '0))))
                                        (let ((_%tl205697205739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209075209076%_
                                                  '1)))
                                              (_%target205695205736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209075209076%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205697205739%_))
                                              (_%__match209133209134%_
                                               _%e205666205801%_
                                               _%hd205667205805%_
                                               _%tl205668205808%_
                                               _%e205669205811%_
                                               _%hd205670205815%_
                                               _%tl205671205818%_
                                               _%__splice209075209076%_
                                               _%target205695205736%_
                                               _%tl205697205739%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205662205709%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205662205709%_))))))
                          (let () (declare (not safe)) (_%g205662205709%_)))))
                  (let () (declare (not safe)) (_%g205662205709%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx207056%_ _%id207058%_)
        (let ((_%proc207062%_
               (let ((__tmp209502
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207058%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209502))))
          (if (procedure? _%proc207062%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx207056%_
                 _%id207058%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx207047%_ _%id207049%_)
        (let ((_%klass207053%_
               (let ((__tmp209503
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207049%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209503))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass207053%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx207047%_
                 _%id207049%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx206297%_ _%proc206299%_ _%sig206300%_)
        (letrec ((_%signature-arity206302%_
                  (lambda (_%args206979%_)
                    (let _%loop206982%_ ((_%rest206985%_ _%args206979%_)
                                         (_%count206987%_ '0))
                      (let* ((_%rest206988206999%_ _%rest206985%_)
                             (_%E206992207005%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest206988206999%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K206995207036%_
                               (lambda (_%rest207033%_)
                                 (_%loop206982%_
                                  _%rest207033%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count206987%_ '1)))))
                              (_%K206994207025%_ (lambda () _%count206987%_))
                              (_%K206993207013%_
                               (lambda () (cons _%count206987%_ '()))))
                          (let ((_%try-match206990207029%_
                                 (lambda ()
                                   (if (null? _%rest206988206999%_)
                                       (_%K206994207025%_)
                                       (_%K206993207013%_)))))
                            (if (pair? _%rest206988206999%_)
                                (let* ((_%tl206997207040%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest206988206999%_)))
                                       (_%rest207044%_ _%tl206997207040%_))
                                  (_%K206995207036%_ _%rest207044%_))
                                (_%try-match206990207029%_))))))))
                 (_%make-signature206304%_
                  (lambda (_%args206861%_
                           _%return206863%_
                           _%effect206864%_
                           _%unchecked206865%_)
                    (let ((__tmp209504
                           (lambda (_%g206866206868%_)
                             (|gxc[1]#verify-class!|
                              _%ctx206297%_
                              _%g206866206868%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp209504 _%args206861%_))
                    (|gxc[1]#verify-class!| _%ctx206297%_ _%return206863%_)
                    (if _%unchecked206865%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx206297%_
                         _%unchecked206865%_)
                        '#!void)
                    (let ((_%arity206872%_
                           (_%signature-arity206302%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args206861%_)))))
                      (if _%effect206864%_
                          (let ((_%effect206875%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect206864%_))))
                            (if (and (list? _%effect206875%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect206875%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx206297%_
                                   _%proc206299%_
                                   _%effect206875%_))))
                          '#!void)
                      (cons _%arity206872%_
                            (cons (let* ((_%g206878206901%_
                                          (lambda (_%g206879206897%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g206879206897%_))))
                                         (_%g206877206975%_
                                          (lambda (_%g206879206905%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g206879206905%_))
                                                (let ((_%e206884206908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g206879206905%_))))
                                                  (let ((_%hd206885206912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206884206908%_)))
                                                        (_%tl206886206915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206884206908%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206886206915%_))
                                                        (let ((_%e206887206918%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206886206915%_))))
                  (let ((_%hd206888206922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206887206918%_)))
                        (_%tl206889206925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206887206918%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206889206925%_))
                        (let ((_%e206890206928%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206889206925%_))))
                          (let ((_%hd206891206932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206890206928%_)))
                                (_%tl206892206935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206890206928%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206892206935%_))
                                (let ((_%e206893206938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206892206935%_))))
                                  (let ((_%hd206894206942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206893206938%_)))
                                        (_%tl206895206945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206893206938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206895206945%_))
                                        ((lambda (_%L206948%_
                                                  _%L206950%_
                                                  _%L206951%_
                                                  _%L206952%_)
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
                           (cons _%L206952%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L206951%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206950%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L206948%_ '()))
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
                                         _%hd206894206942%_
                                         _%hd206891206932%_
                                         _%hd206888206922%_
                                         _%hd206885206912%_)
                                        (_%g206878206901%_
                                         _%g206879206905%_))))
                                (_%g206878206901%_ _%g206879206905%_))))
                        (_%g206878206901%_ _%g206879206905%_))))
                (_%g206878206901%_ _%g206879206905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206878206901%_
                                                 _%g206879206905%_)))))
                                    (_%g206877206975%_
                                     (list _%args206861%_
                                           _%return206863%_
                                           _%effect206864%_
                                           _%unchecked206865%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx206297%_ _%proc206299%_)
          (let* ((_%__stx209144209145%_ _%sig206300%_)
                 (_%g206311206414%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209144209145%_)))))
            (let ((_%__kont209147209148%_
                   (lambda (_%L206842%_ _%L206844%_)
                     (_%make-signature206304%_
                      _%L206844%_
                      _%L206842%_
                      '#f
                      '#f)))
                  (_%__kont209149209150%_
                   (lambda (_%L206793%_ _%L206795%_ _%L206796%_)
                     (_%make-signature206304%_
                      _%L206796%_
                      _%L206795%_
                      _%L206793%_
                      '#f)))
                  (_%__kont209151209152%_
                   (lambda (_%L206717%_ _%L206719%_ _%L206720%_)
                     (_%make-signature206304%_
                      _%L206720%_
                      _%L206719%_
                      _%L206717%_
                      (let ((__tmp209505
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206299%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209505)))))
                  (_%__kont209153209154%_
                   (lambda (_%L206623%_ _%L206625%_ _%L206626%_ _%L206627%_)
                     (_%make-signature206304%_
                      _%L206627%_
                      _%L206626%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206623%_)))))
                  (_%__kont209155209156%_
                   (lambda (_%L206530%_ _%L206532%_)
                     (_%make-signature206304%_
                      _%L206532%_
                      _%L206530%_
                      '#f
                      (let ((__tmp209506
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc206299%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209506)))))
                  (_%__kont209157209158%_
                   (lambda (_%L206465%_ _%L206467%_ _%L206468%_)
                     (_%make-signature206304%_
                      _%L206468%_
                      _%L206467%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206465%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209144209145%_))
                  (let ((_%e206315206822%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209144209145%_))))
                    (let ((_%tl206317206829%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206315206822%_)))
                          (_%hd206316206826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206315206822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206317206829%_))
                          (let ((_%e206318206832%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206317206829%_))))
                            (let ((_%tl206320206839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206318206832%_)))
                                  (_%hd206319206836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206318206832%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206320206839%_))
                                  (_%__kont209147209148%_
                                   _%hd206319206836%_
                                   _%hd206316206826%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206320206839%_))
                                      (let ((_%e206330206769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206320206839%_))))
                                        (let ((_%tl206332206776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206330206769%_)))
                                              (_%hd206331206773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206330206769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd206331206773%_))
                                              (let ((_%e206333206779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd206331206773%_))))
                                                (if (equal? _%e206333206779%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206332206776%_))
                                                        (let ((_%e206334206783%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206332206776%_))))
                  (let ((_%tl206336206790%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206334206783%_)))
                        (_%hd206335206787%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206334206783%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206336206790%_))
                        (_%__kont209149209150%_
                         _%hd206335206787%_
                         _%hd206319206836%_
                         _%hd206316206826%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206336206790%_))
                            (let ((_%e206353206703%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206336206790%_))))
                              (let ((_%tl206355206710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206353206703%_)))
                                    (_%hd206354206707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206353206703%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd206354206707%_))
                                    (let ((_%e206356206713%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd206354206707%_))))
                                      (if (equal? _%e206356206713%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206355206710%_))
                                              (_%__kont209151209152%_
                                               _%hd206335206787%_
                                               _%hd206319206836%_
                                               _%hd206316206826%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206355206710%_))
                                                  (let ((_%e206378206613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206355206710%_))))
                                                    (let ((_%tl206380206620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206378206613%_)))
                                                          (_%hd206379206617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206378206613%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206380206620%_))
                                                          (_%__kont209153209154%_
                                                           _%hd206379206617%_
                                                           _%hd206335206787%_
                                                           _%hd206319206836%_
                                                           _%hd206316206826%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206311206414%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206311206414%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206311206414%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206311206414%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206311206414%_))))))
                (let () (declare (not safe)) (_%g206311206414%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e206333206779%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206332206776%_))
                                                            (_%__kont209155209156%_
                                                             _%hd206319206836%_
                                                             _%hd206316206826%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl206332206776%_))
                        (let ((_%e206406206455%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206332206776%_))))
                          (let ((_%tl206408206462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206406206455%_)))
                                (_%hd206407206459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206406206455%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl206408206462%_))
                                (_%__kont209157209158%_
                                 _%hd206407206459%_
                                 _%hd206319206836%_
                                 _%hd206316206826%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g206311206414%_)))))
                        (let () (declare (not safe)) (_%g206311206414%_))))
                (let () (declare (not safe)) (_%g206311206414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206311206414%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206311206414%_))))))
                          (let () (declare (not safe)) (_%g206311206414%_)))))
                  (let () (declare (not safe)) (_%g206311206414%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig205908%_)
        (let* ((_%g205911205991%_
                (lambda (_%g205912205987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205912205987%_))))
               (_%g205910206293%_
                (lambda (_%g205912205995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205912205995%_))
                      (let ((_%e205918205998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205912205995%_))))
                        (let ((_%hd205919206002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205918205998%_)))
                              (_%tl205920206005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205918205998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205920206005%_))
                              (let ((_%e205921206008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205920206005%_))))
                                (let ((_%hd205922206012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205921206008%_)))
                                      (_%tl205923206015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205921206008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd205922206012%_))
                                      (let ((_%e205924206018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205922206012%_))))
                                        (if (equal? _%e205924206018%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205923206015%_))
                                                (let ((_%e205925206022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205923206015%_))))
                                                  (let ((_%hd205926206026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205925206022%_)))
                                                        (_%tl205927206029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205925206022%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205926206026%_))
                                                        (let ((_%e205928206032%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205926206026%_))))
                  (let ((_%hd205929206036%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205928206032%_)))
                        (_%tl205930206039%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205928206032%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd205929206036%_))
                        (if (let ((__tmp209507 |gxc[1]#_g209508_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp209507
                               _%hd205929206036%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205930206039%_))
                                (let ((_%e205931206042%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205930206039%_))))
                                  (let ((_%hd205932206046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205931206042%_)))
                                        (_%tl205933206049%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205931206042%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205933206049%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205927206029%_))
                                            (let ((_%e205934206052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205927206029%_))))
                                              (let ((_%hd205935206056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205934206052%_)))
                                                    (_%tl205936206059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205934206052%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205935206056%_))
                                                    (let ((_%e205937206062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205935206056%_))))
                                                      (if (equal? _%e205937206062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205936206059%_))
                      (let ((_%e205938206066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205936206059%_))))
                        (let ((_%hd205939206070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205938206066%_)))
                              (_%tl205940206073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205938206066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd205939206070%_))
                              (let ((_%e205941206076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd205939206070%_))))
                                (let ((_%hd205942206080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205941206076%_)))
                                      (_%tl205943206083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205941206076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd205942206080%_))
                                      (if (let ((__tmp209509
                                                 |gxc[1]#_g209510_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp209509
                                             _%hd205942206080%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205943206083%_))
                                              (let ((_%e205944206086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205943206083%_))))
                                                (let ((_%hd205945206090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205944206086%_)))
                                                      (_%tl205946206093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205944206086%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205946206093%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205940206073%_))
                                                          (let ((_%e205947206096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205940206073%_))))
                    (let ((_%hd205948206100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205947206096%_)))
                          (_%tl205949206103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205947206096%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205948206100%_))
                          (let ((_%e205950206106%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205948206100%_))))
                            (if (equal? _%e205950206106%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl205949206103%_))
                                    (let ((_%e205951206110%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl205949206103%_))))
                                      (let ((_%hd205952206114%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205951206110%_)))
                                            (_%tl205953206117%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205951206110%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd205952206114%_))
                                            (let ((_%e205954206120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd205952206114%_))))
                                              (let ((_%hd205955206124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205954206120%_)))
                                                    (_%tl205956206127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205954206120%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd205955206124%_))
                                                    (if (let ((__tmp209511
                                                               |gxc[1]#_g209512_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp209511
                                                           _%hd205955206124%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205956206127%_))
                                                            (let ((_%e205957206130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl205956206127%_))))
                      (let ((_%hd205958206134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205957206130%_)))
                            (_%tl205959206137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205957206130%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl205959206137%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205953206117%_))
                                (let ((_%e205960206140%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205953206117%_))))
                                  (let ((_%hd205961206144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205960206140%_)))
                                        (_%tl205962206147%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205960206140%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd205961206144%_))
                                        (let ((_%e205963206150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd205961206144%_))))
                                          (if (equal? _%e205963206150%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205962206147%_))
                                                  (let ((_%e205964206154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205962206147%_))))
                                                    (let ((_%hd205965206158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205964206154%_)))
                                                          (_%tl205966206161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205964206154%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205965206158%_))
                                                          (let ((_%e205967206164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd205965206158%_))))
                    (let ((_%hd205968206168%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205967206164%_)))
                          (_%tl205969206171%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205967206164%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd205968206168%_))
                          (if (let ((__tmp209513 |gxc[1]#_g209514_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp209513
                                 _%hd205968206168%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205969206171%_))
                                  (let ((_%e205970206174%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205969206171%_))))
                                    (let ((_%hd205971206178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205970206174%_)))
                                          (_%tl205972206181%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205970206174%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205972206181%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205966206161%_))
                                              (let ((_%e205973206184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205966206161%_))))
                                                (let ((_%hd205974206188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205973206184%_)))
                                                      (_%tl205975206191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205973206184%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd205974206188%_))
                                                      (let ((_%e205976206194%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd205974206188%_))))
                (if (equal? _%e205976206194%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205975206191%_))
                        (let ((_%e205977206198%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205975206191%_))))
                          (let ((_%hd205978206202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205977206198%_)))
                                (_%tl205979206205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205977206198%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205978206202%_))
                                (let ((_%e205980206208%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd205978206202%_))))
                                  (let ((_%hd205981206212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205980206208%_)))
                                        (_%tl205982206215%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205980206208%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd205981206212%_))
                                        (if (let ((__tmp209515
                                                   |gxc[1]#_g209516_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp209515
                                               _%hd205981206212%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205982206215%_))
                                                (let ((_%e205983206218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205982206215%_))))
                                                  (let ((_%hd205984206222%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205983206218%_)))
                                                        (_%tl205985206225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205983206218%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205985206225%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205979206205%_))
                                                            ((lambda (_%L206228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L206230%_
                              _%L206231%_
                              _%L206232%_
                              _%L206233%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L206230%_))
                           (cons _%L206230%_
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
                       (cons _%L206232%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L206228%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd205984206222%_
                     _%hd205971206178%_
                     _%hd205958206134%_
                     _%hd205945206090%_
                     _%hd205932206046%_)
                    (_%g205911205991%_ _%g205912205995%_))
                (_%g205911205991%_ _%g205912205995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205911205991%_
                                                 _%g205912205995%_))
                                            (_%g205911205991%_
                                             _%g205912205995%_))
                                        (_%g205911205991%_
                                         _%g205912205995%_))))
                                (_%g205911205991%_ _%g205912205995%_))))
                        (_%g205911205991%_ _%g205912205995%_))
                    (_%g205911205991%_ _%g205912205995%_)))
              (_%g205911205991%_ _%g205912205995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205911205991%_
                                               _%g205912205995%_))
                                          (_%g205911205991%_
                                           _%g205912205995%_))))
                                  (_%g205911205991%_ _%g205912205995%_))
                              (_%g205911205991%_ _%g205912205995%_))
                          (_%g205911205991%_ _%g205912205995%_))))
                  (_%g205911205991%_ _%g205912205995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g205911205991%_
                                                   _%g205912205995%_))
                                              (_%g205911205991%_
                                               _%g205912205995%_)))
                                        (_%g205911205991%_
                                         _%g205912205995%_))))
                                (_%g205911205991%_ _%g205912205995%_))
                            (_%g205911205991%_ _%g205912205995%_))))
                    (_%g205911205991%_ _%g205912205995%_))
                (_%g205911205991%_ _%g205912205995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205911205991%_
                                                     _%g205912205995%_))))
                                            (_%g205911205991%_
                                             _%g205912205995%_))))
                                    (_%g205911205991%_ _%g205912205995%_))
                                (_%g205911205991%_ _%g205912205995%_)))
                          (_%g205911205991%_ _%g205912205995%_))))
                  (_%g205911205991%_ _%g205912205995%_))
              (_%g205911205991%_ _%g205912205995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205911205991%_
                                               _%g205912205995%_))
                                          (_%g205911205991%_
                                           _%g205912205995%_))
                                      (_%g205911205991%_ _%g205912205995%_))))
                              (_%g205911205991%_ _%g205912205995%_))))
                      (_%g205911205991%_ _%g205912205995%_))
                  (_%g205911205991%_ _%g205912205995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205911205991%_
                                                     _%g205912205995%_))))
                                            (_%g205911205991%_
                                             _%g205912205995%_))
                                        (_%g205911205991%_
                                         _%g205912205995%_))))
                                (_%g205911205991%_ _%g205912205995%_))
                            (_%g205911205991%_ _%g205912205995%_))
                        (_%g205911205991%_ _%g205912205995%_))))
                (_%g205911205991%_ _%g205912205995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205911205991%_
                                                 _%g205912205995%_))
                                            (_%g205911205991%_
                                             _%g205912205995%_)))
                                      (_%g205911205991%_ _%g205912205995%_))))
                              (_%g205911205991%_ _%g205912205995%_))))
                      (_%g205911205991%_ _%g205912205995%_)))))
          (_%g205910206293%_ _%sig205908%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx207065%_)
        (let* ((_%g207068207086%_
                (lambda (_%g207069207082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207069207082%_))))
               (_%g207067207141%_
                (lambda (_%g207069207090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207069207090%_))
                      (let ((_%e207072207093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207069207090%_))))
                        (let ((_%hd207073207097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207072207093%_)))
                              (_%tl207074207100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207072207093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207074207100%_))
                              (let ((_%e207075207103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207074207100%_))))
                                (let ((_%hd207076207107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207075207103%_)))
                                      (_%tl207077207110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207075207103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207077207110%_))
                                      (let ((_%e207078207113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207077207110%_))))
                                        (let ((_%hd207079207117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207078207113%_)))
                                              (_%tl207080207120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207078207113%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207080207120%_))
                                              ((lambda (_%L207123%_
                                                        _%L207125%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207125%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207123%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx207065%_
                                                        _%L207125%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx207065%_
                                                        _%L207123%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L207125%_
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
                                                   (cons _%L207123%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207068207086%_
                                                      _%g207069207090%_)))
                                               _%hd207079207117%_
                                               _%hd207076207107%_)
                                              (_%g207068207086%_
                                               _%g207069207090%_))))
                                      (_%g207068207086%_ _%g207069207090%_))))
                              (_%g207068207086%_ _%g207069207090%_))))
                      (_%g207068207086%_ _%g207069207090%_)))))
          (_%g207067207141%_ _%stx207065%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx207145%_)
        (let* ((_%g207148207172%_
                (lambda (_%g207149207168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207149207168%_))))
               (_%g207147207455%_
                (lambda (_%g207149207176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207149207176%_))
                      (let ((_%e207152207179%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207149207176%_))))
                        (let ((_%hd207153207183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207152207179%_)))
                              (_%tl207154207186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207152207179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207154207186%_))
                              (let ((_%e207155207189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207154207186%_))))
                                (let ((_%hd207156207193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207155207189%_)))
                                      (_%tl207157207196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207155207189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207157207196%_))
                                      (let ((_g209517_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207157207196%_
                                                '0))))
                                        (begin
                                          (let ((_g209518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209517_)
                                                       (##values-length
                                                        _g209517_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209518_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209518_)))
                                          (let ((_%target207158207199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209517_ 0)))
                                                (_%tl207160207202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209517_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207160207202%_))
                                                (letrec ((_%loop207161207205%_
                                                          (lambda (_%hd207159207209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature207165207212%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207159207209%_))
                        (let ((_%e207162207215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207159207209%_))))
                          (let ((_%lp-hd207163207219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207162207215%_)))
                                (_%lp-tl207164207222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207162207215%_))))
                            (_%loop207161207205%_
                             _%lp-tl207164207222%_
                             (cons _%lp-hd207163207219%_
                                   _%signature207165207212%_))))
                        (let ((_%signature207166207225%_
                               (reverse _%signature207165207212%_)))
                          ((lambda (_%L207229%_ _%L207231%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207231%_))
                                 (let* ((_%g207249207264%_
                                         (lambda (_%g207250207260%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207250207260%_))))
                                        (_%g207248207443%_
                                         (lambda (_%g207250207268%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207250207268%_))
                                               (let ((_%e207253207271%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207250207268%_))))
                                                 (let ((_%hd207254207275%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207253207271%_)))
                                                       (_%tl207255207278%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207253207271%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207255207278%_))
                                                       (let ((_%e207256207281%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207255207278%_))))
                 (let ((_%hd207257207285%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207256207281%_)))
                       (_%tl207258207288%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207256207281%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl207258207288%_))
                       ((lambda (_%L207291%_ _%L207293%_)
                          (let* ((_%g207309207317%_
                                  (lambda (_%g207310207313%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g207310207313%_))))
                                 (_%g207308207439%_
                                  (lambda (_%g207310207321%_)
                                    ((lambda (_%L207324%_)
                                       (let* ((_%unchecked207337%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L207291%_))
                                              (_%g207340207348%_
                                               (lambda (_%g207341207344%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g207341207344%_))))
                                              (_%g207339207371%_
                                               (lambda (_%g207341207352%_)
                                                 ((lambda (_%L207355%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L207324%_
                                                                (cons _%L207355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g207341207352%_))))
                                         (_%g207339207371%_
                                          (if _%unchecked207337%_
                                              (let* ((_%g207375207390%_
                                                      (lambda (_%g207376207386%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g207376207386%_))))
                                                     (_%g207374207435%_
                                                      (lambda (_%g207376207394%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g207376207394%_))
                                                            (let ((_%e207379207397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g207376207394%_))))
                      (let ((_%hd207380207401%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207379207397%_)))
                            (_%tl207381207404%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207379207397%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207381207404%_))
                            (let ((_%e207382207407%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207381207404%_))))
                              (let ((_%hd207383207411%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207382207407%_)))
                                    (_%tl207384207414%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207382207407%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl207384207414%_))
                                    ((lambda (_%L207417%_ _%L207419%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L207419%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207293%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L207417%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd207383207411%_
                                     _%hd207380207401%_)
                                    (_%g207375207390%_ _%g207376207394%_))))
                            (_%g207375207390%_ _%g207376207394%_))))
                    (_%g207375207390%_ _%g207376207394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207374207435%_
                                                 _%unchecked207337%_))
                                              '(begin)))))
                                     _%g207310207321%_))))
                            (_%g207308207439%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L207231%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L207293%_ '()))
                   (cons '#f (cons 'signature: (cons _%L207291%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd207257207285%_
                        _%hd207254207275%_)
                       (_%g207249207264%_ _%g207250207268%_))))
               (_%g207249207264%_ _%g207250207268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207249207264%_
                                                _%g207250207268%_)))))
                                   (_%g207248207443%_
                                    (|gxc[1]#parse-signature|
                                     _%stx207145%_
                                     _%L207231%_
                                     (let ((__tmp209519
                                            (lambda (_%g207446207449%_
                                                     _%g207447207452%_)
                                              (cons _%g207446207449%_
                                                    _%g207447207452%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp209519
                                        '()
                                        _%L207229%_)))))
                                 (_%g207148207172%_ _%g207149207176%_)))
                           _%signature207166207225%_
                           _%hd207156207193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207161207205%_
                                                   _%target207158207199%_
                                                   '()))
                                                (_%g207148207172%_
                                                 _%g207149207176%_)))))
                                      (_%g207148207172%_ _%g207149207176%_))))
                              (_%g207148207172%_ _%g207149207176%_))))
                      (_%g207148207172%_ _%g207149207176%_)))))
          (_%g207147207455%_ _%stx207145%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx207460%_)
        (let* ((_%g207463207487%_
                (lambda (_%g207464207483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207464207483%_))))
               (_%g207462208370%_
                (lambda (_%g207464207491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207464207491%_))
                      (let ((_%e207467207494%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207464207491%_))))
                        (let ((_%hd207468207498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207467207494%_)))
                              (_%tl207469207501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207467207494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207469207501%_))
                              (let ((_%e207470207504%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207469207501%_))))
                                (let ((_%hd207471207508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207470207504%_)))
                                      (_%tl207472207511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207470207504%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207472207511%_))
                                      (let ((_g209520_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207472207511%_
                                                '0))))
                                        (begin
                                          (let ((_g209521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209520_)
                                                       (##values-length
                                                        _g209520_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209521_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209521_)))
                                          (let ((_%target207473207514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209520_ 0)))
                                                (_%tl207475207517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209520_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207475207517%_))
                                                (letrec ((_%loop207476207520%_
                                                          (lambda (_%hd207474207524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature207480207527%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207474207524%_))
                        (let ((_%e207477207530%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207474207524%_))))
                          (let ((_%lp-hd207478207534%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207477207530%_)))
                                (_%lp-tl207479207537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207477207530%_))))
                            (_%loop207476207520%_
                             _%lp-tl207479207537%_
                             (cons _%lp-hd207478207534%_
                                   _%case-signature207480207527%_))))
                        (let ((_%case-signature207481207540%_
                               (reverse _%case-signature207480207527%_)))
                          ((lambda (_%L207544%_ _%L207546%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207546%_))
                                 (let* ((_%signatures207577%_
                                         (map (lambda (_%g207563207565%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx207460%_
                                                 _%L207546%_
                                                 _%g207563207565%_))
                                              (let ((__tmp209522
                                                     (lambda (_%g207568207571%_
                                                              _%g207569207574%_)
                                                       (cons _%g207568207571%_
                                                             _%g207569207574%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp209522
                                                 '()
                                                 _%L207544%_))))
                                        (_%g207580207606%_
                                         (lambda (_%g207581207602%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207581207602%_))))
                                        (_%g207579208366%_
                                         (lambda (_%g207581207610%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g207581207610%_))
                                               (let ((_g209523_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g207581207610%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g209524_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g209523_)
                        (##values-length _g209523_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g209524_ 2)))
                 (error "Context expects 2 values" _g209524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target207584207613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g209523_
                                                             0)))
                                                         (_%tl207586207616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g209523_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207586207616%_))
                                                         (letrec ((_%loop207587207619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd207585207623%_
                                    _%sig207591207626%_
                                    _%arity207592207628%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207585207623%_))
                                 (let ((_%e207588207631%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207585207623%_))))
                                   (let ((_%lp-hd207589207635%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207588207631%_)))
                                         (_%lp-tl207590207638%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207588207631%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd207589207635%_))
                                         (let ((_%e207595207641%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd207589207635%_))))
                                           (let ((_%hd207596207645%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e207595207641%_)))
                                                 (_%tl207597207648%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e207595207641%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207597207648%_))
                                                 (let ((_%e207598207651%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207597207648%_))))
                                                   (let ((_%hd207599207655%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207598207651%_)))
                                                         (_%tl207600207658%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207598207651%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207600207658%_))
                                                         (_%loop207587207619%_
                                                          _%lp-tl207590207638%_
                                                          (cons _%hd207599207655%_
                                                                _%sig207591207626%_)
                                                          (cons _%hd207596207645%_
                                                                _%arity207592207628%_))
                                                         (_%g207580207606%_
                                                          _%g207581207610%_))))
                                                 (_%g207580207606%_
                                                  _%g207581207610%_))))
                                         (_%g207580207606%_
                                          _%g207581207610%_))))
                                 (let ((_%sig207593207661%_
                                        (reverse _%sig207591207626%_))
                                       (_%arity207594207664%_
                                        (reverse _%arity207592207628%_)))
                                   ((lambda (_%L207667%_ _%L207669%_)
                                      (let* ((_%g207686207694%_
                                              (lambda (_%g207687207690%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g207687207690%_))))
                                             (_%g207685208351%_
                                              (lambda (_%g207687207698%_)
                                                ((lambda (_%L207701%_)
                                                   (let* ((_%g207714207722%_
                                                           (lambda (_%g207715207718%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g207715207718%_))))
                  (_%g207713207744%_
                   (lambda (_%g207715207726%_)
                     ((lambda (_%L207729%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L207701%_ (cons _%L207729%_ '()))))
                      _%g207715207726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207713207744%_
                                                      (let ((_g209525_
                                                             (let _%loop207748%_ ((_%rest207751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures207577%_)
                                          (_%unchecked-proc207753%_ '#f)
                                          (_%unchecked-clauses207754%_ '()))
                       (let* ((_%rest207755207763%_ _%rest207751%_)
                              (_%else207757207775%_
                               (lambda ()
                                 (values _%unchecked-proc207753%_
                                         (reverse!
                                          _%unchecked-clauses207754%_))))
                              (_%K207759208216%_
                               (lambda (_%rest207779%_ _%hd207781%_)
                                 (let* ((_%g207783207870%_
                                         (lambda (_%g207784207866%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207784207866%_))))
                                        (_%g207782208212%_
                                         (lambda (_%g207784207874%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207784207874%_))
                                               (let ((_%e207791207877%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207784207874%_))))
                                                 (let ((_%hd207792207881%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207791207877%_)))
                                                       (_%tl207793207884%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207791207877%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207793207884%_))
                                                       (let ((_%e207794207887%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207793207884%_))))
                 (let ((_%hd207795207891%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207794207887%_)))
                       (_%tl207796207894%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207794207887%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd207795207891%_))
                       (let ((_%e207797207897%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd207795207891%_))))
                         (let ((_%hd207798207901%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207797207897%_)))
                               (_%tl207799207904%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207797207897%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl207799207904%_))
                               (let ((_%e207800207907%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl207799207904%_))))
                                 (let ((_%hd207801207911%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207800207907%_)))
                                       (_%tl207802207914%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207800207907%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd207801207911%_))
                                       (let ((_%e207803207917%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd207801207911%_))))
                                         (if (equal? _%e207803207917%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207802207914%_))
                                                 (let ((_%e207804207921%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207802207914%_))))
                                                   (let ((_%hd207805207925%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207804207921%_)))
                                                         (_%tl207806207928%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207804207921%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd207805207925%_))
                                                         (let ((_%e207807207931%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd207805207925%_))))
                   (let ((_%hd207808207935%_
                          (let ()
                            (declare (not safe))
                            (##car _%e207807207931%_)))
                         (_%tl207809207938%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e207807207931%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd207808207935%_))
                         (if (let ((__tmp209527 |gxc[1]#_g209528_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp209527
                                _%hd207808207935%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207809207938%_))
                                 (let ((_%e207810207941%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207809207938%_))))
                                   (let ((_%hd207811207945%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207810207941%_)))
                                         (_%tl207812207948%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207810207941%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl207812207948%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl207806207928%_))
                                             (let ((_%e207813207951%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl207806207928%_))))
                                               (let ((_%hd207814207955%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207813207951%_)))
                                                     (_%tl207815207958%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207813207951%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd207814207955%_))
                                                     (let ((_%e207816207961%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd207814207955%_))))
                                                       (if (equal? _%e207816207961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl207815207958%_))
                       (let ((_%e207817207965%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl207815207958%_))))
                         (let ((_%hd207818207969%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207817207965%_)))
                               (_%tl207819207972%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207817207965%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd207818207969%_))
                               (let ((_%e207820207975%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd207818207969%_))))
                                 (let ((_%hd207821207979%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207820207975%_)))
                                       (_%tl207822207982%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207820207975%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd207821207979%_))
                                       (if (let ((__tmp209529
                                                  |gxc[1]#_g209530_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp209529
                                              _%hd207821207979%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207822207982%_))
                                               (let ((_%e207823207985%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207822207982%_))))
                                                 (let ((_%hd207824207989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207823207985%_)))
                                                       (_%tl207825207992%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207823207985%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl207825207992%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl207819207972%_))
                                                           (let ((_%e207826207995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl207819207972%_))))
                     (let ((_%hd207827207999%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207826207995%_)))
                           (_%tl207828208002%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207826207995%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd207827207999%_))
                           (let ((_%e207829208005%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd207827207999%_))))
                             (if (equal? _%e207829208005%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl207828208002%_))
                                     (let ((_%e207830208009%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl207828208002%_))))
                                       (let ((_%hd207831208013%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207830208009%_)))
                                             (_%tl207832208016%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207830208009%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd207831208013%_))
                                             (let ((_%e207833208019%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd207831208013%_))))
                                               (let ((_%hd207834208023%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207833208019%_)))
                                                     (_%tl207835208026%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207833208019%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd207834208023%_))
                                                     (if (let ((__tmp209531
                                                                |gxc[1]#_g209532_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp209531
                                                            _%hd207834208023%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl207835208026%_))
                     (let ((_%e207836208029%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl207835208026%_))))
                       (let ((_%hd207837208033%_
                              (let ()
                                (declare (not safe))
                                (##car _%e207836208029%_)))
                             (_%tl207838208036%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e207836208029%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl207838208036%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207832208016%_))
                                 (let ((_%e207839208039%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207832208016%_))))
                                   (let ((_%hd207840208043%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207839208039%_)))
                                         (_%tl207841208046%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207839208039%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd207840208043%_))
                                         (let ((_%e207842208049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd207840208043%_))))
                                           (if (equal? _%e207842208049%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl207841208046%_))
                                                   (let ((_%e207843208053%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl207841208046%_))))
                                                     (let ((_%hd207844208057%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e207843208053%_)))
                                                           (_%tl207845208060%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e207843208053%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd207844208057%_))
                                                           (let ((_%e207846208063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd207844208057%_))))
                     (let ((_%hd207847208067%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207846208063%_)))
                           (_%tl207848208070%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207846208063%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd207847208067%_))
                           (if (let ((__tmp209533 |gxc[1]#_g209534_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp209533
                                  _%hd207847208067%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl207848208070%_))
                                   (let ((_%e207849208073%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl207848208070%_))))
                                     (let ((_%hd207850208077%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e207849208073%_)))
                                           (_%tl207851208080%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e207849208073%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl207851208080%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207845208060%_))
                                               (let ((_%e207852208083%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207845208060%_))))
                                                 (let ((_%hd207853208087%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207852208083%_)))
                                                       (_%tl207854208090%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207852208083%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd207853208087%_))
                                                       (let ((_%e207855208093%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd207853208087%_))))
                 (if (equal? _%e207855208093%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl207854208090%_))
                         (let ((_%e207856208097%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl207854208090%_))))
                           (let ((_%hd207857208101%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e207856208097%_)))
                                 (_%tl207858208104%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e207856208097%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207857208101%_))
                                 (let ((_%e207859208107%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207857208101%_))))
                                   (let ((_%hd207860208111%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207859208107%_)))
                                         (_%tl207861208114%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207859208107%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207860208111%_))
                                         (if (let ((__tmp209535
                                                    |gxc[1]#_g209536_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp209535
                                                _%hd207860208111%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207861208114%_))
                                                 (let ((_%e207862208117%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207861208114%_))))
                                                   (let ((_%hd207863208121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207862208117%_)))
                                                         (_%tl207864208124%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207862208117%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207864208124%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl207858208104%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl207796207894%_))
                         ((lambda (_%L208127%_
                                   _%L208129%_
                                   _%L208130%_
                                   _%L208131%_
                                   _%L208132%_
                                   _%L208133%_)
                            (let ((_%clause208204%_
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
                                                     (cons _%L208133%_ '()))
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
                                                 (cons _%L208131%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208127%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked208206%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L208129%_))))
                              (_%loop207748%_
                               _%rest207779%_
                               (let ((_%$e208208%_ _%unchecked208206%_))
                                 (if _%$e208208%_
                                     _%$e208208%_
                                     _%unchecked-proc207753%_))
                               (cons _%clause208204%_
                                     _%unchecked-clauses207754%_))))
                          _%hd207863208121%_
                          _%hd207850208077%_
                          _%hd207837208033%_
                          _%hd207824207989%_
                          _%hd207811207945%_
                          _%hd207792207881%_)
                         (_%g207783207870%_ _%g207784207874%_))
                     (_%g207783207870%_ _%g207784207874%_))
                 (_%g207783207870%_ _%g207784207874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207783207870%_
                                                  _%g207784207874%_))
                                             (_%g207783207870%_
                                              _%g207784207874%_))
                                         (_%g207783207870%_
                                          _%g207784207874%_))))
                                 (_%g207783207870%_ _%g207784207874%_))))
                         (_%g207783207870%_ _%g207784207874%_))
                     (_%g207783207870%_ _%g207784207874%_)))
               (_%g207783207870%_ _%g207784207874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207783207870%_
                                                _%g207784207874%_))
                                           (_%g207783207870%_
                                            _%g207784207874%_))))
                                   (_%g207783207870%_ _%g207784207874%_))
                               (_%g207783207870%_ _%g207784207874%_))
                           (_%g207783207870%_ _%g207784207874%_))))
                   (_%g207783207870%_ _%g207784207874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g207783207870%_
                                                    _%g207784207874%_))
                                               (_%g207783207870%_
                                                _%g207784207874%_)))
                                         (_%g207783207870%_
                                          _%g207784207874%_))))
                                 (_%g207783207870%_ _%g207784207874%_))
                             (_%g207783207870%_ _%g207784207874%_))))
                     (_%g207783207870%_ _%g207784207874%_))
                 (_%g207783207870%_ _%g207784207874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207783207870%_
                                                      _%g207784207874%_))))
                                             (_%g207783207870%_
                                              _%g207784207874%_))))
                                     (_%g207783207870%_ _%g207784207874%_))
                                 (_%g207783207870%_ _%g207784207874%_)))
                           (_%g207783207870%_ _%g207784207874%_))))
                   (_%g207783207870%_ _%g207784207874%_))
               (_%g207783207870%_ _%g207784207874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207783207870%_
                                                _%g207784207874%_))
                                           (_%g207783207870%_
                                            _%g207784207874%_))
                                       (_%g207783207870%_ _%g207784207874%_))))
                               (_%g207783207870%_ _%g207784207874%_))))
                       (_%g207783207870%_ _%g207784207874%_))
                   (_%g207783207870%_ _%g207784207874%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207783207870%_
                                                      _%g207784207874%_))))
                                             (_%g207783207870%_
                                              _%g207784207874%_))
                                         (_%g207783207870%_
                                          _%g207784207874%_))))
                                 (_%g207783207870%_ _%g207784207874%_))
                             (_%g207783207870%_ _%g207784207874%_))
                         (_%g207783207870%_ _%g207784207874%_))))
                 (_%g207783207870%_ _%g207784207874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207783207870%_
                                                  _%g207784207874%_))
                                             (_%g207783207870%_
                                              _%g207784207874%_)))
                                       (_%g207783207870%_ _%g207784207874%_))))
                               (_%g207783207870%_ _%g207784207874%_))))
                       (_%g207783207870%_ _%g207784207874%_))))
               (_%g207783207870%_ _%g207784207874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207783207870%_
                                                _%g207784207874%_)))))
                                   (_%g207782208212%_ _%hd207781%_)))))
                         (if (pair? _%rest207755207763%_)
                             (let ((_%hd207760208220%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest207755207763%_)))
                                   (_%tl207761208223%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest207755207763%_))))
                               (let* ((_%hd208226%_ _%hd207760208220%_)
                                      (_%rest208229%_ _%tl207761208223%_))
                                 (_%K207759208216%_
                                  _%rest208229%_
                                  _%hd208226%_)))
                             (_%else207757207775%_))))))
                (begin
                  (let ((_g209526_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209525_)
                               (##values-length _g209525_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209526_ 2)))
                        (error "Context expects 2 values" _g209526_)))
                  (let ((_%unchecked-proc208232%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209525_ 0)))
                        (_%unchecked-clauses208234%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209525_ 1))))
                    (if _%unchecked-proc208232%_
                        (let* ((_%g208236208260%_
                                (lambda (_%g208237208256%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g208237208256%_))))
                               (_%g208235208347%_
                                (lambda (_%g208237208264%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g208237208264%_))
                                      (let ((_%e208240208267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g208237208264%_))))
                                        (let ((_%hd208241208271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208240208267%_)))
                                              (_%tl208242208274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208240208267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208242208274%_))
                                              (let ((_%e208243208277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208242208274%_))))
                                                (let ((_%hd208244208281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208243208277%_)))
                                                      (_%tl208245208284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208243208277%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd208244208281%_))
                                                      (let ((_g209537_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd208244208281%_ '0))))
                (begin
                  (let ((_g209538_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209537_)
                               (##values-length _g209537_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209538_ 2)))
                        (error "Context expects 2 values" _g209538_)))
                  (let ((_%target208246208287%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209537_ 0)))
                        (_%tl208248208290%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g209537_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl208248208290%_))
                        (letrec ((_%loop208249208293%_
                                  (lambda (_%hd208247208297%_
                                           _%clause208253208300%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd208247208297%_))
                                        (let ((_%e208250208303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd208247208297%_))))
                                          (let ((_%lp-hd208251208307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208250208303%_)))
                                                (_%lp-tl208252208310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208250208303%_))))
                                            (_%loop208249208293%_
                                             _%lp-tl208252208310%_
                                             (cons _%lp-hd208251208307%_
                                                   _%clause208253208300%_))))
                                        (let ((_%clause208254208313%_
                                               (reverse _%clause208253208300%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208245208284%_))
                                              ((lambda (_%L208317%_
                                                        _%L208319%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L208319%_
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
                                             (let ((__tmp209539
                                                    (lambda (_%g208338208341%_
                                                             _%g208339208344%_)
                                                      (cons _%g208338208341%_
                                                            _%g208339208344%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp209539
                                                '()
                                                _%L208317%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause208254208313%_
                                               _%hd208241208271%_)
                                              (_%g208236208260%_
                                               _%g208237208264%_)))))))
                          (_%loop208249208293%_ _%target208246208287%_ '()))
                        (_%g208236208260%_ _%g208237208264%_)))))
              (_%g208236208260%_ _%g208237208264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g208236208260%_
                                               _%g208237208264%_))))
                                      (_%g208236208260%_ _%g208237208264%_)))))
                          (_%g208235208347%_
                           (list _%unchecked-proc208232%_
                                 _%unchecked-clauses208234%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g207687207698%_))))
                                        (_%g207685208351%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L207546%_
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
                                          _%L207667%_
                                          _%L207669%_))
                                       (let ((__tmp209540
                                              (lambda (_%g208354208358%_
                                                       _%g208355208361%_
                                                       _%g208356208363%_)
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
                                (cons _%g208355208361%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g208354208358%_ '())))))
              _%g208356208363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp209540
                                          '()
                                          _%L207667%_
                                          _%L207669%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig207593207661%_
                                    _%arity207594207664%_))))))
                   (_%loop207587207619%_ _%target207584207613%_ '() '()))
                 (_%g207580207606%_ _%g207581207610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207580207606%_
                                                _%g207581207610%_)))))
                                   (_%g207579208366%_ _%signatures207577%_))
                                 (_%g207463207487%_ _%g207464207491%_)))
                           _%case-signature207481207540%_
                           _%hd207471207508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207476207520%_
                                                   _%target207473207514%_
                                                   '()))
                                                (_%g207463207487%_
                                                 _%g207464207491%_)))))
                                      (_%g207463207487%_ _%g207464207491%_))))
                              (_%g207463207487%_ _%g207464207491%_))))
                      (_%g207463207487%_ _%g207464207491%_)))))
          (_%g207462208370%_ _%stx207460%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx208378%_)
        (let* ((_%__stx209360209361%_ _%$stx208378%_)
               (_%g208384208444%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209360209361%_)))))
          (let ((_%__kont209363209364%_
                 (lambda (_%L208666%_ _%L208668%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208668%_ '()))
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
                                                       (cons _%L208668%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208666%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209365209366%_
                 (lambda (_%L208591%_ _%L208593%_ _%L208594%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208594%_ '()))
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
                                                       (cons _%L208594%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208593%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208591%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont209367209368%_
                 (lambda (_%L208505%_ _%L208507%_ _%L208508%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208508%_ '()))
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
                                                       (cons _%L208508%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208507%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208505%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209360209361%_))
                (let ((_%e208388208622%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209360209361%_))))
                  (let ((_%tl208390208629%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208388208622%_)))
                        (_%hd208389208626%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208388208622%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl208390208629%_))
                        (let ((_%e208391208632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl208390208629%_))))
                          (let ((_%tl208393208639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208391208632%_)))
                                (_%hd208392208636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208391208632%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd208392208636%_))
                                (let ((_%e208394208642%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd208392208636%_))))
                                  (if (equal? _%e208394208642%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl208393208639%_))
                                          (let ((_%e208395208646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl208393208639%_))))
                                            (let ((_%tl208397208653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e208395208646%_)))
                                                  (_%hd208396208650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e208395208646%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208397208653%_))
                                                  (let ((_%e208398208656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208397208653%_))))
                                                    (let ((_%tl208400208663%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208398208656%_)))
                                                          (_%hd208399208660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208398208656%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208400208663%_))
                                                          (_%__kont209363209364%_
                                                           _%hd208399208660%_
                                                           _%hd208396208650%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208384208444%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208384208444%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g208384208444%_)))
                                      (if (equal? _%e208394208642%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208393208639%_))
                                              (let ((_%e208411208561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208393208639%_))))
                                                (let ((_%tl208413208568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208411208561%_)))
                                                      (_%hd208412208565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208411208561%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208413208568%_))
                                                      (let ((_%e208414208571%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl208413208568%_))))
                (let ((_%tl208416208578%_
                       (let () (declare (not safe)) (##cdr _%e208414208571%_)))
                      (_%hd208415208575%_
                       (let ()
                         (declare (not safe))
                         (##car _%e208414208571%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208416208578%_))
                      (let ((_%e208417208581%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208416208578%_))))
                        (let ((_%tl208419208588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208417208581%_)))
                              (_%hd208418208585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208417208581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208419208588%_))
                              (_%__kont209365209366%_
                               _%hd208418208585%_
                               _%hd208415208575%_
                               _%hd208412208565%_)
                              (let ()
                                (declare (not safe))
                                (_%g208384208444%_)))))
                      (let () (declare (not safe)) (_%g208384208444%_)))))
              (let () (declare (not safe)) (_%g208384208444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g208384208444%_)))
                                          (if (equal? _%e208394208642%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208393208639%_))
                                                  (let ((_%e208430208475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl208393208639%_))))
                                                    (let ((_%tl208432208482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208430208475%_)))
                                                          (_%hd208431208479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208430208475%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl208432208482%_))
                                                          (let ((_%e208433208485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl208432208482%_))))
                    (let ((_%tl208435208492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208433208485%_)))
                          (_%hd208434208489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208433208485%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208435208492%_))
                          (let ((_%e208436208495%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl208435208492%_))))
                            (let ((_%tl208438208502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208436208495%_)))
                                  (_%hd208437208499%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208436208495%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl208438208502%_))
                                  (_%__kont209367209368%_
                                   _%hd208437208499%_
                                   _%hd208434208489%_
                                   _%hd208431208479%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g208384208444%_)))))
                          (let () (declare (not safe)) (_%g208384208444%_)))))
                  (let () (declare (not safe)) (_%g208384208444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208384208444%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208384208444%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g208384208444%_)))))
                        (let () (declare (not safe)) (_%g208384208444%_)))))
                (let () (declare (not safe)) (_%g208384208444%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx208690%_)
        (let* ((_%g208694208714%_
                (lambda (_%g208695208710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208695208710%_))))
               (_%g208693208785%_
                (lambda (_%g208695208718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208695208718%_))
                      (let ((_%e208697208721%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208695208718%_))))
                        (let ((_%hd208698208725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208697208721%_)))
                              (_%tl208699208728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208697208721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208699208728%_))
                              (let ((_g209541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208699208728%_
                                        '0))))
                                (begin
                                  (let ((_g209542_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209541_)
                                               (##values-length _g209541_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209542_ 2)))
                                        (error "Context expects 2 values"
                                               _g209542_)))
                                  (let ((_%target208700208731%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209541_ 0)))
                                        (_%tl208702208734%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209541_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208702208734%_))
                                        (letrec ((_%loop208703208737%_
                                                  (lambda (_%hd208701208741%_
                                                           _%decl208707208744%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208701208741%_))
                                                        (let ((_%e208704208747%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd208701208741%_))))
                  (let ((_%lp-hd208705208751%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208704208747%_)))
                        (_%lp-tl208706208754%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208704208747%_))))
                    (_%loop208703208737%_
                     _%lp-tl208706208754%_
                     (cons _%lp-hd208705208751%_ _%decl208707208744%_))))
                (let ((_%decl208708208757%_ (reverse _%decl208707208744%_)))
                  ((lambda (_%L208761%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp209543
                                  (lambda (_%g208776208779%_ _%g208777208782%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g208776208779%_)
                                          _%g208777208782%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209543 '() _%L208761%_))))
                   _%decl208708208757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208703208737%_
                                           _%target208700208731%_
                                           '()))
                                        (_%g208694208714%_
                                         _%g208695208718%_)))))
                              (_%g208694208714%_ _%g208695208718%_))))
                      (_%g208694208714%_ _%g208695208718%_)))))
          (_%g208693208785%_ _%$stx208690%_))))))

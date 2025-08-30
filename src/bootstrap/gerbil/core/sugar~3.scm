(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g20600_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17278%_)
        (let* ((_%__stx2036320364%_ _%$stx17278%_)
               (_%g1728317322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2036320364%_))))
          (let ((_%__kont2036620367%_
                 (lambda (_%L17445%_ _%L17447%_ _%L17448%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17448%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L17447%_
                                                 (foldr (lambda (_%g1746717470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1746817473%_)
                  (cons _%g1746717470%_ _%g1746817473%_))
                '()
                _%L17445%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2037020371%_
                 (lambda (_%L17359%_ _%L17361%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L17361%_ (cons _%L17359%_ '()))))))
            (let* ((_%__match2041820419%_
                    (lambda (_%e1730817329%_
                             _%hd1730917333%_
                             _%tl1731017336%_
                             _%e1731117339%_
                             _%hd1731217343%_
                             _%tl1731317346%_
                             _%e1731417349%_
                             _%hd1731517353%_
                             _%tl1731617356%_)
                      (let ((_%L17359%_ _%hd1731517353%_)
                            (_%L17361%_ _%hd1731217343%_))
                        (if (gx#identifier? _%L17361%_)
                            (_%__kont2037020371%_ _%L17359%_ _%L17361%_)
                            (let () (declare (not safe)) (_%g1728317322%_))))))
                   (_%__match2041020411%_
                    (lambda (_%e1730817329%_
                             _%hd1730917333%_
                             _%tl1731017336%_
                             _%e1731117339%_
                             _%hd1731217343%_
                             _%tl1731317346%_)
                      (if (gx#stx-pair? _%tl1731317346%_)
                          (let ((_%e1731417349%_
                                 (gx#syntax-e _%tl1731317346%_)))
                            (let ((_%tl1731617356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1731417349%_)))
                                  (_%hd1731517353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1731417349%_))))
                              (if (gx#stx-null? _%tl1731617356%_)
                                  (_%__match2041820419%_
                                   _%e1730817329%_
                                   _%hd1730917333%_
                                   _%tl1731017336%_
                                   _%e1731117339%_
                                   _%hd1731217343%_
                                   _%tl1731317346%_
                                   _%e1731417349%_
                                   _%hd1731517353%_
                                   _%tl1731617356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1728317322%_)))))
                          (let () (declare (not safe)) (_%g1728317322%_)))))
                   (_%__match2039820399%_
                    (lambda (_%e1728817385%_
                             _%hd1728917389%_
                             _%tl1729017392%_
                             _%e1729117395%_
                             _%hd1729217399%_
                             _%tl1729317402%_
                             _%e1729417405%_
                             _%hd1729517409%_
                             _%tl1729617412%_
                             _%__splice2036820369%_
                             _%target1729717415%_
                             _%tl1729917418%_)
                      (letrec ((_%loop1730017421%_
                                (lambda (_%hd1729817425%_ _%body1730417428%_)
                                  (if (gx#stx-pair? _%hd1729817425%_)
                                      (let ((_%e1730117431%_
                                             (gx#syntax-e _%hd1729817425%_)))
                                        (let ((_%lp-tl1730317438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1730117431%_)))
                                              (_%lp-hd1730217435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1730117431%_))))
                                          (_%loop1730017421%_
                                           _%lp-tl1730317438%_
                                           (cons _%lp-hd1730217435%_
                                                 _%body1730417428%_))))
                                      (let ((_%body1730517441%_
                                             (reverse _%body1730417428%_)))
                                        (let ((_%L17445%_ _%body1730517441%_)
                                              (_%L17447%_ _%tl1729617412%_)
                                              (_%L17448%_ _%hd1729517409%_))
                                          (if (gx#identifier? _%L17448%_)
                                              (_%__kont2036620367%_
                                               _%L17445%_
                                               _%L17447%_
                                               _%L17448%_)
                                              (_%__match2041020411%_
                                               _%e1728817385%_
                                               _%hd1728917389%_
                                               _%tl1729017392%_
                                               _%e1729117395%_
                                               _%hd1729217399%_
                                               _%tl1729317402%_))))))))
                        (_%loop1730017421%_ _%target1729717415%_ '())))))
              (if (gx#stx-pair? _%__stx2036320364%_)
                  (let ((_%e1728817385%_ (gx#syntax-e _%__stx2036320364%_)))
                    (let ((_%tl1729017392%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1728817385%_)))
                          (_%hd1728917389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1728817385%_))))
                      (if (gx#stx-pair? _%tl1729017392%_)
                          (let ((_%e1729117395%_
                                 (gx#syntax-e _%tl1729017392%_)))
                            (let ((_%tl1729317402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1729117395%_)))
                                  (_%hd1729217399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1729117395%_))))
                              (if (gx#stx-pair? _%hd1729217399%_)
                                  (let ((_%e1729417405%_
                                         (gx#syntax-e _%hd1729217399%_)))
                                    (let ((_%tl1729617412%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1729417405%_)))
                                          (_%hd1729517409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1729417405%_))))
                                      (if (gx#stx-pair/null? _%tl1729317402%_)
                                          (let ((_%__splice2036820369%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1729317402%_
                                                  '0)))
                                            (let ((_%tl1729917418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2036820369%_
                                                      '1)))
                                                  (_%target1729717415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2036820369%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1729917418%_)
                                                  (_%__match2039820399%_
                                                   _%e1728817385%_
                                                   _%hd1728917389%_
                                                   _%tl1729017392%_
                                                   _%e1729117395%_
                                                   _%hd1729217399%_
                                                   _%tl1729317402%_
                                                   _%e1729417405%_
                                                   _%hd1729517409%_
                                                   _%tl1729617412%_
                                                   _%__splice2036820369%_
                                                   _%target1729717415%_
                                                   _%tl1729917418%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1729317402%_)
                                                      (let ((_%e1731417349%_
                                                             (gx#syntax-e
                                                              _%tl1729317402%_)))
                                                        (let ((_%tl1731617356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1731417349%_)))
                      (_%hd1731517353%_
                       (let () (declare (not safe)) (##car _%e1731417349%_))))
                  (if (gx#stx-null? _%tl1731617356%_)
                      (_%__match2041820419%_
                       _%e1728817385%_
                       _%hd1728917389%_
                       _%tl1729017392%_
                       _%e1729117395%_
                       _%hd1729217399%_
                       _%tl1729317402%_
                       _%e1731417349%_
                       _%hd1731517353%_
                       _%tl1731617356%_)
                      (let () (declare (not safe)) (_%g1728317322%_)))))
              (let () (declare (not safe)) (_%g1728317322%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1729317402%_)
                                              (let ((_%e1731417349%_
                                                     (gx#syntax-e
                                                      _%tl1729317402%_)))
                                                (let ((_%tl1731617356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1731417349%_)))
                                                      (_%hd1731517353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1731417349%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1731617356%_)
                                                      (_%__match2041820419%_
                                                       _%e1728817385%_
                                                       _%hd1728917389%_
                                                       _%tl1729017392%_
                                                       _%e1729117395%_
                                                       _%hd1729217399%_
                                                       _%tl1729317402%_
                                                       _%e1731417349%_
                                                       _%hd1731517353%_
                                                       _%tl1731617356%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1728317322%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1728317322%_))))))
                                  (if (gx#stx-pair? _%tl1729317402%_)
                                      (let ((_%e1731417349%_
                                             (gx#syntax-e _%tl1729317402%_)))
                                        (let ((_%tl1731617356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1731417349%_)))
                                              (_%hd1731517353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1731417349%_))))
                                          (if (gx#stx-null? _%tl1731617356%_)
                                              (_%__match2041820419%_
                                               _%e1728817385%_
                                               _%hd1728917389%_
                                               _%tl1729017392%_
                                               _%e1729117395%_
                                               _%hd1729217399%_
                                               _%tl1729317402%_
                                               _%e1731417349%_
                                               _%hd1731517353%_
                                               _%tl1731617356%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1728317322%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1728317322%_))))))
                          (let () (declare (not safe)) (_%g1728317322%_)))))
                  (let () (declare (not safe)) (_%g1728317322%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_%stx17481%_)
        (let* ((_%g1748417521%_
                (lambda (_%g1748517517%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1748517517%_)))
               (_%g1748317882%_
                (lambda (_%g1748517525%_)
                  (if (gx#stx-pair? _%g1748517525%_)
                      (let ((_%e1748917528%_ (gx#syntax-e _%g1748517525%_)))
                        (let ((_%hd1749017532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1748917528%_)))
                              (_%tl1749117535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1748917528%_))))
                          (if (gx#stx-pair? _%tl1749117535%_)
                              (let ((_%e1749217538%_
                                     (gx#syntax-e _%tl1749117535%_)))
                                (let ((_%hd1749317542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1749217538%_)))
                                      (_%tl1749417545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1749217538%_))))
                                  (if (gx#stx-pair? _%hd1749317542%_)
                                      (let ((_%e1749517548%_
                                             (gx#syntax-e _%hd1749317542%_)))
                                        (let ((_%hd1749617552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1749517548%_)))
                                              (_%tl1749717555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1749517548%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1749717555%_)
                                              (let ((_g20594_
                                                     (gx#syntax-split-splice
                                                      _%tl1749717555%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20595_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20594_)
                                                               (##values-length
                                                                _g20594_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20595_ 2)))
                (error "Context expects 2 values" _g20595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1749817558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20594_
                                                            0)))
                                                        (_%tl1750017561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20594_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1750017561%_)
                                                        (letrec ((_%loop1750117564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1749917568%_ _%arg1750517571%_)
                            (if (gx#stx-pair? _%hd1749917568%_)
                                (let ((_%e1750217574%_
                                       (gx#syntax-e _%hd1749917568%_)))
                                  (let ((_%lp-hd1750317578%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1750217574%_)))
                                        (_%lp-tl1750417581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1750217574%_))))
                                    (_%loop1750117564%_
                                     _%lp-tl1750417581%_
                                     (cons _%lp-hd1750317578%_
                                           _%arg1750517571%_))))
                                (let ((_%arg1750617584%_
                                       (reverse _%arg1750517571%_)))
                                  (if (gx#stx-pair/null? _%tl1749417545%_)
                                      (let ((_g20596_
                                             (gx#syntax-split-splice
                                              _%tl1749417545%_
                                              '0)))
                                        (begin
                                          (let ((_g20597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20596_)
                                                       (##values-length
                                                        _g20596_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20597_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20597_)))
                                          (let ((_%target1750717588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20596_ 0)))
                                                (_%tl1750917591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20596_ 1))))
                                            (if (gx#stx-null? _%tl1750917591%_)
                                                (letrec ((_%loop1751017594%_
                                                          (lambda (_%hd1750817598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1751417601%_)
                    (if (gx#stx-pair? _%hd1750817598%_)
                        (let ((_%e1751117604%_ (gx#syntax-e _%hd1750817598%_)))
                          (let ((_%lp-hd1751217608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1751117604%_)))
                                (_%lp-tl1751317611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1751117604%_))))
                            (_%loop1751017594%_
                             _%lp-tl1751317611%_
                             (cons _%lp-hd1751217608%_ _%body1751417601%_))))
                        (let ((_%body1751517614%_
                               (reverse _%body1751417601%_)))
                          ((lambda (_%L17618%_ _%L17620%_ _%L17621%_)
                             (if (and (gx#identifier? _%L17621%_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_%g1764517648%_
                                                       _%g1764617651%_)
                                                (cons _%g1764517648%_
                                                      _%g1764617651%_))
                                              '()
                                              _%L17620%_)))
                                 (let* ((_%g1765417662%_
                                         (lambda (_%g1765517658%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g1765517658%_)))
                                        (_%g1765317878%_
                                         (lambda (_%g1765517666%_)
                                           ((lambda (_%L17669%_)
                                              (let* ((_%g1768117698%_
                                                      (lambda (_%g1768217694%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1768217694%_)))
                                                     (_%g1768017866%_
                                                      (lambda (_%g1768217702%_)
                                                        (if (gx#stx-pair/null?
                                                             _%g1768217702%_)
                                                            (let ((_g20598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%g1768217702%_ '0)))
                      (begin
                        (let ((_g20599_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g20598_)
                                     (##values-length _g20598_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g20599_ 2)))
                              (error "Context expects 2 values" _g20599_)))
                        (let ((_%target1768417705%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20598_ 0)))
                              (_%tl1768617708%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20598_ 1))))
                          (if (gx#stx-null? _%tl1768617708%_)
                              (letrec ((_%loop1768717711%_
                                        (lambda (_%hd1768517715%_
                                                 _%xarg1769117718%_)
                                          (if (gx#stx-pair? _%hd1768517715%_)
                                              (let ((_%e1768817721%_
                                                     (gx#syntax-e
                                                      _%hd1768517715%_)))
                                                (let ((_%lp-hd1768917725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1768817721%_)))
                                                      (_%lp-tl1769017728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1768817721%_))))
                                                  (_%loop1768717711%_
                                                   _%lp-tl1769017728%_
                                                   (cons _%lp-hd1768917725%_
                                                         _%xarg1769117718%_))))
                                              (let ((_%xarg1769217731%_
                                                     (reverse _%xarg1769117718%_)))
                                                ((lambda (_%L17735%_)
                                                   (let* ((_%g1775217760%_
                                                           (lambda (_%g1775317756%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g1775317756%_)))
                                                          (_%g1775117830%_
                                                           (lambda (_%g1775317764%_)
                                                             ((lambda (_%L17767%_)
                                                                (let* ((_%g1778017788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g1778117784%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1778117784%_)))
                               (_%g1777917810%_
                                (lambda (_%g1778117792%_)
                                  ((lambda (_%L17795%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'begin)
                                            (cons _%L17795%_
                                                  (cons _%L17767%_ '())))
                                      (gx#stx-source _%stx17481%_)))
                                   _%g1778117792%_))))
                          (_%g1777917810%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%L17669%_
                                              (foldr (lambda (_%g1781317818%_
                                                              _%g1781417821%_)
                                                       (cons _%g1781317818%_
                                                             _%g1781417821%_))
                                                     '()
                                                     _%L17620%_))
                                        (foldr (lambda (_%g1781517824%_
                                                        _%g1781617827%_)
                                                 (cons _%g1781517824%_
                                                       _%g1781617827%_))
                                               '()
                                               _%L17618%_)))
                            (gx#stx-source _%stx17481%_)))))
                      _%g1775317764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1775117830%_
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'defrules)
                                                             (cons _%L17621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons (cons (gx#datum->syntax '#f '_)
                                                   (foldr (lambda (_%g1783317842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1783417845%_)
                    (cons _%g1783317842%_ _%g1783417845%_))
                  '()
                  _%L17735%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (foldr (lambda (_%g1783517848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g1783617851%_)
                                      (cons _%g1783517848%_ _%g1783617851%_))
                                    '()
                                    _%L17620%_)
                             (foldr (lambda (_%g1783717854%_ _%g1783817857%_)
                                      (cons _%g1783717854%_ _%g1783817857%_))
                                    '()
                                    _%L17618%_)))
                 (foldr (lambda (_%g1783917860%_ _%g1784017863%_)
                          (cons _%g1783917860%_ _%g1784017863%_))
                        '()
                        _%L17735%_))
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
                 (cons _%L17669%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
               (gx#stx-source _%stx17481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%xarg1769217731%_))))))
                                (_%loop1768717711%_ _%target1768417705%_ '()))
                              (_%g1768117698%_ _%g1768217702%_)))))
                    (_%g1768117698%_ _%g1768217702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1768017866%_
                                                 (gx#gentemps
                                                  (foldr (lambda (_%g1786917872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1787017875%_)
                   (cons _%g1786917872%_ _%g1787017875%_))
                 '()
                 _%L17620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g1765517666%_))))
                                   (_%g1765317878%_
                                    (gx#stx-identifier
                                     _%L17621%_
                                     _%L17621%_
                                     '"__impl")))
                                 (_%g1748417521%_ _%g1748517525%_)))
                           _%body1751517614%_
                           _%arg1750617584%_
                           _%hd1749617552%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1751017594%_
                                                   _%target1750717588%_
                                                   '()))
                                                (_%g1748417521%_
                                                 _%g1748517525%_)))))
                                      (_%g1748417521%_ _%g1748517525%_)))))))
                  (_%loop1750117564%_ _%target1749817558%_ '()))
                (_%g1748417521%_ _%g1748517525%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1748417521%_
                                               _%g1748517525%_))))
                                      (_%g1748417521%_ _%g1748517525%_))))
                              (_%g1748417521%_ _%g1748517525%_))))
                      (_%g1748417521%_ _%g1748517525%_)))))
          (_%g1748317882%_ _%stx17481%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx17889%_)
        (let* ((_%__stx2042120422%_ _%$stx17889%_)
               (_%g1789417930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2042120422%_))))
          (let ((_%__kont2042420425%_
                 (lambda (_%L18044%_ _%L18046%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%L18046%_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L18044%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2042620427%_
                 (lambda (_%L17967%_ _%L17969%_ _%L17970%_)
                   (cons _%L17970%_
                         (cons _%L17969%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L17967%_ '()))
                                     '()))))))
            (let* ((_%__match2048620487%_
                    (lambda (_%e1791617937%_
                             _%hd1791717941%_
                             _%tl1791817944%_
                             _%e1791917947%_
                             _%hd1792017951%_
                             _%tl1792117954%_
                             _%e1792217957%_
                             _%hd1792317961%_
                             _%tl1792417964%_)
                      (let ((_%L17967%_ _%hd1792317961%_)
                            (_%L17969%_ _%hd1792017951%_)
                            (_%L17970%_ _%hd1791717941%_))
                        (if (and (gx#identifier? _%L17969%_)
                                 (gx#stx-datum? _%L17967%_))
                            (_%__kont2042620427%_
                             _%L17967%_
                             _%L17969%_
                             _%L17970%_)
                            (let () (declare (not safe)) (_%g1789417930%_))))))
                   (_%__match2046620467%_
                    (lambda (_%e1789817994%_
                             _%hd1789917998%_
                             _%tl1790018001%_
                             _%e1790118004%_
                             _%hd1790218008%_
                             _%tl1790318011%_
                             _%e1790418014%_
                             _%hd1790518018%_
                             _%tl1790618021%_
                             _%e1790718024%_
                             _%hd1790818028%_
                             _%tl1790918031%_
                             _%e1791018034%_
                             _%hd1791118038%_
                             _%tl1791218041%_)
                      (let ((_%L18044%_ _%hd1791118038%_)
                            (_%L18046%_ _%hd1790218008%_))
                        (if (gx#identifier? _%L18046%_)
                            (_%__kont2042420425%_ _%L18044%_ _%L18046%_)
                            (_%__match2048620487%_
                             _%e1789817994%_
                             _%hd1789917998%_
                             _%tl1790018001%_
                             _%e1790118004%_
                             _%hd1790218008%_
                             _%tl1790318011%_
                             _%e1790418014%_
                             _%hd1790518018%_
                             _%tl1790618021%_))))))
              (if (gx#stx-pair? _%__stx2042120422%_)
                  (let ((_%e1789817994%_ (gx#syntax-e _%__stx2042120422%_)))
                    (let ((_%tl1790018001%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1789817994%_)))
                          (_%hd1789917998%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1789817994%_))))
                      (if (gx#stx-pair? _%tl1790018001%_)
                          (let ((_%e1790118004%_
                                 (gx#syntax-e _%tl1790018001%_)))
                            (let ((_%tl1790318011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1790118004%_)))
                                  (_%hd1790218008%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1790118004%_))))
                              (if (gx#stx-pair? _%tl1790318011%_)
                                  (let ((_%e1790418014%_
                                         (gx#syntax-e _%tl1790318011%_)))
                                    (let ((_%tl1790618021%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1790418014%_)))
                                          (_%hd1790518018%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1790418014%_))))
                                      (if (gx#stx-pair? _%hd1790518018%_)
                                          (let ((_%e1790718024%_
                                                 (gx#syntax-e
                                                  _%hd1790518018%_)))
                                            (let ((_%tl1790918031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1790718024%_)))
                                                  (_%hd1790818028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1790718024%_))))
                                              (if (gx#identifier?
                                                   _%hd1790818028%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g20600_|
                                                       _%hd1790818028%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1790918031%_)
                                                          (let ((_%e1791018034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1790918031%_)))
                    (let ((_%tl1791218041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1791018034%_)))
                          (_%hd1791118038%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1791018034%_))))
                      (if (gx#stx-null? _%tl1791218041%_)
                          (if (gx#stx-null? _%tl1790618021%_)
                              (_%__match2046620467%_
                               _%e1789817994%_
                               _%hd1789917998%_
                               _%tl1790018001%_
                               _%e1790118004%_
                               _%hd1790218008%_
                               _%tl1790318011%_
                               _%e1790418014%_
                               _%hd1790518018%_
                               _%tl1790618021%_
                               _%e1790718024%_
                               _%hd1790818028%_
                               _%tl1790918031%_
                               _%e1791018034%_
                               _%hd1791118038%_
                               _%tl1791218041%_)
                              (let () (declare (not safe)) (_%g1789417930%_)))
                          (if (gx#stx-null? _%tl1790618021%_)
                              (_%__match2048620487%_
                               _%e1789817994%_
                               _%hd1789917998%_
                               _%tl1790018001%_
                               _%e1790118004%_
                               _%hd1790218008%_
                               _%tl1790318011%_
                               _%e1790418014%_
                               _%hd1790518018%_
                               _%tl1790618021%_)
                              (let ()
                                (declare (not safe))
                                (_%g1789417930%_))))))
                  (if (gx#stx-null? _%tl1790618021%_)
                      (_%__match2048620487%_
                       _%e1789817994%_
                       _%hd1789917998%_
                       _%tl1790018001%_
                       _%e1790118004%_
                       _%hd1790218008%_
                       _%tl1790318011%_
                       _%e1790418014%_
                       _%hd1790518018%_
                       _%tl1790618021%_)
                      (let () (declare (not safe)) (_%g1789417930%_))))
              (if (gx#stx-null? _%tl1790618021%_)
                  (_%__match2048620487%_
                   _%e1789817994%_
                   _%hd1789917998%_
                   _%tl1790018001%_
                   _%e1790118004%_
                   _%hd1790218008%_
                   _%tl1790318011%_
                   _%e1790418014%_
                   _%hd1790518018%_
                   _%tl1790618021%_)
                  (let () (declare (not safe)) (_%g1789417930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1790618021%_)
                                                      (_%__match2048620487%_
                                                       _%e1789817994%_
                                                       _%hd1789917998%_
                                                       _%tl1790018001%_
                                                       _%e1790118004%_
                                                       _%hd1790218008%_
                                                       _%tl1790318011%_
                                                       _%e1790418014%_
                                                       _%hd1790518018%_
                                                       _%tl1790618021%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1789417930%_))))))
                                          (if (gx#stx-null? _%tl1790618021%_)
                                              (_%__match2048620487%_
                                               _%e1789817994%_
                                               _%hd1789917998%_
                                               _%tl1790018001%_
                                               _%e1790118004%_
                                               _%hd1790218008%_
                                               _%tl1790318011%_
                                               _%e1790418014%_
                                               _%hd1790518018%_
                                               _%tl1790618021%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1789417930%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1789417930%_)))))
                          (let () (declare (not safe)) (_%g1789417930%_)))))
                  (let () (declare (not safe)) (_%g1789417930%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g92660_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92661_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92662_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92665_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92666_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92669_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92670_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92671_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92672_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92676_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92677_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92678_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92679_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92683_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx50919%_)
        (let* ((_%__stx8675686757%_ _%stx50919%_)
               (_%g5092851137%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8675686757%_))))
          (let ((_%__kont8675986760%_
                 (lambda (_%g5093052029%_
                          _%g5093152031%_
                          _%g5093252032%_
                          _%g5093352033%_
                          _%g5093452034%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5093452034%_
                                     (cons _%g5093352033%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5093452034%_
                                                       (cons _%g5093252032%_
                                                             (cons _%g5093152031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5207752080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5207852083%_)
                  (cons _%g5207752080%_ _%g5207852083%_))
                '()
                _%g5093052029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8676386764%_
                 (lambda (_%g5096251875%_
                          _%g5096351877%_
                          _%g5096451878%_
                          _%g5096551879%_
                          _%g5096651880%_
                          _%g5096751881%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5096751881%_
                                     (cons _%g5096651880%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5096751881%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5096551879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5096751881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5096451878%_
                                       (cons _%g5096351877%_ '())))
                           (foldr (lambda (_%g5192551928%_ _%g5192651931%_)
                                    (cons _%g5192551928%_ _%g5192651931%_))
                                  '()
                                  _%g5096251875%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8676786768%_
                 (lambda (_%g5100151694%_
                          _%g5100251696%_
                          _%g5100351697%_
                          _%g5100451698%_)
                   (let ((_%meta51735%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50919%_
                             _%g5100251696%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta51735%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5100451698%_
                                           (cons _%g5100351697%_
                                                 (cons _%g5100251696%_ '())))
                                     (foldr (lambda (_%g5173951742%_
                                                     _%g5174051745%_)
                                              (cons _%g5173951742%_
                                                    _%g5174051745%_))
                                            '()
                                            _%g5100151694%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta51735%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5100451698%_
                                               (cons _%g5100351697%_
                                                     (cons _%g5100251696%_
                                                           '())))
                                         (foldr (lambda (_%g5174951752%_
                                                         _%g5175051755%_)
                                                  (cons _%g5174951752%_
                                                        _%g5175051755%_))
                                                '()
                                                _%g5100151694%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx50919%_
                              _%g5100251696%_
                              _%meta51735%_))))))
                (_%__kont8677186772%_
                 (lambda (_%g5102951574%_ _%g5103051576%_ _%g5103151577%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5103151577%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5103051576%_ '())))
                               (foldr (lambda (_%g5160051603%_ _%g5160151606%_)
                                        (cons _%g5160051603%_ _%g5160151606%_))
                                      '()
                                      _%g5102951574%_)))))
                (_%__kont8677586776%_
                 (lambda (_%g5105651434%_
                          _%g5105751436%_
                          _%g5105851437%_
                          _%g5105951438%_
                          _%g5106051439%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5106051439%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5105951438%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5106051439%_
                                                       (cons _%g5105851437%_
                                                             (cons _%g5105751436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5148051483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5148151486%_)
                  (cons _%g5148051483%_ _%g5148151486%_))
                '()
                _%g5105651434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8677986780%_
                 (lambda (_%g5109151294%_
                          _%g5109251296%_
                          _%g5109351297%_
                          _%g5109451298%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5109451298%_ _%g5109351297%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5109251296%_
                                                 (foldr (lambda (_%g5132051323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5132151326%_)
                  (cons _%g5132051323%_ _%g5132151326%_))
                '()
                _%g5109151294%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8678386784%_
                 (lambda (_%g5111651192%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5121051213%_ _%g5121151216%_)
                                        (cons _%g5121051213%_ _%g5121151216%_))
                                      '()
                                      _%g5111651192%_))))))
            (let* ((_%__match8708987090%_
                    (lambda (_%e5111751144%_
                             _%hd5111851148%_
                             _%tl5111951151%_
                             _%e5112051154%_
                             _%hd5112151158%_
                             _%tl5112251161%_
                             _%__splice8678586786%_
                             _%target5112351164%_
                             _%tl5112551167%_)
                      (letrec ((_%loop5112651170%_
                                (lambda (_%hd5112451174%_ _%body5113051177%_)
                                  (if (gx#stx-pair? _%hd5112451174%_)
                                      (let ((_%e5112751179%_
                                             (gx#syntax-e _%hd5112451174%_)))
                                        (let ((_%lp-tl5112951186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5112751179%_)))
                                              (_%lp-hd5112851183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5112751179%_))))
                                          (_%loop5112651170%_
                                           _%lp-tl5112951186%_
                                           (cons _%lp-hd5112851183%_
                                                 _%body5113051177%_))))
                                      (let ((_%body5113151189%_
                                             (reverse _%body5113051177%_)))
                                        (_%__kont8678386784%_
                                         _%body5113151189%_))))))
                        (_%loop5112651170%_ _%target5112351164%_ '()))))
                   (_%__match8706787068%_
                    (lambda (_%e5109551226%_
                             _%hd5109651230%_
                             _%tl5109751233%_
                             _%e5109851236%_
                             _%hd5109951240%_
                             _%tl5110051243%_
                             _%e5110151246%_
                             _%hd5110251250%_
                             _%tl5110351253%_
                             _%e5110451256%_
                             _%hd5110551260%_
                             _%tl5110651263%_
                             _%__splice8678186782%_
                             _%target5110751266%_
                             _%tl5110951269%_)
                      (letrec ((_%loop5111051272%_
                                (lambda (_%hd5110851276%_ _%body5111451279%_)
                                  (if (gx#stx-pair? _%hd5110851276%_)
                                      (let ((_%e5111151281%_
                                             (gx#syntax-e _%hd5110851276%_)))
                                        (let ((_%lp-tl5111351288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5111151281%_)))
                                              (_%lp-hd5111251285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5111151281%_))))
                                          (_%loop5111051272%_
                                           _%lp-tl5111351288%_
                                           (cons _%lp-hd5111251285%_
                                                 _%body5111451279%_))))
                                      (let ((_%body5111551291%_
                                             (reverse _%body5111451279%_)))
                                        (let ((_%g5109151294%_
                                               _%body5111551291%_)
                                              (_%g5109251296%_
                                               _%tl5110351253%_)
                                              (_%g5109351297%_
                                               _%tl5110651263%_)
                                              (_%g5109451298%_
                                               _%hd5110551260%_))
                                          (if (gx#identifier? _%g5109451298%_)
                                              (_%__kont8677986780%_
                                               _%g5109151294%_
                                               _%g5109251296%_
                                               _%g5109351297%_
                                               _%g5109451298%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_)))))))))
                        (_%loop5111051272%_ _%target5110751266%_ '()))))
                   (_%__match8705387054%_
                    (lambda (_%e5109551226%_
                             _%hd5109651230%_
                             _%tl5109751233%_
                             _%e5109851236%_
                             _%hd5109951240%_
                             _%tl5110051243%_
                             _%e5110151246%_
                             _%hd5110251250%_
                             _%tl5110351253%_)
                      (if (gx#stx-pair? _%hd5110251250%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5110251250%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (if (gx#stx-pair/null? _%tl5110051243%_)
                                  (let ((_%__splice8678186782%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5110051243%_
                                          '0)))
                                    (let ((_%tl5110951269%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '1)))
                                          (_%target5110751266%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5110951269%_)
                                          (_%__match8706787068%_
                                           _%e5109551226%_
                                           _%hd5109651230%_
                                           _%tl5109751233%_
                                           _%e5109851236%_
                                           _%hd5109951240%_
                                           _%tl5110051243%_
                                           _%e5110151246%_
                                           _%hd5110251250%_
                                           _%tl5110351253%_
                                           _%e5110451256%_
                                           _%hd5110551260%_
                                           _%tl5110651263%_
                                           _%__splice8678186782%_
                                           _%target5110751266%_
                                           _%tl5110951269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                   (_%__match8703587036%_
                    (lambda (_%e5106151336%_
                             _%hd5106251340%_
                             _%tl5106351343%_
                             _%e5106451346%_
                             _%hd5106551350%_
                             _%tl5106651353%_
                             _%e5106751356%_
                             _%hd5106851360%_
                             _%tl5106951363%_
                             _%e5107051366%_
                             _%hd5107151370%_
                             _%tl5107251373%_
                             _%e5107351376%_
                             _%hd5107451380%_
                             _%tl5107551383%_
                             _%e5107651386%_
                             _%hd5107751390%_
                             _%tl5107851393%_
                             _%e5107951396%_
                             _%hd5108051400%_
                             _%tl5108151403%_
                             _%__splice8677786778%_
                             _%target5108251406%_
                             _%tl5108451409%_)
                      (letrec ((_%loop5108551412%_
                                (lambda (_%hd5108351416%_ _%body5108951419%_)
                                  (if (gx#stx-pair? _%hd5108351416%_)
                                      (let ((_%e5108651421%_
                                             (gx#syntax-e _%hd5108351416%_)))
                                        (let ((_%lp-tl5108851428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5108651421%_)))
                                              (_%lp-hd5108751425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5108651421%_))))
                                          (_%loop5108551412%_
                                           _%lp-tl5108851428%_
                                           (cons _%lp-hd5108751425%_
                                                 _%body5108951419%_))))
                                      (let ((_%body5109051431%_
                                             (reverse _%body5108951419%_)))
                                        (let ((_%g5105651434%_
                                               _%body5109051431%_)
                                              (_%g5105751436%_
                                               _%hd5108051400%_)
                                              (_%g5105851437%_
                                               _%hd5107751390%_)
                                              (_%g5105951438%_
                                               _%hd5107451380%_)
                                              (_%g5106051439%_
                                               _%hd5106851360%_))
                                          (if (and (gx#identifier?
                                                    _%g5106051439%_)
                                                   (gx#identifier?
                                                    _%g5105751436%_)
                                                   (gx#identifier?
                                                    _%g5105851437%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5105851437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5105851437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5105851437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5105851437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8677586776%_
                                               _%g5105651434%_
                                               _%g5105751436%_
                                               _%g5105851437%_
                                               _%g5105951438%_
                                               _%g5106051439%_)
                                              (_%__match8705387054%_
                                               _%e5106151336%_
                                               _%hd5106251340%_
                                               _%tl5106351343%_
                                               _%e5106451346%_
                                               _%hd5106551350%_
                                               _%tl5106651353%_
                                               _%e5106751356%_
                                               _%hd5106851360%_
                                               _%tl5106951363%_))))))))
                        (_%loop5108551412%_ _%target5108251406%_ '()))))
                   (_%__match8697986980%_
                    (lambda (_%e5103251496%_
                             _%hd5103351500%_
                             _%tl5103451503%_
                             _%e5103551506%_
                             _%hd5103651510%_
                             _%tl5103751513%_
                             _%e5103851516%_
                             _%hd5103951520%_
                             _%tl5104051523%_
                             _%e5104151526%_
                             _%hd5104251530%_
                             _%tl5104351533%_
                             _%e5104451536%_
                             _%hd5104551540%_
                             _%tl5104651543%_
                             _%__splice8677386774%_
                             _%target5104751546%_
                             _%tl5104951549%_)
                      (letrec ((_%loop5105051552%_
                                (lambda (_%hd5104851556%_ _%body5105451559%_)
                                  (if (gx#stx-pair? _%hd5104851556%_)
                                      (let ((_%e5105151561%_
                                             (gx#syntax-e _%hd5104851556%_)))
                                        (let ((_%lp-tl5105351568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5105151561%_)))
                                              (_%lp-hd5105251565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5105151561%_))))
                                          (_%loop5105051552%_
                                           _%lp-tl5105351568%_
                                           (cons _%lp-hd5105251565%_
                                                 _%body5105451559%_))))
                                      (let ((_%body5105551571%_
                                             (reverse _%body5105451559%_)))
                                        (let ((_%g5102951574%_
                                               _%body5105551571%_)
                                              (_%g5103051576%_
                                               _%hd5104551540%_)
                                              (_%g5103151577%_
                                               _%hd5103951520%_))
                                          (if (gx#identifier? _%g5103151577%_)
                                              (_%__kont8677186772%_
                                               _%g5102951574%_
                                               _%g5103051576%_
                                               _%g5103151577%_)
                                              (_%__match8705387054%_
                                               _%e5103251496%_
                                               _%hd5103351500%_
                                               _%tl5103451503%_
                                               _%e5103551506%_
                                               _%hd5103651510%_
                                               _%tl5103751513%_
                                               _%e5103851516%_
                                               _%hd5103951520%_
                                               _%tl5104051523%_))))))))
                        (_%loop5105051552%_ _%target5104751546%_ '()))))
                   (_%__match8695986960%_
                    (lambda (_%e5103251496%_
                             _%hd5103351500%_
                             _%tl5103451503%_
                             _%e5103551506%_
                             _%hd5103651510%_
                             _%tl5103751513%_
                             _%e5103851516%_
                             _%hd5103951520%_
                             _%tl5104051523%_
                             _%e5104151526%_
                             _%hd5104251530%_
                             _%tl5104351533%_)
                      (if (gx#identifier? _%hd5104251530%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92660_|
                               _%hd5104251530%_)
                              (if (gx#stx-pair? _%tl5104351533%_)
                                  (let ((_%e5104451536%_
                                         (gx#syntax-e _%tl5104351533%_)))
                                    (let ((_%tl5104651543%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5104451536%_)))
                                          (_%hd5104551540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5104451536%_))))
                                      (if (gx#stx-null? _%tl5104651543%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5103751513%_)
                                              (let ((_%__splice8677386774%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5103751513%_
                                                      '0)))
                                                (let ((_%tl5104951549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8677386774%_
                                                          '1)))
                                                      (_%target5104751546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8677386774%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5104951549%_)
                                                      (_%__match8697986980%_
                                                       _%e5103251496%_
                                                       _%hd5103351500%_
                                                       _%tl5103451503%_
                                                       _%e5103551506%_
                                                       _%hd5103651510%_
                                                       _%tl5103751513%_
                                                       _%e5103851516%_
                                                       _%hd5103951520%_
                                                       _%tl5104051523%_
                                                       _%e5104151526%_
                                                       _%hd5104251530%_
                                                       _%tl5104351533%_
                                                       _%e5104451536%_
                                                       _%hd5104551540%_
                                                       _%tl5104651543%_
                                                       _%__splice8677386774%_
                                                       _%target5104751546%_
                                                       _%tl5104951549%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5103951520%_)
                                                          (let ((_%e5110451256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5103951520%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (let () (declare (not safe)) (_%g5092851137%_))))
                  (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5103951520%_)
                                                  (let ((_%e5110451256%_
                                                         (gx#syntax-e
                                                          _%hd5103951520%_)))
                                                    (let ((_%tl5110651263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5110451256%_)))
                                                          (_%hd5110551260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5110451256%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5092851137%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_))))
                                          (if (gx#stx-pair? _%tl5104651543%_)
                                              (let ((_%e5107651386%_
                                                     (gx#syntax-e
                                                      _%tl5104651543%_)))
                                                (let ((_%tl5107851393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5107651386%_)))
                                                      (_%hd5107751390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5107651386%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5107851393%_)
                                                      (let ((_%e5107951396%_
                                                             (gx#syntax-e
                                                              _%tl5107851393%_)))
                                                        (let ((_%tl5108151403%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5107951396%_)))
                      (_%hd5108051400%_
                       (let () (declare (not safe)) (##car _%e5107951396%_))))
                  (if (gx#stx-null? _%tl5108151403%_)
                      (if (gx#stx-pair/null? _%tl5103751513%_)
                          (let ((_%__splice8677786778%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5103751513%_
                                  '0)))
                            (let ((_%tl5108451409%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8677786778%_ '1)))
                                  (_%target5108251406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8677786778%_
                                      '0))))
                              (if (gx#stx-null? _%tl5108451409%_)
                                  (_%__match8703587036%_
                                   _%e5103251496%_
                                   _%hd5103351500%_
                                   _%tl5103451503%_
                                   _%e5103551506%_
                                   _%hd5103651510%_
                                   _%tl5103751513%_
                                   _%e5103851516%_
                                   _%hd5103951520%_
                                   _%tl5104051523%_
                                   _%e5104151526%_
                                   _%hd5104251530%_
                                   _%tl5104351533%_
                                   _%e5104451536%_
                                   _%hd5104551540%_
                                   _%tl5104651543%_
                                   _%e5107651386%_
                                   _%hd5107751390%_
                                   _%tl5107851393%_
                                   _%e5107951396%_
                                   _%hd5108051400%_
                                   _%tl5108151403%_
                                   _%__splice8677786778%_
                                   _%target5108251406%_
                                   _%tl5108451409%_)
                                  (if (gx#stx-pair? _%hd5103951520%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5103951520%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))
                          (if (gx#stx-pair? _%hd5103951520%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5103951520%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                      (if (gx#stx-pair? _%hd5103951520%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5103951520%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (if (gx#stx-pair/null? _%tl5103751513%_)
                                  (let ((_%__splice8678186782%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5103751513%_
                                          '0)))
                                    (let ((_%tl5110951269%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '1)))
                                          (_%target5110751266%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5110951269%_)
                                          (_%__match8706787068%_
                                           _%e5103251496%_
                                           _%hd5103351500%_
                                           _%tl5103451503%_
                                           _%e5103551506%_
                                           _%hd5103651510%_
                                           _%tl5103751513%_
                                           _%e5103851516%_
                                           _%hd5103951520%_
                                           _%tl5104051523%_
                                           _%e5110451256%_
                                           _%hd5110551260%_
                                           _%tl5110651263%_
                                           _%__splice8678186782%_
                                           _%target5110751266%_
                                           _%tl5110951269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_))))))
              (if (gx#stx-pair? _%hd5103951520%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5103951520%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (if (gx#stx-pair/null? _%tl5103751513%_)
                          (let ((_%__splice8678186782%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5103751513%_
                                  '0)))
                            (let ((_%tl5110951269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8678186782%_ '1)))
                                  (_%target5110751266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8678186782%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110951269%_)
                                  (_%__match8706787068%_
                                   _%e5103251496%_
                                   _%hd5103351500%_
                                   _%tl5103451503%_
                                   _%e5103551506%_
                                   _%hd5103651510%_
                                   _%tl5103751513%_
                                   _%e5103851516%_
                                   _%hd5103951520%_
                                   _%tl5104051523%_
                                   _%e5110451256%_
                                   _%hd5110551260%_
                                   _%tl5110651263%_
                                   _%__splice8678186782%_
                                   _%target5110751266%_
                                   _%tl5110951269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5103951520%_)
                                                  (let ((_%e5110451256%_
                                                         (gx#syntax-e
                                                          _%hd5103951520%_)))
                                                    (let ((_%tl5110651263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5110451256%_)))
                                                          (_%hd5110551260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5110451256%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5103751513%_)
                                                          (let ((_%__splice8678186782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5103751513%_ '0)))
                    (let ((_%tl5110951269%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8678186782%_ '1)))
                          (_%target5110751266%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8678186782%_ '0))))
                      (if (gx#stx-null? _%tl5110951269%_)
                          (_%__match8706787068%_
                           _%e5103251496%_
                           _%hd5103351500%_
                           _%tl5103451503%_
                           _%e5103551506%_
                           _%hd5103651510%_
                           _%tl5103751513%_
                           _%e5103851516%_
                           _%hd5103951520%_
                           _%tl5104051523%_
                           _%e5110451256%_
                           _%hd5110551260%_
                           _%tl5110651263%_
                           _%__splice8678186782%_
                           _%target5110751266%_
                           _%tl5110951269%_)
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))))
                                  (if (gx#stx-pair? _%hd5103951520%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5103951520%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5103751513%_)
                                              (let ((_%__splice8678186782%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5103751513%_
                                                      '0)))
                                                (let ((_%tl5110951269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8678186782%_
                                                          '1)))
                                                      (_%target5110751266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8678186782%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5110951269%_)
                                                      (_%__match8706787068%_
                                                       _%e5103251496%_
                                                       _%hd5103351500%_
                                                       _%tl5103451503%_
                                                       _%e5103551506%_
                                                       _%hd5103651510%_
                                                       _%tl5103751513%_
                                                       _%e5103851516%_
                                                       _%hd5103951520%_
                                                       _%tl5104051523%_
                                                       _%e5110451256%_
                                                       _%hd5110551260%_
                                                       _%tl5110651263%_
                                                       _%__splice8678186782%_
                                                       _%target5110751266%_
                                                       _%tl5110951269%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5092851137%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))
                              (if (gx#stx-pair? _%hd5103951520%_)
                                  (let ((_%e5110451256%_
                                         (gx#syntax-e _%hd5103951520%_)))
                                    (let ((_%tl5110651263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5110451256%_)))
                                          (_%hd5110551260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5110451256%_))))
                                      (if (gx#stx-pair/null? _%tl5103751513%_)
                                          (let ((_%__splice8678186782%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5103751513%_
                                                  '0)))
                                            (let ((_%tl5110951269%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8678186782%_
                                                      '1)))
                                                  (_%target5110751266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8678186782%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5110951269%_)
                                                  (_%__match8706787068%_
                                                   _%e5103251496%_
                                                   _%hd5103351500%_
                                                   _%tl5103451503%_
                                                   _%e5103551506%_
                                                   _%hd5103651510%_
                                                   _%tl5103751513%_
                                                   _%e5103851516%_
                                                   _%hd5103951520%_
                                                   _%tl5104051523%_
                                                   _%e5110451256%_
                                                   _%hd5110551260%_
                                                   _%tl5110651263%_
                                                   _%__splice8678186782%_
                                                   _%target5110751266%_
                                                   _%tl5110951269%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                          (if (gx#stx-pair? _%hd5103951520%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5103951520%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (if (gx#stx-pair/null? _%tl5103751513%_)
                                      (let ((_%__splice8678186782%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5103751513%_
                                              '0)))
                                        (let ((_%tl5110951269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8678186782%_
                                                  '1)))
                                              (_%target5110751266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8678186782%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5110951269%_)
                                              (_%__match8706787068%_
                                               _%e5103251496%_
                                               _%hd5103351500%_
                                               _%tl5103451503%_
                                               _%e5103551506%_
                                               _%hd5103651510%_
                                               _%tl5103751513%_
                                               _%e5103851516%_
                                               _%hd5103951520%_
                                               _%tl5104051523%_
                                               _%e5110451256%_
                                               _%hd5110551260%_
                                               _%tl5110651263%_
                                               _%__splice8678186782%_
                                               _%target5110751266%_
                                               _%tl5110951269%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_))))))
                   (_%__match8693586936%_
                    (lambda (_%e5100551616%_
                             _%hd5100651620%_
                             _%tl5100751623%_
                             _%e5100851626%_
                             _%hd5100951630%_
                             _%tl5101051633%_
                             _%e5101151636%_
                             _%hd5101251640%_
                             _%tl5101351643%_
                             _%e5101451646%_
                             _%hd5101551650%_
                             _%tl5101651653%_
                             _%e5101751656%_
                             _%hd5101851660%_
                             _%tl5101951663%_
                             _%__splice8676986770%_
                             _%target5102051666%_
                             _%tl5102251669%_)
                      (letrec ((_%loop5102351672%_
                                (lambda (_%hd5102151676%_ _%body5102751679%_)
                                  (if (gx#stx-pair? _%hd5102151676%_)
                                      (let ((_%e5102451681%_
                                             (gx#syntax-e _%hd5102151676%_)))
                                        (let ((_%lp-tl5102651688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5102451681%_)))
                                              (_%lp-hd5102551685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5102451681%_))))
                                          (_%loop5102351672%_
                                           _%lp-tl5102651688%_
                                           (cons _%lp-hd5102551685%_
                                                 _%body5102751679%_))))
                                      (let ((_%body5102851691%_
                                             (reverse _%body5102751679%_)))
                                        (let ((_%g5100151694%_
                                               _%body5102851691%_)
                                              (_%g5100251696%_
                                               _%hd5101851660%_)
                                              (_%g5100351697%_
                                               _%hd5101551650%_)
                                              (_%g5100451698%_
                                               _%hd5101251640%_))
                                          (if (and (gx#identifier?
                                                    _%g5100451698%_)
                                                   (gx#identifier?
                                                    _%g5100251696%_)
                                                   (gx#identifier?
                                                    _%g5100351697%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5100351697%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5100351697%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5100351697%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5100351697%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8676786768%_
                                               _%g5100151694%_
                                               _%g5100251696%_
                                               _%g5100351697%_
                                               _%g5100451698%_)
                                              (_%__match8695986960%_
                                               _%e5100551616%_
                                               _%hd5100651620%_
                                               _%tl5100751623%_
                                               _%e5100851626%_
                                               _%hd5100951630%_
                                               _%tl5101051633%_
                                               _%e5101151636%_
                                               _%hd5101251640%_
                                               _%tl5101351643%_
                                               _%e5101451646%_
                                               _%hd5101551650%_
                                               _%tl5101651653%_))))))))
                        (_%loop5102351672%_ _%target5102051666%_ '()))))
                   (_%__match8689586896%_
                    (lambda (_%e5096851767%_
                             _%hd5096951771%_
                             _%tl5097051774%_
                             _%e5097151777%_
                             _%hd5097251781%_
                             _%tl5097351784%_
                             _%e5097451787%_
                             _%hd5097551791%_
                             _%tl5097651794%_
                             _%e5097751797%_
                             _%hd5097851801%_
                             _%tl5097951804%_
                             _%e5098051807%_
                             _%hd5098151811%_
                             _%tl5098251814%_
                             _%e5098351817%_
                             _%hd5098451821%_
                             _%tl5098551824%_
                             _%e5098651827%_
                             _%hd5098751831%_
                             _%tl5098851834%_
                             _%e5098951837%_
                             _%hd5099051841%_
                             _%tl5099151844%_
                             _%__splice8676586766%_
                             _%target5099251847%_
                             _%tl5099451850%_)
                      (letrec ((_%loop5099551853%_
                                (lambda (_%hd5099351857%_ _%body5099951860%_)
                                  (if (gx#stx-pair? _%hd5099351857%_)
                                      (let ((_%e5099651862%_
                                             (gx#syntax-e _%hd5099351857%_)))
                                        (let ((_%lp-tl5099851869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5099651862%_)))
                                              (_%lp-hd5099751866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5099651862%_))))
                                          (_%loop5099551853%_
                                           _%lp-tl5099851869%_
                                           (cons _%lp-hd5099751866%_
                                                 _%body5099951860%_))))
                                      (let ((_%body5100051872%_
                                             (reverse _%body5099951860%_)))
                                        (let ((_%g5096251875%_
                                               _%body5100051872%_)
                                              (_%g5096351877%_
                                               _%hd5099051841%_)
                                              (_%g5096451878%_
                                               _%hd5098751831%_)
                                              (_%g5096551879%_
                                               _%hd5098451821%_)
                                              (_%g5096651880%_
                                               _%hd5097851801%_)
                                              (_%g5096751881%_
                                               _%hd5097551791%_))
                                          (if (and (gx#identifier?
                                                    _%g5096751881%_)
                                                   (gx#identifier?
                                                    _%g5096351877%_)
                                                   (gx#identifier?
                                                    _%g5096451878%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5096451878%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5096451878%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5096451878%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5096451878%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8676386764%_
                                               _%g5096251875%_
                                               _%g5096351877%_
                                               _%g5096451878%_
                                               _%g5096551879%_
                                               _%g5096651880%_
                                               _%g5096751881%_)
                                              (_%__match8695986960%_
                                               _%e5096851767%_
                                               _%hd5096951771%_
                                               _%tl5097051774%_
                                               _%e5097151777%_
                                               _%hd5097251781%_
                                               _%tl5097351784%_
                                               _%e5097451787%_
                                               _%hd5097551791%_
                                               _%tl5097651794%_
                                               _%e5097751797%_
                                               _%hd5097851801%_
                                               _%tl5097951804%_))))))))
                        (_%loop5099551853%_ _%target5099251847%_ '()))))
                   (_%__match8686386864%_
                    (lambda (_%e5096851767%_
                             _%hd5096951771%_
                             _%tl5097051774%_
                             _%e5097151777%_
                             _%hd5097251781%_
                             _%tl5097351784%_
                             _%e5097451787%_
                             _%hd5097551791%_
                             _%tl5097651794%_
                             _%e5097751797%_
                             _%hd5097851801%_
                             _%tl5097951804%_
                             _%e5098051807%_
                             _%hd5098151811%_
                             _%tl5098251814%_)
                      (if (gx#identifier? _%hd5098151811%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92661_|
                               _%hd5098151811%_)
                              (if (gx#stx-pair? _%tl5098251814%_)
                                  (let ((_%e5098351817%_
                                         (gx#syntax-e _%tl5098251814%_)))
                                    (let ((_%tl5098551824%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5098351817%_)))
                                          (_%hd5098451821%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5098351817%_))))
                                      (if (gx#stx-pair? _%tl5098551824%_)
                                          (let ((_%e5098651827%_
                                                 (gx#syntax-e
                                                  _%tl5098551824%_)))
                                            (let ((_%tl5098851834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5098651827%_)))
                                                  (_%hd5098751831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5098651827%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5098851834%_)
                                                  (let ((_%e5098951837%_
                                                         (gx#syntax-e
                                                          _%tl5098851834%_)))
                                                    (let ((_%tl5099151844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5098951837%_)))
                                                          (_%hd5099051841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5098951837%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5099151844%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5097351784%_)
                                                              (let ((_%__splice8676586766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5097351784%_
                              '0)))
                        (let ((_%tl5099451850%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8676586766%_ '1)))
                              (_%target5099251847%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8676586766%_ '0))))
                          (if (gx#stx-null? _%tl5099451850%_)
                              (_%__match8689586896%_
                               _%e5096851767%_
                               _%hd5096951771%_
                               _%tl5097051774%_
                               _%e5097151777%_
                               _%hd5097251781%_
                               _%tl5097351784%_
                               _%e5097451787%_
                               _%hd5097551791%_
                               _%tl5097651794%_
                               _%e5097751797%_
                               _%hd5097851801%_
                               _%tl5097951804%_
                               _%e5098051807%_
                               _%hd5098151811%_
                               _%tl5098251814%_
                               _%e5098351817%_
                               _%hd5098451821%_
                               _%tl5098551824%_
                               _%e5098651827%_
                               _%hd5098751831%_
                               _%tl5098851834%_
                               _%e5098951837%_
                               _%hd5099051841%_
                               _%tl5099151844%_
                               _%__splice8676586766%_
                               _%target5099251847%_
                               _%tl5099451850%_)
                              (if (gx#stx-pair? _%hd5097551791%_)
                                  (let ((_%e5110451256%_
                                         (gx#syntax-e _%hd5097551791%_)))
                                    (let ((_%tl5110651263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5110451256%_)))
                                          (_%hd5110551260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5110451256%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))))
                      (if (gx#stx-pair? _%hd5097551791%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5097551791%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                          (let () (declare (not safe)) (_%g5092851137%_))))
                  (if (gx#stx-pair? _%hd5097551791%_)
                      (let ((_%e5110451256%_ (gx#syntax-e _%hd5097551791%_)))
                        (let ((_%tl5110651263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5110451256%_)))
                              (_%hd5110551260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5110451256%_))))
                          (if (gx#stx-pair/null? _%tl5097351784%_)
                              (let ((_%__splice8678186782%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5097351784%_
                                      '0)))
                                (let ((_%tl5110951269%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '1)))
                                      (_%target5110751266%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5110951269%_)
                                      (_%__match8706787068%_
                                       _%e5096851767%_
                                       _%hd5096951771%_
                                       _%tl5097051774%_
                                       _%e5097151777%_
                                       _%hd5097251781%_
                                       _%tl5097351784%_
                                       _%e5097451787%_
                                       _%hd5097551791%_
                                       _%tl5097651794%_
                                       _%e5110451256%_
                                       _%hd5110551260%_
                                       _%tl5110651263%_
                                       _%__splice8678186782%_
                                       _%target5110751266%_
                                       _%tl5110951269%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5097851801%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92660_|
                                                           _%hd5097851801%_)
                                                          (if (gx#stx-null?
                                                               _%tl5098851834%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5097351784%_)
                          (let ((_%__splice8677786778%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097351784%_
                                  '0)))
                            (let ((_%tl5108451409%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8677786778%_ '1)))
                                  (_%target5108251406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8677786778%_
                                      '0))))
                              (if (gx#stx-null? _%tl5108451409%_)
                                  (_%__match8703587036%_
                                   _%e5096851767%_
                                   _%hd5096951771%_
                                   _%tl5097051774%_
                                   _%e5097151777%_
                                   _%hd5097251781%_
                                   _%tl5097351784%_
                                   _%e5097451787%_
                                   _%hd5097551791%_
                                   _%tl5097651794%_
                                   _%e5097751797%_
                                   _%hd5097851801%_
                                   _%tl5097951804%_
                                   _%e5098051807%_
                                   _%hd5098151811%_
                                   _%tl5098251814%_
                                   _%e5098351817%_
                                   _%hd5098451821%_
                                   _%tl5098551824%_
                                   _%e5098651827%_
                                   _%hd5098751831%_
                                   _%tl5098851834%_
                                   _%__splice8677786778%_
                                   _%target5108251406%_
                                   _%tl5108451409%_)
                                  (if (gx#stx-pair? _%hd5097551791%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5097551791%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))
                          (if (gx#stx-pair? _%hd5097551791%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5097551791%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                      (if (gx#stx-pair? _%hd5097551791%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5097551791%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (if (gx#stx-pair/null? _%tl5097351784%_)
                                  (let ((_%__splice8678186782%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5097351784%_
                                          '0)))
                                    (let ((_%tl5110951269%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '1)))
                                          (_%target5110751266%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5110951269%_)
                                          (_%__match8706787068%_
                                           _%e5096851767%_
                                           _%hd5096951771%_
                                           _%tl5097051774%_
                                           _%e5097151777%_
                                           _%hd5097251781%_
                                           _%tl5097351784%_
                                           _%e5097451787%_
                                           _%hd5097551791%_
                                           _%tl5097651794%_
                                           _%e5110451256%_
                                           _%hd5110551260%_
                                           _%tl5110651263%_
                                           _%__splice8678186782%_
                                           _%target5110751266%_
                                           _%tl5110951269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_))))
                  (if (gx#stx-pair? _%hd5097551791%_)
                      (let ((_%e5110451256%_ (gx#syntax-e _%hd5097551791%_)))
                        (let ((_%tl5110651263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5110451256%_)))
                              (_%hd5110551260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5110451256%_))))
                          (if (gx#stx-pair/null? _%tl5097351784%_)
                              (let ((_%__splice8678186782%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5097351784%_
                                      '0)))
                                (let ((_%tl5110951269%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '1)))
                                      (_%target5110751266%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5110951269%_)
                                      (_%__match8706787068%_
                                       _%e5096851767%_
                                       _%hd5096951771%_
                                       _%tl5097051774%_
                                       _%e5097151777%_
                                       _%hd5097251781%_
                                       _%tl5097351784%_
                                       _%e5097451787%_
                                       _%hd5097551791%_
                                       _%tl5097651794%_
                                       _%e5110451256%_
                                       _%hd5110551260%_
                                       _%tl5110651263%_
                                       _%__splice8678186782%_
                                       _%target5110751266%_
                                       _%tl5110951269%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_))))
              (if (gx#stx-pair? _%hd5097551791%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5097551791%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (if (gx#stx-pair/null? _%tl5097351784%_)
                          (let ((_%__splice8678186782%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097351784%_
                                  '0)))
                            (let ((_%tl5110951269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8678186782%_ '1)))
                                  (_%target5110751266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8678186782%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110951269%_)
                                  (_%__match8706787068%_
                                   _%e5096851767%_
                                   _%hd5096951771%_
                                   _%tl5097051774%_
                                   _%e5097151777%_
                                   _%hd5097251781%_
                                   _%tl5097351784%_
                                   _%e5097451787%_
                                   _%hd5097551791%_
                                   _%tl5097651794%_
                                   _%e5110451256%_
                                   _%hd5110551260%_
                                   _%tl5110651263%_
                                   _%__splice8678186782%_
                                   _%target5110751266%_
                                   _%tl5110951269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5097551791%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5097551791%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097351784%_)
                                                      (let ((_%__splice8678186782%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097351784%_
                                                              '0)))
                                                        (let ((_%tl5110951269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '1)))
                      (_%target5110751266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '0))))
                  (if (gx#stx-null? _%tl5110951269%_)
                      (_%__match8706787068%_
                       _%e5096851767%_
                       _%hd5096951771%_
                       _%tl5097051774%_
                       _%e5097151777%_
                       _%hd5097251781%_
                       _%tl5097351784%_
                       _%e5097451787%_
                       _%hd5097551791%_
                       _%tl5097651794%_
                       _%e5110451256%_
                       _%hd5110551260%_
                       _%tl5110651263%_
                       _%__splice8678186782%_
                       _%target5110751266%_
                       _%tl5110951269%_)
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))))
                                  (if (gx#stx-null? _%tl5098251814%_)
                                      (if (gx#stx-pair/null? _%tl5097351784%_)
                                          (let ((_%__splice8676986770%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5097351784%_
                                                  '0)))
                                            (let ((_%tl5102251669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8676986770%_
                                                      '1)))
                                                  (_%target5102051666%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8676986770%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5102251669%_)
                                                  (_%__match8693586936%_
                                                   _%e5096851767%_
                                                   _%hd5096951771%_
                                                   _%tl5097051774%_
                                                   _%e5097151777%_
                                                   _%hd5097251781%_
                                                   _%tl5097351784%_
                                                   _%e5097451787%_
                                                   _%hd5097551791%_
                                                   _%tl5097651794%_
                                                   _%e5097751797%_
                                                   _%hd5097851801%_
                                                   _%tl5097951804%_
                                                   _%e5098051807%_
                                                   _%hd5098151811%_
                                                   _%tl5098251814%_
                                                   _%__splice8676986770%_
                                                   _%target5102051666%_
                                                   _%tl5102251669%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5097551791%_)
                                                      (let ((_%e5110451256%_
                                                             (gx#syntax-e
                                                              _%hd5097551791%_)))
                                                        (let ((_%tl5110651263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5110451256%_)))
                      (_%hd5110551260%_
                       (let () (declare (not safe)) (##car _%e5110451256%_))))
                  (let () (declare (not safe)) (_%g5092851137%_))))
              (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5097551791%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5097551791%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                      (if (gx#stx-pair? _%hd5097551791%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5097551791%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5097351784%_)
                                                  (let ((_%__splice8678186782%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5097351784%_
                                                          '0)))
                                                    (let ((_%tl5110951269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '1)))
                                                          (_%target5110751266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5110951269%_)
                                                          (_%__match8706787068%_
                                                           _%e5096851767%_
                                                           _%hd5096951771%_
                                                           _%tl5097051774%_
                                                           _%e5097151777%_
                                                           _%hd5097251781%_
                                                           _%tl5097351784%_
                                                           _%e5097451787%_
                                                           _%hd5097551791%_
                                                           _%tl5097651794%_
                                                           _%e5110451256%_
                                                           _%hd5110551260%_
                                                           _%tl5110651263%_
                                                           _%__splice8678186782%_
                                                           _%target5110751266%_
                                                           _%tl5110951269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5092851137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                              (if (gx#stx-null? _%tl5098251814%_)
                                  (if (gx#stx-pair/null? _%tl5097351784%_)
                                      (let ((_%__splice8676986770%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5097351784%_
                                              '0)))
                                        (let ((_%tl5102251669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8676986770%_
                                                  '1)))
                                              (_%target5102051666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8676986770%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5102251669%_)
                                              (_%__match8693586936%_
                                               _%e5096851767%_
                                               _%hd5096951771%_
                                               _%tl5097051774%_
                                               _%e5097151777%_
                                               _%hd5097251781%_
                                               _%tl5097351784%_
                                               _%e5097451787%_
                                               _%hd5097551791%_
                                               _%tl5097651794%_
                                               _%e5097751797%_
                                               _%hd5097851801%_
                                               _%tl5097951804%_
                                               _%e5098051807%_
                                               _%hd5098151811%_
                                               _%tl5098251814%_
                                               _%__splice8676986770%_
                                               _%target5102051666%_
                                               _%tl5102251669%_)
                                              (if (gx#stx-pair?
                                                   _%hd5097551791%_)
                                                  (let ((_%e5110451256%_
                                                         (gx#syntax-e
                                                          _%hd5097551791%_)))
                                                    (let ((_%tl5110651263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5110451256%_)))
                                                          (_%hd5110551260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5110451256%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5092851137%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_))))))
                                      (if (gx#stx-pair? _%hd5097551791%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5097551791%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                  (if (gx#identifier? _%hd5097851801%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92660_|
                                           _%hd5097851801%_)
                                          (if (gx#stx-pair? _%tl5098251814%_)
                                              (let ((_%e5107651386%_
                                                     (gx#syntax-e
                                                      _%tl5098251814%_)))
                                                (let ((_%tl5107851393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5107651386%_)))
                                                      (_%hd5107751390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5107651386%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5107851393%_)
                                                      (let ((_%e5107951396%_
                                                             (gx#syntax-e
                                                              _%tl5107851393%_)))
                                                        (let ((_%tl5108151403%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5107951396%_)))
                      (_%hd5108051400%_
                       (let () (declare (not safe)) (##car _%e5107951396%_))))
                  (if (gx#stx-null? _%tl5108151403%_)
                      (if (gx#stx-pair/null? _%tl5097351784%_)
                          (let ((_%__splice8677786778%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097351784%_
                                  '0)))
                            (let ((_%tl5108451409%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8677786778%_ '1)))
                                  (_%target5108251406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8677786778%_
                                      '0))))
                              (if (gx#stx-null? _%tl5108451409%_)
                                  (_%__match8703587036%_
                                   _%e5096851767%_
                                   _%hd5096951771%_
                                   _%tl5097051774%_
                                   _%e5097151777%_
                                   _%hd5097251781%_
                                   _%tl5097351784%_
                                   _%e5097451787%_
                                   _%hd5097551791%_
                                   _%tl5097651794%_
                                   _%e5097751797%_
                                   _%hd5097851801%_
                                   _%tl5097951804%_
                                   _%e5098051807%_
                                   _%hd5098151811%_
                                   _%tl5098251814%_
                                   _%e5107651386%_
                                   _%hd5107751390%_
                                   _%tl5107851393%_
                                   _%e5107951396%_
                                   _%hd5108051400%_
                                   _%tl5108151403%_
                                   _%__splice8677786778%_
                                   _%target5108251406%_
                                   _%tl5108451409%_)
                                  (if (gx#stx-pair? _%hd5097551791%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5097551791%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))
                          (if (gx#stx-pair? _%hd5097551791%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5097551791%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                      (if (gx#stx-pair? _%hd5097551791%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5097551791%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (if (gx#stx-pair/null? _%tl5097351784%_)
                                  (let ((_%__splice8678186782%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5097351784%_
                                          '0)))
                                    (let ((_%tl5110951269%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '1)))
                                          (_%target5110751266%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5110951269%_)
                                          (_%__match8706787068%_
                                           _%e5096851767%_
                                           _%hd5096951771%_
                                           _%tl5097051774%_
                                           _%e5097151777%_
                                           _%hd5097251781%_
                                           _%tl5097351784%_
                                           _%e5097451787%_
                                           _%hd5097551791%_
                                           _%tl5097651794%_
                                           _%e5110451256%_
                                           _%hd5110551260%_
                                           _%tl5110651263%_
                                           _%__splice8678186782%_
                                           _%target5110751266%_
                                           _%tl5110951269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_))))))
              (if (gx#stx-pair? _%hd5097551791%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5097551791%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (if (gx#stx-pair/null? _%tl5097351784%_)
                          (let ((_%__splice8678186782%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097351784%_
                                  '0)))
                            (let ((_%tl5110951269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8678186782%_ '1)))
                                  (_%target5110751266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8678186782%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110951269%_)
                                  (_%__match8706787068%_
                                   _%e5096851767%_
                                   _%hd5096951771%_
                                   _%tl5097051774%_
                                   _%e5097151777%_
                                   _%hd5097251781%_
                                   _%tl5097351784%_
                                   _%e5097451787%_
                                   _%hd5097551791%_
                                   _%tl5097651794%_
                                   _%e5110451256%_
                                   _%hd5110551260%_
                                   _%tl5110651263%_
                                   _%__splice8678186782%_
                                   _%target5110751266%_
                                   _%tl5110951269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5097551791%_)
                                                  (let ((_%e5110451256%_
                                                         (gx#syntax-e
                                                          _%hd5097551791%_)))
                                                    (let ((_%tl5110651263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5110451256%_)))
                                                          (_%hd5110551260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5110451256%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5097351784%_)
                                                          (let ((_%__splice8678186782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5097351784%_ '0)))
                    (let ((_%tl5110951269%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8678186782%_ '1)))
                          (_%target5110751266%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8678186782%_ '0))))
                      (if (gx#stx-null? _%tl5110951269%_)
                          (_%__match8706787068%_
                           _%e5096851767%_
                           _%hd5096951771%_
                           _%tl5097051774%_
                           _%e5097151777%_
                           _%hd5097251781%_
                           _%tl5097351784%_
                           _%e5097451787%_
                           _%hd5097551791%_
                           _%tl5097651794%_
                           _%e5110451256%_
                           _%hd5110551260%_
                           _%tl5110651263%_
                           _%__splice8678186782%_
                           _%target5110751266%_
                           _%tl5110951269%_)
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_))))
                                          (if (gx#stx-pair? _%hd5097551791%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5097551791%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097351784%_)
                                                      (let ((_%__splice8678186782%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097351784%_
                                                              '0)))
                                                        (let ((_%tl5110951269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '1)))
                      (_%target5110751266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '0))))
                  (if (gx#stx-null? _%tl5110951269%_)
                      (_%__match8706787068%_
                       _%e5096851767%_
                       _%hd5096951771%_
                       _%tl5097051774%_
                       _%e5097151777%_
                       _%hd5097251781%_
                       _%tl5097351784%_
                       _%e5097451787%_
                       _%hd5097551791%_
                       _%tl5097651794%_
                       _%e5110451256%_
                       _%hd5110551260%_
                       _%tl5110651263%_
                       _%__splice8678186782%_
                       _%target5110751266%_
                       _%tl5110951269%_)
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                      (if (gx#stx-pair? _%hd5097551791%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5097551791%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5097351784%_)
                                                  (let ((_%__splice8678186782%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5097351784%_
                                                          '0)))
                                                    (let ((_%tl5110951269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '1)))
                                                          (_%target5110751266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5110951269%_)
                                                          (_%__match8706787068%_
                                                           _%e5096851767%_
                                                           _%hd5096951771%_
                                                           _%tl5097051774%_
                                                           _%e5097151777%_
                                                           _%hd5097251781%_
                                                           _%tl5097351784%_
                                                           _%e5097451787%_
                                                           _%hd5097551791%_
                                                           _%tl5097651794%_
                                                           _%e5110451256%_
                                                           _%hd5110551260%_
                                                           _%tl5110651263%_
                                                           _%__splice8678186782%_
                                                           _%target5110751266%_
                                                           _%tl5110951269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5092851137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))))
                          (if (gx#stx-null? _%tl5098251814%_)
                              (if (gx#stx-pair/null? _%tl5097351784%_)
                                  (let ((_%__splice8676986770%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5097351784%_
                                          '0)))
                                    (let ((_%tl5102251669%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8676986770%_
                                              '1)))
                                          (_%target5102051666%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8676986770%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5102251669%_)
                                          (_%__match8693586936%_
                                           _%e5096851767%_
                                           _%hd5096951771%_
                                           _%tl5097051774%_
                                           _%e5097151777%_
                                           _%hd5097251781%_
                                           _%tl5097351784%_
                                           _%e5097451787%_
                                           _%hd5097551791%_
                                           _%tl5097651794%_
                                           _%e5097751797%_
                                           _%hd5097851801%_
                                           _%tl5097951804%_
                                           _%e5098051807%_
                                           _%hd5098151811%_
                                           _%tl5098251814%_
                                           _%__splice8676986770%_
                                           _%target5102051666%_
                                           _%tl5102251669%_)
                                          (if (gx#stx-pair? _%hd5097551791%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5097551791%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))))
                                  (if (gx#stx-pair? _%hd5097551791%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5097551791%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))
                              (if (gx#identifier? _%hd5097851801%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92660_|
                                       _%hd5097851801%_)
                                      (if (gx#stx-pair? _%tl5098251814%_)
                                          (let ((_%e5107651386%_
                                                 (gx#syntax-e
                                                  _%tl5098251814%_)))
                                            (let ((_%tl5107851393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5107651386%_)))
                                                  (_%hd5107751390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5107651386%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5107851393%_)
                                                  (let ((_%e5107951396%_
                                                         (gx#syntax-e
                                                          _%tl5107851393%_)))
                                                    (let ((_%tl5108151403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5107951396%_)))
                                                          (_%hd5108051400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5107951396%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5108151403%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5097351784%_)
                                                              (let ((_%__splice8677786778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5097351784%_
                              '0)))
                        (let ((_%tl5108451409%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8677786778%_ '1)))
                              (_%target5108251406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8677786778%_ '0))))
                          (if (gx#stx-null? _%tl5108451409%_)
                              (_%__match8703587036%_
                               _%e5096851767%_
                               _%hd5096951771%_
                               _%tl5097051774%_
                               _%e5097151777%_
                               _%hd5097251781%_
                               _%tl5097351784%_
                               _%e5097451787%_
                               _%hd5097551791%_
                               _%tl5097651794%_
                               _%e5097751797%_
                               _%hd5097851801%_
                               _%tl5097951804%_
                               _%e5098051807%_
                               _%hd5098151811%_
                               _%tl5098251814%_
                               _%e5107651386%_
                               _%hd5107751390%_
                               _%tl5107851393%_
                               _%e5107951396%_
                               _%hd5108051400%_
                               _%tl5108151403%_
                               _%__splice8677786778%_
                               _%target5108251406%_
                               _%tl5108451409%_)
                              (if (gx#stx-pair? _%hd5097551791%_)
                                  (let ((_%e5110451256%_
                                         (gx#syntax-e _%hd5097551791%_)))
                                    (let ((_%tl5110651263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5110451256%_)))
                                          (_%hd5110551260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5110451256%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))))
                      (if (gx#stx-pair? _%hd5097551791%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5097551791%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                          (let () (declare (not safe)) (_%g5092851137%_))))
                  (if (gx#stx-pair? _%hd5097551791%_)
                      (let ((_%e5110451256%_ (gx#syntax-e _%hd5097551791%_)))
                        (let ((_%tl5110651263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5110451256%_)))
                              (_%hd5110551260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5110451256%_))))
                          (if (gx#stx-pair/null? _%tl5097351784%_)
                              (let ((_%__splice8678186782%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5097351784%_
                                      '0)))
                                (let ((_%tl5110951269%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '1)))
                                      (_%target5110751266%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5110951269%_)
                                      (_%__match8706787068%_
                                       _%e5096851767%_
                                       _%hd5096951771%_
                                       _%tl5097051774%_
                                       _%e5097151777%_
                                       _%hd5097251781%_
                                       _%tl5097351784%_
                                       _%e5097451787%_
                                       _%hd5097551791%_
                                       _%tl5097651794%_
                                       _%e5110451256%_
                                       _%hd5110551260%_
                                       _%tl5110651263%_
                                       _%__splice8678186782%_
                                       _%target5110751266%_
                                       _%tl5110951269%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5097551791%_)
                                                      (let ((_%e5110451256%_
                                                             (gx#syntax-e
                                                              _%hd5097551791%_)))
                                                        (let ((_%tl5110651263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5110451256%_)))
                      (_%hd5110551260%_
                       (let () (declare (not safe)) (##car _%e5110451256%_))))
                  (if (gx#stx-pair/null? _%tl5097351784%_)
                      (let ((_%__splice8678186782%_
                             (gx#syntax-split-splice->vector
                              _%tl5097351784%_
                              '0)))
                        (let ((_%tl5110951269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '1)))
                              (_%target5110751266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '0))))
                          (if (gx#stx-null? _%tl5110951269%_)
                              (_%__match8706787068%_
                               _%e5096851767%_
                               _%hd5096951771%_
                               _%tl5097051774%_
                               _%e5097151777%_
                               _%hd5097251781%_
                               _%tl5097351784%_
                               _%e5097451787%_
                               _%hd5097551791%_
                               _%tl5097651794%_
                               _%e5110451256%_
                               _%hd5110551260%_
                               _%tl5110651263%_
                               _%__splice8678186782%_
                               _%target5110751266%_
                               _%tl5110951269%_)
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5097551791%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5097551791%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097351784%_)
                                                      (let ((_%__splice8678186782%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097351784%_
                                                              '0)))
                                                        (let ((_%tl5110951269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '1)))
                      (_%target5110751266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '0))))
                  (if (gx#stx-null? _%tl5110951269%_)
                      (_%__match8706787068%_
                       _%e5096851767%_
                       _%hd5096951771%_
                       _%tl5097051774%_
                       _%e5097151777%_
                       _%hd5097251781%_
                       _%tl5097351784%_
                       _%e5097451787%_
                       _%hd5097551791%_
                       _%tl5097651794%_
                       _%e5110451256%_
                       _%hd5110551260%_
                       _%tl5110651263%_
                       _%__splice8678186782%_
                       _%target5110751266%_
                       _%tl5110951269%_)
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                      (if (gx#stx-pair? _%hd5097551791%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5097551791%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5097351784%_)
                                                  (let ((_%__splice8678186782%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5097351784%_
                                                          '0)))
                                                    (let ((_%tl5110951269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '1)))
                                                          (_%target5110751266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5110951269%_)
                                                          (_%__match8706787068%_
                                                           _%e5096851767%_
                                                           _%hd5096951771%_
                                                           _%tl5097051774%_
                                                           _%e5097151777%_
                                                           _%hd5097251781%_
                                                           _%tl5097351784%_
                                                           _%e5097451787%_
                                                           _%hd5097551791%_
                                                           _%tl5097651794%_
                                                           _%e5110451256%_
                                                           _%hd5110551260%_
                                                           _%tl5110651263%_
                                                           _%__splice8678186782%_
                                                           _%target5110751266%_
                                                           _%tl5110951269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5092851137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                  (if (gx#stx-pair? _%hd5097551791%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5097551791%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5097351784%_)
                                              (let ((_%__splice8678186782%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5097351784%_
                                                      '0)))
                                                (let ((_%tl5110951269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8678186782%_
                                                          '1)))
                                                      (_%target5110751266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8678186782%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5110951269%_)
                                                      (_%__match8706787068%_
                                                       _%e5096851767%_
                                                       _%hd5096951771%_
                                                       _%tl5097051774%_
                                                       _%e5097151777%_
                                                       _%hd5097251781%_
                                                       _%tl5097351784%_
                                                       _%e5097451787%_
                                                       _%hd5097551791%_
                                                       _%tl5097651794%_
                                                       _%e5110451256%_
                                                       _%hd5110551260%_
                                                       _%tl5110651263%_
                                                       _%__splice8678186782%_
                                                       _%target5110751266%_
                                                       _%tl5110951269%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5092851137%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))))
                   (_%__match8683386834%_
                    (lambda (_%e5093551941%_
                             _%hd5093651945%_
                             _%tl5093751948%_
                             _%e5093851951%_
                             _%hd5093951955%_
                             _%tl5094051958%_
                             _%e5094151961%_
                             _%hd5094251965%_
                             _%tl5094351968%_
                             _%e5094451971%_
                             _%hd5094551975%_
                             _%tl5094651978%_
                             _%e5094751981%_
                             _%hd5094851985%_
                             _%tl5094951988%_
                             _%e5095051991%_
                             _%hd5095151995%_
                             _%tl5095251998%_
                             _%__splice8676186762%_
                             _%target5095352001%_
                             _%tl5095552004%_)
                      (letrec ((_%loop5095652007%_
                                (lambda (_%hd5095452011%_ _%body5096052014%_)
                                  (if (gx#stx-pair? _%hd5095452011%_)
                                      (let ((_%e5095752016%_
                                             (gx#syntax-e _%hd5095452011%_)))
                                        (let ((_%lp-tl5095952023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5095752016%_)))
                                              (_%lp-hd5095852020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5095752016%_))))
                                          (_%loop5095652007%_
                                           _%lp-tl5095952023%_
                                           (cons _%lp-hd5095852020%_
                                                 _%body5096052014%_))))
                                      (let ((_%body5096152026%_
                                             (reverse _%body5096052014%_)))
                                        (let ((_%g5093052029%_
                                               _%body5096152026%_)
                                              (_%g5093152031%_
                                               _%hd5095151995%_)
                                              (_%g5093252032%_
                                               _%hd5094851985%_)
                                              (_%g5093352033%_
                                               _%hd5094551975%_)
                                              (_%g5093452034%_
                                               _%hd5094251965%_))
                                          (if (and (gx#identifier?
                                                    _%g5093452034%_)
                                                   (gx#identifier?
                                                    _%g5093252032%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5093252032%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5093252032%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5093252032%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5093252032%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5093252032%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8675986760%_
                                               _%g5093052029%_
                                               _%g5093152031%_
                                               _%g5093252032%_
                                               _%g5093352033%_
                                               _%g5093452034%_)
                                              (_%__match8686386864%_
                                               _%e5093551941%_
                                               _%hd5093651945%_
                                               _%tl5093751948%_
                                               _%e5093851951%_
                                               _%hd5093951955%_
                                               _%tl5094051958%_
                                               _%e5094151961%_
                                               _%hd5094251965%_
                                               _%tl5094351968%_
                                               _%e5094451971%_
                                               _%hd5094551975%_
                                               _%tl5094651978%_
                                               _%e5094751981%_
                                               _%hd5094851985%_
                                               _%tl5094951988%_))))))))
                        (_%loop5095652007%_ _%target5095352001%_ '())))))
              (if (gx#stx-pair? _%__stx8675686757%_)
                  (let ((_%e5093551941%_ (gx#syntax-e _%__stx8675686757%_)))
                    (let ((_%tl5093751948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5093551941%_)))
                          (_%hd5093651945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5093551941%_))))
                      (if (gx#stx-pair? _%tl5093751948%_)
                          (let ((_%e5093851951%_
                                 (gx#syntax-e _%tl5093751948%_)))
                            (let ((_%tl5094051958%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5093851951%_)))
                                  (_%hd5093951955%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5093851951%_))))
                              (if (gx#stx-pair? _%hd5093951955%_)
                                  (let ((_%e5094151961%_
                                         (gx#syntax-e _%hd5093951955%_)))
                                    (let ((_%tl5094351968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5094151961%_)))
                                          (_%hd5094251965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5094151961%_))))
                                      (if (gx#stx-pair? _%tl5094351968%_)
                                          (let ((_%e5094451971%_
                                                 (gx#syntax-e
                                                  _%tl5094351968%_)))
                                            (let ((_%tl5094651978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5094451971%_)))
                                                  (_%hd5094551975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5094451971%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5094651978%_)
                                                  (let ((_%e5094751981%_
                                                         (gx#syntax-e
                                                          _%tl5094651978%_)))
                                                    (let ((_%tl5094951988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5094751981%_)))
                                                          (_%hd5094851985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5094751981%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5094951988%_)
                                                          (let ((_%e5095051991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5094951988%_)))
                    (let ((_%tl5095251998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5095051991%_)))
                          (_%hd5095151995%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5095051991%_))))
                      (if (gx#stx-null? _%tl5095251998%_)
                          (if (gx#stx-pair/null? _%tl5094051958%_)
                              (let ((_%__splice8676186762%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5094051958%_
                                      '0)))
                                (let ((_%tl5095552004%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8676186762%_
                                          '1)))
                                      (_%target5095352001%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8676186762%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5095552004%_)
                                      (_%__match8683386834%_
                                       _%e5093551941%_
                                       _%hd5093651945%_
                                       _%tl5093751948%_
                                       _%e5093851951%_
                                       _%hd5093951955%_
                                       _%tl5094051958%_
                                       _%e5094151961%_
                                       _%hd5094251965%_
                                       _%tl5094351968%_
                                       _%e5094451971%_
                                       _%hd5094551975%_
                                       _%tl5094651978%_
                                       _%e5094751981%_
                                       _%hd5094851985%_
                                       _%tl5094951988%_
                                       _%e5095051991%_
                                       _%hd5095151995%_
                                       _%tl5095251998%_
                                       _%__splice8676186762%_
                                       _%target5095352001%_
                                       _%tl5095552004%_)
                                      (if (gx#stx-pair? _%hd5094251965%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5094251965%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))))
                              (if (gx#stx-pair? _%hd5094251965%_)
                                  (let ((_%e5110451256%_
                                         (gx#syntax-e _%hd5094251965%_)))
                                    (let ((_%tl5110651263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5110451256%_)))
                                          (_%hd5110551260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5110451256%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                          (if (gx#identifier? _%hd5094851985%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g92661_|
                                   _%hd5094851985%_)
                                  (if (gx#stx-pair? _%tl5095251998%_)
                                      (let ((_%e5098651827%_
                                             (gx#syntax-e _%tl5095251998%_)))
                                        (let ((_%tl5098851834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5098651827%_)))
                                              (_%hd5098751831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5098651827%_))))
                                          (if (gx#stx-pair? _%tl5098851834%_)
                                              (let ((_%e5098951837%_
                                                     (gx#syntax-e
                                                      _%tl5098851834%_)))
                                                (let ((_%tl5099151844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5098951837%_)))
                                                      (_%hd5099051841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5098951837%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5099151844%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5094051958%_)
                                                          (let ((_%__splice8676586766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5094051958%_ '0)))
                    (let ((_%tl5099451850%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8676586766%_ '1)))
                          (_%target5099251847%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8676586766%_ '0))))
                      (if (gx#stx-null? _%tl5099451850%_)
                          (_%__match8689586896%_
                           _%e5093551941%_
                           _%hd5093651945%_
                           _%tl5093751948%_
                           _%e5093851951%_
                           _%hd5093951955%_
                           _%tl5094051958%_
                           _%e5094151961%_
                           _%hd5094251965%_
                           _%tl5094351968%_
                           _%e5094451971%_
                           _%hd5094551975%_
                           _%tl5094651978%_
                           _%e5094751981%_
                           _%hd5094851985%_
                           _%tl5094951988%_
                           _%e5095051991%_
                           _%hd5095151995%_
                           _%tl5095251998%_
                           _%e5098651827%_
                           _%hd5098751831%_
                           _%tl5098851834%_
                           _%e5098951837%_
                           _%hd5099051841%_
                           _%tl5099151844%_
                           _%__splice8676586766%_
                           _%target5099251847%_
                           _%tl5099451850%_)
                          (if (gx#stx-pair? _%hd5094251965%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5094251965%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_))))))
                  (if (gx#stx-pair? _%hd5094251965%_)
                      (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                        (let ((_%tl5110651263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5110451256%_)))
                              (_%hd5110551260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5110451256%_))))
                          (let () (declare (not safe)) (_%g5092851137%_))))
                      (let () (declare (not safe)) (_%g5092851137%_))))
              (if (gx#stx-pair? _%hd5094251965%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (if (gx#stx-pair/null? _%tl5094051958%_)
                          (let ((_%__splice8678186782%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5094051958%_
                                  '0)))
                            (let ((_%tl5110951269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8678186782%_ '1)))
                                  (_%target5110751266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8678186782%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110951269%_)
                                  (_%__match8706787068%_
                                   _%e5093551941%_
                                   _%hd5093651945%_
                                   _%tl5093751948%_
                                   _%e5093851951%_
                                   _%hd5093951955%_
                                   _%tl5094051958%_
                                   _%e5094151961%_
                                   _%hd5094251965%_
                                   _%tl5094351968%_
                                   _%e5110451256%_
                                   _%hd5110551260%_
                                   _%tl5110651263%_
                                   _%__splice8678186782%_
                                   _%target5110751266%_
                                   _%tl5110951269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5094551975%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g92660_|
                                                       _%hd5094551975%_)
                                                      (if (gx#stx-null?
                                                           _%tl5098851834%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5094051958%_)
                                                              (let ((_%__splice8677786778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5094051958%_
                              '0)))
                        (let ((_%tl5108451409%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8677786778%_ '1)))
                              (_%target5108251406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8677786778%_ '0))))
                          (if (gx#stx-null? _%tl5108451409%_)
                              (_%__match8703587036%_
                               _%e5093551941%_
                               _%hd5093651945%_
                               _%tl5093751948%_
                               _%e5093851951%_
                               _%hd5093951955%_
                               _%tl5094051958%_
                               _%e5094151961%_
                               _%hd5094251965%_
                               _%tl5094351968%_
                               _%e5094451971%_
                               _%hd5094551975%_
                               _%tl5094651978%_
                               _%e5094751981%_
                               _%hd5094851985%_
                               _%tl5094951988%_
                               _%e5095051991%_
                               _%hd5095151995%_
                               _%tl5095251998%_
                               _%e5098651827%_
                               _%hd5098751831%_
                               _%tl5098851834%_
                               _%__splice8677786778%_
                               _%target5108251406%_
                               _%tl5108451409%_)
                              (if (gx#stx-pair? _%hd5094251965%_)
                                  (let ((_%e5110451256%_
                                         (gx#syntax-e _%hd5094251965%_)))
                                    (let ((_%tl5110651263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5110451256%_)))
                                          (_%hd5110551260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5110451256%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))))
                      (if (gx#stx-pair? _%hd5094251965%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5094251965%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                          (let () (declare (not safe)) (_%g5092851137%_))))
                  (if (gx#stx-pair? _%hd5094251965%_)
                      (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                        (let ((_%tl5110651263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5110451256%_)))
                              (_%hd5110551260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5110451256%_))))
                          (if (gx#stx-pair/null? _%tl5094051958%_)
                              (let ((_%__splice8678186782%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5094051958%_
                                      '0)))
                                (let ((_%tl5110951269%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '1)))
                                      (_%target5110751266%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8678186782%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5110951269%_)
                                      (_%__match8706787068%_
                                       _%e5093551941%_
                                       _%hd5093651945%_
                                       _%tl5093751948%_
                                       _%e5093851951%_
                                       _%hd5093951955%_
                                       _%tl5094051958%_
                                       _%e5094151961%_
                                       _%hd5094251965%_
                                       _%tl5094351968%_
                                       _%e5110451256%_
                                       _%hd5110551260%_
                                       _%tl5110651263%_
                                       _%__splice8678186782%_
                                       _%target5110751266%_
                                       _%tl5110951269%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_))))
              (if (gx#stx-pair? _%hd5094251965%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (if (gx#stx-pair/null? _%tl5094051958%_)
                          (let ((_%__splice8678186782%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5094051958%_
                                  '0)))
                            (let ((_%tl5110951269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8678186782%_ '1)))
                                  (_%target5110751266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8678186782%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110951269%_)
                                  (_%__match8706787068%_
                                   _%e5093551941%_
                                   _%hd5093651945%_
                                   _%tl5093751948%_
                                   _%e5093851951%_
                                   _%hd5093951955%_
                                   _%tl5094051958%_
                                   _%e5094151961%_
                                   _%hd5094251965%_
                                   _%tl5094351968%_
                                   _%e5110451256%_
                                   _%hd5110551260%_
                                   _%tl5110651263%_
                                   _%__splice8678186782%_
                                   _%target5110751266%_
                                   _%tl5110951269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5094251965%_)
                                                      (let ((_%e5110451256%_
                                                             (gx#syntax-e
                                                              _%hd5094251965%_)))
                                                        (let ((_%tl5110651263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5110451256%_)))
                      (_%hd5110551260%_
                       (let () (declare (not safe)) (##car _%e5110451256%_))))
                  (if (gx#stx-pair/null? _%tl5094051958%_)
                      (let ((_%__splice8678186782%_
                             (gx#syntax-split-splice->vector
                              _%tl5094051958%_
                              '0)))
                        (let ((_%tl5110951269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '1)))
                              (_%target5110751266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '0))))
                          (if (gx#stx-null? _%tl5110951269%_)
                              (_%__match8706787068%_
                               _%e5093551941%_
                               _%hd5093651945%_
                               _%tl5093751948%_
                               _%e5093851951%_
                               _%hd5093951955%_
                               _%tl5094051958%_
                               _%e5094151961%_
                               _%hd5094251965%_
                               _%tl5094351968%_
                               _%e5110451256%_
                               _%hd5110551260%_
                               _%tl5110651263%_
                               _%__splice8678186782%_
                               _%target5110751266%_
                               _%tl5110951269%_)
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5094251965%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5094251965%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5094051958%_)
                                                  (let ((_%__splice8678186782%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5094051958%_
                                                          '0)))
                                                    (let ((_%tl5110951269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '1)))
                                                          (_%target5110751266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5110951269%_)
                                                          (_%__match8706787068%_
                                                           _%e5093551941%_
                                                           _%hd5093651945%_
                                                           _%tl5093751948%_
                                                           _%e5093851951%_
                                                           _%hd5093951955%_
                                                           _%tl5094051958%_
                                                           _%e5094151961%_
                                                           _%hd5094251965%_
                                                           _%tl5094351968%_
                                                           _%e5110451256%_
                                                           _%hd5110551260%_
                                                           _%tl5110651263%_
                                                           _%__splice8678186782%_
                                                           _%target5110751266%_
                                                           _%tl5110951269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5092851137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                  (if (gx#identifier? _%hd5094551975%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92660_|
                                           _%hd5094551975%_)
                                          (if (gx#stx-pair? _%tl5095251998%_)
                                              (let ((_%e5107951396%_
                                                     (gx#syntax-e
                                                      _%tl5095251998%_)))
                                                (let ((_%tl5108151403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5107951396%_)))
                                                      (_%hd5108051400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5107951396%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5108151403%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5094051958%_)
                                                          (let ((_%__splice8677786778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5094051958%_ '0)))
                    (let ((_%tl5108451409%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8677786778%_ '1)))
                          (_%target5108251406%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8677786778%_ '0))))
                      (if (gx#stx-null? _%tl5108451409%_)
                          (_%__match8703587036%_
                           _%e5093551941%_
                           _%hd5093651945%_
                           _%tl5093751948%_
                           _%e5093851951%_
                           _%hd5093951955%_
                           _%tl5094051958%_
                           _%e5094151961%_
                           _%hd5094251965%_
                           _%tl5094351968%_
                           _%e5094451971%_
                           _%hd5094551975%_
                           _%tl5094651978%_
                           _%e5094751981%_
                           _%hd5094851985%_
                           _%tl5094951988%_
                           _%e5095051991%_
                           _%hd5095151995%_
                           _%tl5095251998%_
                           _%e5107951396%_
                           _%hd5108051400%_
                           _%tl5108151403%_
                           _%__splice8677786778%_
                           _%target5108251406%_
                           _%tl5108451409%_)
                          (if (gx#stx-pair? _%hd5094251965%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5094251965%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_))))))
                  (if (gx#stx-pair? _%hd5094251965%_)
                      (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                        (let ((_%tl5110651263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5110451256%_)))
                              (_%hd5110551260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5110451256%_))))
                          (let () (declare (not safe)) (_%g5092851137%_))))
                      (let () (declare (not safe)) (_%g5092851137%_))))
              (if (gx#stx-pair? _%hd5094251965%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (if (gx#stx-pair/null? _%tl5094051958%_)
                          (let ((_%__splice8678186782%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5094051958%_
                                  '0)))
                            (let ((_%tl5110951269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8678186782%_ '1)))
                                  (_%target5110751266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8678186782%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110951269%_)
                                  (_%__match8706787068%_
                                   _%e5093551941%_
                                   _%hd5093651945%_
                                   _%tl5093751948%_
                                   _%e5093851951%_
                                   _%hd5093951955%_
                                   _%tl5094051958%_
                                   _%e5094151961%_
                                   _%hd5094251965%_
                                   _%tl5094351968%_
                                   _%e5110451256%_
                                   _%hd5110551260%_
                                   _%tl5110651263%_
                                   _%__splice8678186782%_
                                   _%target5110751266%_
                                   _%tl5110951269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5094251965%_)
                                                  (let ((_%e5110451256%_
                                                         (gx#syntax-e
                                                          _%hd5094251965%_)))
                                                    (let ((_%tl5110651263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5110451256%_)))
                                                          (_%hd5110551260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5110451256%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5094051958%_)
                                                          (let ((_%__splice8678186782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5094051958%_ '0)))
                    (let ((_%tl5110951269%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8678186782%_ '1)))
                          (_%target5110751266%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8678186782%_ '0))))
                      (if (gx#stx-null? _%tl5110951269%_)
                          (_%__match8706787068%_
                           _%e5093551941%_
                           _%hd5093651945%_
                           _%tl5093751948%_
                           _%e5093851951%_
                           _%hd5093951955%_
                           _%tl5094051958%_
                           _%e5094151961%_
                           _%hd5094251965%_
                           _%tl5094351968%_
                           _%e5110451256%_
                           _%hd5110551260%_
                           _%tl5110651263%_
                           _%__splice8678186782%_
                           _%target5110751266%_
                           _%tl5110951269%_)
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_))))
                                          (if (gx#stx-pair? _%hd5094251965%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5094251965%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5094051958%_)
                                                      (let ((_%__splice8678186782%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5094051958%_
                                                              '0)))
                                                        (let ((_%tl5110951269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '1)))
                      (_%target5110751266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '0))))
                  (if (gx#stx-null? _%tl5110951269%_)
                      (_%__match8706787068%_
                       _%e5093551941%_
                       _%hd5093651945%_
                       _%tl5093751948%_
                       _%e5093851951%_
                       _%hd5093951955%_
                       _%tl5094051958%_
                       _%e5094151961%_
                       _%hd5094251965%_
                       _%tl5094351968%_
                       _%e5110451256%_
                       _%hd5110551260%_
                       _%tl5110651263%_
                       _%__splice8678186782%_
                       _%target5110751266%_
                       _%tl5110951269%_)
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                      (if (gx#stx-pair? _%hd5094251965%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5094251965%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5094051958%_)
                                                  (let ((_%__splice8678186782%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5094051958%_
                                                          '0)))
                                                    (let ((_%tl5110951269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '1)))
                                                          (_%target5110751266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5110951269%_)
                                                          (_%__match8706787068%_
                                                           _%e5093551941%_
                                                           _%hd5093651945%_
                                                           _%tl5093751948%_
                                                           _%e5093851951%_
                                                           _%hd5093951955%_
                                                           _%tl5094051958%_
                                                           _%e5094151961%_
                                                           _%hd5094251965%_
                                                           _%tl5094351968%_
                                                           _%e5110451256%_
                                                           _%hd5110551260%_
                                                           _%tl5110651263%_
                                                           _%__splice8678186782%_
                                                           _%target5110751266%_
                                                           _%tl5110951269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5092851137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                              (if (gx#identifier? _%hd5094551975%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92660_|
                                       _%hd5094551975%_)
                                      (if (gx#stx-pair? _%tl5095251998%_)
                                          (let ((_%e5107951396%_
                                                 (gx#syntax-e
                                                  _%tl5095251998%_)))
                                            (let ((_%tl5108151403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5107951396%_)))
                                                  (_%hd5108051400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5107951396%_))))
                                              (if (gx#stx-null?
                                                   _%tl5108151403%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5094051958%_)
                                                      (let ((_%__splice8677786778%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5094051958%_
                                                              '0)))
                                                        (let ((_%tl5108451409%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8677786778%_ '1)))
                      (_%target5108251406%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8677786778%_ '0))))
                  (if (gx#stx-null? _%tl5108451409%_)
                      (_%__match8703587036%_
                       _%e5093551941%_
                       _%hd5093651945%_
                       _%tl5093751948%_
                       _%e5093851951%_
                       _%hd5093951955%_
                       _%tl5094051958%_
                       _%e5094151961%_
                       _%hd5094251965%_
                       _%tl5094351968%_
                       _%e5094451971%_
                       _%hd5094551975%_
                       _%tl5094651978%_
                       _%e5094751981%_
                       _%hd5094851985%_
                       _%tl5094951988%_
                       _%e5095051991%_
                       _%hd5095151995%_
                       _%tl5095251998%_
                       _%e5107951396%_
                       _%hd5108051400%_
                       _%tl5108151403%_
                       _%__splice8677786778%_
                       _%target5108251406%_
                       _%tl5108451409%_)
                      (if (gx#stx-pair? _%hd5094251965%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5094251965%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                          (let () (declare (not safe)) (_%g5092851137%_))))))
              (if (gx#stx-pair? _%hd5094251965%_)
                  (let ((_%e5110451256%_ (gx#syntax-e _%hd5094251965%_)))
                    (let ((_%tl5110651263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5110451256%_)))
                          (_%hd5110551260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5110451256%_))))
                      (let () (declare (not safe)) (_%g5092851137%_))))
                  (let () (declare (not safe)) (_%g5092851137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5094251965%_)
                                                      (let ((_%e5110451256%_
                                                             (gx#syntax-e
                                                              _%hd5094251965%_)))
                                                        (let ((_%tl5110651263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5110451256%_)))
                      (_%hd5110551260%_
                       (let () (declare (not safe)) (##car _%e5110451256%_))))
                  (if (gx#stx-pair/null? _%tl5094051958%_)
                      (let ((_%__splice8678186782%_
                             (gx#syntax-split-splice->vector
                              _%tl5094051958%_
                              '0)))
                        (let ((_%tl5110951269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '1)))
                              (_%target5110751266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '0))))
                          (if (gx#stx-null? _%tl5110951269%_)
                              (_%__match8706787068%_
                               _%e5093551941%_
                               _%hd5093651945%_
                               _%tl5093751948%_
                               _%e5093851951%_
                               _%hd5093951955%_
                               _%tl5094051958%_
                               _%e5094151961%_
                               _%hd5094251965%_
                               _%tl5094351968%_
                               _%e5110451256%_
                               _%hd5110551260%_
                               _%tl5110651263%_
                               _%__splice8678186782%_
                               _%target5110751266%_
                               _%tl5110951269%_)
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5094251965%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5094251965%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5094051958%_)
                                                      (let ((_%__splice8678186782%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5094051958%_
                                                              '0)))
                                                        (let ((_%tl5110951269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '1)))
                      (_%target5110751266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '0))))
                  (if (gx#stx-null? _%tl5110951269%_)
                      (_%__match8706787068%_
                       _%e5093551941%_
                       _%hd5093651945%_
                       _%tl5093751948%_
                       _%e5093851951%_
                       _%hd5093951955%_
                       _%tl5094051958%_
                       _%e5094151961%_
                       _%hd5094251965%_
                       _%tl5094351968%_
                       _%e5110451256%_
                       _%hd5110551260%_
                       _%tl5110651263%_
                       _%__splice8678186782%_
                       _%target5110751266%_
                       _%tl5110951269%_)
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))
                                      (if (gx#stx-pair? _%hd5094251965%_)
                                          (let ((_%e5110451256%_
                                                 (gx#syntax-e
                                                  _%hd5094251965%_)))
                                            (let ((_%tl5110651263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5110451256%_)))
                                                  (_%hd5110551260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5110451256%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5094051958%_)
                                                  (let ((_%__splice8678186782%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5094051958%_
                                                          '0)))
                                                    (let ((_%tl5110951269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '1)))
                                                          (_%target5110751266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8678186782%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5110951269%_)
                                                          (_%__match8706787068%_
                                                           _%e5093551941%_
                                                           _%hd5093651945%_
                                                           _%tl5093751948%_
                                                           _%e5093851951%_
                                                           _%hd5093951955%_
                                                           _%tl5094051958%_
                                                           _%e5094151961%_
                                                           _%hd5094251965%_
                                                           _%tl5094351968%_
                                                           _%e5110451256%_
                                                           _%hd5110551260%_
                                                           _%tl5110651263%_
                                                           _%__splice8678186782%_
                                                           _%target5110751266%_
                                                           _%tl5110951269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5092851137%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                  (if (gx#stx-pair? _%hd5094251965%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5094251965%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5094051958%_)
                                              (let ((_%__splice8678186782%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5094051958%_
                                                      '0)))
                                                (let ((_%tl5110951269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8678186782%_
                                                          '1)))
                                                      (_%target5110751266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8678186782%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5110951269%_)
                                                      (_%__match8706787068%_
                                                       _%e5093551941%_
                                                       _%hd5093651945%_
                                                       _%tl5093751948%_
                                                       _%e5093851951%_
                                                       _%hd5093951955%_
                                                       _%tl5094051958%_
                                                       _%e5094151961%_
                                                       _%hd5094251965%_
                                                       _%tl5094351968%_
                                                       _%e5110451256%_
                                                       _%hd5110551260%_
                                                       _%tl5110651263%_
                                                       _%__splice8678186782%_
                                                       _%target5110751266%_
                                                       _%tl5110951269%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5092851137%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))))
                  (if (gx#stx-null? _%tl5094951988%_)
                      (if (gx#stx-pair/null? _%tl5094051958%_)
                          (let ((_%__splice8676986770%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5094051958%_
                                  '0)))
                            (let ((_%tl5102251669%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8676986770%_ '1)))
                                  (_%target5102051666%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8676986770%_
                                      '0))))
                              (if (gx#stx-null? _%tl5102251669%_)
                                  (_%__match8693586936%_
                                   _%e5093551941%_
                                   _%hd5093651945%_
                                   _%tl5093751948%_
                                   _%e5093851951%_
                                   _%hd5093951955%_
                                   _%tl5094051958%_
                                   _%e5094151961%_
                                   _%hd5094251965%_
                                   _%tl5094351968%_
                                   _%e5094451971%_
                                   _%hd5094551975%_
                                   _%tl5094651978%_
                                   _%e5094751981%_
                                   _%hd5094851985%_
                                   _%tl5094951988%_
                                   _%__splice8676986770%_
                                   _%target5102051666%_
                                   _%tl5102251669%_)
                                  (if (gx#stx-pair? _%hd5094251965%_)
                                      (let ((_%e5110451256%_
                                             (gx#syntax-e _%hd5094251965%_)))
                                        (let ((_%tl5110651263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110451256%_)))
                                              (_%hd5110551260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110451256%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))
                          (if (gx#stx-pair? _%hd5094251965%_)
                              (let ((_%e5110451256%_
                                     (gx#syntax-e _%hd5094251965%_)))
                                (let ((_%tl5110651263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5110451256%_)))
                                      (_%hd5110551260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5110451256%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_))))
                              (let () (declare (not safe)) (_%g5092851137%_))))
                      (if (gx#stx-pair? _%hd5094251965%_)
                          (let ((_%e5110451256%_
                                 (gx#syntax-e _%hd5094251965%_)))
                            (let ((_%tl5110651263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5110451256%_)))
                                  (_%hd5110551260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5110451256%_))))
                              (if (gx#stx-pair/null? _%tl5094051958%_)
                                  (let ((_%__splice8678186782%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5094051958%_
                                          '0)))
                                    (let ((_%tl5110951269%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '1)))
                                          (_%target5110751266%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8678186782%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5110951269%_)
                                          (_%__match8706787068%_
                                           _%e5093551941%_
                                           _%hd5093651945%_
                                           _%tl5093751948%_
                                           _%e5093851951%_
                                           _%hd5093951955%_
                                           _%tl5094051958%_
                                           _%e5094151961%_
                                           _%hd5094251965%_
                                           _%tl5094351968%_
                                           _%e5110451256%_
                                           _%hd5110551260%_
                                           _%tl5110651263%_
                                           _%__splice8678186782%_
                                           _%target5110751266%_
                                           _%tl5110951269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5092851137%_)))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5094251965%_)
                                                      (let ((_%e5110451256%_
                                                             (gx#syntax-e
                                                              _%hd5094251965%_)))
                                                        (let ((_%tl5110651263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5110451256%_)))
                      (_%hd5110551260%_
                       (let () (declare (not safe)) (##car _%e5110451256%_))))
                  (if (gx#stx-pair/null? _%tl5094051958%_)
                      (let ((_%__splice8678186782%_
                             (gx#syntax-split-splice->vector
                              _%tl5094051958%_
                              '0)))
                        (let ((_%tl5110951269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '1)))
                              (_%target5110751266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8678186782%_ '0))))
                          (if (gx#stx-null? _%tl5110951269%_)
                              (_%__match8706787068%_
                               _%e5093551941%_
                               _%hd5093651945%_
                               _%tl5093751948%_
                               _%e5093851951%_
                               _%hd5093951955%_
                               _%tl5094051958%_
                               _%e5094151961%_
                               _%hd5094251965%_
                               _%tl5094351968%_
                               _%e5110451256%_
                               _%hd5110551260%_
                               _%tl5110651263%_
                               _%__splice8678186782%_
                               _%target5110751266%_
                               _%tl5110951269%_)
                              (let ()
                                (declare (not safe))
                                (_%g5092851137%_)))))
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5094251965%_)
                                              (let ((_%e5110451256%_
                                                     (gx#syntax-e
                                                      _%hd5094251965%_)))
                                                (let ((_%tl5110651263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5110451256%_)))
                                                      (_%hd5110551260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5110451256%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5094051958%_)
                                                      (let ((_%__splice8678186782%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5094051958%_
                                                              '0)))
                                                        (let ((_%tl5110951269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '1)))
                      (_%target5110751266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8678186782%_ '0))))
                  (if (gx#stx-null? _%tl5110951269%_)
                      (_%__match8706787068%_
                       _%e5093551941%_
                       _%hd5093651945%_
                       _%tl5093751948%_
                       _%e5093851951%_
                       _%hd5093951955%_
                       _%tl5094051958%_
                       _%e5094151961%_
                       _%hd5094251965%_
                       _%tl5094351968%_
                       _%e5110451256%_
                       _%hd5110551260%_
                       _%tl5110651263%_
                       _%__splice8678186782%_
                       _%target5110751266%_
                       _%tl5110951269%_)
                      (let () (declare (not safe)) (_%g5092851137%_)))))
              (let () (declare (not safe)) (_%g5092851137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5092851137%_))))))
                                  (if (gx#stx-null? _%hd5093951955%_)
                                      (if (gx#stx-pair/null? _%tl5094051958%_)
                                          (let ((_%__splice8678586786%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5094051958%_
                                                  '0)))
                                            (let ((_%tl5112551167%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8678586786%_
                                                      '1)))
                                                  (_%target5112351164%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8678586786%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5112551167%_)
                                                  (_%__match8708987090%_
                                                   _%e5093551941%_
                                                   _%hd5093651945%_
                                                   _%tl5093751948%_
                                                   _%e5093851951%_
                                                   _%hd5093951955%_
                                                   _%tl5094051958%_
                                                   _%__splice8678586786%_
                                                   _%target5112351164%_
                                                   _%tl5112551167%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5092851137%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5092851137%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5092851137%_))))))
                          (let () (declare (not safe)) (_%g5092851137%_)))))
                  (let () (declare (not safe)) (_%g5092851137%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52097%_)
        (let* ((_%g5210152135%_
                (lambda (_%g5210252131%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5210252131%_)))
               (_%g5210052256%_
                (lambda (_%g5210252139%_)
                  (if (gx#stx-pair? _%g5210252139%_)
                      (let ((_%e5210652142%_ (gx#syntax-e _%g5210252139%_)))
                        (let ((_%hd5210752146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5210652142%_)))
                              (_%tl5210852149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5210652142%_))))
                          (if (gx#stx-pair? _%tl5210852149%_)
                              (let ((_%e5210952152%_
                                     (gx#syntax-e _%tl5210852149%_)))
                                (let ((_%hd5211052156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5210952152%_)))
                                      (_%tl5211152159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5210952152%_))))
                                  (if (gx#stx-pair? _%hd5211052156%_)
                                      (let ((_%e5211252162%_
                                             (gx#syntax-e _%hd5211052156%_)))
                                        (let ((_%hd5211352166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5211252162%_)))
                                              (_%tl5211452169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5211252162%_))))
                                          (if (gx#stx-pair? _%tl5211452169%_)
                                              (let ((_%e5211552172%_
                                                     (gx#syntax-e
                                                      _%tl5211452169%_)))
                                                (let ((_%hd5211652176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5211552172%_)))
                                                      (_%tl5211752179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5211552172%_))))
                                                  (if (gx#identifier?
                                                       _%hd5211652176%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92662_|
                                                           _%hd5211652176%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5211752179%_)
                                                              (let ((_%e5211852182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5211752179%_)))
                        (let ((_%hd5211952186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5211852182%_)))
                              (_%tl5212052189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5211852182%_))))
                          (if (gx#stx-null? _%tl5212052189%_)
                              (if (gx#stx-pair/null? _%tl5211152159%_)
                                  (let ((_g92663_
                                         (gx#syntax-split-splice
                                          _%tl5211152159%_
                                          '0)))
                                    (begin
                                      (let ((_g92664_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g92663_)
                                                   (##values-length _g92663_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g92664_ 2)))
                                            (error "Context expects 2 values"
                                                   _g92664_)))
                                      (let ((_%target5212152192%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92663_ 0)))
                                            (_%tl5212352195%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92663_ 1))))
                                        (if (gx#stx-null? _%tl5212352195%_)
                                            (letrec ((_%loop5212452198%_
                                                      (lambda (_%hd5212252202%_
                                                               _%body5212852205%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5212252202%_)
                                                            (let ((_%e5212552207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5212252202%_)))
                      (let ((_%lp-hd5212652211%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5212552207%_)))
                            (_%lp-tl5212752214%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5212552207%_))))
                        (_%loop5212452198%_
                         _%lp-tl5212752214%_
                         (cons _%lp-hd5212652211%_ _%body5212852205%_))))
                    (let ((_%body5212952217%_ (reverse _%body5212852205%_)))
                      ((lambda (_%g5210352220%_
                                _%g5210452222%_
                                _%g5210552223%_)
                         (if (gx#identifier? _%g5210552223%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5210452222%_
                                               (cons _%g5210552223%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5224752250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5224852253%_)
                            (cons _%g5224752250%_ _%g5224852253%_))
                          '()
                          _%g5210352220%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5210552223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5210452222%_ (cons _%g5210552223%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5210152135%_ _%g5210252139%_)))
                       _%body5212952217%_
                       _%hd5211952186%_
                       _%hd5211352166%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5212452198%_
                                               _%target5212152192%_
                                               '()))
                                            (_%g5210152135%_
                                             _%g5210252139%_)))))
                                  (_%g5210152135%_ _%g5210252139%_))
                              (_%g5210152135%_ _%g5210252139%_))))
                      (_%g5210152135%_ _%g5210252139%_))
                  (_%g5210152135%_ _%g5210252139%_))
              (_%g5210152135%_ _%g5210252139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5210152135%_
                                               _%g5210252139%_))))
                                      (_%g5210152135%_ _%g5210252139%_))))
                              (_%g5210152135%_ _%g5210252139%_))))
                      (_%g5210152135%_ _%g5210252139%_)))))
          (_%g5210052256%_ _%$stx52097%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass52820%_ _%slot52822%_)
        (let ((_%$e52824%_
               (let ((__obj92475 _%klass52820%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92475
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92475 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92475
                      'slot-types)))))
          (if _%$e52824%_
              ((lambda (_%slot-types52828%_)
                 (agetq _%slot52822%_ _%slot-types52828%_))
               _%$e52824%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass52801%_ _%slot52803%_)
        (let ((_%$e52805%_
               (let ((__obj92476 _%klass52801%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92476
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92476 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92476
                      'slot-defaults)))))
          (if _%$e52805%_
              ((lambda (_%slot-defaults52809%_)
                 (let ((_%$e52812%_
                        (agetq _%slot52803%_ _%slot-defaults52809%_)))
                   (if _%$e52812%_
                       (gx#syntax-local-introduce _%$e52812%_)
                       '#f)))
               _%$e52805%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass52782%_ _%slot52784%_)
        (let ((_%$e52786%_
               (let ((__obj92477 _%klass52782%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92477
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92477 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92477
                      'slot-defaults)))))
          (if _%$e52786%_
              ((lambda (_%slot-defaults52790%_)
                 (let ((_%$e52793%_
                        (agetq _%slot52784%_ _%slot-defaults52790%_)))
                   (if _%$e52793%_
                       (gx#syntax-local-introduce _%$e52793%_)
                       '#f)))
               _%$e52786%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52551%_ _%slot52553%_)
        (let ((_%contract5255452556%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52551%_
                _%slot52553%_)))
          (if _%contract5255452556%_
              (let* ((_%contract52559%_ _%contract5255452556%_)
                     (_%__stx8709287093%_ _%contract52559%_)
                     (_%g5256452601%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8709287093%_))))
                (let ((_%__kont8709587096%_
                       (lambda (_%g5256652751%_ _%g5256752753%_)
                         (not (gx#free-identifier=?
                               _%g5256752753%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8709787098%_
                       (lambda (_%g5257452691%_
                                _%g5257552693%_
                                _%g5257652694%_)
                         (not (gx#free-identifier=?
                               _%g5257552693%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8709987100%_ (lambda (_%g5258952628%_) '#f)))
                  (let* ((_%__match8714587146%_
                          (lambda (_%e5257752651%_
                                   _%hd5257852655%_
                                   _%tl5257952658%_
                                   _%e5258052661%_
                                   _%hd5258152665%_
                                   _%tl5258252668%_
                                   _%e5258352671%_
                                   _%hd5258452675%_
                                   _%tl5258552678%_
                                   _%e5258652681%_
                                   _%hd5258752685%_
                                   _%tl5258852688%_)
                            (let ((_%g5257452691%_ _%hd5258752685%_)
                                  (_%g5257552693%_ _%hd5258452675%_)
                                  (_%g5257652694%_ _%hd5258152665%_))
                              (if (and (gx#identifier? _%g5257552693%_)
                                       (or (gx#free-identifier=?
                                            _%g5257552693%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5257552693%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5257552693%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5257552693%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8709787098%_
                                   _%g5257452691%_
                                   _%g5257552693%_
                                   _%g5257652694%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5256452601%_))))))
                         (_%__match8711587116%_
                          (lambda (_%e5256852731%_
                                   _%hd5256952735%_
                                   _%tl5257052738%_
                                   _%e5257152741%_
                                   _%hd5257252745%_
                                   _%tl5257352748%_)
                            (let ((_%g5256652751%_ _%hd5257252745%_)
                                  (_%g5256752753%_ _%hd5256952735%_))
                              (if (and (gx#identifier? _%g5256752753%_)
                                       (or (gx#free-identifier=?
                                            _%g5256752753%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5256752753%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5256752753%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5256752753%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8709587096%_
                                   _%g5256652751%_
                                   _%g5256752753%_)
                                  (if (gx#identifier? _%hd5256952735%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92665_|
                                           _%hd5256952735%_)
                                          (_%__kont8709987100%_
                                           _%hd5257252745%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5256452601%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5256452601%_))))))))
                    (if (gx#stx-pair? _%__stx8709287093%_)
                        (let ((_%e5256852731%_
                               (gx#syntax-e _%__stx8709287093%_)))
                          (let ((_%tl5257052738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5256852731%_)))
                                (_%hd5256952735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5256852731%_))))
                            (if (gx#stx-pair? _%tl5257052738%_)
                                (let ((_%e5257152741%_
                                       (gx#syntax-e _%tl5257052738%_)))
                                  (let ((_%tl5257352748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5257152741%_)))
                                        (_%hd5257252745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5257152741%_))))
                                    (if (gx#stx-null? _%tl5257352748%_)
                                        (_%__match8711587116%_
                                         _%e5256852731%_
                                         _%hd5256952735%_
                                         _%tl5257052738%_
                                         _%e5257152741%_
                                         _%hd5257252745%_
                                         _%tl5257352748%_)
                                        (if (gx#identifier? _%hd5256952735%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92665_|
                                                 _%hd5256952735%_)
                                                (if (gx#stx-pair?
                                                     _%tl5257352748%_)
                                                    (let ((_%e5258352671%_
                                                           (gx#syntax-e
                                                            _%tl5257352748%_)))
                                                      (let ((_%tl5258552678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5258352671%_)))
                    (_%hd5258452675%_
                     (let () (declare (not safe)) (##car _%e5258352671%_))))
                (if (gx#stx-pair? _%tl5258552678%_)
                    (let ((_%e5258652681%_ (gx#syntax-e _%tl5258552678%_)))
                      (let ((_%tl5258852688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5258652681%_)))
                            (_%hd5258752685%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5258652681%_))))
                        (if (gx#stx-null? _%tl5258852688%_)
                            (_%__match8714587146%_
                             _%e5256852731%_
                             _%hd5256952735%_
                             _%tl5257052738%_
                             _%e5257152741%_
                             _%hd5257252745%_
                             _%tl5257352748%_
                             _%e5258352671%_
                             _%hd5258452675%_
                             _%tl5258552678%_
                             _%e5258652681%_
                             _%hd5258752685%_
                             _%tl5258852688%_)
                            (let () (declare (not safe)) (_%g5256452601%_)))))
                    (let () (declare (not safe)) (_%g5256452601%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5256452601%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5256452601%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5256452601%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5256452601%_)))))
                        (let () (declare (not safe)) (_%g5256452601%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52320%_ _%slot52322%_)
        (let ((_%contract5232352325%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52320%_
                _%slot52322%_)))
          (if _%contract5232352325%_
              (let* ((_%contract52328%_ _%contract5232352325%_)
                     (_%__stx8716687167%_ _%contract52328%_)
                     (_%g5233352370%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8716687167%_))))
                (let ((_%__kont8716987170%_
                       (lambda (_%g5233552520%_ _%g5233652522%_)
                         (not (gx#free-identifier=?
                               _%g5233652522%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8717187172%_
                       (lambda (_%g5234352460%_
                                _%g5234452462%_
                                _%g5234552463%_)
                         '#t))
                      (_%__kont8717387174%_ (lambda (_%g5235852397%_) '#t)))
                  (let* ((_%__match8721987220%_
                          (lambda (_%e5234652420%_
                                   _%hd5234752424%_
                                   _%tl5234852427%_
                                   _%e5234952430%_
                                   _%hd5235052434%_
                                   _%tl5235152437%_
                                   _%e5235252440%_
                                   _%hd5235352444%_
                                   _%tl5235452447%_
                                   _%e5235552450%_
                                   _%hd5235652454%_
                                   _%tl5235752457%_)
                            (let ((_%g5234352460%_ _%hd5235652454%_)
                                  (_%g5234452462%_ _%hd5235352444%_)
                                  (_%g5234552463%_ _%hd5235052434%_))
                              (if (and (gx#identifier? _%g5234452462%_)
                                       (or (gx#free-identifier=?
                                            _%g5234452462%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5234452462%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5234452462%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5234452462%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8717187172%_
                                   _%g5234352460%_
                                   _%g5234452462%_
                                   _%g5234552463%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5233352370%_))))))
                         (_%__match8718987190%_
                          (lambda (_%e5233752500%_
                                   _%hd5233852504%_
                                   _%tl5233952507%_
                                   _%e5234052510%_
                                   _%hd5234152514%_
                                   _%tl5234252517%_)
                            (let ((_%g5233552520%_ _%hd5234152514%_)
                                  (_%g5233652522%_ _%hd5233852504%_))
                              (if (and (gx#identifier? _%g5233652522%_)
                                       (or (gx#free-identifier=?
                                            _%g5233652522%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5233652522%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5233652522%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5233652522%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8716987170%_
                                   _%g5233552520%_
                                   _%g5233652522%_)
                                  (if (gx#identifier? _%hd5233852504%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92666_|
                                           _%hd5233852504%_)
                                          (_%__kont8717387174%_
                                           _%hd5234152514%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5233352370%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5233352370%_))))))))
                    (if (gx#stx-pair? _%__stx8716687167%_)
                        (let ((_%e5233752500%_
                               (gx#syntax-e _%__stx8716687167%_)))
                          (let ((_%tl5233952507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5233752500%_)))
                                (_%hd5233852504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5233752500%_))))
                            (if (gx#stx-pair? _%tl5233952507%_)
                                (let ((_%e5234052510%_
                                       (gx#syntax-e _%tl5233952507%_)))
                                  (let ((_%tl5234252517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5234052510%_)))
                                        (_%hd5234152514%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5234052510%_))))
                                    (if (gx#stx-null? _%tl5234252517%_)
                                        (_%__match8718987190%_
                                         _%e5233752500%_
                                         _%hd5233852504%_
                                         _%tl5233952507%_
                                         _%e5234052510%_
                                         _%hd5234152514%_
                                         _%tl5234252517%_)
                                        (if (gx#identifier? _%hd5233852504%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92666_|
                                                 _%hd5233852504%_)
                                                (if (gx#stx-pair?
                                                     _%tl5234252517%_)
                                                    (let ((_%e5235252440%_
                                                           (gx#syntax-e
                                                            _%tl5234252517%_)))
                                                      (let ((_%tl5235452447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5235252440%_)))
                    (_%hd5235352444%_
                     (let () (declare (not safe)) (##car _%e5235252440%_))))
                (if (gx#stx-pair? _%tl5235452447%_)
                    (let ((_%e5235552450%_ (gx#syntax-e _%tl5235452447%_)))
                      (let ((_%tl5235752457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5235552450%_)))
                            (_%hd5235652454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5235552450%_))))
                        (if (gx#stx-null? _%tl5235752457%_)
                            (_%__match8721987220%_
                             _%e5233752500%_
                             _%hd5233852504%_
                             _%tl5233952507%_
                             _%e5234052510%_
                             _%hd5234152514%_
                             _%tl5234252517%_
                             _%e5235252440%_
                             _%hd5235352444%_
                             _%tl5235452447%_
                             _%e5235552450%_
                             _%hd5235652454%_
                             _%tl5235752457%_)
                            (let () (declare (not safe)) (_%g5233352370%_)))))
                    (let () (declare (not safe)) (_%g5233352370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5233352370%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5233352370%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5233352370%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5233352370%_)))))
                        (let () (declare (not safe)) (_%g5233352370%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52307%_)
        (if (gx#identifier? _%id52307%_)
            (let* ((_%str52310%_ (symbol->string (gx#stx-e _%id52307%_)))
                   (_%index5231252314%_ (string-index _%str52310%_ '#\.)))
              (if _%index5231252314%_
                  (let ((_%index52317%_ _%index5231252314%_))
                    (if (let () (declare (not safe)) (##fx> _%index52317%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52310%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52300%_ _%id52302%_)
        (let ((_%parts52304%_
               (string-split (symbol->string (gx#stx-e _%id52302%_)) '#\.)))
          (if (find string-empty? _%parts52304%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52300%_
               _%id52302%_)
              (cons (gx#stx-identifier _%id52302%_ (car _%parts52304%_))
                    (map string->symbol (cdr _%parts52304%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52281%_ _%klass-or-id52283%_ _%slot52284%_)
        (let* ((_%klass52286%_
                (if (gx#identifier? _%klass-or-id52283%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52281%_
                       _%klass-or-id52283%_))
                    _%klass-or-id52283%_))
               (_%accessors52289%_
                (let ((__obj92478 _%klass52286%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92478
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92478 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj92478
                       'unchecked-accessors))))
               (_%$e52294%_ (agetq _%slot52284%_ _%accessors52289%_)))
          (if _%$e52294%_
              _%$e52294%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52281%_
               _%klass52286%_
               _%slot52284%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52261%_
               _%klass-or-id52263%_
               _%slot52264%_
               _%checked?52265%_)
        (let* ((_%klass52267%_
                (if (gx#identifier? _%klass-or-id52263%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52261%_
                       _%klass-or-id52263%_))
                    _%klass-or-id52263%_))
               (_%mutators52270%_
                (if _%checked?52265%_
                    (let ((__obj92479 _%klass52267%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92479
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92479 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92479
                           'mutators)))
                    (let ((__obj92480 _%klass52267%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92480
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92480 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92480
                           'unchecked-mutators)))))
               (_%$e52275%_ (agetq _%slot52264%_ _%mutators52270%_)))
          (if _%$e52275%_
              _%$e52275%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52261%_
               _%klass52267%_
               _%slot52264%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx52833%_)
        (letrec ((_%expand-body52836%_
                  (lambda (_%klass53734%_
                           _%var53736%_
                           _%Type53737%_
                           _%body53738%_
                           _%checked?53739%_)
                    (let* ((_%g5374153785%_
                            (lambda (_%g5374253781%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5374253781%_)))
                           (_%g5374053940%_
                            (lambda (_%g5374253789%_)
                              (if (gx#stx-pair? _%g5374253789%_)
                                  (let ((_%e5375053792%_
                                         (gx#syntax-e _%g5374253789%_)))
                                    (let ((_%hd5375153796%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5375053792%_)))
                                          (_%tl5375253799%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5375053792%_))))
                                      (if (gx#stx-pair? _%tl5375253799%_)
                                          (let ((_%e5375353802%_
                                                 (gx#syntax-e
                                                  _%tl5375253799%_)))
                                            (let ((_%hd5375453806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5375353802%_)))
                                                  (_%tl5375553809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5375353802%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5375553809%_)
                                                  (let ((_%e5375653812%_
                                                         (gx#syntax-e
                                                          _%tl5375553809%_)))
                                                    (let ((_%hd5375753816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5375653812%_)))
                                                          (_%tl5375853819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5375653812%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5375853819%_)
                                                          (let ((_%e5375953822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5375853819%_)))
                    (let ((_%hd5376053826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5375953822%_)))
                          (_%tl5376153829%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5375953822%_))))
                      (if (gx#stx-pair? _%tl5376153829%_)
                          (let ((_%e5376253832%_
                                 (gx#syntax-e _%tl5376153829%_)))
                            (let ((_%hd5376353836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5376253832%_)))
                                  (_%tl5376453839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5376253832%_))))
                              (if (gx#stx-pair? _%tl5376453839%_)
                                  (let ((_%e5376553842%_
                                         (gx#syntax-e _%tl5376453839%_)))
                                    (let ((_%hd5376653846%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5376553842%_)))
                                          (_%tl5376753849%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5376553842%_))))
                                      (if (gx#stx-pair? _%tl5376753849%_)
                                          (let ((_%e5376853852%_
                                                 (gx#syntax-e
                                                  _%tl5376753849%_)))
                                            (let ((_%hd5376953856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5376853852%_)))
                                                  (_%tl5377053859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5376853852%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5376953856%_)
                                                  (let ((_g92667_
                                                         (gx#syntax-split-splice
                                                          _%hd5376953856%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92668_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92667_)
                           (##values-length _g92667_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92668_ 2)))
                    (error "Context expects 2 values" _g92668_)))
              (let ((_%target5377153862%_
                     (let () (declare (not safe)) (##values-ref _g92667_ 0)))
                    (_%tl5377353865%_
                     (let () (declare (not safe)) (##values-ref _g92667_ 1))))
                (if (gx#stx-null? _%tl5377353865%_)
                    (letrec ((_%loop5377453868%_
                              (lambda (_%hd5377253872%_ _%body5377853875%_)
                                (if (gx#stx-pair? _%hd5377253872%_)
                                    (let ((_%e5377553877%_
                                           (gx#syntax-e _%hd5377253872%_)))
                                      (let ((_%lp-hd5377653881%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5377553877%_)))
                                            (_%lp-tl5377753884%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5377553877%_))))
                                        (_%loop5377453868%_
                                         _%lp-tl5377753884%_
                                         (cons _%lp-hd5377653881%_
                                               _%body5377853875%_))))
                                    (let ((_%body5377953887%_
                                           (reverse _%body5377853875%_)))
                                      (if (gx#stx-null? _%tl5377053859%_)
                                          ((lambda (_%g5374353890%_
                                                    _%g5374453892%_
                                                    _%g5374553893%_
                                                    _%g5374653894%_
                                                    _%g5374753895%_
                                                    _%g5374853896%_
                                                    _%g5374953897%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5374753895%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5374853896%_ '()))
                                         (cons _%g5374753895%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5374953897%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5374753895%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5374653894%_ '()))
                               (cons _%g5374553893%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5374453892%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5393153934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5393253937%_)
                      (cons _%g5393153934%_ _%g5393253937%_))
                    '()
                    _%g5374353890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5377953887%_
                                           _%hd5376653846%_
                                           _%hd5376353836%_
                                           _%hd5376053826%_
                                           _%hd5375753816%_
                                           _%hd5375453806%_
                                           _%hd5375153796%_)
                                          (_%g5374153785%_
                                           _%g5374253789%_)))))))
                      (_%loop5377453868%_ _%target5377153862%_ '()))
                    (_%g5374153785%_ _%g5374253789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5374153785%_
                                                   _%g5374253789%_))))
                                          (_%g5374153785%_ _%g5374253789%_))))
                                  (_%g5374153785%_ _%g5374253789%_))))
                          (_%g5374153785%_ _%g5374253789%_))))
                  (_%g5374153785%_ _%g5374253789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5374153785%_
                                                   _%g5374253789%_))))
                                          (_%g5374153785%_ _%g5374253789%_))))
                                  (_%g5374153785%_ _%g5374253789%_)))))
                      (_%g5374053940%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj92481 _%klass53734%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92481
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92481
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj92481
                                    'type-descriptor)))
                             _%var53736%_
                             _%klass53734%_
                             _%checked?53739%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53738%_)))))
                 (_%expand52838%_
                  (lambda (_%var53626%_
                           _%Type53628%_
                           _%body53629%_
                           _%checked?53630%_
                           _%checked-mutators?53631%_
                           _%maybe?53632%_)
                    (let* ((_%klass53634%_
                            (gx#syntax-local-value _%Type53628%_ false))
                           (_%expr-body53641%_
                            (_%expand-body52836%_
                             _%klass53634%_
                             _%var53626%_
                             _%Type53628%_
                             _%body53629%_
                             (let ((_%$e53637%_ _%checked?53630%_))
                               (if _%$e53637%_
                                   _%$e53637%_
                                   _%checked-mutators?53631%_)))))
                      (if _%checked?53630%_
                          (let* ((_%g5364653665%_
                                  (lambda (_%g5364753661%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5364753661%_)))
                                 (_%g5364553727%_
                                  (lambda (_%g5364753669%_)
                                    (if (gx#stx-pair? _%g5364753669%_)
                                        (let ((_%e5365153672%_
                                               (gx#syntax-e _%g5364753669%_)))
                                          (let ((_%hd5365253676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5365153672%_)))
                                                (_%tl5365353679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5365153672%_))))
                                            (if (gx#stx-pair? _%tl5365353679%_)
                                                (let ((_%e5365453682%_
                                                       (gx#syntax-e
                                                        _%tl5365353679%_)))
                                                  (let ((_%hd5365553686%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5365453682%_)))
                                                        (_%tl5365653689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5365453682%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5365653689%_)
                                                        (let ((_%e5365753692%_
                                                               (gx#syntax-e
                                                                _%tl5365653689%_)))
                                                          (let ((_%hd5365853696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5365753692%_)))
                        (_%tl5365953699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5365753692%_))))
                    (if (gx#stx-null? _%tl5365953699%_)
                        ((lambda (_%g5364853702%_
                                  _%g5364953704%_
                                  _%g5365053705%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5364953704%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5365053705%_ '())))
                                       (cons _%g5364853702%_ '()))))
                         _%hd5365853696%_
                         _%hd5365553686%_
                         _%hd5365253676%_)
                        (_%g5364653665%_ _%g5364753669%_))))
                (_%g5364653665%_ _%g5364753669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5364653665%_
                                                 _%g5364753669%_))))
                                        (_%g5364653665%_ _%g5364753669%_)))))
                            (_%g5364553727%_
                             (list (let ((_%instance?53731%_
                                          (let ((__obj92482 _%klass53634%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj92482
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj92482
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj92482
                                                 'predicate)))))
                                     (if _%maybe?53632%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?53731%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?53731%_))
                                   _%var53626%_
                                   _%expr-body53641%_)))
                          _%expr-body53641%_)))))
          (let* ((_%__stx8724087241%_ _%stx52833%_)
                 (_%g5284452987%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8724087241%_))))
            (let ((_%__kont8724387244%_
                   (lambda (_%g5284653554%_
                            _%g5284753556%_
                            _%g5284853557%_
                            _%g5284953558%_)
                     (let* ((_%g5358353591%_
                             (lambda (_%g5358453587%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5358453587%_)))
                            (_%g5358253618%_
                             (lambda (_%g5358453595%_)
                               ((lambda (_%g5358553598%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5284953558%_
                                                    (cons _%g5284853557%_
                                                          (cons _%g5358553598%_
                                                                '())))
                                              (foldr (lambda (_%g5360953612%_
                                                              _%g5361053615%_)
                                                       (cons _%g5360953612%_
                                                             _%g5361053615%_))
                                                     '()
                                                     _%g5284653554%_))))
                                _%g5358453595%_))))
                       (_%g5358253618%_
                        (let ((__obj92483
                               (gx#syntax-local-value _%g5284753556%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92483
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92483
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92483
                               'identifier)))))))
                  (_%__kont8724787248%_
                   (lambda (_%g5287453434%_ _%g5287553436%_ _%g5287653437%_)
                     (_%expand52838%_
                      _%g5287653437%_
                      _%g5287553436%_
                      (foldr (lambda (_%g5346053463%_ _%g5346153466%_)
                               (cons _%g5346053463%_ _%g5346153466%_))
                             '()
                             _%g5287453434%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8725187252%_
                   (lambda (_%g5290153314%_ _%g5290253316%_ _%g5290353317%_)
                     (_%expand52838%_
                      _%g5290353317%_
                      _%g5290253316%_
                      (foldr (lambda (_%g5334053343%_ _%g5334153346%_)
                               (cons _%g5334053343%_ _%g5334153346%_))
                             '()
                             _%g5290153314%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8725587256%_
                   (lambda (_%g5292853194%_ _%g5292953196%_ _%g5293053197%_)
                     (_%expand52838%_
                      _%g5293053197%_
                      _%g5292953196%_
                      (foldr (lambda (_%g5322053223%_ _%g5322153226%_)
                               (cons _%g5322053223%_ _%g5322153226%_))
                             '()
                             _%g5292853194%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8725987260%_
                   (lambda (_%g5295553072%_ _%g5295653074%_ _%g5295753075%_)
                     (_%expand52838%_
                      _%g5295753075%_
                      _%g5295653074%_
                      (foldr (lambda (_%g5310053103%_ _%g5310153106%_)
                               (cons _%g5310053103%_ _%g5310153106%_))
                             '()
                             _%g5295553072%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8747987480%_
                      (lambda (_%e5295852994%_
                               _%hd5295952998%_
                               _%tl5296053001%_
                               _%e5296153004%_
                               _%hd5296253008%_
                               _%tl5296353011%_
                               _%e5296453014%_
                               _%hd5296553018%_
                               _%tl5296653021%_
                               _%e5296753024%_
                               _%hd5296853028%_
                               _%tl5296953031%_
                               _%e5297053034%_
                               _%hd5297153038%_
                               _%tl5297253041%_
                               _%__splice8726187262%_
                               _%target5297353044%_
                               _%tl5297553047%_)
                        (letrec ((_%loop5297653050%_
                                  (lambda (_%hd5297453054%_ _%body5298053057%_)
                                    (if (gx#stx-pair? _%hd5297453054%_)
                                        (let ((_%e5297753059%_
                                               (gx#syntax-e _%hd5297453054%_)))
                                          (let ((_%lp-tl5297953066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5297753059%_)))
                                                (_%lp-hd5297853063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5297753059%_))))
                                            (_%loop5297653050%_
                                             _%lp-tl5297953066%_
                                             (cons _%lp-hd5297853063%_
                                                   _%body5298053057%_))))
                                        (let ((_%body5298153069%_
                                               (reverse _%body5298053057%_)))
                                          (let ((_%g5295553072%_
                                                 _%body5298153069%_)
                                                (_%g5295653074%_
                                                 _%hd5297153038%_)
                                                (_%g5295753075%_
                                                 _%hd5296553018%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5295653074%_))
                                                (_%__kont8725987260%_
                                                 _%g5295553072%_
                                                 _%g5295653074%_
                                                 _%g5295753075%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))))))))
                          (_%loop5297653050%_ _%target5297353044%_ '()))))
                     (_%__match8743587436%_
                      (lambda (_%e5293153116%_
                               _%hd5293253120%_
                               _%tl5293353123%_
                               _%e5293453126%_
                               _%hd5293553130%_
                               _%tl5293653133%_
                               _%e5293753136%_
                               _%hd5293853140%_
                               _%tl5293953143%_
                               _%e5294053146%_
                               _%hd5294153150%_
                               _%tl5294253153%_
                               _%e5294353156%_
                               _%hd5294453160%_
                               _%tl5294553163%_
                               _%__splice8725787258%_
                               _%target5294653166%_
                               _%tl5294853169%_)
                        (letrec ((_%loop5294953172%_
                                  (lambda (_%hd5294753176%_ _%body5295353179%_)
                                    (if (gx#stx-pair? _%hd5294753176%_)
                                        (let ((_%e5295053181%_
                                               (gx#syntax-e _%hd5294753176%_)))
                                          (let ((_%lp-tl5295253188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5295053181%_)))
                                                (_%lp-hd5295153185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5295053181%_))))
                                            (_%loop5294953172%_
                                             _%lp-tl5295253188%_
                                             (cons _%lp-hd5295153185%_
                                                   _%body5295353179%_))))
                                        (let ((_%body5295453191%_
                                               (reverse _%body5295353179%_)))
                                          (let ((_%g5292853194%_
                                                 _%body5295453191%_)
                                                (_%g5292953196%_
                                                 _%hd5294453160%_)
                                                (_%g5293053197%_
                                                 _%hd5293853140%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5292953196%_))
                                                (_%__kont8725587256%_
                                                 _%g5292853194%_
                                                 _%g5292953196%_
                                                 _%g5293053197%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))))))))
                          (_%loop5294953172%_ _%target5294653166%_ '()))))
                     (_%__match8739187392%_
                      (lambda (_%e5290453236%_
                               _%hd5290553240%_
                               _%tl5290653243%_
                               _%e5290753246%_
                               _%hd5290853250%_
                               _%tl5290953253%_
                               _%e5291053256%_
                               _%hd5291153260%_
                               _%tl5291253263%_
                               _%e5291353266%_
                               _%hd5291453270%_
                               _%tl5291553273%_
                               _%e5291653276%_
                               _%hd5291753280%_
                               _%tl5291853283%_
                               _%__splice8725387254%_
                               _%target5291953286%_
                               _%tl5292153289%_)
                        (letrec ((_%loop5292253292%_
                                  (lambda (_%hd5292053296%_ _%body5292653299%_)
                                    (if (gx#stx-pair? _%hd5292053296%_)
                                        (let ((_%e5292353301%_
                                               (gx#syntax-e _%hd5292053296%_)))
                                          (let ((_%lp-tl5292553308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5292353301%_)))
                                                (_%lp-hd5292453305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5292353301%_))))
                                            (_%loop5292253292%_
                                             _%lp-tl5292553308%_
                                             (cons _%lp-hd5292453305%_
                                                   _%body5292653299%_))))
                                        (let ((_%body5292753311%_
                                               (reverse _%body5292653299%_)))
                                          (let ((_%g5290153314%_
                                                 _%body5292753311%_)
                                                (_%g5290253316%_
                                                 _%hd5291753280%_)
                                                (_%g5290353317%_
                                                 _%hd5291153260%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5290253316%_))
                                                (_%__kont8725187252%_
                                                 _%g5290153314%_
                                                 _%g5290253316%_
                                                 _%g5290353317%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))))))))
                          (_%loop5292253292%_ _%target5291953286%_ '()))))
                     (_%__match8734787348%_
                      (lambda (_%e5287753356%_
                               _%hd5287853360%_
                               _%tl5287953363%_
                               _%e5288053366%_
                               _%hd5288153370%_
                               _%tl5288253373%_
                               _%e5288353376%_
                               _%hd5288453380%_
                               _%tl5288553383%_
                               _%e5288653386%_
                               _%hd5288753390%_
                               _%tl5288853393%_
                               _%e5288953396%_
                               _%hd5289053400%_
                               _%tl5289153403%_
                               _%__splice8724987250%_
                               _%target5289253406%_
                               _%tl5289453409%_)
                        (letrec ((_%loop5289553412%_
                                  (lambda (_%hd5289353416%_ _%body5289953419%_)
                                    (if (gx#stx-pair? _%hd5289353416%_)
                                        (let ((_%e5289653421%_
                                               (gx#syntax-e _%hd5289353416%_)))
                                          (let ((_%lp-tl5289853428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5289653421%_)))
                                                (_%lp-hd5289753425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5289653421%_))))
                                            (_%loop5289553412%_
                                             _%lp-tl5289853428%_
                                             (cons _%lp-hd5289753425%_
                                                   _%body5289953419%_))))
                                        (let ((_%body5290053431%_
                                               (reverse _%body5289953419%_)))
                                          (let ((_%g5287453434%_
                                                 _%body5290053431%_)
                                                (_%g5287553436%_
                                                 _%hd5289053400%_)
                                                (_%g5287653437%_
                                                 _%hd5288453380%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5287553436%_))
                                                (_%__kont8724787248%_
                                                 _%g5287453434%_
                                                 _%g5287553436%_
                                                 _%g5287653437%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))))))))
                          (_%loop5289553412%_ _%target5289253406%_ '()))))
                     (_%__match8732787328%_
                      (lambda (_%e5287753356%_
                               _%hd5287853360%_
                               _%tl5287953363%_
                               _%e5288053366%_
                               _%hd5288153370%_
                               _%tl5288253373%_
                               _%e5288353376%_
                               _%hd5288453380%_
                               _%tl5288553383%_
                               _%e5288653386%_
                               _%hd5288753390%_
                               _%tl5288853393%_)
                        (if (gx#identifier? _%hd5288753390%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92669_|
                                 _%hd5288753390%_)
                                (if (gx#stx-pair? _%tl5288853393%_)
                                    (let ((_%e5288953396%_
                                           (gx#syntax-e _%tl5288853393%_)))
                                      (let ((_%tl5289153403%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5288953396%_)))
                                            (_%hd5289053400%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5288953396%_))))
                                        (if (gx#stx-null? _%tl5289153403%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5288253373%_)
                                                (let ((_%__splice8724987250%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5288253373%_
                                                        '0)))
                                                  (let ((_%tl5289453409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8724987250%_
                                                            '1)))
                                                        (_%target5289253406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8724987250%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5289453409%_)
                                                        (_%__match8734787348%_
                                                         _%e5287753356%_
                                                         _%hd5287853360%_
                                                         _%tl5287953363%_
                                                         _%e5288053366%_
                                                         _%hd5288153370%_
                                                         _%tl5288253373%_
                                                         _%e5288353376%_
                                                         _%hd5288453380%_
                                                         _%tl5288553383%_
                                                         _%e5288653386%_
                                                         _%hd5288753390%_
                                                         _%tl5288853393%_
                                                         _%e5288953396%_
                                                         _%hd5289053400%_
                                                         _%tl5289153403%_
                                                         _%__splice8724987250%_
                                                         _%target5289253406%_
                                                         _%tl5289453409%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5284452987%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5284452987%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5284452987%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92670_|
                                     _%hd5288753390%_)
                                    (if (gx#stx-pair? _%tl5288853393%_)
                                        (let ((_%e5291653276%_
                                               (gx#syntax-e _%tl5288853393%_)))
                                          (let ((_%tl5291853283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5291653276%_)))
                                                (_%hd5291753280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5291653276%_))))
                                            (if (gx#stx-null? _%tl5291853283%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5288253373%_)
                                                    (let ((_%__splice8725387254%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5288253373%_
                                                            '0)))
                                                      (let ((_%tl5292153289%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8725387254%_ '1)))
                    (_%target5291953286%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8725387254%_ '0))))
                (if (gx#stx-null? _%tl5292153289%_)
                    (_%__match8739187392%_
                     _%e5287753356%_
                     _%hd5287853360%_
                     _%tl5287953363%_
                     _%e5288053366%_
                     _%hd5288153370%_
                     _%tl5288253373%_
                     _%e5288353376%_
                     _%hd5288453380%_
                     _%tl5288553383%_
                     _%e5288653386%_
                     _%hd5288753390%_
                     _%tl5288853393%_
                     _%e5291653276%_
                     _%hd5291753280%_
                     _%tl5291853283%_
                     _%__splice8725387254%_
                     _%target5291953286%_
                     _%tl5292153289%_)
                    (let () (declare (not safe)) (_%g5284452987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5284452987%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5284452987%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92671_|
                                         _%hd5288753390%_)
                                        (if (gx#stx-pair? _%tl5288853393%_)
                                            (let ((_%e5294353156%_
                                                   (gx#syntax-e
                                                    _%tl5288853393%_)))
                                              (let ((_%tl5294553163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5294353156%_)))
                                                    (_%hd5294453160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5294353156%_))))
                                                (if (gx#stx-null?
                                                     _%tl5294553163%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5288253373%_)
                                                        (let ((_%__splice8725787258%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5288253373%_
                                                                '0)))
                                                          (let ((_%tl5294853169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8725787258%_ '1)))
                        (_%target5294653166%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8725787258%_ '0))))
                    (if (gx#stx-null? _%tl5294853169%_)
                        (_%__match8743587436%_
                         _%e5287753356%_
                         _%hd5287853360%_
                         _%tl5287953363%_
                         _%e5288053366%_
                         _%hd5288153370%_
                         _%tl5288253373%_
                         _%e5288353376%_
                         _%hd5288453380%_
                         _%tl5288553383%_
                         _%e5288653386%_
                         _%hd5288753390%_
                         _%tl5288853393%_
                         _%e5294353156%_
                         _%hd5294453160%_
                         _%tl5294553163%_
                         _%__splice8725787258%_
                         _%target5294653166%_
                         _%tl5294853169%_)
                        (let () (declare (not safe)) (_%g5284452987%_)))))
                (let () (declare (not safe)) (_%g5284452987%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5284452987%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5284452987%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92672_|
                                             _%hd5288753390%_)
                                            (if (gx#stx-pair? _%tl5288853393%_)
                                                (let ((_%e5297053034%_
                                                       (gx#syntax-e
                                                        _%tl5288853393%_)))
                                                  (let ((_%tl5297253041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5297053034%_)))
                                                        (_%hd5297153038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5297053034%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5297253041%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5288253373%_)
                                                            (let ((_%__splice8726187262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5288253373%_
                            '0)))
                      (let ((_%tl5297553047%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8726187262%_ '1)))
                            (_%target5297353044%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8726187262%_ '0))))
                        (if (gx#stx-null? _%tl5297553047%_)
                            (_%__match8747987480%_
                             _%e5287753356%_
                             _%hd5287853360%_
                             _%tl5287953363%_
                             _%e5288053366%_
                             _%hd5288153370%_
                             _%tl5288253373%_
                             _%e5288353376%_
                             _%hd5288453380%_
                             _%tl5288553383%_
                             _%e5288653386%_
                             _%hd5288753390%_
                             _%tl5288853393%_
                             _%e5297053034%_
                             _%hd5297153038%_
                             _%tl5297253041%_
                             _%__splice8726187262%_
                             _%target5297353044%_
                             _%tl5297553047%_)
                            (let () (declare (not safe)) (_%g5284452987%_)))))
                    (let () (declare (not safe)) (_%g5284452987%_)))
                (let () (declare (not safe)) (_%g5284452987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5284452987%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5284452987%_))))))
                            (let () (declare (not safe)) (_%g5284452987%_)))))
                     (_%__match8730387304%_
                      (lambda (_%e5285053476%_
                               _%hd5285153480%_
                               _%tl5285253483%_
                               _%e5285353486%_
                               _%hd5285453490%_
                               _%tl5285553493%_
                               _%e5285653496%_
                               _%hd5285753500%_
                               _%tl5285853503%_
                               _%e5285953506%_
                               _%hd5286053510%_
                               _%tl5286153513%_
                               _%e5286253516%_
                               _%hd5286353520%_
                               _%tl5286453523%_
                               _%__splice8724587246%_
                               _%target5286553526%_
                               _%tl5286753529%_)
                        (letrec ((_%loop5286853532%_
                                  (lambda (_%hd5286653536%_ _%body5287253539%_)
                                    (if (gx#stx-pair? _%hd5286653536%_)
                                        (let ((_%e5286953541%_
                                               (gx#syntax-e _%hd5286653536%_)))
                                          (let ((_%lp-tl5287153548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5286953541%_)))
                                                (_%lp-hd5287053545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5286953541%_))))
                                            (_%loop5286853532%_
                                             _%lp-tl5287153548%_
                                             (cons _%lp-hd5287053545%_
                                                   _%body5287253539%_))))
                                        (let ((_%body5287353551%_
                                               (reverse _%body5287253539%_)))
                                          (let ((_%g5284653554%_
                                                 _%body5287353551%_)
                                                (_%g5284753556%_
                                                 _%hd5286353520%_)
                                                (_%g5284853557%_
                                                 _%hd5286053510%_)
                                                (_%g5284953558%_
                                                 _%hd5285753500%_))
                                            (if (let ((__tmp92673
                                                       (gx#syntax-local-value
                                                        _%g5284753556%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92673))
                                                (_%__kont8724387244%_
                                                 _%g5284653554%_
                                                 _%g5284753556%_
                                                 _%g5284853557%_
                                                 _%g5284953558%_)
                                                (_%__match8732787328%_
                                                 _%e5285053476%_
                                                 _%hd5285153480%_
                                                 _%tl5285253483%_
                                                 _%e5285353486%_
                                                 _%hd5285453490%_
                                                 _%tl5285553493%_
                                                 _%e5285653496%_
                                                 _%hd5285753500%_
                                                 _%tl5285853503%_
                                                 _%e5285953506%_
                                                 _%hd5286053510%_
                                                 _%tl5286153513%_))))))))
                          (_%loop5286853532%_ _%target5286553526%_ '())))))
                (if (gx#stx-pair? _%__stx8724087241%_)
                    (let ((_%e5285053476%_ (gx#syntax-e _%__stx8724087241%_)))
                      (let ((_%tl5285253483%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5285053476%_)))
                            (_%hd5285153480%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5285053476%_))))
                        (if (gx#stx-pair? _%tl5285253483%_)
                            (let ((_%e5285353486%_
                                   (gx#syntax-e _%tl5285253483%_)))
                              (let ((_%tl5285553493%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5285353486%_)))
                                    (_%hd5285453490%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5285353486%_))))
                                (if (gx#stx-pair? _%hd5285453490%_)
                                    (let ((_%e5285653496%_
                                           (gx#syntax-e _%hd5285453490%_)))
                                      (let ((_%tl5285853503%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5285653496%_)))
                                            (_%hd5285753500%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5285653496%_))))
                                        (if (gx#stx-pair? _%tl5285853503%_)
                                            (let ((_%e5285953506%_
                                                   (gx#syntax-e
                                                    _%tl5285853503%_)))
                                              (let ((_%tl5286153513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5285953506%_)))
                                                    (_%hd5286053510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5285953506%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5286153513%_)
                                                    (let ((_%e5286253516%_
                                                           (gx#syntax-e
                                                            _%tl5286153513%_)))
                                                      (let ((_%tl5286453523%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5286253516%_)))
                    (_%hd5286353520%_
                     (let () (declare (not safe)) (##car _%e5286253516%_))))
                (if (gx#stx-null? _%tl5286453523%_)
                    (if (gx#stx-pair/null? _%tl5285553493%_)
                        (let ((_%__splice8724587246%_
                               (gx#syntax-split-splice->vector
                                _%tl5285553493%_
                                '0)))
                          (let ((_%tl5286753529%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8724587246%_ '1)))
                                (_%target5286553526%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8724587246%_ '0))))
                            (if (gx#stx-null? _%tl5286753529%_)
                                (_%__match8730387304%_
                                 _%e5285053476%_
                                 _%hd5285153480%_
                                 _%tl5285253483%_
                                 _%e5285353486%_
                                 _%hd5285453490%_
                                 _%tl5285553493%_
                                 _%e5285653496%_
                                 _%hd5285753500%_
                                 _%tl5285853503%_
                                 _%e5285953506%_
                                 _%hd5286053510%_
                                 _%tl5286153513%_
                                 _%e5286253516%_
                                 _%hd5286353520%_
                                 _%tl5286453523%_
                                 _%__splice8724587246%_
                                 _%target5286553526%_
                                 _%tl5286753529%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5284452987%_)))))
                        (let () (declare (not safe)) (_%g5284452987%_)))
                    (let () (declare (not safe)) (_%g5284452987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5284452987%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5284452987%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5284452987%_)))))
                            (let () (declare (not safe)) (_%g5284452987%_)))))
                    (let () (declare (not safe)) (_%g5284452987%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx53950%_)
        (letrec ((_%expand-body53953%_
                  (lambda (_%var54944%_
                           _%Interface54946%_
                           _%body54947%_
                           _%checked?54948%_)
                    (let* ((_%type54950%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx53950%_
                               _%Interface54946%_)))
                           (_%g5495354997%_
                            (lambda (_%g5495454993%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5495454993%_)))
                           (_%g5495255153%_
                            (lambda (_%g5495455001%_)
                              (if (gx#stx-pair? _%g5495455001%_)
                                  (let ((_%e5496255004%_
                                         (gx#syntax-e _%g5495455001%_)))
                                    (let ((_%hd5496355008%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5496255004%_)))
                                          (_%tl5496455011%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5496255004%_))))
                                      (if (gx#stx-pair? _%tl5496455011%_)
                                          (let ((_%e5496555014%_
                                                 (gx#syntax-e
                                                  _%tl5496455011%_)))
                                            (let ((_%hd5496655018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5496555014%_)))
                                                  (_%tl5496755021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5496555014%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5496755021%_)
                                                  (let ((_%e5496855024%_
                                                         (gx#syntax-e
                                                          _%tl5496755021%_)))
                                                    (let ((_%hd5496955028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5496855024%_)))
                                                          (_%tl5497055031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5496855024%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5497055031%_)
                                                          (let ((_%e5497155034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5497055031%_)))
                    (let ((_%hd5497255038%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5497155034%_)))
                          (_%tl5497355041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5497155034%_))))
                      (if (gx#stx-pair? _%tl5497355041%_)
                          (let ((_%e5497455044%_
                                 (gx#syntax-e _%tl5497355041%_)))
                            (let ((_%hd5497555048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5497455044%_)))
                                  (_%tl5497655051%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5497455044%_))))
                              (if (gx#stx-pair? _%tl5497655051%_)
                                  (let ((_%e5497755054%_
                                         (gx#syntax-e _%tl5497655051%_)))
                                    (let ((_%hd5497855058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5497755054%_)))
                                          (_%tl5497955061%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5497755054%_))))
                                      (if (gx#stx-pair? _%tl5497955061%_)
                                          (let ((_%e5498055064%_
                                                 (gx#syntax-e
                                                  _%tl5497955061%_)))
                                            (let ((_%hd5498155068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5498055064%_)))
                                                  (_%tl5498255071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5498055064%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5498155068%_)
                                                  (let ((_g92674_
                                                         (gx#syntax-split-splice
                                                          _%hd5498155068%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92674_)
                           (##values-length _g92674_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92675_ 2)))
                    (error "Context expects 2 values" _g92675_)))
              (let ((_%target5498355074%_
                     (let () (declare (not safe)) (##values-ref _g92674_ 0)))
                    (_%tl5498555077%_
                     (let () (declare (not safe)) (##values-ref _g92674_ 1))))
                (if (gx#stx-null? _%tl5498555077%_)
                    (letrec ((_%loop5498655080%_
                              (lambda (_%hd5498455084%_ _%body5499055087%_)
                                (if (gx#stx-pair? _%hd5498455084%_)
                                    (let ((_%e5498755089%_
                                           (gx#syntax-e _%hd5498455084%_)))
                                      (let ((_%lp-hd5498855093%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5498755089%_)))
                                            (_%lp-tl5498955096%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5498755089%_))))
                                        (_%loop5498655080%_
                                         _%lp-tl5498955096%_
                                         (cons _%lp-hd5498855093%_
                                               _%body5499055087%_))))
                                    (let ((_%body5499155099%_
                                           (reverse _%body5499055087%_)))
                                      (if (gx#stx-null? _%tl5498255071%_)
                                          ((lambda (_%g5495555102%_
                                                    _%g5495655104%_
                                                    _%g5495755105%_
                                                    _%g5495855106%_
                                                    _%g5495955107%_
                                                    _%g5496055108%_
                                                    _%g5496155109%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5495855106%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5495955107%_ '()))
                                         (cons _%g5495855106%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5496155109%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5495855106%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5496055108%_ '()))
                               (cons _%g5495755105%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5495655104%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5514455147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5514555150%_)
                      (cons _%g5514455147%_ _%g5514555150%_))
                    '()
                    _%g5495555102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5499155099%_
                                           _%hd5497855058%_
                                           _%hd5497555048%_
                                           _%hd5497255038%_
                                           _%hd5496955028%_
                                           _%hd5496655018%_
                                           _%hd5496355008%_)
                                          (_%g5495354997%_
                                           _%g5495455001%_)))))))
                      (_%loop5498655080%_ _%target5498355074%_ '()))
                    (_%g5495354997%_ _%g5495455001%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5495354997%_
                                                   _%g5495455001%_))))
                                          (_%g5495354997%_ _%g5495455001%_))))
                                  (_%g5495354997%_ _%g5495455001%_))))
                          (_%g5495354997%_ _%g5495455001%_))))
                  (_%g5495354997%_ _%g5495455001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5495354997%_
                                                   _%g5495455001%_))))
                                          (_%g5495354997%_ _%g5495455001%_))))
                                  (_%g5495354997%_ _%g5495455001%_)))))
                      (_%g5495255153%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type54950%_
                             (let ((__obj92484 _%type54950%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92484
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92484
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj92484
                                    'type-descriptor)))
                             _%var54944%_
                             _%checked?54948%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54947%_)))))
                 (_%expand53955%_
                  (lambda (_%var54743%_
                           _%Interface54745%_
                           _%body54746%_
                           _%checked?54747%_
                           _%checked-methods?54748%_
                           _%maybe?54749%_)
                    (let* ((_%g5475154759%_
                            (lambda (_%g5475254755%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5475254755%_)))
                           (_%g5475054936%_
                            (lambda (_%g5475254763%_)
                              ((lambda (_%g5475354766%_)
                                 (if _%checked?54747%_
                                     (if _%maybe?54749%_
                                         (let* ((_%g5477854793%_
                                                 (lambda (_%g5477954789%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5477954789%_)))
                                                (_%g5477754839%_
                                                 (lambda (_%g5477954797%_)
                                                   (if (gx#stx-pair?
                                                        _%g5477954797%_)
                                                       (let ((_%e5478254800%_
                                                              (gx#syntax-e
                                                               _%g5477954797%_)))
                                                         (let ((_%hd5478354804%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5478254800%_)))
                       (_%tl5478454807%_
                        (let () (declare (not safe)) (##cdr _%e5478254800%_))))
                   (if (gx#stx-pair? _%tl5478454807%_)
                       (let ((_%e5478554810%_ (gx#syntax-e _%tl5478454807%_)))
                         (let ((_%hd5478654814%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5478554810%_)))
                               (_%tl5478754817%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5478554810%_))))
                           (if (gx#stx-null? _%tl5478754817%_)
                               ((lambda (_%g5478054820%_ _%g5478154822%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5478154822%_
                                                    (cons (cons _%g5478054820%_
                                                                (cons _%g5478154822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5478154822%_
                                                                (cons _%g5475354766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5478154822%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5478654814%_
                                _%hd5478354804%_)
                               (_%g5477854793%_ _%g5477954797%_))))
                       (_%g5477854793%_ _%g5477954797%_))))
               (_%g5477854793%_ _%g5477954797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5477754839%_
                                            (list _%var54743%_
                                                  _%Interface54745%_)))
                                         (let* ((_%g5484354858%_
                                                 (lambda (_%g5484454854%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5484454854%_)))
                                                (_%g5484254902%_
                                                 (lambda (_%g5484454862%_)
                                                   (if (gx#stx-pair?
                                                        _%g5484454862%_)
                                                       (let ((_%e5484754865%_
                                                              (gx#syntax-e
                                                               _%g5484454862%_)))
                                                         (let ((_%hd5484854869%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5484754865%_)))
                       (_%tl5484954872%_
                        (let () (declare (not safe)) (##cdr _%e5484754865%_))))
                   (if (gx#stx-pair? _%tl5484954872%_)
                       (let ((_%e5485054875%_ (gx#syntax-e _%tl5484954872%_)))
                         (let ((_%hd5485154879%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5485054875%_)))
                               (_%tl5485254882%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5485054875%_))))
                           (if (gx#stx-null? _%tl5485254882%_)
                               ((lambda (_%g5484554885%_ _%g5484654887%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5484654887%_
                                                    (cons (cons _%g5484554885%_
                                                                (cons _%g5484654887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5475354766%_ '()))))
                                _%hd5485154879%_
                                _%hd5484854869%_)
                               (_%g5484354858%_ _%g5484454862%_))))
                       (_%g5484354858%_ _%g5484454862%_))))
               (_%g5484354858%_ _%g5484454862%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5484254902%_
                                            (list _%var54743%_
                                                  _%Interface54745%_))))
                                     (if _%maybe?54749%_
                                         (let* ((_%g5490654914%_
                                                 (lambda (_%g5490754910%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5490754910%_)))
                                                (_%g5490554932%_
                                                 (lambda (_%g5490754918%_)
                                                   ((lambda (_%g5490854921%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5490854921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5475354766%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5490854921%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5490754918%_))))
                                           (_%g5490554932%_ _%var54743%_))
                                         _%g5475354766%_)))
                               _%g5475254763%_))))
                      (_%g5475054936%_
                       (_%expand-body53953%_
                        _%var54743%_
                        _%Interface54745%_
                        _%body54746%_
                        (let ((_%$e54940%_ _%checked?54747%_))
                          (if _%$e54940%_
                              _%$e54940%_
                              _%checked-methods?54748%_))))))))
          (let* ((_%__stx8748287483%_ _%stx53950%_)
                 (_%g5396154104%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8748287483%_))))
            (let ((_%__kont8748587486%_
                   (lambda (_%g5396354671%_
                            _%g5396454673%_
                            _%g5396554674%_
                            _%g5396654675%_)
                     (let* ((_%g5470054708%_
                             (lambda (_%g5470154704%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5470154704%_)))
                            (_%g5469954735%_
                             (lambda (_%g5470154712%_)
                               ((lambda (_%g5470254715%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5396654675%_
                                                    (cons _%g5396554674%_
                                                          (cons _%g5470254715%_
                                                                '())))
                                              (foldr (lambda (_%g5472654729%_
                                                              _%g5472754732%_)
                                                       (cons _%g5472654729%_
                                                             _%g5472754732%_))
                                                     '()
                                                     _%g5396354671%_))))
                                _%g5470154712%_))))
                       (_%g5469954735%_
                        (let ((__obj92485
                               (gx#syntax-local-value _%g5396454673%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92485
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92485
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92485
                               'identifier)))))))
                  (_%__kont8748987490%_
                   (lambda (_%g5399154551%_ _%g5399254553%_ _%g5399354554%_)
                     (_%expand53955%_
                      _%g5399354554%_
                      _%g5399254553%_
                      (foldr (lambda (_%g5457754580%_ _%g5457854583%_)
                               (cons _%g5457754580%_ _%g5457854583%_))
                             '()
                             _%g5399154551%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8749387494%_
                   (lambda (_%g5401854431%_ _%g5401954433%_ _%g5402054434%_)
                     (_%expand53955%_
                      _%g5402054434%_
                      _%g5401954433%_
                      (foldr (lambda (_%g5445754460%_ _%g5445854463%_)
                               (cons _%g5445754460%_ _%g5445854463%_))
                             '()
                             _%g5401854431%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8749787498%_
                   (lambda (_%g5404554311%_ _%g5404654313%_ _%g5404754314%_)
                     (_%expand53955%_
                      _%g5404754314%_
                      _%g5404654313%_
                      (foldr (lambda (_%g5433754340%_ _%g5433854343%_)
                               (cons _%g5433754340%_ _%g5433854343%_))
                             '()
                             _%g5404554311%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8750187502%_
                   (lambda (_%g5407254189%_ _%g5407354191%_ _%g5407454192%_)
                     (_%expand53955%_
                      _%g5407454192%_
                      _%g5407354191%_
                      (foldr (lambda (_%g5421754220%_ _%g5421854223%_)
                               (cons _%g5421754220%_ _%g5421854223%_))
                             '()
                             _%g5407254189%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8772187722%_
                      (lambda (_%e5407554111%_
                               _%hd5407654115%_
                               _%tl5407754118%_
                               _%e5407854121%_
                               _%hd5407954125%_
                               _%tl5408054128%_
                               _%e5408154131%_
                               _%hd5408254135%_
                               _%tl5408354138%_
                               _%e5408454141%_
                               _%hd5408554145%_
                               _%tl5408654148%_
                               _%e5408754151%_
                               _%hd5408854155%_
                               _%tl5408954158%_
                               _%__splice8750387504%_
                               _%target5409054161%_
                               _%tl5409254164%_)
                        (letrec ((_%loop5409354167%_
                                  (lambda (_%hd5409154171%_ _%body5409754174%_)
                                    (if (gx#stx-pair? _%hd5409154171%_)
                                        (let ((_%e5409454176%_
                                               (gx#syntax-e _%hd5409154171%_)))
                                          (let ((_%lp-tl5409654183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5409454176%_)))
                                                (_%lp-hd5409554180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5409454176%_))))
                                            (_%loop5409354167%_
                                             _%lp-tl5409654183%_
                                             (cons _%lp-hd5409554180%_
                                                   _%body5409754174%_))))
                                        (let ((_%body5409854186%_
                                               (reverse _%body5409754174%_)))
                                          (let ((_%g5407254189%_
                                                 _%body5409854186%_)
                                                (_%g5407354191%_
                                                 _%hd5408854155%_)
                                                (_%g5407454192%_
                                                 _%hd5408254135%_))
                                            (if (and (gx#identifier?
                                                      _%g5407454192%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5407354191%_)))
                                                (_%__kont8750187502%_
                                                 _%g5407254189%_
                                                 _%g5407354191%_
                                                 _%g5407454192%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))))))))
                          (_%loop5409354167%_ _%target5409054161%_ '()))))
                     (_%__match8767787678%_
                      (lambda (_%e5404854233%_
                               _%hd5404954237%_
                               _%tl5405054240%_
                               _%e5405154243%_
                               _%hd5405254247%_
                               _%tl5405354250%_
                               _%e5405454253%_
                               _%hd5405554257%_
                               _%tl5405654260%_
                               _%e5405754263%_
                               _%hd5405854267%_
                               _%tl5405954270%_
                               _%e5406054273%_
                               _%hd5406154277%_
                               _%tl5406254280%_
                               _%__splice8749987500%_
                               _%target5406354283%_
                               _%tl5406554286%_)
                        (letrec ((_%loop5406654289%_
                                  (lambda (_%hd5406454293%_ _%body5407054296%_)
                                    (if (gx#stx-pair? _%hd5406454293%_)
                                        (let ((_%e5406754298%_
                                               (gx#syntax-e _%hd5406454293%_)))
                                          (let ((_%lp-tl5406954305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5406754298%_)))
                                                (_%lp-hd5406854302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5406754298%_))))
                                            (_%loop5406654289%_
                                             _%lp-tl5406954305%_
                                             (cons _%lp-hd5406854302%_
                                                   _%body5407054296%_))))
                                        (let ((_%body5407154308%_
                                               (reverse _%body5407054296%_)))
                                          (let ((_%g5404554311%_
                                                 _%body5407154308%_)
                                                (_%g5404654313%_
                                                 _%hd5406154277%_)
                                                (_%g5404754314%_
                                                 _%hd5405554257%_))
                                            (if (and (gx#identifier?
                                                      _%g5404754314%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5404654313%_)))
                                                (_%__kont8749787498%_
                                                 _%g5404554311%_
                                                 _%g5404654313%_
                                                 _%g5404754314%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))))))))
                          (_%loop5406654289%_ _%target5406354283%_ '()))))
                     (_%__match8763387634%_
                      (lambda (_%e5402154353%_
                               _%hd5402254357%_
                               _%tl5402354360%_
                               _%e5402454363%_
                               _%hd5402554367%_
                               _%tl5402654370%_
                               _%e5402754373%_
                               _%hd5402854377%_
                               _%tl5402954380%_
                               _%e5403054383%_
                               _%hd5403154387%_
                               _%tl5403254390%_
                               _%e5403354393%_
                               _%hd5403454397%_
                               _%tl5403554400%_
                               _%__splice8749587496%_
                               _%target5403654403%_
                               _%tl5403854406%_)
                        (letrec ((_%loop5403954409%_
                                  (lambda (_%hd5403754413%_ _%body5404354416%_)
                                    (if (gx#stx-pair? _%hd5403754413%_)
                                        (let ((_%e5404054418%_
                                               (gx#syntax-e _%hd5403754413%_)))
                                          (let ((_%lp-tl5404254425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5404054418%_)))
                                                (_%lp-hd5404154422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5404054418%_))))
                                            (_%loop5403954409%_
                                             _%lp-tl5404254425%_
                                             (cons _%lp-hd5404154422%_
                                                   _%body5404354416%_))))
                                        (let ((_%body5404454428%_
                                               (reverse _%body5404354416%_)))
                                          (let ((_%g5401854431%_
                                                 _%body5404454428%_)
                                                (_%g5401954433%_
                                                 _%hd5403454397%_)
                                                (_%g5402054434%_
                                                 _%hd5402854377%_))
                                            (if (and (gx#identifier?
                                                      _%g5402054434%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5401954433%_)))
                                                (_%__kont8749387494%_
                                                 _%g5401854431%_
                                                 _%g5401954433%_
                                                 _%g5402054434%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))))))))
                          (_%loop5403954409%_ _%target5403654403%_ '()))))
                     (_%__match8758987590%_
                      (lambda (_%e5399454473%_
                               _%hd5399554477%_
                               _%tl5399654480%_
                               _%e5399754483%_
                               _%hd5399854487%_
                               _%tl5399954490%_
                               _%e5400054493%_
                               _%hd5400154497%_
                               _%tl5400254500%_
                               _%e5400354503%_
                               _%hd5400454507%_
                               _%tl5400554510%_
                               _%e5400654513%_
                               _%hd5400754517%_
                               _%tl5400854520%_
                               _%__splice8749187492%_
                               _%target5400954523%_
                               _%tl5401154526%_)
                        (letrec ((_%loop5401254529%_
                                  (lambda (_%hd5401054533%_ _%body5401654536%_)
                                    (if (gx#stx-pair? _%hd5401054533%_)
                                        (let ((_%e5401354538%_
                                               (gx#syntax-e _%hd5401054533%_)))
                                          (let ((_%lp-tl5401554545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5401354538%_)))
                                                (_%lp-hd5401454542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5401354538%_))))
                                            (_%loop5401254529%_
                                             _%lp-tl5401554545%_
                                             (cons _%lp-hd5401454542%_
                                                   _%body5401654536%_))))
                                        (let ((_%body5401754548%_
                                               (reverse _%body5401654536%_)))
                                          (let ((_%g5399154551%_
                                                 _%body5401754548%_)
                                                (_%g5399254553%_
                                                 _%hd5400754517%_)
                                                (_%g5399354554%_
                                                 _%hd5400154497%_))
                                            (if (and (gx#identifier?
                                                      _%g5399354554%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5399254553%_)))
                                                (_%__kont8748987490%_
                                                 _%g5399154551%_
                                                 _%g5399254553%_
                                                 _%g5399354554%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))))))))
                          (_%loop5401254529%_ _%target5400954523%_ '()))))
                     (_%__match8756987570%_
                      (lambda (_%e5399454473%_
                               _%hd5399554477%_
                               _%tl5399654480%_
                               _%e5399754483%_
                               _%hd5399854487%_
                               _%tl5399954490%_
                               _%e5400054493%_
                               _%hd5400154497%_
                               _%tl5400254500%_
                               _%e5400354503%_
                               _%hd5400454507%_
                               _%tl5400554510%_)
                        (if (gx#identifier? _%hd5400454507%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92676_|
                                 _%hd5400454507%_)
                                (if (gx#stx-pair? _%tl5400554510%_)
                                    (let ((_%e5400654513%_
                                           (gx#syntax-e _%tl5400554510%_)))
                                      (let ((_%tl5400854520%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5400654513%_)))
                                            (_%hd5400754517%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5400654513%_))))
                                        (if (gx#stx-null? _%tl5400854520%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5399954490%_)
                                                (let ((_%__splice8749187492%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5399954490%_
                                                        '0)))
                                                  (let ((_%tl5401154526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8749187492%_
                                                            '1)))
                                                        (_%target5400954523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8749187492%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5401154526%_)
                                                        (_%__match8758987590%_
                                                         _%e5399454473%_
                                                         _%hd5399554477%_
                                                         _%tl5399654480%_
                                                         _%e5399754483%_
                                                         _%hd5399854487%_
                                                         _%tl5399954490%_
                                                         _%e5400054493%_
                                                         _%hd5400154497%_
                                                         _%tl5400254500%_
                                                         _%e5400354503%_
                                                         _%hd5400454507%_
                                                         _%tl5400554510%_
                                                         _%e5400654513%_
                                                         _%hd5400754517%_
                                                         _%tl5400854520%_
                                                         _%__splice8749187492%_
                                                         _%target5400954523%_
                                                         _%tl5401154526%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5396154104%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5396154104%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5396154104%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92677_|
                                     _%hd5400454507%_)
                                    (if (gx#stx-pair? _%tl5400554510%_)
                                        (let ((_%e5403354393%_
                                               (gx#syntax-e _%tl5400554510%_)))
                                          (let ((_%tl5403554400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5403354393%_)))
                                                (_%hd5403454397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5403354393%_))))
                                            (if (gx#stx-null? _%tl5403554400%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5399954490%_)
                                                    (let ((_%__splice8749587496%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5399954490%_
                                                            '0)))
                                                      (let ((_%tl5403854406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8749587496%_ '1)))
                    (_%target5403654403%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8749587496%_ '0))))
                (if (gx#stx-null? _%tl5403854406%_)
                    (_%__match8763387634%_
                     _%e5399454473%_
                     _%hd5399554477%_
                     _%tl5399654480%_
                     _%e5399754483%_
                     _%hd5399854487%_
                     _%tl5399954490%_
                     _%e5400054493%_
                     _%hd5400154497%_
                     _%tl5400254500%_
                     _%e5400354503%_
                     _%hd5400454507%_
                     _%tl5400554510%_
                     _%e5403354393%_
                     _%hd5403454397%_
                     _%tl5403554400%_
                     _%__splice8749587496%_
                     _%target5403654403%_
                     _%tl5403854406%_)
                    (let () (declare (not safe)) (_%g5396154104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5396154104%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5396154104%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92678_|
                                         _%hd5400454507%_)
                                        (if (gx#stx-pair? _%tl5400554510%_)
                                            (let ((_%e5406054273%_
                                                   (gx#syntax-e
                                                    _%tl5400554510%_)))
                                              (let ((_%tl5406254280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5406054273%_)))
                                                    (_%hd5406154277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5406054273%_))))
                                                (if (gx#stx-null?
                                                     _%tl5406254280%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5399954490%_)
                                                        (let ((_%__splice8749987500%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5399954490%_
                                                                '0)))
                                                          (let ((_%tl5406554286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8749987500%_ '1)))
                        (_%target5406354283%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8749987500%_ '0))))
                    (if (gx#stx-null? _%tl5406554286%_)
                        (_%__match8767787678%_
                         _%e5399454473%_
                         _%hd5399554477%_
                         _%tl5399654480%_
                         _%e5399754483%_
                         _%hd5399854487%_
                         _%tl5399954490%_
                         _%e5400054493%_
                         _%hd5400154497%_
                         _%tl5400254500%_
                         _%e5400354503%_
                         _%hd5400454507%_
                         _%tl5400554510%_
                         _%e5406054273%_
                         _%hd5406154277%_
                         _%tl5406254280%_
                         _%__splice8749987500%_
                         _%target5406354283%_
                         _%tl5406554286%_)
                        (let () (declare (not safe)) (_%g5396154104%_)))))
                (let () (declare (not safe)) (_%g5396154104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5396154104%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5396154104%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92679_|
                                             _%hd5400454507%_)
                                            (if (gx#stx-pair? _%tl5400554510%_)
                                                (let ((_%e5408754151%_
                                                       (gx#syntax-e
                                                        _%tl5400554510%_)))
                                                  (let ((_%tl5408954158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5408754151%_)))
                                                        (_%hd5408854155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5408754151%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5408954158%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5399954490%_)
                                                            (let ((_%__splice8750387504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5399954490%_
                            '0)))
                      (let ((_%tl5409254164%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8750387504%_ '1)))
                            (_%target5409054161%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8750387504%_ '0))))
                        (if (gx#stx-null? _%tl5409254164%_)
                            (_%__match8772187722%_
                             _%e5399454473%_
                             _%hd5399554477%_
                             _%tl5399654480%_
                             _%e5399754483%_
                             _%hd5399854487%_
                             _%tl5399954490%_
                             _%e5400054493%_
                             _%hd5400154497%_
                             _%tl5400254500%_
                             _%e5400354503%_
                             _%hd5400454507%_
                             _%tl5400554510%_
                             _%e5408754151%_
                             _%hd5408854155%_
                             _%tl5408954158%_
                             _%__splice8750387504%_
                             _%target5409054161%_
                             _%tl5409254164%_)
                            (let () (declare (not safe)) (_%g5396154104%_)))))
                    (let () (declare (not safe)) (_%g5396154104%_)))
                (let () (declare (not safe)) (_%g5396154104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5396154104%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5396154104%_))))))
                            (let () (declare (not safe)) (_%g5396154104%_)))))
                     (_%__match8754587546%_
                      (lambda (_%e5396754593%_
                               _%hd5396854597%_
                               _%tl5396954600%_
                               _%e5397054603%_
                               _%hd5397154607%_
                               _%tl5397254610%_
                               _%e5397354613%_
                               _%hd5397454617%_
                               _%tl5397554620%_
                               _%e5397654623%_
                               _%hd5397754627%_
                               _%tl5397854630%_
                               _%e5397954633%_
                               _%hd5398054637%_
                               _%tl5398154640%_
                               _%__splice8748787488%_
                               _%target5398254643%_
                               _%tl5398454646%_)
                        (letrec ((_%loop5398554649%_
                                  (lambda (_%hd5398354653%_ _%body5398954656%_)
                                    (if (gx#stx-pair? _%hd5398354653%_)
                                        (let ((_%e5398654658%_
                                               (gx#syntax-e _%hd5398354653%_)))
                                          (let ((_%lp-tl5398854665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5398654658%_)))
                                                (_%lp-hd5398754662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5398654658%_))))
                                            (_%loop5398554649%_
                                             _%lp-tl5398854665%_
                                             (cons _%lp-hd5398754662%_
                                                   _%body5398954656%_))))
                                        (let ((_%body5399054668%_
                                               (reverse _%body5398954656%_)))
                                          (let ((_%g5396354671%_
                                                 _%body5399054668%_)
                                                (_%g5396454673%_
                                                 _%hd5398054637%_)
                                                (_%g5396554674%_
                                                 _%hd5397754627%_)
                                                (_%g5396654675%_
                                                 _%hd5397454617%_))
                                            (if (let ((__tmp92680
                                                       (gx#syntax-local-value
                                                        _%g5396454673%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92680))
                                                (_%__kont8748587486%_
                                                 _%g5396354671%_
                                                 _%g5396454673%_
                                                 _%g5396554674%_
                                                 _%g5396654675%_)
                                                (_%__match8756987570%_
                                                 _%e5396754593%_
                                                 _%hd5396854597%_
                                                 _%tl5396954600%_
                                                 _%e5397054603%_
                                                 _%hd5397154607%_
                                                 _%tl5397254610%_
                                                 _%e5397354613%_
                                                 _%hd5397454617%_
                                                 _%tl5397554620%_
                                                 _%e5397654623%_
                                                 _%hd5397754627%_
                                                 _%tl5397854630%_))))))))
                          (_%loop5398554649%_ _%target5398254643%_ '())))))
                (if (gx#stx-pair? _%__stx8748287483%_)
                    (let ((_%e5396754593%_ (gx#syntax-e _%__stx8748287483%_)))
                      (let ((_%tl5396954600%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5396754593%_)))
                            (_%hd5396854597%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5396754593%_))))
                        (if (gx#stx-pair? _%tl5396954600%_)
                            (let ((_%e5397054603%_
                                   (gx#syntax-e _%tl5396954600%_)))
                              (let ((_%tl5397254610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5397054603%_)))
                                    (_%hd5397154607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5397054603%_))))
                                (if (gx#stx-pair? _%hd5397154607%_)
                                    (let ((_%e5397354613%_
                                           (gx#syntax-e _%hd5397154607%_)))
                                      (let ((_%tl5397554620%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5397354613%_)))
                                            (_%hd5397454617%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5397354613%_))))
                                        (if (gx#stx-pair? _%tl5397554620%_)
                                            (let ((_%e5397654623%_
                                                   (gx#syntax-e
                                                    _%tl5397554620%_)))
                                              (let ((_%tl5397854630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5397654623%_)))
                                                    (_%hd5397754627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5397654623%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5397854630%_)
                                                    (let ((_%e5397954633%_
                                                           (gx#syntax-e
                                                            _%tl5397854630%_)))
                                                      (let ((_%tl5398154640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5397954633%_)))
                    (_%hd5398054637%_
                     (let () (declare (not safe)) (##car _%e5397954633%_))))
                (if (gx#stx-null? _%tl5398154640%_)
                    (if (gx#stx-pair/null? _%tl5397254610%_)
                        (let ((_%__splice8748787488%_
                               (gx#syntax-split-splice->vector
                                _%tl5397254610%_
                                '0)))
                          (let ((_%tl5398454646%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8748787488%_ '1)))
                                (_%target5398254643%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8748787488%_ '0))))
                            (if (gx#stx-null? _%tl5398454646%_)
                                (_%__match8754587546%_
                                 _%e5396754593%_
                                 _%hd5396854597%_
                                 _%tl5396954600%_
                                 _%e5397054603%_
                                 _%hd5397154607%_
                                 _%tl5397254610%_
                                 _%e5397354613%_
                                 _%hd5397454617%_
                                 _%tl5397554620%_
                                 _%e5397654623%_
                                 _%hd5397754627%_
                                 _%tl5397854630%_
                                 _%e5397954633%_
                                 _%hd5398054637%_
                                 _%tl5398154640%_
                                 _%__splice8748787488%_
                                 _%target5398254643%_
                                 _%tl5398454646%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5396154104%_)))))
                        (let () (declare (not safe)) (_%g5396154104%_)))
                    (let () (declare (not safe)) (_%g5396154104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5396154104%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5396154104%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5396154104%_)))))
                            (let () (declare (not safe)) (_%g5396154104%_)))))
                    (let () (declare (not safe)) (_%g5396154104%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55163%_)
        (let* ((_%__stx8772487725%_ _%stx55163%_)
               (_%g5516855228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8772487725%_))))
          (let ((_%__kont8772787728%_
                 (lambda (_%g5517055784%_ _%g5517155786%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5517155786%_ '()))
                               (foldr (lambda (_%g5580255805%_ _%g5580355808%_)
                                        (cons _%g5580255805%_ _%g5580355808%_))
                                      '()
                                      _%g5517055784%_)))))
                (_%__kont8773187732%_
                 (lambda (_%g5518755372%_ _%g5518855374%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5518855374%_)
                       (let* ((_%g5539455401%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55163%_
                                _%g5518855374%_))
                              (_%E5539655407%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5539455401%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5539755705%_
                               (lambda (_%parts55411%_ _%var55413%_)
                                 (let ((_%$e55415%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55413%_))))
                                   (if _%$e55415%_
                                       ((lambda (_%te55419%_)
                                          (let _%loop55422%_ ((_%parts55425%_
                                                               _%parts55411%_)
                                                              (_%type55427%_
                                                               (##direct-structure-ref
                                                                _%te55419%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55428%_
                                                               _%var55413%_)
                                                              (_%checked-method?55429%_
                                                               (##direct-structure-ref
                                                                _%te55419%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55430%_
                                                               '#f))
                                            (let* ((_%parts5543155439%_
                                                    _%parts55425%_)
                                                   (_%else5543355500%_
                                                    (lambda ()
                                                      (let* ((_%g5545155459%_
                                                              (lambda (_%g5545255455%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5545255455%_)))
                     (_%g5545055496%_
                      (lambda (_%g5545255463%_)
                        ((lambda (_%g5545355466%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5545355466%_
                                       (foldr (lambda (_%g5548755490%_
                                                       _%g5548855493%_)
                                                (cons _%g5548755490%_
                                                      _%g5548855493%_))
                                              '()
                                              _%g5518755372%_))))
                         _%g5545255463%_))))
                (_%g5545055496%_ _%object55428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5543555679%_
                                                    (lambda (_%rest55504%_
                                                             _%part55506%_)
                                                      (if (and (not _%nil-check?55430%_)
                                                               (let ((__tmp92681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55506%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp92681)))
                  (let ((_%str55510%_ (symbol->string _%part55506%_)))
                    (_%loop55422%_
                     (cons (let ((__tmp92682
                                  (substring
                                   _%str55510%_
                                   '1
                                   (string-length _%str55510%_))))
                             (declare (not safe))
                             (##string->symbol __tmp92682))
                           _%rest55504%_)
                     _%type55427%_
                     _%object55428%_
                     _%checked-method?55429%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55427%_))
                      (let* ((_%g5551555530%_
                              (lambda (_%g5551655526%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5551655526%_)))
                             (_%g5551455599%_
                              (lambda (_%g5551655534%_)
                                (if (gx#stx-pair? _%g5551655534%_)
                                    (let ((_%e5551955537%_
                                           (gx#syntax-e _%g5551655534%_)))
                                      (let ((_%hd5552055541%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5551955537%_)))
                                            (_%tl5552155544%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5551955537%_))))
                                        (if (gx#stx-pair? _%tl5552155544%_)
                                            (let ((_%e5552255547%_
                                                   (gx#syntax-e
                                                    _%tl5552155544%_)))
                                              (let ((_%hd5552355551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5552255547%_)))
                                                    (_%tl5552455554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5552255547%_))))
                                                (if (gx#stx-null?
                                                     _%tl5552455554%_)
                                                    ((lambda (_%g5551755557%_
                                                              _%g5551855559%_)
                                                       (if (null? _%rest55504%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5551755557%_
                                     (cons _%g5551855559%_ '()))
                               (foldr (lambda (_%g5557855581%_ _%g5557955584%_)
                                        (cons _%g5557855581%_ _%g5557955584%_))
                                      '()
                                      _%g5518755372%_)))
                   (let ((_%$e55587%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55427%_
                           _%part55506%_)))
                     (if _%$e55587%_
                         ((lambda (_%slot-type55591%_)
                            (let ((_%slot-type55594%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55163%_
                                      _%slot-type55591%_))))
                              (_%loop55422%_
                               _%rest55504%_
                               _%slot-type55594%_
                               (cons _%g5551755557%_
                                     (cons _%g5551855559%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55427%_
                                _%part55506%_)
                               '#f)))
                          _%$e55587%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55163%_
                          _%g5518855374%_
                          _%part55506%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5552355551%_
                                                     _%hd5552055541%_)
                                                    (_%g5551555530%_
                                                     _%g5551655534%_))))
                                            (_%g5551555530%_
                                             _%g5551655534%_))))
                                    (_%g5551555530%_ _%g5551655534%_)))))
                        (_%g5551455599%_
                         (list (if _%nil-check?55430%_
                                   (cons 'check-nil!
                                         (cons _%object55428%_ '()))
                                   _%object55428%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55163%_
                                _%type55427%_
                                _%part55506%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55427%_))
                          (if (null? _%rest55504%_)
                              (let* ((_%g5560555620%_
                                      (lambda (_%g5560655616%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5560655616%_)))
                                     (_%g5560455673%_
                                      (lambda (_%g5560655624%_)
                                        (if (gx#stx-pair? _%g5560655624%_)
                                            (let ((_%e5560955627%_
                                                   (gx#syntax-e
                                                    _%g5560655624%_)))
                                              (let ((_%hd5561055631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5560955627%_)))
                                                    (_%tl5561155634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5560955627%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5561155634%_)
                                                    (let ((_%e5561255637%_
                                                           (gx#syntax-e
                                                            _%tl5561155634%_)))
                                                      (let ((_%hd5561355641%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5561255637%_)))
                    (_%tl5561455644%_
                     (let () (declare (not safe)) (##cdr _%e5561255637%_))))
                (if (gx#stx-null? _%tl5561455644%_)
                    ((lambda (_%g5560755647%_ _%g5560855649%_)
                       (cons _%g5560755647%_
                             (cons _%g5560855649%_
                                   (foldr (lambda (_%g5566455667%_
                                                   _%g5566555670%_)
                                            (cons _%g5566455667%_
                                                  _%g5566555670%_))
                                          '()
                                          _%g5518755372%_))))
                     _%hd5561355641%_
                     _%hd5561055631%_)
                    (_%g5560555620%_ _%g5560655624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5560555620%_
                                                     _%g5560655624%_))))
                                            (_%g5560555620%_
                                             _%g5560655624%_)))))
                                (_%g5560455673%_
                                 (list (if _%nil-check?55430%_
                                           (cons 'check-nil!
                                                 (cons _%object55428%_ '()))
                                           _%object55428%_)
                                       (gx#stx-identifier
                                        _%g5518855374%_
                                        (if _%checked-method?55429%_ '"" '"&")
                                        (let ((__obj92486 _%type55427%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj92486
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj92486
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj92486
                                               'name)))
                                        '"-"
                                        _%part55506%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55163%_
                               _%g5518855374%_
                               _%part55506%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55163%_
                           _%type55427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5543155439%_)
                                                  (let ((_%hd5543655683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5543155439%_)))
                                                        (_%tl5543755686%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5543155439%_))))
                                                    (let* ((_%part55689%_
                                                            _%hd5543655683%_)
                                                           (_%rest55692%_
                                                            _%tl5543755686%_))
                                                      (_%K5543555679%_
                                                       _%rest55692%_
                                                       _%part55689%_)))
                                                  (_%else5543355500%_)))))
                                        _%$e55415%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5518855374%_
                                                   (foldr (lambda (_%g5569655699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5569755702%_)
                    (cons _%g5569655699%_ _%g5569755702%_))
                  '()
                  _%g5518755372%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5539455401%_)
                             (let ((_%hd5539855709%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5539455401%_)))
                                   (_%tl5539955712%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5539455401%_))))
                               (let* ((_%var55715%_ _%hd5539855709%_)
                                      (_%parts55718%_ _%tl5539955712%_))
                                 (_%K5539755705%_
                                  _%parts55718%_
                                  _%var55715%_)))
                             (_%E5539655407%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5518855374%_
                                   (foldr (lambda (_%g5572055723%_
                                                   _%g5572155726%_)
                                            (cons _%g5572055723%_
                                                  _%g5572155726%_))
                                          '()
                                          _%g5518755372%_))))))
                (_%__kont8773587736%_
                 (lambda (_%g5521055273%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5528855291%_ _%g5528955294%_)
                                  (cons _%g5528855291%_ _%g5528955294%_))
                                '()
                                _%g5521055273%_)))))
            (let* ((_%__match8781187812%_
                    (lambda (_%e5521155235%_
                             _%hd5521255239%_
                             _%tl5521355242%_
                             _%__splice8773787738%_
                             _%target5521455245%_
                             _%tl5521655248%_)
                      (letrec ((_%loop5521755251%_
                                (lambda (_%hd5521555255%_ _%arg5522155258%_)
                                  (if (gx#stx-pair? _%hd5521555255%_)
                                      (let ((_%e5521855260%_
                                             (gx#syntax-e _%hd5521555255%_)))
                                        (let ((_%lp-tl5522055267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5521855260%_)))
                                              (_%lp-hd5521955264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5521855260%_))))
                                          (_%loop5521755251%_
                                           _%lp-tl5522055267%_
                                           (cons _%lp-hd5521955264%_
                                                 _%arg5522155258%_))))
                                      (let ((_%arg5522255270%_
                                             (reverse _%arg5522155258%_)))
                                        (_%__kont8773587736%_
                                         _%arg5522255270%_))))))
                        (_%loop5521755251%_ _%target5521455245%_ '()))))
                   (_%__match8779787798%_
                    (lambda (_%e5518955304%_
                             _%hd5519055308%_
                             _%tl5519155311%_
                             _%e5519255314%_
                             _%hd5519355318%_
                             _%tl5519455321%_
                             _%e5519555324%_
                             _%hd5519655328%_
                             _%tl5519755331%_
                             _%e5519855334%_
                             _%hd5519955338%_
                             _%tl5520055341%_
                             _%__splice8773387734%_
                             _%target5520155344%_
                             _%tl5520355347%_)
                      (letrec ((_%loop5520455350%_
                                (lambda (_%hd5520255354%_ _%rand5520855357%_)
                                  (if (gx#stx-pair? _%hd5520255354%_)
                                      (let ((_%e5520555359%_
                                             (gx#syntax-e _%hd5520255354%_)))
                                        (let ((_%lp-tl5520755366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5520555359%_)))
                                              (_%lp-hd5520655363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5520555359%_))))
                                          (_%loop5520455350%_
                                           _%lp-tl5520755366%_
                                           (cons _%lp-hd5520655363%_
                                                 _%rand5520855357%_))))
                                      (let ((_%rand5520955369%_
                                             (reverse _%rand5520855357%_)))
                                        (_%__kont8773187732%_
                                         _%rand5520955369%_
                                         _%hd5519955338%_))))))
                        (_%loop5520455350%_ _%target5520155344%_ '()))))
                   (_%__match8777187772%_
                    (lambda (_%e5518955304%_
                             _%hd5519055308%_
                             _%tl5519155311%_
                             _%e5519255314%_
                             _%hd5519355318%_
                             _%tl5519455321%_)
                      (if (gx#stx-pair? _%hd5519355318%_)
                          (let ((_%e5519555324%_
                                 (gx#syntax-e _%hd5519355318%_)))
                            (let ((_%tl5519755331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5519555324%_)))
                                  (_%hd5519655328%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5519555324%_))))
                              (if (gx#identifier? _%hd5519655328%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92683_|
                                       _%hd5519655328%_)
                                      (if (gx#stx-pair? _%tl5519755331%_)
                                          (let ((_%e5519855334%_
                                                 (gx#syntax-e
                                                  _%tl5519755331%_)))
                                            (let ((_%tl5520055341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5519855334%_)))
                                                  (_%hd5519955338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5519855334%_))))
                                              (if (gx#stx-null?
                                                   _%tl5520055341%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5519455321%_)
                                                      (let ((_%__splice8773387734%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5519455321%_
                                                              '0)))
                                                        (let ((_%tl5520355347%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8773387734%_ '1)))
                      (_%target5520155344%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8773387734%_ '0))))
                  (if (gx#stx-null? _%tl5520355347%_)
                      (_%__match8779787798%_
                       _%e5518955304%_
                       _%hd5519055308%_
                       _%tl5519155311%_
                       _%e5519255314%_
                       _%hd5519355318%_
                       _%tl5519455321%_
                       _%e5519555324%_
                       _%hd5519655328%_
                       _%tl5519755331%_
                       _%e5519855334%_
                       _%hd5519955338%_
                       _%tl5520055341%_
                       _%__splice8773387734%_
                       _%target5520155344%_
                       _%tl5520355347%_)
                      (if (gx#stx-pair/null? _%tl5519155311%_)
                          (let ((_%__splice8773787738%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5519155311%_
                                  '0)))
                            (let ((_%tl5521655248%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8773787738%_ '1)))
                                  (_%target5521455245%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8773787738%_
                                      '0))))
                              (if (gx#stx-null? _%tl5521655248%_)
                                  (_%__match8781187812%_
                                   _%e5518955304%_
                                   _%hd5519055308%_
                                   _%tl5519155311%_
                                   _%__splice8773787738%_
                                   _%target5521455245%_
                                   _%tl5521655248%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5516855228%_)))))
                          (let () (declare (not safe)) (_%g5516855228%_))))))
              (if (gx#stx-pair/null? _%tl5519155311%_)
                  (let ((_%__splice8773787738%_
                         (gx#syntax-split-splice->vector _%tl5519155311%_ '0)))
                    (let ((_%tl5521655248%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8773787738%_ '1)))
                          (_%target5521455245%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8773787738%_ '0))))
                      (if (gx#stx-null? _%tl5521655248%_)
                          (_%__match8781187812%_
                           _%e5518955304%_
                           _%hd5519055308%_
                           _%tl5519155311%_
                           _%__splice8773787738%_
                           _%target5521455245%_
                           _%tl5521655248%_)
                          (let () (declare (not safe)) (_%g5516855228%_)))))
                  (let () (declare (not safe)) (_%g5516855228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5519155311%_)
                                                      (let ((_%__splice8773787738%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5519155311%_
                                                              '0)))
                                                        (let ((_%tl5521655248%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8773787738%_ '1)))
                      (_%target5521455245%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8773787738%_ '0))))
                  (if (gx#stx-null? _%tl5521655248%_)
                      (_%__match8781187812%_
                       _%e5518955304%_
                       _%hd5519055308%_
                       _%tl5519155311%_
                       _%__splice8773787738%_
                       _%target5521455245%_
                       _%tl5521655248%_)
                      (let () (declare (not safe)) (_%g5516855228%_)))))
              (let () (declare (not safe)) (_%g5516855228%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5519155311%_)
                                              (let ((_%__splice8773787738%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5519155311%_
                                                      '0)))
                                                (let ((_%tl5521655248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8773787738%_
                                                          '1)))
                                                      (_%target5521455245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8773787738%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5521655248%_)
                                                      (_%__match8781187812%_
                                                       _%e5518955304%_
                                                       _%hd5519055308%_
                                                       _%tl5519155311%_
                                                       _%__splice8773787738%_
                                                       _%target5521455245%_
                                                       _%tl5521655248%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5516855228%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5516855228%_))))
                                      (if (gx#stx-pair/null? _%tl5519155311%_)
                                          (let ((_%__splice8773787738%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5519155311%_
                                                  '0)))
                                            (let ((_%tl5521655248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8773787738%_
                                                      '1)))
                                                  (_%target5521455245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8773787738%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5521655248%_)
                                                  (_%__match8781187812%_
                                                   _%e5518955304%_
                                                   _%hd5519055308%_
                                                   _%tl5519155311%_
                                                   _%__splice8773787738%_
                                                   _%target5521455245%_
                                                   _%tl5521655248%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5516855228%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5516855228%_))))
                                  (if (gx#stx-pair/null? _%tl5519155311%_)
                                      (let ((_%__splice8773787738%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5519155311%_
                                              '0)))
                                        (let ((_%tl5521655248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8773787738%_
                                                  '1)))
                                              (_%target5521455245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8773787738%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5521655248%_)
                                              (_%__match8781187812%_
                                               _%e5518955304%_
                                               _%hd5519055308%_
                                               _%tl5519155311%_
                                               _%__splice8773787738%_
                                               _%target5521455245%_
                                               _%tl5521655248%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5516855228%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5516855228%_))))))
                          (if (gx#stx-pair/null? _%tl5519155311%_)
                              (let ((_%__splice8773787738%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5519155311%_
                                      '0)))
                                (let ((_%tl5521655248%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8773787738%_
                                          '1)))
                                      (_%target5521455245%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8773787738%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5521655248%_)
                                      (_%__match8781187812%_
                                       _%e5518955304%_
                                       _%hd5519055308%_
                                       _%tl5519155311%_
                                       _%__splice8773787738%_
                                       _%target5521455245%_
                                       _%tl5521655248%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5516855228%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5516855228%_))))))
                   (_%__match8775987760%_
                    (lambda (_%e5517255736%_
                             _%hd5517355740%_
                             _%tl5517455743%_
                             _%e5517555746%_
                             _%hd5517655750%_
                             _%tl5517755753%_
                             _%__splice8772987730%_
                             _%target5517855756%_
                             _%tl5518055759%_)
                      (letrec ((_%loop5518155762%_
                                (lambda (_%hd5517955766%_ _%rand5518555769%_)
                                  (if (gx#stx-pair? _%hd5517955766%_)
                                      (let ((_%e5518255771%_
                                             (gx#syntax-e _%hd5517955766%_)))
                                        (let ((_%lp-tl5518455778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5518255771%_)))
                                              (_%lp-hd5518355775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5518255771%_))))
                                          (_%loop5518155762%_
                                           _%lp-tl5518455778%_
                                           (cons _%lp-hd5518355775%_
                                                 _%rand5518555769%_))))
                                      (let ((_%rand5518655781%_
                                             (reverse _%rand5518555769%_)))
                                        (let ((_%g5517055784%_
                                               _%rand5518655781%_)
                                              (_%g5517155786%_
                                               _%hd5517655750%_))
                                          (if (gx#identifier? _%g5517155786%_)
                                              (_%__kont8772787728%_
                                               _%g5517055784%_
                                               _%g5517155786%_)
                                              (_%__match8777187772%_
                                               _%e5517255736%_
                                               _%hd5517355740%_
                                               _%tl5517455743%_
                                               _%e5517555746%_
                                               _%hd5517655750%_
                                               _%tl5517755753%_))))))))
                        (_%loop5518155762%_ _%target5517855756%_ '())))))
              (if (gx#stx-pair? _%__stx8772487725%_)
                  (let ((_%e5517255736%_ (gx#syntax-e _%__stx8772487725%_)))
                    (let ((_%tl5517455743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5517255736%_)))
                          (_%hd5517355740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5517255736%_))))
                      (if (gx#stx-pair? _%tl5517455743%_)
                          (let ((_%e5517555746%_
                                 (gx#syntax-e _%tl5517455743%_)))
                            (let ((_%tl5517755753%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5517555746%_)))
                                  (_%hd5517655750%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5517555746%_))))
                              (if (gx#stx-pair/null? _%tl5517755753%_)
                                  (let ((_%__splice8772987730%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5517755753%_
                                          '0)))
                                    (let ((_%tl5518055759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8772987730%_
                                              '1)))
                                          (_%target5517855756%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8772987730%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5518055759%_)
                                          (_%__match8775987760%_
                                           _%e5517255736%_
                                           _%hd5517355740%_
                                           _%tl5517455743%_
                                           _%e5517555746%_
                                           _%hd5517655750%_
                                           _%tl5517755753%_
                                           _%__splice8772987730%_
                                           _%target5517855756%_
                                           _%tl5518055759%_)
                                          (if (gx#stx-pair? _%hd5517655750%_)
                                              (let ((_%e5519555324%_
                                                     (gx#syntax-e
                                                      _%hd5517655750%_)))
                                                (let ((_%tl5519755331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5519555324%_)))
                                                      (_%hd5519655328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5519555324%_))))
                                                  (if (gx#identifier?
                                                       _%hd5519655328%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92683_|
                                                           _%hd5519655328%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5519755331%_)
                                                              (let ((_%e5519855334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5519755331%_)))
                        (let ((_%tl5520055341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5519855334%_)))
                              (_%hd5519955338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5519855334%_))))
                          (if (gx#stx-pair/null? _%tl5517455743%_)
                              (let ((_%__splice8773787738%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5517455743%_
                                      '0)))
                                (let ((_%tl5521655248%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8773787738%_
                                          '1)))
                                      (_%target5521455245%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8773787738%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5521655248%_)
                                      (_%__match8781187812%_
                                       _%e5517255736%_
                                       _%hd5517355740%_
                                       _%tl5517455743%_
                                       _%__splice8773787738%_
                                       _%target5521455245%_
                                       _%tl5521655248%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5516855228%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5516855228%_)))))
                      (if (gx#stx-pair/null? _%tl5517455743%_)
                          (let ((_%__splice8773787738%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5517455743%_
                                  '0)))
                            (let ((_%tl5521655248%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8773787738%_ '1)))
                                  (_%target5521455245%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8773787738%_
                                      '0))))
                              (if (gx#stx-null? _%tl5521655248%_)
                                  (_%__match8781187812%_
                                   _%e5517255736%_
                                   _%hd5517355740%_
                                   _%tl5517455743%_
                                   _%__splice8773787738%_
                                   _%target5521455245%_
                                   _%tl5521655248%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5516855228%_)))))
                          (let () (declare (not safe)) (_%g5516855228%_))))
                  (if (gx#stx-pair/null? _%tl5517455743%_)
                      (let ((_%__splice8773787738%_
                             (gx#syntax-split-splice->vector
                              _%tl5517455743%_
                              '0)))
                        (let ((_%tl5521655248%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8773787738%_ '1)))
                              (_%target5521455245%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8773787738%_ '0))))
                          (if (gx#stx-null? _%tl5521655248%_)
                              (_%__match8781187812%_
                               _%e5517255736%_
                               _%hd5517355740%_
                               _%tl5517455743%_
                               _%__splice8773787738%_
                               _%target5521455245%_
                               _%tl5521655248%_)
                              (let ()
                                (declare (not safe))
                                (_%g5516855228%_)))))
                      (let () (declare (not safe)) (_%g5516855228%_))))
              (if (gx#stx-pair/null? _%tl5517455743%_)
                  (let ((_%__splice8773787738%_
                         (gx#syntax-split-splice->vector _%tl5517455743%_ '0)))
                    (let ((_%tl5521655248%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8773787738%_ '1)))
                          (_%target5521455245%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8773787738%_ '0))))
                      (if (gx#stx-null? _%tl5521655248%_)
                          (_%__match8781187812%_
                           _%e5517255736%_
                           _%hd5517355740%_
                           _%tl5517455743%_
                           _%__splice8773787738%_
                           _%target5521455245%_
                           _%tl5521655248%_)
                          (let () (declare (not safe)) (_%g5516855228%_)))))
                  (let () (declare (not safe)) (_%g5516855228%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5517455743%_)
                                                  (let ((_%__splice8773787738%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5517455743%_
                                                          '0)))
                                                    (let ((_%tl5521655248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8773787738%_
                                                              '1)))
                                                          (_%target5521455245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8773787738%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5521655248%_)
                                                          (_%__match8781187812%_
                                                           _%e5517255736%_
                                                           _%hd5517355740%_
                                                           _%tl5517455743%_
                                                           _%__splice8773787738%_
                                                           _%target5521455245%_
                                                           _%tl5521655248%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5516855228%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5516855228%_)))))))
                                  (if (gx#stx-pair? _%hd5517655750%_)
                                      (let ((_%e5519555324%_
                                             (gx#syntax-e _%hd5517655750%_)))
                                        (let ((_%tl5519755331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5519555324%_)))
                                              (_%hd5519655328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5519555324%_))))
                                          (if (gx#identifier? _%hd5519655328%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g92683_|
                                                   _%hd5519655328%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5519755331%_)
                                                      (let ((_%e5519855334%_
                                                             (gx#syntax-e
                                                              _%tl5519755331%_)))
                                                        (let ((_%tl5520055341%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5519855334%_)))
                      (_%hd5519955338%_
                       (let () (declare (not safe)) (##car _%e5519855334%_))))
                  (if (gx#stx-pair/null? _%tl5517455743%_)
                      (let ((_%__splice8773787738%_
                             (gx#syntax-split-splice->vector
                              _%tl5517455743%_
                              '0)))
                        (let ((_%tl5521655248%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8773787738%_ '1)))
                              (_%target5521455245%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8773787738%_ '0))))
                          (if (gx#stx-null? _%tl5521655248%_)
                              (_%__match8781187812%_
                               _%e5517255736%_
                               _%hd5517355740%_
                               _%tl5517455743%_
                               _%__splice8773787738%_
                               _%target5521455245%_
                               _%tl5521655248%_)
                              (let ()
                                (declare (not safe))
                                (_%g5516855228%_)))))
                      (let () (declare (not safe)) (_%g5516855228%_)))))
              (if (gx#stx-pair/null? _%tl5517455743%_)
                  (let ((_%__splice8773787738%_
                         (gx#syntax-split-splice->vector _%tl5517455743%_ '0)))
                    (let ((_%tl5521655248%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8773787738%_ '1)))
                          (_%target5521455245%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8773787738%_ '0))))
                      (if (gx#stx-null? _%tl5521655248%_)
                          (_%__match8781187812%_
                           _%e5517255736%_
                           _%hd5517355740%_
                           _%tl5517455743%_
                           _%__splice8773787738%_
                           _%target5521455245%_
                           _%tl5521655248%_)
                          (let () (declare (not safe)) (_%g5516855228%_)))))
                  (let () (declare (not safe)) (_%g5516855228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5517455743%_)
                                                      (let ((_%__splice8773787738%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5517455743%_
                                                              '0)))
                                                        (let ((_%tl5521655248%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8773787738%_ '1)))
                      (_%target5521455245%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8773787738%_ '0))))
                  (if (gx#stx-null? _%tl5521655248%_)
                      (_%__match8781187812%_
                       _%e5517255736%_
                       _%hd5517355740%_
                       _%tl5517455743%_
                       _%__splice8773787738%_
                       _%target5521455245%_
                       _%tl5521655248%_)
                      (let () (declare (not safe)) (_%g5516855228%_)))))
              (let () (declare (not safe)) (_%g5516855228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5517455743%_)
                                                  (let ((_%__splice8773787738%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5517455743%_
                                                          '0)))
                                                    (let ((_%tl5521655248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8773787738%_
                                                              '1)))
                                                          (_%target5521455245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8773787738%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5521655248%_)
                                                          (_%__match8781187812%_
                                                           _%e5517255736%_
                                                           _%hd5517355740%_
                                                           _%tl5517455743%_
                                                           _%__splice8773787738%_
                                                           _%target5521455245%_
                                                           _%tl5521655248%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5516855228%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5516855228%_))))))
                                      (if (gx#stx-pair/null? _%tl5517455743%_)
                                          (let ((_%__splice8773787738%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5517455743%_
                                                  '0)))
                                            (let ((_%tl5521655248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8773787738%_
                                                      '1)))
                                                  (_%target5521455245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8773787738%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5521655248%_)
                                                  (_%__match8781187812%_
                                                   _%e5517255736%_
                                                   _%hd5517355740%_
                                                   _%tl5517455743%_
                                                   _%__splice8773787738%_
                                                   _%target5521455245%_
                                                   _%tl5521655248%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5516855228%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5516855228%_)))))))
                          (if (gx#stx-pair/null? _%tl5517455743%_)
                              (let ((_%__splice8773787738%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5517455743%_
                                      '0)))
                                (let ((_%tl5521655248%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8773787738%_
                                          '1)))
                                      (_%target5521455245%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8773787738%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5521655248%_)
                                      (_%__match8781187812%_
                                       _%e5517255736%_
                                       _%hd5517355740%_
                                       _%tl5517455743%_
                                       _%__splice8773787738%_
                                       _%target5521455245%_
                                       _%tl5521655248%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5516855228%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5516855228%_))))))
                  (let () (declare (not safe)) (_%g5516855228%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx55818%_)
        (let* ((_%__stx8781487815%_ _%stx55818%_)
               (_%g5582255843%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8781487815%_))))
          (let ((_%__kont8781787818%_
                 (lambda (_%g5582455911%_)
                   (let* ((_%g5592355930%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55818%_
                            _%g5582455911%_))
                          (_%E5592555936%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5592355930%_
                                    '([var . parts]))
                             (void)))
                          (_%K5592656152%_
                           (lambda (_%parts55940%_ _%var55942%_)
                             (let ((_%$e55944%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55942%_))))
                               (if _%$e55944%_
                                   ((lambda (_%te55948%_)
                                      (let _%loop55951%_ ((_%parts55954%_
                                                           _%parts55940%_)
                                                          (_%type55956%_
                                                           (##direct-structure-ref
                                                            _%te55948%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55957%_
                                                           _%var55942%_)
                                                          (_%nil-check?55958%_
                                                           '#f))
                                        (let* ((_%parts5595955967%_
                                                _%parts55954%_)
                                               (_%else5596155979%_
                                                (lambda () _%object55957%_))
                                               (_%K5596356134%_
                                                (lambda (_%rest55983%_
                                                         _%part55985%_)
                                                  (if (and (not _%nil-check?55958%_)
                                                           (let ((__tmp92684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part55985%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92684)))
              (let ((_%str55989%_ (symbol->string _%part55985%_)))
                (_%loop55951%_
                 (cons (let ((__tmp92685
                              (substring
                               _%str55989%_
                               '1
                               (string-length _%str55989%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92685))
                       _%rest55983%_)
                 _%type55956%_
                 _%object55957%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55956%_))
                  (let* ((_%g5599456009%_
                          (lambda (_%g5599556005%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5599556005%_)))
                         (_%g5599356126%_
                          (lambda (_%g5599556013%_)
                            (if (gx#stx-pair? _%g5599556013%_)
                                (let ((_%e5599856016%_
                                       (gx#syntax-e _%g5599556013%_)))
                                  (let ((_%hd5599956020%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5599856016%_)))
                                        (_%tl5600056023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5599856016%_))))
                                    (if (gx#stx-pair? _%tl5600056023%_)
                                        (let ((_%e5600156026%_
                                               (gx#syntax-e _%tl5600056023%_)))
                                          (let ((_%hd5600256030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5600156026%_)))
                                                (_%tl5600356033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5600156026%_))))
                                            (if (gx#stx-null? _%tl5600356033%_)
                                                ((lambda (_%g5599656036%_
                                                          _%g5599756038%_)
                                                   (if (null? _%rest55983%_)
                                                       (let ((_%$e56068%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type55956%_
                                                               _%part55985%_)))
                                                         (if _%$e56068%_
                                                             ((lambda (_%slot-type56072%_)
                                                                (let* ((_%g5607556083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5607656079%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5607656079%_)))
                               (_%g5607456106%_
                                (lambda (_%g5607656087%_)
                                  ((lambda (_%g5607756090%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5607756090%_
                                                             '()))
                                                 (cons (cons _%g5599656036%_
                                                             (cons _%g5599756038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5607656087%_))))
                          (_%g5607456106%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx55818%_
                              _%slot-type56072%_)))))
                      _%$e56068%_)
                     (if _%nil-check?55958%_
                         (cons _%g5599656036%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5599756038%_ '()))
                                     '()))
                         (cons _%g5599656036%_ (cons _%g5599756038%_ '())))))
               (let ((_%$e56114%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type55956%_
                       _%part55985%_)))
                 (if _%$e56114%_
                     ((lambda (_%type56118%_)
                        (let ((_%type56121%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx55818%_
                                  _%type56118%_))))
                          (if _%nil-check?55958%_
                              (_%loop55951%_
                               _%rest55983%_
                               _%type56121%_
                               (cons _%g5599656036%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5599756038%_ '()))
                                           '()))
                               '#f)
                              (_%loop55951%_
                               _%rest55983%_
                               _%type56121%_
                               (cons _%g5599656036%_
                                     (cons _%g5599756038%_ '()))
                               '#f))))
                      _%$e56114%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx55818%_
                      _%g5582455911%_
                      _%part55985%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5600256030%_
                                                 _%hd5599956020%_)
                                                (_%g5599456009%_
                                                 _%g5599556013%_))))
                                        (_%g5599456009%_ _%g5599556013%_))))
                                (_%g5599456009%_ _%g5599556013%_)))))
                    (_%g5599356126%_
                     (list (if _%nil-check?55958%_
                               (cons 'check-nil! (cons _%object55957%_ '()))
                               _%object55957%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx55818%_
                            _%type55956%_
                            _%part55985%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55956%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55818%_
                       _%type55956%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5595955967%_)
                                              (let ((_%hd5596456138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5595955967%_)))
                                                    (_%tl5596556141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5595955967%_))))
                                                (let* ((_%part56144%_
                                                        _%hd5596456138%_)
                                                       (_%rest56147%_
                                                        _%tl5596556141%_))
                                                  (_%K5596356134%_
                                                   _%rest56147%_
                                                   _%part56144%_)))
                                              (_%else5596155979%_)))))
                                    _%$e55944%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5582455911%_ '())))))))
                     (if (pair? _%g5592355930%_)
                         (let ((_%hd5592756156%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5592355930%_)))
                               (_%tl5592856159%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5592355930%_))))
                           (let* ((_%var56162%_ _%hd5592756156%_)
                                  (_%parts56165%_ _%tl5592856159%_))
                             (_%K5592656152%_ _%parts56165%_ _%var56162%_)))
                         (_%E5592555936%_)))))
                (_%__kont8781987820%_
                 (lambda (_%g5583155870%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5583155870%_ '())))))
            (let ((_%__match8783587836%_
                   (lambda (_%e5582555891%_
                            _%hd5582655895%_
                            _%tl5582755898%_
                            _%e5582855901%_
                            _%hd5582955905%_
                            _%tl5583055908%_)
                     (let ((_%g5582455911%_ _%hd5582955905%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5582455911%_)
                           (_%__kont8781787818%_ _%g5582455911%_)
                           (_%__kont8781987820%_ _%hd5582955905%_))))))
              (if (gx#stx-pair? _%__stx8781487815%_)
                  (let ((_%e5582555891%_ (gx#syntax-e _%__stx8781487815%_)))
                    (let ((_%tl5582755898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5582555891%_)))
                          (_%hd5582655895%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5582555891%_))))
                      (if (gx#stx-pair? _%tl5582755898%_)
                          (let ((_%e5582855901%_
                                 (gx#syntax-e _%tl5582755898%_)))
                            (let ((_%tl5583055908%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5582855901%_)))
                                  (_%hd5582955905%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5582855901%_))))
                              (if (gx#stx-null? _%tl5583055908%_)
                                  (_%__match8783587836%_
                                   _%e5582555891%_
                                   _%hd5582655895%_
                                   _%tl5582755898%_
                                   _%e5582855901%_
                                   _%hd5582955905%_
                                   _%tl5583055908%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5582255843%_)))))
                          (let () (declare (not safe)) (_%g5582255843%_)))))
                  (let () (declare (not safe)) (_%g5582255843%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56172%_)
        (let* ((_%__stx8785287853%_ _%stx56172%_)
               (_%g5617656205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8785287853%_))))
          (let ((_%__kont8785587856%_
                 (lambda (_%g5617856297%_ _%g5617956299%_)
                   (let* ((_%g5631356320%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56172%_
                            _%g5617956299%_))
                          (_%E5631556326%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5631356320%_
                                    '([var . parts]))
                             (void)))
                          (_%K5631656556%_
                           (lambda (_%parts56330%_ _%var56332%_)
                             (let ((_%$e56334%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56332%_))))
                               (if _%$e56334%_
                                   ((lambda (_%te56338%_)
                                      (let _%loop56341%_ ((_%parts56344%_
                                                           _%parts56330%_)
                                                          (_%type56346%_
                                                           (##direct-structure-ref
                                                            _%te56338%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56347%_
                                                           _%var56332%_)
                                                          (_%checked-mutator?56348%_
                                                           (##direct-structure-ref
                                                            _%te56338%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56349%_
                                                           '#f))
                                        (let* ((_%parts5635056357%_
                                                _%parts56344%_)
                                               (_%E5635256363%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5635056357%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5635356538%_
                                                (lambda (_%rest56367%_
                                                         _%part56369%_)
                                                  (if (and (not _%nil-check?56349%_)
                                                           (let ((__tmp92686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56369%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92686)))
              (let ((_%str56373%_ (symbol->string _%part56369%_)))
                (_%loop56341%_
                 (cons (let ((__tmp92687
                              (substring
                               _%str56373%_
                               '1
                               (string-length _%str56373%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92687))
                       _%rest56367%_)
                 _%type56346%_
                 _%object56347%_
                 _%checked-mutator?56348%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56346%_))
                  (if (null? _%rest56367%_)
                      (let* ((_%g5638056395%_
                              (lambda (_%g5638156391%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5638156391%_)))
                             (_%g5637956452%_
                              (lambda (_%g5638156399%_)
                                (if (gx#stx-pair? _%g5638156399%_)
                                    (let ((_%e5638456402%_
                                           (gx#syntax-e _%g5638156399%_)))
                                      (let ((_%hd5638556406%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5638456402%_)))
                                            (_%tl5638656409%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5638456402%_))))
                                        (if (gx#stx-pair? _%tl5638656409%_)
                                            (let ((_%e5638756412%_
                                                   (gx#syntax-e
                                                    _%tl5638656409%_)))
                                              (let ((_%hd5638856416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5638756412%_)))
                                                    (_%tl5638956419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5638756412%_))))
                                                (if (gx#stx-null?
                                                     _%tl5638956419%_)
                                                    ((lambda (_%g5638256422%_
                                                              _%g5638356424%_)
                                                       (if _%nil-check?56349%_
                                                           (cons _%g5638256422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5638356424%_ '()))
                               (cons _%g5617856297%_ '())))
                   (cons _%g5638256422%_
                         (cons _%g5638356424%_ (cons _%g5617856297%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5638856416%_
                                                     _%hd5638556406%_)
                                                    (_%g5638056395%_
                                                     _%g5638156399%_))))
                                            (_%g5638056395%_
                                             _%g5638156399%_))))
                                    (_%g5638056395%_ _%g5638156399%_)))))
                        (_%g5637956452%_
                         (list _%object56347%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56172%_
                                _%type56346%_
                                _%part56369%_
                                (if _%checked-mutator?56348%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56346%_
                                     _%part56369%_)
                                    '#f)))))
                      (let ((_%$e56456%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56346%_
                              _%part56369%_)))
                        (if _%$e56456%_
                            ((lambda (_%type56460%_)
                               (let* ((_%type56463%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56172%_
                                          _%type56460%_)))
                                      (_%g5646656481%_
                                       (lambda (_%g5646756477%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5646756477%_)))
                                      (_%g5646556528%_
                                       (lambda (_%g5646756485%_)
                                         (if (gx#stx-pair? _%g5646756485%_)
                                             (let ((_%e5647056488%_
                                                    (gx#syntax-e
                                                     _%g5646756485%_)))
                                               (let ((_%hd5647156492%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5647056488%_)))
                                                     (_%tl5647256495%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5647056488%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5647256495%_)
                                                     (let ((_%e5647356498%_
                                                            (gx#syntax-e
                                                             _%tl5647256495%_)))
                                                       (let ((_%hd5647456502%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5647356498%_)))
                     (_%tl5647556505%_
                      (let () (declare (not safe)) (##cdr _%e5647356498%_))))
                 (if (gx#stx-null? _%tl5647556505%_)
                     ((lambda (_%g5646856508%_ _%g5646956510%_)
                        (_%loop56341%_
                         _%rest56367%_
                         _%type56463%_
                         (cons _%g5646856508%_ (cons _%g5646956510%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56463%_
                          _%part56369%_)
                         '#f))
                      _%hd5647456502%_
                      _%hd5647156492%_)
                     (_%g5646656481%_ _%g5646756485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5646656481%_
                                                      _%g5646756485%_))))
                                             (_%g5646656481%_
                                              _%g5646756485%_)))))
                                 (_%g5646556528%_
                                  (list (if _%nil-check?56349%_
                                            (cons 'check-nil!
                                                  (cons _%object56347%_ '()))
                                            _%object56347%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56172%_
                                         _%type56463%_
                                         _%part56369%_)))))
                             _%$e56456%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56172%_
                             _%g5617956299%_
                             _%part56369%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56346%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56172%_
                       _%type56346%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5635056357%_)
                                              (let ((_%hd5635456542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5635056357%_)))
                                                    (_%tl5635556545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5635056357%_))))
                                                (let* ((_%part56548%_
                                                        _%hd5635456542%_)
                                                       (_%rest56551%_
                                                        _%tl5635556545%_))
                                                  (_%K5635356538%_
                                                   _%rest56551%_
                                                   _%part56548%_)))
                                              (_%E5635256363%_)))))
                                    _%$e56334%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56172%_)))))))
                     (if (pair? _%g5631356320%_)
                         (let ((_%hd5631756560%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5631356320%_)))
                               (_%tl5631856563%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5631356320%_))))
                           (let* ((_%var56566%_ _%hd5631756560%_)
                                  (_%parts56569%_ _%tl5631856563%_))
                             (_%K5631656556%_ _%parts56569%_ _%var56566%_)))
                         (_%E5631556326%_)))))
                (_%__kont8785787858%_
                 (lambda (_%g5618956242%_ _%g5619056244%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56172%_)))))
            (let ((_%__match8787987880%_
                   (lambda (_%e5618056267%_
                            _%hd5618156271%_
                            _%tl5618256274%_
                            _%e5618356277%_
                            _%hd5618456281%_
                            _%tl5618556284%_
                            _%e5618656287%_
                            _%hd5618756291%_
                            _%tl5618856294%_)
                     (let ((_%g5617856297%_ _%hd5618756291%_)
                           (_%g5617956299%_ _%hd5618456281%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5617956299%_)
                           (_%__kont8785587856%_
                            _%g5617856297%_
                            _%g5617956299%_)
                           (_%__kont8785787858%_
                            _%hd5618756291%_
                            _%hd5618456281%_))))))
              (if (gx#stx-pair? _%__stx8785287853%_)
                  (let ((_%e5618056267%_ (gx#syntax-e _%__stx8785287853%_)))
                    (let ((_%tl5618256274%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5618056267%_)))
                          (_%hd5618156271%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5618056267%_))))
                      (if (gx#stx-pair? _%tl5618256274%_)
                          (let ((_%e5618356277%_
                                 (gx#syntax-e _%tl5618256274%_)))
                            (let ((_%tl5618556284%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5618356277%_)))
                                  (_%hd5618456281%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5618356277%_))))
                              (if (gx#stx-pair? _%tl5618556284%_)
                                  (let ((_%e5618656287%_
                                         (gx#syntax-e _%tl5618556284%_)))
                                    (let ((_%tl5618856294%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5618656287%_)))
                                          (_%hd5618756291%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5618656287%_))))
                                      (if (gx#stx-null? _%tl5618856294%_)
                                          (_%__match8787987880%_
                                           _%e5618056267%_
                                           _%hd5618156271%_
                                           _%tl5618256274%_
                                           _%e5618356277%_
                                           _%hd5618456281%_
                                           _%tl5618556284%_
                                           _%e5618656287%_
                                           _%hd5618756291%_
                                           _%tl5618856294%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5617656205%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5617656205%_)))))
                          (let () (declare (not safe)) (_%g5617656205%_)))))
                  (let () (declare (not safe)) (_%g5617656205%_))))))))))

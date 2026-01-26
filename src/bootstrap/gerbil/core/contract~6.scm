(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g92698_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92699_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92700_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92703_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92704_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92707_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92708_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92709_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92710_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92714_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92715_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92716_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92717_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92721_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx50957%_)
        (let* ((_%__stx8679486795%_ _%stx50957%_)
               (_%g5096651175%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8679486795%_))))
          (let ((_%__kont8679786798%_
                 (lambda (_%g5096852067%_
                          _%g5096952069%_
                          _%g5097052070%_
                          _%g5097152071%_
                          _%g5097252072%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5097252072%_
                                     (cons _%g5097152071%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5097252072%_
                                                       (cons _%g5097052070%_
                                                             (cons _%g5096952069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5211552118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5211652121%_)
                  (cons _%g5211552118%_ _%g5211652121%_))
                '()
                _%g5096852067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8680186802%_
                 (lambda (_%g5100051913%_
                          _%g5100151915%_
                          _%g5100251916%_
                          _%g5100351917%_
                          _%g5100451918%_
                          _%g5100551919%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5100551919%_
                                     (cons _%g5100451918%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5100551919%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5100351917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5100551919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5100251916%_
                                       (cons _%g5100151915%_ '())))
                           (foldr (lambda (_%g5196351966%_ _%g5196451969%_)
                                    (cons _%g5196351966%_ _%g5196451969%_))
                                  '()
                                  _%g5100051913%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8680586806%_
                 (lambda (_%g5103951732%_
                          _%g5104051734%_
                          _%g5104151735%_
                          _%g5104251736%_)
                   (let ((_%meta51773%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50957%_
                             _%g5104051734%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta51773%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5104251736%_
                                           (cons _%g5104151735%_
                                                 (cons _%g5104051734%_ '())))
                                     (foldr (lambda (_%g5177751780%_
                                                     _%g5177851783%_)
                                              (cons _%g5177751780%_
                                                    _%g5177851783%_))
                                            '()
                                            _%g5103951732%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta51773%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5104251736%_
                                               (cons _%g5104151735%_
                                                     (cons _%g5104051734%_
                                                           '())))
                                         (foldr (lambda (_%g5178751790%_
                                                         _%g5178851793%_)
                                                  (cons _%g5178751790%_
                                                        _%g5178851793%_))
                                                '()
                                                _%g5103951732%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx50957%_
                              _%g5104051734%_
                              _%meta51773%_))))))
                (_%__kont8680986810%_
                 (lambda (_%g5106751612%_ _%g5106851614%_ _%g5106951615%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5106951615%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5106851614%_ '())))
                               (foldr (lambda (_%g5163851641%_ _%g5163951644%_)
                                        (cons _%g5163851641%_ _%g5163951644%_))
                                      '()
                                      _%g5106751612%_)))))
                (_%__kont8681386814%_
                 (lambda (_%g5109451472%_
                          _%g5109551474%_
                          _%g5109651475%_
                          _%g5109751476%_
                          _%g5109851477%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5109851477%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5109751476%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5109851477%_
                                                       (cons _%g5109651475%_
                                                             (cons _%g5109551474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5151851521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5151951524%_)
                  (cons _%g5151851521%_ _%g5151951524%_))
                '()
                _%g5109451472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8681786818%_
                 (lambda (_%g5112951332%_
                          _%g5113051334%_
                          _%g5113151335%_
                          _%g5113251336%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5113251336%_ _%g5113151335%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5113051334%_
                                                 (foldr (lambda (_%g5135851361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5135951364%_)
                  (cons _%g5135851361%_ _%g5135951364%_))
                '()
                _%g5112951332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8682186822%_
                 (lambda (_%g5115451230%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5124851251%_ _%g5124951254%_)
                                        (cons _%g5124851251%_ _%g5124951254%_))
                                      '()
                                      _%g5115451230%_))))))
            (let* ((_%__match8712787128%_
                    (lambda (_%e5115551182%_
                             _%hd5115651186%_
                             _%tl5115751189%_
                             _%e5115851192%_
                             _%hd5115951196%_
                             _%tl5116051199%_
                             _%__splice8682386824%_
                             _%target5116151202%_
                             _%tl5116351205%_)
                      (letrec ((_%loop5116451208%_
                                (lambda (_%hd5116251212%_ _%body5116851215%_)
                                  (if (gx#stx-pair? _%hd5116251212%_)
                                      (let ((_%e5116551217%_
                                             (gx#syntax-e _%hd5116251212%_)))
                                        (let ((_%lp-tl5116751224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5116551217%_)))
                                              (_%lp-hd5116651221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5116551217%_))))
                                          (_%loop5116451208%_
                                           _%lp-tl5116751224%_
                                           (cons _%lp-hd5116651221%_
                                                 _%body5116851215%_))))
                                      (let ((_%body5116951227%_
                                             (reverse _%body5116851215%_)))
                                        (_%__kont8682186822%_
                                         _%body5116951227%_))))))
                        (_%loop5116451208%_ _%target5116151202%_ '()))))
                   (_%__match8710587106%_
                    (lambda (_%e5113351264%_
                             _%hd5113451268%_
                             _%tl5113551271%_
                             _%e5113651274%_
                             _%hd5113751278%_
                             _%tl5113851281%_
                             _%e5113951284%_
                             _%hd5114051288%_
                             _%tl5114151291%_
                             _%e5114251294%_
                             _%hd5114351298%_
                             _%tl5114451301%_
                             _%__splice8681986820%_
                             _%target5114551304%_
                             _%tl5114751307%_)
                      (letrec ((_%loop5114851310%_
                                (lambda (_%hd5114651314%_ _%body5115251317%_)
                                  (if (gx#stx-pair? _%hd5114651314%_)
                                      (let ((_%e5114951319%_
                                             (gx#syntax-e _%hd5114651314%_)))
                                        (let ((_%lp-tl5115151326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114951319%_)))
                                              (_%lp-hd5115051323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114951319%_))))
                                          (_%loop5114851310%_
                                           _%lp-tl5115151326%_
                                           (cons _%lp-hd5115051323%_
                                                 _%body5115251317%_))))
                                      (let ((_%body5115351329%_
                                             (reverse _%body5115251317%_)))
                                        (let ((_%g5112951332%_
                                               _%body5115351329%_)
                                              (_%g5113051334%_
                                               _%tl5114151291%_)
                                              (_%g5113151335%_
                                               _%tl5114451301%_)
                                              (_%g5113251336%_
                                               _%hd5114351298%_))
                                          (if (gx#identifier? _%g5113251336%_)
                                              (_%__kont8681786818%_
                                               _%g5112951332%_
                                               _%g5113051334%_
                                               _%g5113151335%_
                                               _%g5113251336%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_)))))))))
                        (_%loop5114851310%_ _%target5114551304%_ '()))))
                   (_%__match8709187092%_
                    (lambda (_%e5113351264%_
                             _%hd5113451268%_
                             _%tl5113551271%_
                             _%e5113651274%_
                             _%hd5113751278%_
                             _%tl5113851281%_
                             _%e5113951284%_
                             _%hd5114051288%_
                             _%tl5114151291%_)
                      (if (gx#stx-pair? _%hd5114051288%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5114051288%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (if (gx#stx-pair/null? _%tl5113851281%_)
                                  (let ((_%__splice8681986820%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5113851281%_
                                          '0)))
                                    (let ((_%tl5114751307%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '1)))
                                          (_%target5114551304%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5114751307%_)
                                          (_%__match8710587106%_
                                           _%e5113351264%_
                                           _%hd5113451268%_
                                           _%tl5113551271%_
                                           _%e5113651274%_
                                           _%hd5113751278%_
                                           _%tl5113851281%_
                                           _%e5113951284%_
                                           _%hd5114051288%_
                                           _%tl5114151291%_
                                           _%e5114251294%_
                                           _%hd5114351298%_
                                           _%tl5114451301%_
                                           _%__splice8681986820%_
                                           _%target5114551304%_
                                           _%tl5114751307%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                   (_%__match8707387074%_
                    (lambda (_%e5109951374%_
                             _%hd5110051378%_
                             _%tl5110151381%_
                             _%e5110251384%_
                             _%hd5110351388%_
                             _%tl5110451391%_
                             _%e5110551394%_
                             _%hd5110651398%_
                             _%tl5110751401%_
                             _%e5110851404%_
                             _%hd5110951408%_
                             _%tl5111051411%_
                             _%e5111151414%_
                             _%hd5111251418%_
                             _%tl5111351421%_
                             _%e5111451424%_
                             _%hd5111551428%_
                             _%tl5111651431%_
                             _%e5111751434%_
                             _%hd5111851438%_
                             _%tl5111951441%_
                             _%__splice8681586816%_
                             _%target5112051444%_
                             _%tl5112251447%_)
                      (letrec ((_%loop5112351450%_
                                (lambda (_%hd5112151454%_ _%body5112751457%_)
                                  (if (gx#stx-pair? _%hd5112151454%_)
                                      (let ((_%e5112451459%_
                                             (gx#syntax-e _%hd5112151454%_)))
                                        (let ((_%lp-tl5112651466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5112451459%_)))
                                              (_%lp-hd5112551463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5112451459%_))))
                                          (_%loop5112351450%_
                                           _%lp-tl5112651466%_
                                           (cons _%lp-hd5112551463%_
                                                 _%body5112751457%_))))
                                      (let ((_%body5112851469%_
                                             (reverse _%body5112751457%_)))
                                        (let ((_%g5109451472%_
                                               _%body5112851469%_)
                                              (_%g5109551474%_
                                               _%hd5111851438%_)
                                              (_%g5109651475%_
                                               _%hd5111551428%_)
                                              (_%g5109751476%_
                                               _%hd5111251418%_)
                                              (_%g5109851477%_
                                               _%hd5110651398%_))
                                          (if (and (gx#identifier?
                                                    _%g5109851477%_)
                                                   (gx#identifier?
                                                    _%g5109551474%_)
                                                   (gx#identifier?
                                                    _%g5109651475%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5109651475%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5109651475%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5109651475%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5109651475%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8681386814%_
                                               _%g5109451472%_
                                               _%g5109551474%_
                                               _%g5109651475%_
                                               _%g5109751476%_
                                               _%g5109851477%_)
                                              (_%__match8709187092%_
                                               _%e5109951374%_
                                               _%hd5110051378%_
                                               _%tl5110151381%_
                                               _%e5110251384%_
                                               _%hd5110351388%_
                                               _%tl5110451391%_
                                               _%e5110551394%_
                                               _%hd5110651398%_
                                               _%tl5110751401%_))))))))
                        (_%loop5112351450%_ _%target5112051444%_ '()))))
                   (_%__match8701787018%_
                    (lambda (_%e5107051534%_
                             _%hd5107151538%_
                             _%tl5107251541%_
                             _%e5107351544%_
                             _%hd5107451548%_
                             _%tl5107551551%_
                             _%e5107651554%_
                             _%hd5107751558%_
                             _%tl5107851561%_
                             _%e5107951564%_
                             _%hd5108051568%_
                             _%tl5108151571%_
                             _%e5108251574%_
                             _%hd5108351578%_
                             _%tl5108451581%_
                             _%__splice8681186812%_
                             _%target5108551584%_
                             _%tl5108751587%_)
                      (letrec ((_%loop5108851590%_
                                (lambda (_%hd5108651594%_ _%body5109251597%_)
                                  (if (gx#stx-pair? _%hd5108651594%_)
                                      (let ((_%e5108951599%_
                                             (gx#syntax-e _%hd5108651594%_)))
                                        (let ((_%lp-tl5109151606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5108951599%_)))
                                              (_%lp-hd5109051603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5108951599%_))))
                                          (_%loop5108851590%_
                                           _%lp-tl5109151606%_
                                           (cons _%lp-hd5109051603%_
                                                 _%body5109251597%_))))
                                      (let ((_%body5109351609%_
                                             (reverse _%body5109251597%_)))
                                        (let ((_%g5106751612%_
                                               _%body5109351609%_)
                                              (_%g5106851614%_
                                               _%hd5108351578%_)
                                              (_%g5106951615%_
                                               _%hd5107751558%_))
                                          (if (gx#identifier? _%g5106951615%_)
                                              (_%__kont8680986810%_
                                               _%g5106751612%_
                                               _%g5106851614%_
                                               _%g5106951615%_)
                                              (_%__match8709187092%_
                                               _%e5107051534%_
                                               _%hd5107151538%_
                                               _%tl5107251541%_
                                               _%e5107351544%_
                                               _%hd5107451548%_
                                               _%tl5107551551%_
                                               _%e5107651554%_
                                               _%hd5107751558%_
                                               _%tl5107851561%_))))))))
                        (_%loop5108851590%_ _%target5108551584%_ '()))))
                   (_%__match8699786998%_
                    (lambda (_%e5107051534%_
                             _%hd5107151538%_
                             _%tl5107251541%_
                             _%e5107351544%_
                             _%hd5107451548%_
                             _%tl5107551551%_
                             _%e5107651554%_
                             _%hd5107751558%_
                             _%tl5107851561%_
                             _%e5107951564%_
                             _%hd5108051568%_
                             _%tl5108151571%_)
                      (if (gx#identifier? _%hd5108051568%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92698_|
                               _%hd5108051568%_)
                              (if (gx#stx-pair? _%tl5108151571%_)
                                  (let ((_%e5108251574%_
                                         (gx#syntax-e _%tl5108151571%_)))
                                    (let ((_%tl5108451581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5108251574%_)))
                                          (_%hd5108351578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5108251574%_))))
                                      (if (gx#stx-null? _%tl5108451581%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5107551551%_)
                                              (let ((_%__splice8681186812%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5107551551%_
                                                      '0)))
                                                (let ((_%tl5108751587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681186812%_
                                                          '1)))
                                                      (_%target5108551584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681186812%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5108751587%_)
                                                      (_%__match8701787018%_
                                                       _%e5107051534%_
                                                       _%hd5107151538%_
                                                       _%tl5107251541%_
                                                       _%e5107351544%_
                                                       _%hd5107451548%_
                                                       _%tl5107551551%_
                                                       _%e5107651554%_
                                                       _%hd5107751558%_
                                                       _%tl5107851561%_
                                                       _%e5107951564%_
                                                       _%hd5108051568%_
                                                       _%tl5108151571%_
                                                       _%e5108251574%_
                                                       _%hd5108351578%_
                                                       _%tl5108451581%_
                                                       _%__splice8681186812%_
                                                       _%target5108551584%_
                                                       _%tl5108751587%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5107751558%_)
                                                          (let ((_%e5114251294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5107751558%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (let () (declare (not safe)) (_%g5096651175%_))))
                  (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5107751558%_)
                                                  (let ((_%e5114251294%_
                                                         (gx#syntax-e
                                                          _%hd5107751558%_)))
                                                    (let ((_%tl5114451301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5114251294%_)))
                                                          (_%hd5114351298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5114251294%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5096651175%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_))))
                                          (if (gx#stx-pair? _%tl5108451581%_)
                                              (let ((_%e5111451424%_
                                                     (gx#syntax-e
                                                      _%tl5108451581%_)))
                                                (let ((_%tl5111651431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5111451424%_)))
                                                      (_%hd5111551428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5111451424%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5111651431%_)
                                                      (let ((_%e5111751434%_
                                                             (gx#syntax-e
                                                              _%tl5111651431%_)))
                                                        (let ((_%tl5111951441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5111751434%_)))
                      (_%hd5111851438%_
                       (let () (declare (not safe)) (##car _%e5111751434%_))))
                  (if (gx#stx-null? _%tl5111951441%_)
                      (if (gx#stx-pair/null? _%tl5107551551%_)
                          (let ((_%__splice8681586816%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5107551551%_
                                  '0)))
                            (let ((_%tl5112251447%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681586816%_ '1)))
                                  (_%target5112051444%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681586816%_
                                      '0))))
                              (if (gx#stx-null? _%tl5112251447%_)
                                  (_%__match8707387074%_
                                   _%e5107051534%_
                                   _%hd5107151538%_
                                   _%tl5107251541%_
                                   _%e5107351544%_
                                   _%hd5107451548%_
                                   _%tl5107551551%_
                                   _%e5107651554%_
                                   _%hd5107751558%_
                                   _%tl5107851561%_
                                   _%e5107951564%_
                                   _%hd5108051568%_
                                   _%tl5108151571%_
                                   _%e5108251574%_
                                   _%hd5108351578%_
                                   _%tl5108451581%_
                                   _%e5111451424%_
                                   _%hd5111551428%_
                                   _%tl5111651431%_
                                   _%e5111751434%_
                                   _%hd5111851438%_
                                   _%tl5111951441%_
                                   _%__splice8681586816%_
                                   _%target5112051444%_
                                   _%tl5112251447%_)
                                  (if (gx#stx-pair? _%hd5107751558%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5107751558%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))
                          (if (gx#stx-pair? _%hd5107751558%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5107751558%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                      (if (gx#stx-pair? _%hd5107751558%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5107751558%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (if (gx#stx-pair/null? _%tl5107551551%_)
                                  (let ((_%__splice8681986820%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5107551551%_
                                          '0)))
                                    (let ((_%tl5114751307%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '1)))
                                          (_%target5114551304%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5114751307%_)
                                          (_%__match8710587106%_
                                           _%e5107051534%_
                                           _%hd5107151538%_
                                           _%tl5107251541%_
                                           _%e5107351544%_
                                           _%hd5107451548%_
                                           _%tl5107551551%_
                                           _%e5107651554%_
                                           _%hd5107751558%_
                                           _%tl5107851561%_
                                           _%e5114251294%_
                                           _%hd5114351298%_
                                           _%tl5114451301%_
                                           _%__splice8681986820%_
                                           _%target5114551304%_
                                           _%tl5114751307%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_))))))
              (if (gx#stx-pair? _%hd5107751558%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5107751558%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (if (gx#stx-pair/null? _%tl5107551551%_)
                          (let ((_%__splice8681986820%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5107551551%_
                                  '0)))
                            (let ((_%tl5114751307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681986820%_ '1)))
                                  (_%target5114551304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681986820%_
                                      '0))))
                              (if (gx#stx-null? _%tl5114751307%_)
                                  (_%__match8710587106%_
                                   _%e5107051534%_
                                   _%hd5107151538%_
                                   _%tl5107251541%_
                                   _%e5107351544%_
                                   _%hd5107451548%_
                                   _%tl5107551551%_
                                   _%e5107651554%_
                                   _%hd5107751558%_
                                   _%tl5107851561%_
                                   _%e5114251294%_
                                   _%hd5114351298%_
                                   _%tl5114451301%_
                                   _%__splice8681986820%_
                                   _%target5114551304%_
                                   _%tl5114751307%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5107751558%_)
                                                  (let ((_%e5114251294%_
                                                         (gx#syntax-e
                                                          _%hd5107751558%_)))
                                                    (let ((_%tl5114451301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5114251294%_)))
                                                          (_%hd5114351298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5114251294%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5107551551%_)
                                                          (let ((_%__splice8681986820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5107551551%_ '0)))
                    (let ((_%tl5114751307%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681986820%_ '1)))
                          (_%target5114551304%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681986820%_ '0))))
                      (if (gx#stx-null? _%tl5114751307%_)
                          (_%__match8710587106%_
                           _%e5107051534%_
                           _%hd5107151538%_
                           _%tl5107251541%_
                           _%e5107351544%_
                           _%hd5107451548%_
                           _%tl5107551551%_
                           _%e5107651554%_
                           _%hd5107751558%_
                           _%tl5107851561%_
                           _%e5114251294%_
                           _%hd5114351298%_
                           _%tl5114451301%_
                           _%__splice8681986820%_
                           _%target5114551304%_
                           _%tl5114751307%_)
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))))
                                  (if (gx#stx-pair? _%hd5107751558%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5107751558%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5107551551%_)
                                              (let ((_%__splice8681986820%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5107551551%_
                                                      '0)))
                                                (let ((_%tl5114751307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681986820%_
                                                          '1)))
                                                      (_%target5114551304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681986820%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5114751307%_)
                                                      (_%__match8710587106%_
                                                       _%e5107051534%_
                                                       _%hd5107151538%_
                                                       _%tl5107251541%_
                                                       _%e5107351544%_
                                                       _%hd5107451548%_
                                                       _%tl5107551551%_
                                                       _%e5107651554%_
                                                       _%hd5107751558%_
                                                       _%tl5107851561%_
                                                       _%e5114251294%_
                                                       _%hd5114351298%_
                                                       _%tl5114451301%_
                                                       _%__splice8681986820%_
                                                       _%target5114551304%_
                                                       _%tl5114751307%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5096651175%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))
                              (if (gx#stx-pair? _%hd5107751558%_)
                                  (let ((_%e5114251294%_
                                         (gx#syntax-e _%hd5107751558%_)))
                                    (let ((_%tl5114451301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5114251294%_)))
                                          (_%hd5114351298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5114251294%_))))
                                      (if (gx#stx-pair/null? _%tl5107551551%_)
                                          (let ((_%__splice8681986820%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5107551551%_
                                                  '0)))
                                            (let ((_%tl5114751307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8681986820%_
                                                      '1)))
                                                  (_%target5114551304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8681986820%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5114751307%_)
                                                  (_%__match8710587106%_
                                                   _%e5107051534%_
                                                   _%hd5107151538%_
                                                   _%tl5107251541%_
                                                   _%e5107351544%_
                                                   _%hd5107451548%_
                                                   _%tl5107551551%_
                                                   _%e5107651554%_
                                                   _%hd5107751558%_
                                                   _%tl5107851561%_
                                                   _%e5114251294%_
                                                   _%hd5114351298%_
                                                   _%tl5114451301%_
                                                   _%__splice8681986820%_
                                                   _%target5114551304%_
                                                   _%tl5114751307%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                          (if (gx#stx-pair? _%hd5107751558%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5107751558%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (if (gx#stx-pair/null? _%tl5107551551%_)
                                      (let ((_%__splice8681986820%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5107551551%_
                                              '0)))
                                        (let ((_%tl5114751307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8681986820%_
                                                  '1)))
                                              (_%target5114551304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8681986820%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5114751307%_)
                                              (_%__match8710587106%_
                                               _%e5107051534%_
                                               _%hd5107151538%_
                                               _%tl5107251541%_
                                               _%e5107351544%_
                                               _%hd5107451548%_
                                               _%tl5107551551%_
                                               _%e5107651554%_
                                               _%hd5107751558%_
                                               _%tl5107851561%_
                                               _%e5114251294%_
                                               _%hd5114351298%_
                                               _%tl5114451301%_
                                               _%__splice8681986820%_
                                               _%target5114551304%_
                                               _%tl5114751307%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_))))))
                   (_%__match8697386974%_
                    (lambda (_%e5104351654%_
                             _%hd5104451658%_
                             _%tl5104551661%_
                             _%e5104651664%_
                             _%hd5104751668%_
                             _%tl5104851671%_
                             _%e5104951674%_
                             _%hd5105051678%_
                             _%tl5105151681%_
                             _%e5105251684%_
                             _%hd5105351688%_
                             _%tl5105451691%_
                             _%e5105551694%_
                             _%hd5105651698%_
                             _%tl5105751701%_
                             _%__splice8680786808%_
                             _%target5105851704%_
                             _%tl5106051707%_)
                      (letrec ((_%loop5106151710%_
                                (lambda (_%hd5105951714%_ _%body5106551717%_)
                                  (if (gx#stx-pair? _%hd5105951714%_)
                                      (let ((_%e5106251719%_
                                             (gx#syntax-e _%hd5105951714%_)))
                                        (let ((_%lp-tl5106451726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5106251719%_)))
                                              (_%lp-hd5106351723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5106251719%_))))
                                          (_%loop5106151710%_
                                           _%lp-tl5106451726%_
                                           (cons _%lp-hd5106351723%_
                                                 _%body5106551717%_))))
                                      (let ((_%body5106651729%_
                                             (reverse _%body5106551717%_)))
                                        (let ((_%g5103951732%_
                                               _%body5106651729%_)
                                              (_%g5104051734%_
                                               _%hd5105651698%_)
                                              (_%g5104151735%_
                                               _%hd5105351688%_)
                                              (_%g5104251736%_
                                               _%hd5105051678%_))
                                          (if (and (gx#identifier?
                                                    _%g5104251736%_)
                                                   (gx#identifier?
                                                    _%g5104051734%_)
                                                   (gx#identifier?
                                                    _%g5104151735%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5104151735%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5104151735%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5104151735%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5104151735%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8680586806%_
                                               _%g5103951732%_
                                               _%g5104051734%_
                                               _%g5104151735%_
                                               _%g5104251736%_)
                                              (_%__match8699786998%_
                                               _%e5104351654%_
                                               _%hd5104451658%_
                                               _%tl5104551661%_
                                               _%e5104651664%_
                                               _%hd5104751668%_
                                               _%tl5104851671%_
                                               _%e5104951674%_
                                               _%hd5105051678%_
                                               _%tl5105151681%_
                                               _%e5105251684%_
                                               _%hd5105351688%_
                                               _%tl5105451691%_))))))))
                        (_%loop5106151710%_ _%target5105851704%_ '()))))
                   (_%__match8693386934%_
                    (lambda (_%e5100651805%_
                             _%hd5100751809%_
                             _%tl5100851812%_
                             _%e5100951815%_
                             _%hd5101051819%_
                             _%tl5101151822%_
                             _%e5101251825%_
                             _%hd5101351829%_
                             _%tl5101451832%_
                             _%e5101551835%_
                             _%hd5101651839%_
                             _%tl5101751842%_
                             _%e5101851845%_
                             _%hd5101951849%_
                             _%tl5102051852%_
                             _%e5102151855%_
                             _%hd5102251859%_
                             _%tl5102351862%_
                             _%e5102451865%_
                             _%hd5102551869%_
                             _%tl5102651872%_
                             _%e5102751875%_
                             _%hd5102851879%_
                             _%tl5102951882%_
                             _%__splice8680386804%_
                             _%target5103051885%_
                             _%tl5103251888%_)
                      (letrec ((_%loop5103351891%_
                                (lambda (_%hd5103151895%_ _%body5103751898%_)
                                  (if (gx#stx-pair? _%hd5103151895%_)
                                      (let ((_%e5103451900%_
                                             (gx#syntax-e _%hd5103151895%_)))
                                        (let ((_%lp-tl5103651907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5103451900%_)))
                                              (_%lp-hd5103551904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5103451900%_))))
                                          (_%loop5103351891%_
                                           _%lp-tl5103651907%_
                                           (cons _%lp-hd5103551904%_
                                                 _%body5103751898%_))))
                                      (let ((_%body5103851910%_
                                             (reverse _%body5103751898%_)))
                                        (let ((_%g5100051913%_
                                               _%body5103851910%_)
                                              (_%g5100151915%_
                                               _%hd5102851879%_)
                                              (_%g5100251916%_
                                               _%hd5102551869%_)
                                              (_%g5100351917%_
                                               _%hd5102251859%_)
                                              (_%g5100451918%_
                                               _%hd5101651839%_)
                                              (_%g5100551919%_
                                               _%hd5101351829%_))
                                          (if (and (gx#identifier?
                                                    _%g5100551919%_)
                                                   (gx#identifier?
                                                    _%g5100151915%_)
                                                   (gx#identifier?
                                                    _%g5100251916%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5100251916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5100251916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5100251916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5100251916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8680186802%_
                                               _%g5100051913%_
                                               _%g5100151915%_
                                               _%g5100251916%_
                                               _%g5100351917%_
                                               _%g5100451918%_
                                               _%g5100551919%_)
                                              (_%__match8699786998%_
                                               _%e5100651805%_
                                               _%hd5100751809%_
                                               _%tl5100851812%_
                                               _%e5100951815%_
                                               _%hd5101051819%_
                                               _%tl5101151822%_
                                               _%e5101251825%_
                                               _%hd5101351829%_
                                               _%tl5101451832%_
                                               _%e5101551835%_
                                               _%hd5101651839%_
                                               _%tl5101751842%_))))))))
                        (_%loop5103351891%_ _%target5103051885%_ '()))))
                   (_%__match8690186902%_
                    (lambda (_%e5100651805%_
                             _%hd5100751809%_
                             _%tl5100851812%_
                             _%e5100951815%_
                             _%hd5101051819%_
                             _%tl5101151822%_
                             _%e5101251825%_
                             _%hd5101351829%_
                             _%tl5101451832%_
                             _%e5101551835%_
                             _%hd5101651839%_
                             _%tl5101751842%_
                             _%e5101851845%_
                             _%hd5101951849%_
                             _%tl5102051852%_)
                      (if (gx#identifier? _%hd5101951849%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92699_|
                               _%hd5101951849%_)
                              (if (gx#stx-pair? _%tl5102051852%_)
                                  (let ((_%e5102151855%_
                                         (gx#syntax-e _%tl5102051852%_)))
                                    (let ((_%tl5102351862%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5102151855%_)))
                                          (_%hd5102251859%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5102151855%_))))
                                      (if (gx#stx-pair? _%tl5102351862%_)
                                          (let ((_%e5102451865%_
                                                 (gx#syntax-e
                                                  _%tl5102351862%_)))
                                            (let ((_%tl5102651872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5102451865%_)))
                                                  (_%hd5102551869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5102451865%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5102651872%_)
                                                  (let ((_%e5102751875%_
                                                         (gx#syntax-e
                                                          _%tl5102651872%_)))
                                                    (let ((_%tl5102951882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5102751875%_)))
                                                          (_%hd5102851879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5102751875%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5102951882%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5101151822%_)
                                                              (let ((_%__splice8680386804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5101151822%_
                              '0)))
                        (let ((_%tl5103251888%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8680386804%_ '1)))
                              (_%target5103051885%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8680386804%_ '0))))
                          (if (gx#stx-null? _%tl5103251888%_)
                              (_%__match8693386934%_
                               _%e5100651805%_
                               _%hd5100751809%_
                               _%tl5100851812%_
                               _%e5100951815%_
                               _%hd5101051819%_
                               _%tl5101151822%_
                               _%e5101251825%_
                               _%hd5101351829%_
                               _%tl5101451832%_
                               _%e5101551835%_
                               _%hd5101651839%_
                               _%tl5101751842%_
                               _%e5101851845%_
                               _%hd5101951849%_
                               _%tl5102051852%_
                               _%e5102151855%_
                               _%hd5102251859%_
                               _%tl5102351862%_
                               _%e5102451865%_
                               _%hd5102551869%_
                               _%tl5102651872%_
                               _%e5102751875%_
                               _%hd5102851879%_
                               _%tl5102951882%_
                               _%__splice8680386804%_
                               _%target5103051885%_
                               _%tl5103251888%_)
                              (if (gx#stx-pair? _%hd5101351829%_)
                                  (let ((_%e5114251294%_
                                         (gx#syntax-e _%hd5101351829%_)))
                                    (let ((_%tl5114451301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5114251294%_)))
                                          (_%hd5114351298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5114251294%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))))
                      (if (gx#stx-pair? _%hd5101351829%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5101351829%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                          (let () (declare (not safe)) (_%g5096651175%_))))
                  (if (gx#stx-pair? _%hd5101351829%_)
                      (let ((_%e5114251294%_ (gx#syntax-e _%hd5101351829%_)))
                        (let ((_%tl5114451301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5114251294%_)))
                              (_%hd5114351298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5114251294%_))))
                          (if (gx#stx-pair/null? _%tl5101151822%_)
                              (let ((_%__splice8681986820%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5101151822%_
                                      '0)))
                                (let ((_%tl5114751307%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '1)))
                                      (_%target5114551304%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5114751307%_)
                                      (_%__match8710587106%_
                                       _%e5100651805%_
                                       _%hd5100751809%_
                                       _%tl5100851812%_
                                       _%e5100951815%_
                                       _%hd5101051819%_
                                       _%tl5101151822%_
                                       _%e5101251825%_
                                       _%hd5101351829%_
                                       _%tl5101451832%_
                                       _%e5114251294%_
                                       _%hd5114351298%_
                                       _%tl5114451301%_
                                       _%__splice8681986820%_
                                       _%target5114551304%_
                                       _%tl5114751307%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5101651839%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92698_|
                                                           _%hd5101651839%_)
                                                          (if (gx#stx-null?
                                                               _%tl5102651872%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5101151822%_)
                          (let ((_%__splice8681586816%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5101151822%_
                                  '0)))
                            (let ((_%tl5112251447%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681586816%_ '1)))
                                  (_%target5112051444%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681586816%_
                                      '0))))
                              (if (gx#stx-null? _%tl5112251447%_)
                                  (_%__match8707387074%_
                                   _%e5100651805%_
                                   _%hd5100751809%_
                                   _%tl5100851812%_
                                   _%e5100951815%_
                                   _%hd5101051819%_
                                   _%tl5101151822%_
                                   _%e5101251825%_
                                   _%hd5101351829%_
                                   _%tl5101451832%_
                                   _%e5101551835%_
                                   _%hd5101651839%_
                                   _%tl5101751842%_
                                   _%e5101851845%_
                                   _%hd5101951849%_
                                   _%tl5102051852%_
                                   _%e5102151855%_
                                   _%hd5102251859%_
                                   _%tl5102351862%_
                                   _%e5102451865%_
                                   _%hd5102551869%_
                                   _%tl5102651872%_
                                   _%__splice8681586816%_
                                   _%target5112051444%_
                                   _%tl5112251447%_)
                                  (if (gx#stx-pair? _%hd5101351829%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5101351829%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))
                          (if (gx#stx-pair? _%hd5101351829%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5101351829%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                      (if (gx#stx-pair? _%hd5101351829%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5101351829%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (if (gx#stx-pair/null? _%tl5101151822%_)
                                  (let ((_%__splice8681986820%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5101151822%_
                                          '0)))
                                    (let ((_%tl5114751307%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '1)))
                                          (_%target5114551304%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5114751307%_)
                                          (_%__match8710587106%_
                                           _%e5100651805%_
                                           _%hd5100751809%_
                                           _%tl5100851812%_
                                           _%e5100951815%_
                                           _%hd5101051819%_
                                           _%tl5101151822%_
                                           _%e5101251825%_
                                           _%hd5101351829%_
                                           _%tl5101451832%_
                                           _%e5114251294%_
                                           _%hd5114351298%_
                                           _%tl5114451301%_
                                           _%__splice8681986820%_
                                           _%target5114551304%_
                                           _%tl5114751307%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_))))
                  (if (gx#stx-pair? _%hd5101351829%_)
                      (let ((_%e5114251294%_ (gx#syntax-e _%hd5101351829%_)))
                        (let ((_%tl5114451301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5114251294%_)))
                              (_%hd5114351298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5114251294%_))))
                          (if (gx#stx-pair/null? _%tl5101151822%_)
                              (let ((_%__splice8681986820%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5101151822%_
                                      '0)))
                                (let ((_%tl5114751307%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '1)))
                                      (_%target5114551304%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5114751307%_)
                                      (_%__match8710587106%_
                                       _%e5100651805%_
                                       _%hd5100751809%_
                                       _%tl5100851812%_
                                       _%e5100951815%_
                                       _%hd5101051819%_
                                       _%tl5101151822%_
                                       _%e5101251825%_
                                       _%hd5101351829%_
                                       _%tl5101451832%_
                                       _%e5114251294%_
                                       _%hd5114351298%_
                                       _%tl5114451301%_
                                       _%__splice8681986820%_
                                       _%target5114551304%_
                                       _%tl5114751307%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_))))
              (if (gx#stx-pair? _%hd5101351829%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5101351829%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (if (gx#stx-pair/null? _%tl5101151822%_)
                          (let ((_%__splice8681986820%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5101151822%_
                                  '0)))
                            (let ((_%tl5114751307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681986820%_ '1)))
                                  (_%target5114551304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681986820%_
                                      '0))))
                              (if (gx#stx-null? _%tl5114751307%_)
                                  (_%__match8710587106%_
                                   _%e5100651805%_
                                   _%hd5100751809%_
                                   _%tl5100851812%_
                                   _%e5100951815%_
                                   _%hd5101051819%_
                                   _%tl5101151822%_
                                   _%e5101251825%_
                                   _%hd5101351829%_
                                   _%tl5101451832%_
                                   _%e5114251294%_
                                   _%hd5114351298%_
                                   _%tl5114451301%_
                                   _%__splice8681986820%_
                                   _%target5114551304%_
                                   _%tl5114751307%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5101351829%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5101351829%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5101151822%_)
                                                      (let ((_%__splice8681986820%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5101151822%_
                                                              '0)))
                                                        (let ((_%tl5114751307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '1)))
                      (_%target5114551304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '0))))
                  (if (gx#stx-null? _%tl5114751307%_)
                      (_%__match8710587106%_
                       _%e5100651805%_
                       _%hd5100751809%_
                       _%tl5100851812%_
                       _%e5100951815%_
                       _%hd5101051819%_
                       _%tl5101151822%_
                       _%e5101251825%_
                       _%hd5101351829%_
                       _%tl5101451832%_
                       _%e5114251294%_
                       _%hd5114351298%_
                       _%tl5114451301%_
                       _%__splice8681986820%_
                       _%target5114551304%_
                       _%tl5114751307%_)
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))))
                                  (if (gx#stx-null? _%tl5102051852%_)
                                      (if (gx#stx-pair/null? _%tl5101151822%_)
                                          (let ((_%__splice8680786808%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5101151822%_
                                                  '0)))
                                            (let ((_%tl5106051707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8680786808%_
                                                      '1)))
                                                  (_%target5105851704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8680786808%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5106051707%_)
                                                  (_%__match8697386974%_
                                                   _%e5100651805%_
                                                   _%hd5100751809%_
                                                   _%tl5100851812%_
                                                   _%e5100951815%_
                                                   _%hd5101051819%_
                                                   _%tl5101151822%_
                                                   _%e5101251825%_
                                                   _%hd5101351829%_
                                                   _%tl5101451832%_
                                                   _%e5101551835%_
                                                   _%hd5101651839%_
                                                   _%tl5101751842%_
                                                   _%e5101851845%_
                                                   _%hd5101951849%_
                                                   _%tl5102051852%_
                                                   _%__splice8680786808%_
                                                   _%target5105851704%_
                                                   _%tl5106051707%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5101351829%_)
                                                      (let ((_%e5114251294%_
                                                             (gx#syntax-e
                                                              _%hd5101351829%_)))
                                                        (let ((_%tl5114451301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5114251294%_)))
                      (_%hd5114351298%_
                       (let () (declare (not safe)) (##car _%e5114251294%_))))
                  (let () (declare (not safe)) (_%g5096651175%_))))
              (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5101351829%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5101351829%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                      (if (gx#stx-pair? _%hd5101351829%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5101351829%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5101151822%_)
                                                  (let ((_%__splice8681986820%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5101151822%_
                                                          '0)))
                                                    (let ((_%tl5114751307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '1)))
                                                          (_%target5114551304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5114751307%_)
                                                          (_%__match8710587106%_
                                                           _%e5100651805%_
                                                           _%hd5100751809%_
                                                           _%tl5100851812%_
                                                           _%e5100951815%_
                                                           _%hd5101051819%_
                                                           _%tl5101151822%_
                                                           _%e5101251825%_
                                                           _%hd5101351829%_
                                                           _%tl5101451832%_
                                                           _%e5114251294%_
                                                           _%hd5114351298%_
                                                           _%tl5114451301%_
                                                           _%__splice8681986820%_
                                                           _%target5114551304%_
                                                           _%tl5114751307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5096651175%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                              (if (gx#stx-null? _%tl5102051852%_)
                                  (if (gx#stx-pair/null? _%tl5101151822%_)
                                      (let ((_%__splice8680786808%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5101151822%_
                                              '0)))
                                        (let ((_%tl5106051707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8680786808%_
                                                  '1)))
                                              (_%target5105851704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8680786808%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5106051707%_)
                                              (_%__match8697386974%_
                                               _%e5100651805%_
                                               _%hd5100751809%_
                                               _%tl5100851812%_
                                               _%e5100951815%_
                                               _%hd5101051819%_
                                               _%tl5101151822%_
                                               _%e5101251825%_
                                               _%hd5101351829%_
                                               _%tl5101451832%_
                                               _%e5101551835%_
                                               _%hd5101651839%_
                                               _%tl5101751842%_
                                               _%e5101851845%_
                                               _%hd5101951849%_
                                               _%tl5102051852%_
                                               _%__splice8680786808%_
                                               _%target5105851704%_
                                               _%tl5106051707%_)
                                              (if (gx#stx-pair?
                                                   _%hd5101351829%_)
                                                  (let ((_%e5114251294%_
                                                         (gx#syntax-e
                                                          _%hd5101351829%_)))
                                                    (let ((_%tl5114451301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5114251294%_)))
                                                          (_%hd5114351298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5114251294%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5096651175%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_))))))
                                      (if (gx#stx-pair? _%hd5101351829%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5101351829%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                  (if (gx#identifier? _%hd5101651839%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92698_|
                                           _%hd5101651839%_)
                                          (if (gx#stx-pair? _%tl5102051852%_)
                                              (let ((_%e5111451424%_
                                                     (gx#syntax-e
                                                      _%tl5102051852%_)))
                                                (let ((_%tl5111651431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5111451424%_)))
                                                      (_%hd5111551428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5111451424%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5111651431%_)
                                                      (let ((_%e5111751434%_
                                                             (gx#syntax-e
                                                              _%tl5111651431%_)))
                                                        (let ((_%tl5111951441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5111751434%_)))
                      (_%hd5111851438%_
                       (let () (declare (not safe)) (##car _%e5111751434%_))))
                  (if (gx#stx-null? _%tl5111951441%_)
                      (if (gx#stx-pair/null? _%tl5101151822%_)
                          (let ((_%__splice8681586816%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5101151822%_
                                  '0)))
                            (let ((_%tl5112251447%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681586816%_ '1)))
                                  (_%target5112051444%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681586816%_
                                      '0))))
                              (if (gx#stx-null? _%tl5112251447%_)
                                  (_%__match8707387074%_
                                   _%e5100651805%_
                                   _%hd5100751809%_
                                   _%tl5100851812%_
                                   _%e5100951815%_
                                   _%hd5101051819%_
                                   _%tl5101151822%_
                                   _%e5101251825%_
                                   _%hd5101351829%_
                                   _%tl5101451832%_
                                   _%e5101551835%_
                                   _%hd5101651839%_
                                   _%tl5101751842%_
                                   _%e5101851845%_
                                   _%hd5101951849%_
                                   _%tl5102051852%_
                                   _%e5111451424%_
                                   _%hd5111551428%_
                                   _%tl5111651431%_
                                   _%e5111751434%_
                                   _%hd5111851438%_
                                   _%tl5111951441%_
                                   _%__splice8681586816%_
                                   _%target5112051444%_
                                   _%tl5112251447%_)
                                  (if (gx#stx-pair? _%hd5101351829%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5101351829%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))
                          (if (gx#stx-pair? _%hd5101351829%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5101351829%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                      (if (gx#stx-pair? _%hd5101351829%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5101351829%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (if (gx#stx-pair/null? _%tl5101151822%_)
                                  (let ((_%__splice8681986820%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5101151822%_
                                          '0)))
                                    (let ((_%tl5114751307%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '1)))
                                          (_%target5114551304%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5114751307%_)
                                          (_%__match8710587106%_
                                           _%e5100651805%_
                                           _%hd5100751809%_
                                           _%tl5100851812%_
                                           _%e5100951815%_
                                           _%hd5101051819%_
                                           _%tl5101151822%_
                                           _%e5101251825%_
                                           _%hd5101351829%_
                                           _%tl5101451832%_
                                           _%e5114251294%_
                                           _%hd5114351298%_
                                           _%tl5114451301%_
                                           _%__splice8681986820%_
                                           _%target5114551304%_
                                           _%tl5114751307%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_))))))
              (if (gx#stx-pair? _%hd5101351829%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5101351829%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (if (gx#stx-pair/null? _%tl5101151822%_)
                          (let ((_%__splice8681986820%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5101151822%_
                                  '0)))
                            (let ((_%tl5114751307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681986820%_ '1)))
                                  (_%target5114551304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681986820%_
                                      '0))))
                              (if (gx#stx-null? _%tl5114751307%_)
                                  (_%__match8710587106%_
                                   _%e5100651805%_
                                   _%hd5100751809%_
                                   _%tl5100851812%_
                                   _%e5100951815%_
                                   _%hd5101051819%_
                                   _%tl5101151822%_
                                   _%e5101251825%_
                                   _%hd5101351829%_
                                   _%tl5101451832%_
                                   _%e5114251294%_
                                   _%hd5114351298%_
                                   _%tl5114451301%_
                                   _%__splice8681986820%_
                                   _%target5114551304%_
                                   _%tl5114751307%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5101351829%_)
                                                  (let ((_%e5114251294%_
                                                         (gx#syntax-e
                                                          _%hd5101351829%_)))
                                                    (let ((_%tl5114451301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5114251294%_)))
                                                          (_%hd5114351298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5114251294%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5101151822%_)
                                                          (let ((_%__splice8681986820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5101151822%_ '0)))
                    (let ((_%tl5114751307%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681986820%_ '1)))
                          (_%target5114551304%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681986820%_ '0))))
                      (if (gx#stx-null? _%tl5114751307%_)
                          (_%__match8710587106%_
                           _%e5100651805%_
                           _%hd5100751809%_
                           _%tl5100851812%_
                           _%e5100951815%_
                           _%hd5101051819%_
                           _%tl5101151822%_
                           _%e5101251825%_
                           _%hd5101351829%_
                           _%tl5101451832%_
                           _%e5114251294%_
                           _%hd5114351298%_
                           _%tl5114451301%_
                           _%__splice8681986820%_
                           _%target5114551304%_
                           _%tl5114751307%_)
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_))))
                                          (if (gx#stx-pair? _%hd5101351829%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5101351829%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5101151822%_)
                                                      (let ((_%__splice8681986820%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5101151822%_
                                                              '0)))
                                                        (let ((_%tl5114751307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '1)))
                      (_%target5114551304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '0))))
                  (if (gx#stx-null? _%tl5114751307%_)
                      (_%__match8710587106%_
                       _%e5100651805%_
                       _%hd5100751809%_
                       _%tl5100851812%_
                       _%e5100951815%_
                       _%hd5101051819%_
                       _%tl5101151822%_
                       _%e5101251825%_
                       _%hd5101351829%_
                       _%tl5101451832%_
                       _%e5114251294%_
                       _%hd5114351298%_
                       _%tl5114451301%_
                       _%__splice8681986820%_
                       _%target5114551304%_
                       _%tl5114751307%_)
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                      (if (gx#stx-pair? _%hd5101351829%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5101351829%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5101151822%_)
                                                  (let ((_%__splice8681986820%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5101151822%_
                                                          '0)))
                                                    (let ((_%tl5114751307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '1)))
                                                          (_%target5114551304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5114751307%_)
                                                          (_%__match8710587106%_
                                                           _%e5100651805%_
                                                           _%hd5100751809%_
                                                           _%tl5100851812%_
                                                           _%e5100951815%_
                                                           _%hd5101051819%_
                                                           _%tl5101151822%_
                                                           _%e5101251825%_
                                                           _%hd5101351829%_
                                                           _%tl5101451832%_
                                                           _%e5114251294%_
                                                           _%hd5114351298%_
                                                           _%tl5114451301%_
                                                           _%__splice8681986820%_
                                                           _%target5114551304%_
                                                           _%tl5114751307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5096651175%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))))
                          (if (gx#stx-null? _%tl5102051852%_)
                              (if (gx#stx-pair/null? _%tl5101151822%_)
                                  (let ((_%__splice8680786808%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5101151822%_
                                          '0)))
                                    (let ((_%tl5106051707%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8680786808%_
                                              '1)))
                                          (_%target5105851704%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8680786808%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5106051707%_)
                                          (_%__match8697386974%_
                                           _%e5100651805%_
                                           _%hd5100751809%_
                                           _%tl5100851812%_
                                           _%e5100951815%_
                                           _%hd5101051819%_
                                           _%tl5101151822%_
                                           _%e5101251825%_
                                           _%hd5101351829%_
                                           _%tl5101451832%_
                                           _%e5101551835%_
                                           _%hd5101651839%_
                                           _%tl5101751842%_
                                           _%e5101851845%_
                                           _%hd5101951849%_
                                           _%tl5102051852%_
                                           _%__splice8680786808%_
                                           _%target5105851704%_
                                           _%tl5106051707%_)
                                          (if (gx#stx-pair? _%hd5101351829%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5101351829%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))))
                                  (if (gx#stx-pair? _%hd5101351829%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5101351829%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))
                              (if (gx#identifier? _%hd5101651839%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92698_|
                                       _%hd5101651839%_)
                                      (if (gx#stx-pair? _%tl5102051852%_)
                                          (let ((_%e5111451424%_
                                                 (gx#syntax-e
                                                  _%tl5102051852%_)))
                                            (let ((_%tl5111651431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5111451424%_)))
                                                  (_%hd5111551428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5111451424%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5111651431%_)
                                                  (let ((_%e5111751434%_
                                                         (gx#syntax-e
                                                          _%tl5111651431%_)))
                                                    (let ((_%tl5111951441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5111751434%_)))
                                                          (_%hd5111851438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5111751434%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5111951441%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5101151822%_)
                                                              (let ((_%__splice8681586816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5101151822%_
                              '0)))
                        (let ((_%tl5112251447%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681586816%_ '1)))
                              (_%target5112051444%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681586816%_ '0))))
                          (if (gx#stx-null? _%tl5112251447%_)
                              (_%__match8707387074%_
                               _%e5100651805%_
                               _%hd5100751809%_
                               _%tl5100851812%_
                               _%e5100951815%_
                               _%hd5101051819%_
                               _%tl5101151822%_
                               _%e5101251825%_
                               _%hd5101351829%_
                               _%tl5101451832%_
                               _%e5101551835%_
                               _%hd5101651839%_
                               _%tl5101751842%_
                               _%e5101851845%_
                               _%hd5101951849%_
                               _%tl5102051852%_
                               _%e5111451424%_
                               _%hd5111551428%_
                               _%tl5111651431%_
                               _%e5111751434%_
                               _%hd5111851438%_
                               _%tl5111951441%_
                               _%__splice8681586816%_
                               _%target5112051444%_
                               _%tl5112251447%_)
                              (if (gx#stx-pair? _%hd5101351829%_)
                                  (let ((_%e5114251294%_
                                         (gx#syntax-e _%hd5101351829%_)))
                                    (let ((_%tl5114451301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5114251294%_)))
                                          (_%hd5114351298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5114251294%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))))
                      (if (gx#stx-pair? _%hd5101351829%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5101351829%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                          (let () (declare (not safe)) (_%g5096651175%_))))
                  (if (gx#stx-pair? _%hd5101351829%_)
                      (let ((_%e5114251294%_ (gx#syntax-e _%hd5101351829%_)))
                        (let ((_%tl5114451301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5114251294%_)))
                              (_%hd5114351298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5114251294%_))))
                          (if (gx#stx-pair/null? _%tl5101151822%_)
                              (let ((_%__splice8681986820%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5101151822%_
                                      '0)))
                                (let ((_%tl5114751307%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '1)))
                                      (_%target5114551304%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5114751307%_)
                                      (_%__match8710587106%_
                                       _%e5100651805%_
                                       _%hd5100751809%_
                                       _%tl5100851812%_
                                       _%e5100951815%_
                                       _%hd5101051819%_
                                       _%tl5101151822%_
                                       _%e5101251825%_
                                       _%hd5101351829%_
                                       _%tl5101451832%_
                                       _%e5114251294%_
                                       _%hd5114351298%_
                                       _%tl5114451301%_
                                       _%__splice8681986820%_
                                       _%target5114551304%_
                                       _%tl5114751307%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5101351829%_)
                                                      (let ((_%e5114251294%_
                                                             (gx#syntax-e
                                                              _%hd5101351829%_)))
                                                        (let ((_%tl5114451301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5114251294%_)))
                      (_%hd5114351298%_
                       (let () (declare (not safe)) (##car _%e5114251294%_))))
                  (if (gx#stx-pair/null? _%tl5101151822%_)
                      (let ((_%__splice8681986820%_
                             (gx#syntax-split-splice->vector
                              _%tl5101151822%_
                              '0)))
                        (let ((_%tl5114751307%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '1)))
                              (_%target5114551304%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '0))))
                          (if (gx#stx-null? _%tl5114751307%_)
                              (_%__match8710587106%_
                               _%e5100651805%_
                               _%hd5100751809%_
                               _%tl5100851812%_
                               _%e5100951815%_
                               _%hd5101051819%_
                               _%tl5101151822%_
                               _%e5101251825%_
                               _%hd5101351829%_
                               _%tl5101451832%_
                               _%e5114251294%_
                               _%hd5114351298%_
                               _%tl5114451301%_
                               _%__splice8681986820%_
                               _%target5114551304%_
                               _%tl5114751307%_)
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5101351829%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5101351829%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5101151822%_)
                                                      (let ((_%__splice8681986820%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5101151822%_
                                                              '0)))
                                                        (let ((_%tl5114751307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '1)))
                      (_%target5114551304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '0))))
                  (if (gx#stx-null? _%tl5114751307%_)
                      (_%__match8710587106%_
                       _%e5100651805%_
                       _%hd5100751809%_
                       _%tl5100851812%_
                       _%e5100951815%_
                       _%hd5101051819%_
                       _%tl5101151822%_
                       _%e5101251825%_
                       _%hd5101351829%_
                       _%tl5101451832%_
                       _%e5114251294%_
                       _%hd5114351298%_
                       _%tl5114451301%_
                       _%__splice8681986820%_
                       _%target5114551304%_
                       _%tl5114751307%_)
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                      (if (gx#stx-pair? _%hd5101351829%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5101351829%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5101151822%_)
                                                  (let ((_%__splice8681986820%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5101151822%_
                                                          '0)))
                                                    (let ((_%tl5114751307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '1)))
                                                          (_%target5114551304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5114751307%_)
                                                          (_%__match8710587106%_
                                                           _%e5100651805%_
                                                           _%hd5100751809%_
                                                           _%tl5100851812%_
                                                           _%e5100951815%_
                                                           _%hd5101051819%_
                                                           _%tl5101151822%_
                                                           _%e5101251825%_
                                                           _%hd5101351829%_
                                                           _%tl5101451832%_
                                                           _%e5114251294%_
                                                           _%hd5114351298%_
                                                           _%tl5114451301%_
                                                           _%__splice8681986820%_
                                                           _%target5114551304%_
                                                           _%tl5114751307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5096651175%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                  (if (gx#stx-pair? _%hd5101351829%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5101351829%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5101151822%_)
                                              (let ((_%__splice8681986820%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5101151822%_
                                                      '0)))
                                                (let ((_%tl5114751307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681986820%_
                                                          '1)))
                                                      (_%target5114551304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681986820%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5114751307%_)
                                                      (_%__match8710587106%_
                                                       _%e5100651805%_
                                                       _%hd5100751809%_
                                                       _%tl5100851812%_
                                                       _%e5100951815%_
                                                       _%hd5101051819%_
                                                       _%tl5101151822%_
                                                       _%e5101251825%_
                                                       _%hd5101351829%_
                                                       _%tl5101451832%_
                                                       _%e5114251294%_
                                                       _%hd5114351298%_
                                                       _%tl5114451301%_
                                                       _%__splice8681986820%_
                                                       _%target5114551304%_
                                                       _%tl5114751307%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5096651175%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))))
                   (_%__match8687186872%_
                    (lambda (_%e5097351979%_
                             _%hd5097451983%_
                             _%tl5097551986%_
                             _%e5097651989%_
                             _%hd5097751993%_
                             _%tl5097851996%_
                             _%e5097951999%_
                             _%hd5098052003%_
                             _%tl5098152006%_
                             _%e5098252009%_
                             _%hd5098352013%_
                             _%tl5098452016%_
                             _%e5098552019%_
                             _%hd5098652023%_
                             _%tl5098752026%_
                             _%e5098852029%_
                             _%hd5098952033%_
                             _%tl5099052036%_
                             _%__splice8679986800%_
                             _%target5099152039%_
                             _%tl5099352042%_)
                      (letrec ((_%loop5099452045%_
                                (lambda (_%hd5099252049%_ _%body5099852052%_)
                                  (if (gx#stx-pair? _%hd5099252049%_)
                                      (let ((_%e5099552054%_
                                             (gx#syntax-e _%hd5099252049%_)))
                                        (let ((_%lp-tl5099752061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5099552054%_)))
                                              (_%lp-hd5099652058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5099552054%_))))
                                          (_%loop5099452045%_
                                           _%lp-tl5099752061%_
                                           (cons _%lp-hd5099652058%_
                                                 _%body5099852052%_))))
                                      (let ((_%body5099952064%_
                                             (reverse _%body5099852052%_)))
                                        (let ((_%g5096852067%_
                                               _%body5099952064%_)
                                              (_%g5096952069%_
                                               _%hd5098952033%_)
                                              (_%g5097052070%_
                                               _%hd5098652023%_)
                                              (_%g5097152071%_
                                               _%hd5098352013%_)
                                              (_%g5097252072%_
                                               _%hd5098052003%_))
                                          (if (and (gx#identifier?
                                                    _%g5097252072%_)
                                                   (gx#identifier?
                                                    _%g5097052070%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5097052070%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5097052070%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5097052070%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5097052070%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5097052070%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8679786798%_
                                               _%g5096852067%_
                                               _%g5096952069%_
                                               _%g5097052070%_
                                               _%g5097152071%_
                                               _%g5097252072%_)
                                              (_%__match8690186902%_
                                               _%e5097351979%_
                                               _%hd5097451983%_
                                               _%tl5097551986%_
                                               _%e5097651989%_
                                               _%hd5097751993%_
                                               _%tl5097851996%_
                                               _%e5097951999%_
                                               _%hd5098052003%_
                                               _%tl5098152006%_
                                               _%e5098252009%_
                                               _%hd5098352013%_
                                               _%tl5098452016%_
                                               _%e5098552019%_
                                               _%hd5098652023%_
                                               _%tl5098752026%_))))))))
                        (_%loop5099452045%_ _%target5099152039%_ '())))))
              (if (gx#stx-pair? _%__stx8679486795%_)
                  (let ((_%e5097351979%_ (gx#syntax-e _%__stx8679486795%_)))
                    (let ((_%tl5097551986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5097351979%_)))
                          (_%hd5097451983%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5097351979%_))))
                      (if (gx#stx-pair? _%tl5097551986%_)
                          (let ((_%e5097651989%_
                                 (gx#syntax-e _%tl5097551986%_)))
                            (let ((_%tl5097851996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5097651989%_)))
                                  (_%hd5097751993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5097651989%_))))
                              (if (gx#stx-pair? _%hd5097751993%_)
                                  (let ((_%e5097951999%_
                                         (gx#syntax-e _%hd5097751993%_)))
                                    (let ((_%tl5098152006%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5097951999%_)))
                                          (_%hd5098052003%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5097951999%_))))
                                      (if (gx#stx-pair? _%tl5098152006%_)
                                          (let ((_%e5098252009%_
                                                 (gx#syntax-e
                                                  _%tl5098152006%_)))
                                            (let ((_%tl5098452016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5098252009%_)))
                                                  (_%hd5098352013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5098252009%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5098452016%_)
                                                  (let ((_%e5098552019%_
                                                         (gx#syntax-e
                                                          _%tl5098452016%_)))
                                                    (let ((_%tl5098752026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5098552019%_)))
                                                          (_%hd5098652023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5098552019%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5098752026%_)
                                                          (let ((_%e5098852029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5098752026%_)))
                    (let ((_%tl5099052036%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5098852029%_)))
                          (_%hd5098952033%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5098852029%_))))
                      (if (gx#stx-null? _%tl5099052036%_)
                          (if (gx#stx-pair/null? _%tl5097851996%_)
                              (let ((_%__splice8679986800%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5097851996%_
                                      '0)))
                                (let ((_%tl5099352042%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8679986800%_
                                          '1)))
                                      (_%target5099152039%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8679986800%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5099352042%_)
                                      (_%__match8687186872%_
                                       _%e5097351979%_
                                       _%hd5097451983%_
                                       _%tl5097551986%_
                                       _%e5097651989%_
                                       _%hd5097751993%_
                                       _%tl5097851996%_
                                       _%e5097951999%_
                                       _%hd5098052003%_
                                       _%tl5098152006%_
                                       _%e5098252009%_
                                       _%hd5098352013%_
                                       _%tl5098452016%_
                                       _%e5098552019%_
                                       _%hd5098652023%_
                                       _%tl5098752026%_
                                       _%e5098852029%_
                                       _%hd5098952033%_
                                       _%tl5099052036%_
                                       _%__splice8679986800%_
                                       _%target5099152039%_
                                       _%tl5099352042%_)
                                      (if (gx#stx-pair? _%hd5098052003%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5098052003%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))))
                              (if (gx#stx-pair? _%hd5098052003%_)
                                  (let ((_%e5114251294%_
                                         (gx#syntax-e _%hd5098052003%_)))
                                    (let ((_%tl5114451301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5114251294%_)))
                                          (_%hd5114351298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5114251294%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                          (if (gx#identifier? _%hd5098652023%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g92699_|
                                   _%hd5098652023%_)
                                  (if (gx#stx-pair? _%tl5099052036%_)
                                      (let ((_%e5102451865%_
                                             (gx#syntax-e _%tl5099052036%_)))
                                        (let ((_%tl5102651872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5102451865%_)))
                                              (_%hd5102551869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5102451865%_))))
                                          (if (gx#stx-pair? _%tl5102651872%_)
                                              (let ((_%e5102751875%_
                                                     (gx#syntax-e
                                                      _%tl5102651872%_)))
                                                (let ((_%tl5102951882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5102751875%_)))
                                                      (_%hd5102851879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5102751875%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5102951882%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5097851996%_)
                                                          (let ((_%__splice8680386804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5097851996%_ '0)))
                    (let ((_%tl5103251888%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8680386804%_ '1)))
                          (_%target5103051885%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8680386804%_ '0))))
                      (if (gx#stx-null? _%tl5103251888%_)
                          (_%__match8693386934%_
                           _%e5097351979%_
                           _%hd5097451983%_
                           _%tl5097551986%_
                           _%e5097651989%_
                           _%hd5097751993%_
                           _%tl5097851996%_
                           _%e5097951999%_
                           _%hd5098052003%_
                           _%tl5098152006%_
                           _%e5098252009%_
                           _%hd5098352013%_
                           _%tl5098452016%_
                           _%e5098552019%_
                           _%hd5098652023%_
                           _%tl5098752026%_
                           _%e5098852029%_
                           _%hd5098952033%_
                           _%tl5099052036%_
                           _%e5102451865%_
                           _%hd5102551869%_
                           _%tl5102651872%_
                           _%e5102751875%_
                           _%hd5102851879%_
                           _%tl5102951882%_
                           _%__splice8680386804%_
                           _%target5103051885%_
                           _%tl5103251888%_)
                          (if (gx#stx-pair? _%hd5098052003%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5098052003%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_))))))
                  (if (gx#stx-pair? _%hd5098052003%_)
                      (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                        (let ((_%tl5114451301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5114251294%_)))
                              (_%hd5114351298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5114251294%_))))
                          (let () (declare (not safe)) (_%g5096651175%_))))
                      (let () (declare (not safe)) (_%g5096651175%_))))
              (if (gx#stx-pair? _%hd5098052003%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (if (gx#stx-pair/null? _%tl5097851996%_)
                          (let ((_%__splice8681986820%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097851996%_
                                  '0)))
                            (let ((_%tl5114751307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681986820%_ '1)))
                                  (_%target5114551304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681986820%_
                                      '0))))
                              (if (gx#stx-null? _%tl5114751307%_)
                                  (_%__match8710587106%_
                                   _%e5097351979%_
                                   _%hd5097451983%_
                                   _%tl5097551986%_
                                   _%e5097651989%_
                                   _%hd5097751993%_
                                   _%tl5097851996%_
                                   _%e5097951999%_
                                   _%hd5098052003%_
                                   _%tl5098152006%_
                                   _%e5114251294%_
                                   _%hd5114351298%_
                                   _%tl5114451301%_
                                   _%__splice8681986820%_
                                   _%target5114551304%_
                                   _%tl5114751307%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5098352013%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g92698_|
                                                       _%hd5098352013%_)
                                                      (if (gx#stx-null?
                                                           _%tl5102651872%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5097851996%_)
                                                              (let ((_%__splice8681586816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5097851996%_
                              '0)))
                        (let ((_%tl5112251447%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681586816%_ '1)))
                              (_%target5112051444%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681586816%_ '0))))
                          (if (gx#stx-null? _%tl5112251447%_)
                              (_%__match8707387074%_
                               _%e5097351979%_
                               _%hd5097451983%_
                               _%tl5097551986%_
                               _%e5097651989%_
                               _%hd5097751993%_
                               _%tl5097851996%_
                               _%e5097951999%_
                               _%hd5098052003%_
                               _%tl5098152006%_
                               _%e5098252009%_
                               _%hd5098352013%_
                               _%tl5098452016%_
                               _%e5098552019%_
                               _%hd5098652023%_
                               _%tl5098752026%_
                               _%e5098852029%_
                               _%hd5098952033%_
                               _%tl5099052036%_
                               _%e5102451865%_
                               _%hd5102551869%_
                               _%tl5102651872%_
                               _%__splice8681586816%_
                               _%target5112051444%_
                               _%tl5112251447%_)
                              (if (gx#stx-pair? _%hd5098052003%_)
                                  (let ((_%e5114251294%_
                                         (gx#syntax-e _%hd5098052003%_)))
                                    (let ((_%tl5114451301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5114251294%_)))
                                          (_%hd5114351298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5114251294%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))))
                      (if (gx#stx-pair? _%hd5098052003%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5098052003%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                          (let () (declare (not safe)) (_%g5096651175%_))))
                  (if (gx#stx-pair? _%hd5098052003%_)
                      (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                        (let ((_%tl5114451301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5114251294%_)))
                              (_%hd5114351298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5114251294%_))))
                          (if (gx#stx-pair/null? _%tl5097851996%_)
                              (let ((_%__splice8681986820%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5097851996%_
                                      '0)))
                                (let ((_%tl5114751307%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '1)))
                                      (_%target5114551304%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8681986820%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5114751307%_)
                                      (_%__match8710587106%_
                                       _%e5097351979%_
                                       _%hd5097451983%_
                                       _%tl5097551986%_
                                       _%e5097651989%_
                                       _%hd5097751993%_
                                       _%tl5097851996%_
                                       _%e5097951999%_
                                       _%hd5098052003%_
                                       _%tl5098152006%_
                                       _%e5114251294%_
                                       _%hd5114351298%_
                                       _%tl5114451301%_
                                       _%__splice8681986820%_
                                       _%target5114551304%_
                                       _%tl5114751307%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_))))
              (if (gx#stx-pair? _%hd5098052003%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (if (gx#stx-pair/null? _%tl5097851996%_)
                          (let ((_%__splice8681986820%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097851996%_
                                  '0)))
                            (let ((_%tl5114751307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681986820%_ '1)))
                                  (_%target5114551304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681986820%_
                                      '0))))
                              (if (gx#stx-null? _%tl5114751307%_)
                                  (_%__match8710587106%_
                                   _%e5097351979%_
                                   _%hd5097451983%_
                                   _%tl5097551986%_
                                   _%e5097651989%_
                                   _%hd5097751993%_
                                   _%tl5097851996%_
                                   _%e5097951999%_
                                   _%hd5098052003%_
                                   _%tl5098152006%_
                                   _%e5114251294%_
                                   _%hd5114351298%_
                                   _%tl5114451301%_
                                   _%__splice8681986820%_
                                   _%target5114551304%_
                                   _%tl5114751307%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5098052003%_)
                                                      (let ((_%e5114251294%_
                                                             (gx#syntax-e
                                                              _%hd5098052003%_)))
                                                        (let ((_%tl5114451301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5114251294%_)))
                      (_%hd5114351298%_
                       (let () (declare (not safe)) (##car _%e5114251294%_))))
                  (if (gx#stx-pair/null? _%tl5097851996%_)
                      (let ((_%__splice8681986820%_
                             (gx#syntax-split-splice->vector
                              _%tl5097851996%_
                              '0)))
                        (let ((_%tl5114751307%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '1)))
                              (_%target5114551304%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '0))))
                          (if (gx#stx-null? _%tl5114751307%_)
                              (_%__match8710587106%_
                               _%e5097351979%_
                               _%hd5097451983%_
                               _%tl5097551986%_
                               _%e5097651989%_
                               _%hd5097751993%_
                               _%tl5097851996%_
                               _%e5097951999%_
                               _%hd5098052003%_
                               _%tl5098152006%_
                               _%e5114251294%_
                               _%hd5114351298%_
                               _%tl5114451301%_
                               _%__splice8681986820%_
                               _%target5114551304%_
                               _%tl5114751307%_)
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5098052003%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5098052003%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5097851996%_)
                                                  (let ((_%__splice8681986820%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5097851996%_
                                                          '0)))
                                                    (let ((_%tl5114751307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '1)))
                                                          (_%target5114551304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5114751307%_)
                                                          (_%__match8710587106%_
                                                           _%e5097351979%_
                                                           _%hd5097451983%_
                                                           _%tl5097551986%_
                                                           _%e5097651989%_
                                                           _%hd5097751993%_
                                                           _%tl5097851996%_
                                                           _%e5097951999%_
                                                           _%hd5098052003%_
                                                           _%tl5098152006%_
                                                           _%e5114251294%_
                                                           _%hd5114351298%_
                                                           _%tl5114451301%_
                                                           _%__splice8681986820%_
                                                           _%target5114551304%_
                                                           _%tl5114751307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5096651175%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                  (if (gx#identifier? _%hd5098352013%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92698_|
                                           _%hd5098352013%_)
                                          (if (gx#stx-pair? _%tl5099052036%_)
                                              (let ((_%e5111751434%_
                                                     (gx#syntax-e
                                                      _%tl5099052036%_)))
                                                (let ((_%tl5111951441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5111751434%_)))
                                                      (_%hd5111851438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5111751434%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5111951441%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5097851996%_)
                                                          (let ((_%__splice8681586816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5097851996%_ '0)))
                    (let ((_%tl5112251447%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681586816%_ '1)))
                          (_%target5112051444%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681586816%_ '0))))
                      (if (gx#stx-null? _%tl5112251447%_)
                          (_%__match8707387074%_
                           _%e5097351979%_
                           _%hd5097451983%_
                           _%tl5097551986%_
                           _%e5097651989%_
                           _%hd5097751993%_
                           _%tl5097851996%_
                           _%e5097951999%_
                           _%hd5098052003%_
                           _%tl5098152006%_
                           _%e5098252009%_
                           _%hd5098352013%_
                           _%tl5098452016%_
                           _%e5098552019%_
                           _%hd5098652023%_
                           _%tl5098752026%_
                           _%e5098852029%_
                           _%hd5098952033%_
                           _%tl5099052036%_
                           _%e5111751434%_
                           _%hd5111851438%_
                           _%tl5111951441%_
                           _%__splice8681586816%_
                           _%target5112051444%_
                           _%tl5112251447%_)
                          (if (gx#stx-pair? _%hd5098052003%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5098052003%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_))))))
                  (if (gx#stx-pair? _%hd5098052003%_)
                      (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                        (let ((_%tl5114451301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5114251294%_)))
                              (_%hd5114351298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5114251294%_))))
                          (let () (declare (not safe)) (_%g5096651175%_))))
                      (let () (declare (not safe)) (_%g5096651175%_))))
              (if (gx#stx-pair? _%hd5098052003%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (if (gx#stx-pair/null? _%tl5097851996%_)
                          (let ((_%__splice8681986820%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097851996%_
                                  '0)))
                            (let ((_%tl5114751307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8681986820%_ '1)))
                                  (_%target5114551304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8681986820%_
                                      '0))))
                              (if (gx#stx-null? _%tl5114751307%_)
                                  (_%__match8710587106%_
                                   _%e5097351979%_
                                   _%hd5097451983%_
                                   _%tl5097551986%_
                                   _%e5097651989%_
                                   _%hd5097751993%_
                                   _%tl5097851996%_
                                   _%e5097951999%_
                                   _%hd5098052003%_
                                   _%tl5098152006%_
                                   _%e5114251294%_
                                   _%hd5114351298%_
                                   _%tl5114451301%_
                                   _%__splice8681986820%_
                                   _%target5114551304%_
                                   _%tl5114751307%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5098052003%_)
                                                  (let ((_%e5114251294%_
                                                         (gx#syntax-e
                                                          _%hd5098052003%_)))
                                                    (let ((_%tl5114451301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5114251294%_)))
                                                          (_%hd5114351298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5114251294%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5097851996%_)
                                                          (let ((_%__splice8681986820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5097851996%_ '0)))
                    (let ((_%tl5114751307%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681986820%_ '1)))
                          (_%target5114551304%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8681986820%_ '0))))
                      (if (gx#stx-null? _%tl5114751307%_)
                          (_%__match8710587106%_
                           _%e5097351979%_
                           _%hd5097451983%_
                           _%tl5097551986%_
                           _%e5097651989%_
                           _%hd5097751993%_
                           _%tl5097851996%_
                           _%e5097951999%_
                           _%hd5098052003%_
                           _%tl5098152006%_
                           _%e5114251294%_
                           _%hd5114351298%_
                           _%tl5114451301%_
                           _%__splice8681986820%_
                           _%target5114551304%_
                           _%tl5114751307%_)
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_))))
                                          (if (gx#stx-pair? _%hd5098052003%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5098052003%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097851996%_)
                                                      (let ((_%__splice8681986820%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097851996%_
                                                              '0)))
                                                        (let ((_%tl5114751307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '1)))
                      (_%target5114551304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '0))))
                  (if (gx#stx-null? _%tl5114751307%_)
                      (_%__match8710587106%_
                       _%e5097351979%_
                       _%hd5097451983%_
                       _%tl5097551986%_
                       _%e5097651989%_
                       _%hd5097751993%_
                       _%tl5097851996%_
                       _%e5097951999%_
                       _%hd5098052003%_
                       _%tl5098152006%_
                       _%e5114251294%_
                       _%hd5114351298%_
                       _%tl5114451301%_
                       _%__splice8681986820%_
                       _%target5114551304%_
                       _%tl5114751307%_)
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                      (if (gx#stx-pair? _%hd5098052003%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5098052003%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5097851996%_)
                                                  (let ((_%__splice8681986820%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5097851996%_
                                                          '0)))
                                                    (let ((_%tl5114751307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '1)))
                                                          (_%target5114551304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5114751307%_)
                                                          (_%__match8710587106%_
                                                           _%e5097351979%_
                                                           _%hd5097451983%_
                                                           _%tl5097551986%_
                                                           _%e5097651989%_
                                                           _%hd5097751993%_
                                                           _%tl5097851996%_
                                                           _%e5097951999%_
                                                           _%hd5098052003%_
                                                           _%tl5098152006%_
                                                           _%e5114251294%_
                                                           _%hd5114351298%_
                                                           _%tl5114451301%_
                                                           _%__splice8681986820%_
                                                           _%target5114551304%_
                                                           _%tl5114751307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5096651175%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                              (if (gx#identifier? _%hd5098352013%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92698_|
                                       _%hd5098352013%_)
                                      (if (gx#stx-pair? _%tl5099052036%_)
                                          (let ((_%e5111751434%_
                                                 (gx#syntax-e
                                                  _%tl5099052036%_)))
                                            (let ((_%tl5111951441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5111751434%_)))
                                                  (_%hd5111851438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5111751434%_))))
                                              (if (gx#stx-null?
                                                   _%tl5111951441%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097851996%_)
                                                      (let ((_%__splice8681586816%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097851996%_
                                                              '0)))
                                                        (let ((_%tl5112251447%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681586816%_ '1)))
                      (_%target5112051444%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681586816%_ '0))))
                  (if (gx#stx-null? _%tl5112251447%_)
                      (_%__match8707387074%_
                       _%e5097351979%_
                       _%hd5097451983%_
                       _%tl5097551986%_
                       _%e5097651989%_
                       _%hd5097751993%_
                       _%tl5097851996%_
                       _%e5097951999%_
                       _%hd5098052003%_
                       _%tl5098152006%_
                       _%e5098252009%_
                       _%hd5098352013%_
                       _%tl5098452016%_
                       _%e5098552019%_
                       _%hd5098652023%_
                       _%tl5098752026%_
                       _%e5098852029%_
                       _%hd5098952033%_
                       _%tl5099052036%_
                       _%e5111751434%_
                       _%hd5111851438%_
                       _%tl5111951441%_
                       _%__splice8681586816%_
                       _%target5112051444%_
                       _%tl5112251447%_)
                      (if (gx#stx-pair? _%hd5098052003%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5098052003%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                          (let () (declare (not safe)) (_%g5096651175%_))))))
              (if (gx#stx-pair? _%hd5098052003%_)
                  (let ((_%e5114251294%_ (gx#syntax-e _%hd5098052003%_)))
                    (let ((_%tl5114451301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5114251294%_)))
                          (_%hd5114351298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5114251294%_))))
                      (let () (declare (not safe)) (_%g5096651175%_))))
                  (let () (declare (not safe)) (_%g5096651175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5098052003%_)
                                                      (let ((_%e5114251294%_
                                                             (gx#syntax-e
                                                              _%hd5098052003%_)))
                                                        (let ((_%tl5114451301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5114251294%_)))
                      (_%hd5114351298%_
                       (let () (declare (not safe)) (##car _%e5114251294%_))))
                  (if (gx#stx-pair/null? _%tl5097851996%_)
                      (let ((_%__splice8681986820%_
                             (gx#syntax-split-splice->vector
                              _%tl5097851996%_
                              '0)))
                        (let ((_%tl5114751307%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '1)))
                              (_%target5114551304%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '0))))
                          (if (gx#stx-null? _%tl5114751307%_)
                              (_%__match8710587106%_
                               _%e5097351979%_
                               _%hd5097451983%_
                               _%tl5097551986%_
                               _%e5097651989%_
                               _%hd5097751993%_
                               _%tl5097851996%_
                               _%e5097951999%_
                               _%hd5098052003%_
                               _%tl5098152006%_
                               _%e5114251294%_
                               _%hd5114351298%_
                               _%tl5114451301%_
                               _%__splice8681986820%_
                               _%target5114551304%_
                               _%tl5114751307%_)
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5098052003%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5098052003%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097851996%_)
                                                      (let ((_%__splice8681986820%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097851996%_
                                                              '0)))
                                                        (let ((_%tl5114751307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '1)))
                      (_%target5114551304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '0))))
                  (if (gx#stx-null? _%tl5114751307%_)
                      (_%__match8710587106%_
                       _%e5097351979%_
                       _%hd5097451983%_
                       _%tl5097551986%_
                       _%e5097651989%_
                       _%hd5097751993%_
                       _%tl5097851996%_
                       _%e5097951999%_
                       _%hd5098052003%_
                       _%tl5098152006%_
                       _%e5114251294%_
                       _%hd5114351298%_
                       _%tl5114451301%_
                       _%__splice8681986820%_
                       _%target5114551304%_
                       _%tl5114751307%_)
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))
                                      (if (gx#stx-pair? _%hd5098052003%_)
                                          (let ((_%e5114251294%_
                                                 (gx#syntax-e
                                                  _%hd5098052003%_)))
                                            (let ((_%tl5114451301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5114251294%_)))
                                                  (_%hd5114351298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5114251294%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5097851996%_)
                                                  (let ((_%__splice8681986820%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5097851996%_
                                                          '0)))
                                                    (let ((_%tl5114751307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '1)))
                                                          (_%target5114551304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8681986820%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5114751307%_)
                                                          (_%__match8710587106%_
                                                           _%e5097351979%_
                                                           _%hd5097451983%_
                                                           _%tl5097551986%_
                                                           _%e5097651989%_
                                                           _%hd5097751993%_
                                                           _%tl5097851996%_
                                                           _%e5097951999%_
                                                           _%hd5098052003%_
                                                           _%tl5098152006%_
                                                           _%e5114251294%_
                                                           _%hd5114351298%_
                                                           _%tl5114451301%_
                                                           _%__splice8681986820%_
                                                           _%target5114551304%_
                                                           _%tl5114751307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5096651175%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                  (if (gx#stx-pair? _%hd5098052003%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5098052003%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5097851996%_)
                                              (let ((_%__splice8681986820%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5097851996%_
                                                      '0)))
                                                (let ((_%tl5114751307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681986820%_
                                                          '1)))
                                                      (_%target5114551304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8681986820%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5114751307%_)
                                                      (_%__match8710587106%_
                                                       _%e5097351979%_
                                                       _%hd5097451983%_
                                                       _%tl5097551986%_
                                                       _%e5097651989%_
                                                       _%hd5097751993%_
                                                       _%tl5097851996%_
                                                       _%e5097951999%_
                                                       _%hd5098052003%_
                                                       _%tl5098152006%_
                                                       _%e5114251294%_
                                                       _%hd5114351298%_
                                                       _%tl5114451301%_
                                                       _%__splice8681986820%_
                                                       _%target5114551304%_
                                                       _%tl5114751307%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5096651175%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))))
                  (if (gx#stx-null? _%tl5098752026%_)
                      (if (gx#stx-pair/null? _%tl5097851996%_)
                          (let ((_%__splice8680786808%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5097851996%_
                                  '0)))
                            (let ((_%tl5106051707%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8680786808%_ '1)))
                                  (_%target5105851704%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8680786808%_
                                      '0))))
                              (if (gx#stx-null? _%tl5106051707%_)
                                  (_%__match8697386974%_
                                   _%e5097351979%_
                                   _%hd5097451983%_
                                   _%tl5097551986%_
                                   _%e5097651989%_
                                   _%hd5097751993%_
                                   _%tl5097851996%_
                                   _%e5097951999%_
                                   _%hd5098052003%_
                                   _%tl5098152006%_
                                   _%e5098252009%_
                                   _%hd5098352013%_
                                   _%tl5098452016%_
                                   _%e5098552019%_
                                   _%hd5098652023%_
                                   _%tl5098752026%_
                                   _%__splice8680786808%_
                                   _%target5105851704%_
                                   _%tl5106051707%_)
                                  (if (gx#stx-pair? _%hd5098052003%_)
                                      (let ((_%e5114251294%_
                                             (gx#syntax-e _%hd5098052003%_)))
                                        (let ((_%tl5114451301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5114251294%_)))
                                              (_%hd5114351298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5114251294%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))
                          (if (gx#stx-pair? _%hd5098052003%_)
                              (let ((_%e5114251294%_
                                     (gx#syntax-e _%hd5098052003%_)))
                                (let ((_%tl5114451301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5114251294%_)))
                                      (_%hd5114351298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5114251294%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_))))
                              (let () (declare (not safe)) (_%g5096651175%_))))
                      (if (gx#stx-pair? _%hd5098052003%_)
                          (let ((_%e5114251294%_
                                 (gx#syntax-e _%hd5098052003%_)))
                            (let ((_%tl5114451301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5114251294%_)))
                                  (_%hd5114351298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5114251294%_))))
                              (if (gx#stx-pair/null? _%tl5097851996%_)
                                  (let ((_%__splice8681986820%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5097851996%_
                                          '0)))
                                    (let ((_%tl5114751307%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '1)))
                                          (_%target5114551304%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8681986820%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5114751307%_)
                                          (_%__match8710587106%_
                                           _%e5097351979%_
                                           _%hd5097451983%_
                                           _%tl5097551986%_
                                           _%e5097651989%_
                                           _%hd5097751993%_
                                           _%tl5097851996%_
                                           _%e5097951999%_
                                           _%hd5098052003%_
                                           _%tl5098152006%_
                                           _%e5114251294%_
                                           _%hd5114351298%_
                                           _%tl5114451301%_
                                           _%__splice8681986820%_
                                           _%target5114551304%_
                                           _%tl5114751307%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5096651175%_)))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5098052003%_)
                                                      (let ((_%e5114251294%_
                                                             (gx#syntax-e
                                                              _%hd5098052003%_)))
                                                        (let ((_%tl5114451301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5114251294%_)))
                      (_%hd5114351298%_
                       (let () (declare (not safe)) (##car _%e5114251294%_))))
                  (if (gx#stx-pair/null? _%tl5097851996%_)
                      (let ((_%__splice8681986820%_
                             (gx#syntax-split-splice->vector
                              _%tl5097851996%_
                              '0)))
                        (let ((_%tl5114751307%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '1)))
                              (_%target5114551304%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8681986820%_ '0))))
                          (if (gx#stx-null? _%tl5114751307%_)
                              (_%__match8710587106%_
                               _%e5097351979%_
                               _%hd5097451983%_
                               _%tl5097551986%_
                               _%e5097651989%_
                               _%hd5097751993%_
                               _%tl5097851996%_
                               _%e5097951999%_
                               _%hd5098052003%_
                               _%tl5098152006%_
                               _%e5114251294%_
                               _%hd5114351298%_
                               _%tl5114451301%_
                               _%__splice8681986820%_
                               _%target5114551304%_
                               _%tl5114751307%_)
                              (let ()
                                (declare (not safe))
                                (_%g5096651175%_)))))
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5098052003%_)
                                              (let ((_%e5114251294%_
                                                     (gx#syntax-e
                                                      _%hd5098052003%_)))
                                                (let ((_%tl5114451301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5114251294%_)))
                                                      (_%hd5114351298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5114251294%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5097851996%_)
                                                      (let ((_%__splice8681986820%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5097851996%_
                                                              '0)))
                                                        (let ((_%tl5114751307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '1)))
                      (_%target5114551304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8681986820%_ '0))))
                  (if (gx#stx-null? _%tl5114751307%_)
                      (_%__match8710587106%_
                       _%e5097351979%_
                       _%hd5097451983%_
                       _%tl5097551986%_
                       _%e5097651989%_
                       _%hd5097751993%_
                       _%tl5097851996%_
                       _%e5097951999%_
                       _%hd5098052003%_
                       _%tl5098152006%_
                       _%e5114251294%_
                       _%hd5114351298%_
                       _%tl5114451301%_
                       _%__splice8681986820%_
                       _%target5114551304%_
                       _%tl5114751307%_)
                      (let () (declare (not safe)) (_%g5096651175%_)))))
              (let () (declare (not safe)) (_%g5096651175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5096651175%_))))))
                                  (if (gx#stx-null? _%hd5097751993%_)
                                      (if (gx#stx-pair/null? _%tl5097851996%_)
                                          (let ((_%__splice8682386824%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5097851996%_
                                                  '0)))
                                            (let ((_%tl5116351205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8682386824%_
                                                      '1)))
                                                  (_%target5116151202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8682386824%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5116351205%_)
                                                  (_%__match8712787128%_
                                                   _%e5097351979%_
                                                   _%hd5097451983%_
                                                   _%tl5097551986%_
                                                   _%e5097651989%_
                                                   _%hd5097751993%_
                                                   _%tl5097851996%_
                                                   _%__splice8682386824%_
                                                   _%target5116151202%_
                                                   _%tl5116351205%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5096651175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5096651175%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5096651175%_))))))
                          (let () (declare (not safe)) (_%g5096651175%_)))))
                  (let () (declare (not safe)) (_%g5096651175%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52135%_)
        (let* ((_%g5213952173%_
                (lambda (_%g5214052169%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5214052169%_)))
               (_%g5213852294%_
                (lambda (_%g5214052177%_)
                  (if (gx#stx-pair? _%g5214052177%_)
                      (let ((_%e5214452180%_ (gx#syntax-e _%g5214052177%_)))
                        (let ((_%hd5214552184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5214452180%_)))
                              (_%tl5214652187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5214452180%_))))
                          (if (gx#stx-pair? _%tl5214652187%_)
                              (let ((_%e5214752190%_
                                     (gx#syntax-e _%tl5214652187%_)))
                                (let ((_%hd5214852194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5214752190%_)))
                                      (_%tl5214952197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5214752190%_))))
                                  (if (gx#stx-pair? _%hd5214852194%_)
                                      (let ((_%e5215052200%_
                                             (gx#syntax-e _%hd5214852194%_)))
                                        (let ((_%hd5215152204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5215052200%_)))
                                              (_%tl5215252207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5215052200%_))))
                                          (if (gx#stx-pair? _%tl5215252207%_)
                                              (let ((_%e5215352210%_
                                                     (gx#syntax-e
                                                      _%tl5215252207%_)))
                                                (let ((_%hd5215452214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5215352210%_)))
                                                      (_%tl5215552217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5215352210%_))))
                                                  (if (gx#identifier?
                                                       _%hd5215452214%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92700_|
                                                           _%hd5215452214%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5215552217%_)
                                                              (let ((_%e5215652220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5215552217%_)))
                        (let ((_%hd5215752224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5215652220%_)))
                              (_%tl5215852227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5215652220%_))))
                          (if (gx#stx-null? _%tl5215852227%_)
                              (if (gx#stx-pair/null? _%tl5214952197%_)
                                  (let ((_g92701_
                                         (gx#syntax-split-splice
                                          _%tl5214952197%_
                                          '0)))
                                    (begin
                                      (let ((_g92702_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g92701_)
                                                   (##values-length _g92701_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g92702_ 2)))
                                            (error "Context expects 2 values"
                                                   _g92702_)))
                                      (let ((_%target5215952230%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92701_ 0)))
                                            (_%tl5216152233%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92701_ 1))))
                                        (if (gx#stx-null? _%tl5216152233%_)
                                            (letrec ((_%loop5216252236%_
                                                      (lambda (_%hd5216052240%_
                                                               _%body5216652243%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5216052240%_)
                                                            (let ((_%e5216352245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5216052240%_)))
                      (let ((_%lp-hd5216452249%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5216352245%_)))
                            (_%lp-tl5216552252%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5216352245%_))))
                        (_%loop5216252236%_
                         _%lp-tl5216552252%_
                         (cons _%lp-hd5216452249%_ _%body5216652243%_))))
                    (let ((_%body5216752255%_ (reverse _%body5216652243%_)))
                      ((lambda (_%g5214152258%_
                                _%g5214252260%_
                                _%g5214352261%_)
                         (if (gx#identifier? _%g5214352261%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5214252260%_
                                               (cons _%g5214352261%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5228552288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5228652291%_)
                            (cons _%g5228552288%_ _%g5228652291%_))
                          '()
                          _%g5214152258%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5214352261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5214252260%_ (cons _%g5214352261%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5213952173%_ _%g5214052177%_)))
                       _%body5216752255%_
                       _%hd5215752224%_
                       _%hd5215152204%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5216252236%_
                                               _%target5215952230%_
                                               '()))
                                            (_%g5213952173%_
                                             _%g5214052177%_)))))
                                  (_%g5213952173%_ _%g5214052177%_))
                              (_%g5213952173%_ _%g5214052177%_))))
                      (_%g5213952173%_ _%g5214052177%_))
                  (_%g5213952173%_ _%g5214052177%_))
              (_%g5213952173%_ _%g5214052177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5213952173%_
                                               _%g5214052177%_))))
                                      (_%g5213952173%_ _%g5214052177%_))))
                              (_%g5213952173%_ _%g5214052177%_))))
                      (_%g5213952173%_ _%g5214052177%_)))))
          (_%g5213852294%_ _%$stx52135%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass52858%_ _%slot52860%_)
        (let ((_%$e52862%_
               (let ((__obj92513 _%klass52858%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92513
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92513 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92513
                      'slot-types)))))
          (if _%$e52862%_
              ((lambda (_%slot-types52866%_)
                 (agetq _%slot52860%_ _%slot-types52866%_))
               _%$e52862%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass52839%_ _%slot52841%_)
        (let ((_%$e52843%_
               (let ((__obj92514 _%klass52839%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92514
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92514 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92514
                      'slot-defaults)))))
          (if _%$e52843%_
              ((lambda (_%slot-defaults52847%_)
                 (let ((_%$e52850%_
                        (agetq _%slot52841%_ _%slot-defaults52847%_)))
                   (if _%$e52850%_
                       (gx#syntax-local-introduce _%$e52850%_)
                       '#f)))
               _%$e52843%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass52820%_ _%slot52822%_)
        (let ((_%$e52824%_
               (let ((__obj92515 _%klass52820%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92515
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92515 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92515
                      'slot-defaults)))))
          (if _%$e52824%_
              ((lambda (_%slot-defaults52828%_)
                 (let ((_%$e52831%_
                        (agetq _%slot52822%_ _%slot-defaults52828%_)))
                   (if _%$e52831%_
                       (gx#syntax-local-introduce _%$e52831%_)
                       '#f)))
               _%$e52824%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52589%_ _%slot52591%_)
        (let ((_%contract5259252594%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52589%_
                _%slot52591%_)))
          (if _%contract5259252594%_
              (let* ((_%contract52597%_ _%contract5259252594%_)
                     (_%__stx8713087131%_ _%contract52597%_)
                     (_%g5260252639%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8713087131%_))))
                (let ((_%__kont8713387134%_
                       (lambda (_%g5260452789%_ _%g5260552791%_)
                         (not (gx#free-identifier=?
                               _%g5260552791%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8713587136%_
                       (lambda (_%g5261252729%_
                                _%g5261352731%_
                                _%g5261452732%_)
                         (not (gx#free-identifier=?
                               _%g5261352731%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8713787138%_ (lambda (_%g5262752666%_) '#f)))
                  (let* ((_%__match8718387184%_
                          (lambda (_%e5261552689%_
                                   _%hd5261652693%_
                                   _%tl5261752696%_
                                   _%e5261852699%_
                                   _%hd5261952703%_
                                   _%tl5262052706%_
                                   _%e5262152709%_
                                   _%hd5262252713%_
                                   _%tl5262352716%_
                                   _%e5262452719%_
                                   _%hd5262552723%_
                                   _%tl5262652726%_)
                            (let ((_%g5261252729%_ _%hd5262552723%_)
                                  (_%g5261352731%_ _%hd5262252713%_)
                                  (_%g5261452732%_ _%hd5261952703%_))
                              (if (and (gx#identifier? _%g5261352731%_)
                                       (or (gx#free-identifier=?
                                            _%g5261352731%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5261352731%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5261352731%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5261352731%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8713587136%_
                                   _%g5261252729%_
                                   _%g5261352731%_
                                   _%g5261452732%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5260252639%_))))))
                         (_%__match8715387154%_
                          (lambda (_%e5260652769%_
                                   _%hd5260752773%_
                                   _%tl5260852776%_
                                   _%e5260952779%_
                                   _%hd5261052783%_
                                   _%tl5261152786%_)
                            (let ((_%g5260452789%_ _%hd5261052783%_)
                                  (_%g5260552791%_ _%hd5260752773%_))
                              (if (and (gx#identifier? _%g5260552791%_)
                                       (or (gx#free-identifier=?
                                            _%g5260552791%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5260552791%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5260552791%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5260552791%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8713387134%_
                                   _%g5260452789%_
                                   _%g5260552791%_)
                                  (if (gx#identifier? _%hd5260752773%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92703_|
                                           _%hd5260752773%_)
                                          (_%__kont8713787138%_
                                           _%hd5261052783%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5260252639%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5260252639%_))))))))
                    (if (gx#stx-pair? _%__stx8713087131%_)
                        (let ((_%e5260652769%_
                               (gx#syntax-e _%__stx8713087131%_)))
                          (let ((_%tl5260852776%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5260652769%_)))
                                (_%hd5260752773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5260652769%_))))
                            (if (gx#stx-pair? _%tl5260852776%_)
                                (let ((_%e5260952779%_
                                       (gx#syntax-e _%tl5260852776%_)))
                                  (let ((_%tl5261152786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5260952779%_)))
                                        (_%hd5261052783%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5260952779%_))))
                                    (if (gx#stx-null? _%tl5261152786%_)
                                        (_%__match8715387154%_
                                         _%e5260652769%_
                                         _%hd5260752773%_
                                         _%tl5260852776%_
                                         _%e5260952779%_
                                         _%hd5261052783%_
                                         _%tl5261152786%_)
                                        (if (gx#identifier? _%hd5260752773%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92703_|
                                                 _%hd5260752773%_)
                                                (if (gx#stx-pair?
                                                     _%tl5261152786%_)
                                                    (let ((_%e5262152709%_
                                                           (gx#syntax-e
                                                            _%tl5261152786%_)))
                                                      (let ((_%tl5262352716%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5262152709%_)))
                    (_%hd5262252713%_
                     (let () (declare (not safe)) (##car _%e5262152709%_))))
                (if (gx#stx-pair? _%tl5262352716%_)
                    (let ((_%e5262452719%_ (gx#syntax-e _%tl5262352716%_)))
                      (let ((_%tl5262652726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5262452719%_)))
                            (_%hd5262552723%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5262452719%_))))
                        (if (gx#stx-null? _%tl5262652726%_)
                            (_%__match8718387184%_
                             _%e5260652769%_
                             _%hd5260752773%_
                             _%tl5260852776%_
                             _%e5260952779%_
                             _%hd5261052783%_
                             _%tl5261152786%_
                             _%e5262152709%_
                             _%hd5262252713%_
                             _%tl5262352716%_
                             _%e5262452719%_
                             _%hd5262552723%_
                             _%tl5262652726%_)
                            (let () (declare (not safe)) (_%g5260252639%_)))))
                    (let () (declare (not safe)) (_%g5260252639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5260252639%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5260252639%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5260252639%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5260252639%_)))))
                        (let () (declare (not safe)) (_%g5260252639%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52358%_ _%slot52360%_)
        (let ((_%contract5236152363%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52358%_
                _%slot52360%_)))
          (if _%contract5236152363%_
              (let* ((_%contract52366%_ _%contract5236152363%_)
                     (_%__stx8720487205%_ _%contract52366%_)
                     (_%g5237152408%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8720487205%_))))
                (let ((_%__kont8720787208%_
                       (lambda (_%g5237352558%_ _%g5237452560%_)
                         (not (gx#free-identifier=?
                               _%g5237452560%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8720987210%_
                       (lambda (_%g5238152498%_
                                _%g5238252500%_
                                _%g5238352501%_)
                         '#t))
                      (_%__kont8721187212%_ (lambda (_%g5239652435%_) '#t)))
                  (let* ((_%__match8725787258%_
                          (lambda (_%e5238452458%_
                                   _%hd5238552462%_
                                   _%tl5238652465%_
                                   _%e5238752468%_
                                   _%hd5238852472%_
                                   _%tl5238952475%_
                                   _%e5239052478%_
                                   _%hd5239152482%_
                                   _%tl5239252485%_
                                   _%e5239352488%_
                                   _%hd5239452492%_
                                   _%tl5239552495%_)
                            (let ((_%g5238152498%_ _%hd5239452492%_)
                                  (_%g5238252500%_ _%hd5239152482%_)
                                  (_%g5238352501%_ _%hd5238852472%_))
                              (if (and (gx#identifier? _%g5238252500%_)
                                       (or (gx#free-identifier=?
                                            _%g5238252500%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5238252500%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5238252500%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5238252500%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8720987210%_
                                   _%g5238152498%_
                                   _%g5238252500%_
                                   _%g5238352501%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5237152408%_))))))
                         (_%__match8722787228%_
                          (lambda (_%e5237552538%_
                                   _%hd5237652542%_
                                   _%tl5237752545%_
                                   _%e5237852548%_
                                   _%hd5237952552%_
                                   _%tl5238052555%_)
                            (let ((_%g5237352558%_ _%hd5237952552%_)
                                  (_%g5237452560%_ _%hd5237652542%_))
                              (if (and (gx#identifier? _%g5237452560%_)
                                       (or (gx#free-identifier=?
                                            _%g5237452560%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5237452560%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5237452560%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5237452560%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8720787208%_
                                   _%g5237352558%_
                                   _%g5237452560%_)
                                  (if (gx#identifier? _%hd5237652542%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92704_|
                                           _%hd5237652542%_)
                                          (_%__kont8721187212%_
                                           _%hd5237952552%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5237152408%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5237152408%_))))))))
                    (if (gx#stx-pair? _%__stx8720487205%_)
                        (let ((_%e5237552538%_
                               (gx#syntax-e _%__stx8720487205%_)))
                          (let ((_%tl5237752545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5237552538%_)))
                                (_%hd5237652542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5237552538%_))))
                            (if (gx#stx-pair? _%tl5237752545%_)
                                (let ((_%e5237852548%_
                                       (gx#syntax-e _%tl5237752545%_)))
                                  (let ((_%tl5238052555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5237852548%_)))
                                        (_%hd5237952552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5237852548%_))))
                                    (if (gx#stx-null? _%tl5238052555%_)
                                        (_%__match8722787228%_
                                         _%e5237552538%_
                                         _%hd5237652542%_
                                         _%tl5237752545%_
                                         _%e5237852548%_
                                         _%hd5237952552%_
                                         _%tl5238052555%_)
                                        (if (gx#identifier? _%hd5237652542%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92704_|
                                                 _%hd5237652542%_)
                                                (if (gx#stx-pair?
                                                     _%tl5238052555%_)
                                                    (let ((_%e5239052478%_
                                                           (gx#syntax-e
                                                            _%tl5238052555%_)))
                                                      (let ((_%tl5239252485%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5239052478%_)))
                    (_%hd5239152482%_
                     (let () (declare (not safe)) (##car _%e5239052478%_))))
                (if (gx#stx-pair? _%tl5239252485%_)
                    (let ((_%e5239352488%_ (gx#syntax-e _%tl5239252485%_)))
                      (let ((_%tl5239552495%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5239352488%_)))
                            (_%hd5239452492%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5239352488%_))))
                        (if (gx#stx-null? _%tl5239552495%_)
                            (_%__match8725787258%_
                             _%e5237552538%_
                             _%hd5237652542%_
                             _%tl5237752545%_
                             _%e5237852548%_
                             _%hd5237952552%_
                             _%tl5238052555%_
                             _%e5239052478%_
                             _%hd5239152482%_
                             _%tl5239252485%_
                             _%e5239352488%_
                             _%hd5239452492%_
                             _%tl5239552495%_)
                            (let () (declare (not safe)) (_%g5237152408%_)))))
                    (let () (declare (not safe)) (_%g5237152408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5237152408%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5237152408%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5237152408%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5237152408%_)))))
                        (let () (declare (not safe)) (_%g5237152408%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52345%_)
        (if (gx#identifier? _%id52345%_)
            (let* ((_%str52348%_ (symbol->string (gx#stx-e _%id52345%_)))
                   (_%index5235052352%_ (string-index _%str52348%_ '#\.)))
              (if _%index5235052352%_
                  (let ((_%index52355%_ _%index5235052352%_))
                    (if (let () (declare (not safe)) (##fx> _%index52355%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52348%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52338%_ _%id52340%_)
        (let ((_%parts52342%_
               (string-split (symbol->string (gx#stx-e _%id52340%_)) '#\.)))
          (if (find string-empty? _%parts52342%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52338%_
               _%id52340%_)
              (cons (gx#stx-identifier _%id52340%_ (car _%parts52342%_))
                    (map string->symbol (cdr _%parts52342%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52319%_ _%klass-or-id52321%_ _%slot52322%_)
        (let* ((_%klass52324%_
                (if (gx#identifier? _%klass-or-id52321%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52319%_
                       _%klass-or-id52321%_))
                    _%klass-or-id52321%_))
               (_%accessors52327%_
                (let ((__obj92516 _%klass52324%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92516
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92516 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj92516
                       'unchecked-accessors))))
               (_%$e52332%_ (agetq _%slot52322%_ _%accessors52327%_)))
          (if _%$e52332%_
              _%$e52332%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52319%_
               _%klass52324%_
               _%slot52322%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52299%_
               _%klass-or-id52301%_
               _%slot52302%_
               _%checked?52303%_)
        (let* ((_%klass52305%_
                (if (gx#identifier? _%klass-or-id52301%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52299%_
                       _%klass-or-id52301%_))
                    _%klass-or-id52301%_))
               (_%mutators52308%_
                (if _%checked?52303%_
                    (let ((__obj92517 _%klass52305%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92517
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92517 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92517
                           'mutators)))
                    (let ((__obj92518 _%klass52305%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92518
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92518 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92518
                           'unchecked-mutators)))))
               (_%$e52313%_ (agetq _%slot52302%_ _%mutators52308%_)))
          (if _%$e52313%_
              _%$e52313%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52299%_
               _%klass52305%_
               _%slot52302%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx52871%_)
        (letrec ((_%expand-body52874%_
                  (lambda (_%klass53772%_
                           _%var53774%_
                           _%Type53775%_
                           _%body53776%_
                           _%checked?53777%_)
                    (let* ((_%g5377953823%_
                            (lambda (_%g5378053819%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5378053819%_)))
                           (_%g5377853978%_
                            (lambda (_%g5378053827%_)
                              (if (gx#stx-pair? _%g5378053827%_)
                                  (let ((_%e5378853830%_
                                         (gx#syntax-e _%g5378053827%_)))
                                    (let ((_%hd5378953834%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5378853830%_)))
                                          (_%tl5379053837%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5378853830%_))))
                                      (if (gx#stx-pair? _%tl5379053837%_)
                                          (let ((_%e5379153840%_
                                                 (gx#syntax-e
                                                  _%tl5379053837%_)))
                                            (let ((_%hd5379253844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5379153840%_)))
                                                  (_%tl5379353847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5379153840%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5379353847%_)
                                                  (let ((_%e5379453850%_
                                                         (gx#syntax-e
                                                          _%tl5379353847%_)))
                                                    (let ((_%hd5379553854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5379453850%_)))
                                                          (_%tl5379653857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5379453850%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5379653857%_)
                                                          (let ((_%e5379753860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5379653857%_)))
                    (let ((_%hd5379853864%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5379753860%_)))
                          (_%tl5379953867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5379753860%_))))
                      (if (gx#stx-pair? _%tl5379953867%_)
                          (let ((_%e5380053870%_
                                 (gx#syntax-e _%tl5379953867%_)))
                            (let ((_%hd5380153874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5380053870%_)))
                                  (_%tl5380253877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5380053870%_))))
                              (if (gx#stx-pair? _%tl5380253877%_)
                                  (let ((_%e5380353880%_
                                         (gx#syntax-e _%tl5380253877%_)))
                                    (let ((_%hd5380453884%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5380353880%_)))
                                          (_%tl5380553887%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5380353880%_))))
                                      (if (gx#stx-pair? _%tl5380553887%_)
                                          (let ((_%e5380653890%_
                                                 (gx#syntax-e
                                                  _%tl5380553887%_)))
                                            (let ((_%hd5380753894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5380653890%_)))
                                                  (_%tl5380853897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5380653890%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5380753894%_)
                                                  (let ((_g92705_
                                                         (gx#syntax-split-splice
                                                          _%hd5380753894%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92706_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92705_)
                           (##values-length _g92705_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92706_ 2)))
                    (error "Context expects 2 values" _g92706_)))
              (let ((_%target5380953900%_
                     (let () (declare (not safe)) (##values-ref _g92705_ 0)))
                    (_%tl5381153903%_
                     (let () (declare (not safe)) (##values-ref _g92705_ 1))))
                (if (gx#stx-null? _%tl5381153903%_)
                    (letrec ((_%loop5381253906%_
                              (lambda (_%hd5381053910%_ _%body5381653913%_)
                                (if (gx#stx-pair? _%hd5381053910%_)
                                    (let ((_%e5381353915%_
                                           (gx#syntax-e _%hd5381053910%_)))
                                      (let ((_%lp-hd5381453919%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5381353915%_)))
                                            (_%lp-tl5381553922%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5381353915%_))))
                                        (_%loop5381253906%_
                                         _%lp-tl5381553922%_
                                         (cons _%lp-hd5381453919%_
                                               _%body5381653913%_))))
                                    (let ((_%body5381753925%_
                                           (reverse _%body5381653913%_)))
                                      (if (gx#stx-null? _%tl5380853897%_)
                                          ((lambda (_%g5378153928%_
                                                    _%g5378253930%_
                                                    _%g5378353931%_
                                                    _%g5378453932%_
                                                    _%g5378553933%_
                                                    _%g5378653934%_
                                                    _%g5378753935%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5378553933%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5378653934%_ '()))
                                         (cons _%g5378553933%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5378753935%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5378553933%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5378453932%_ '()))
                               (cons _%g5378353931%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5378253930%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5396953972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5397053975%_)
                      (cons _%g5396953972%_ _%g5397053975%_))
                    '()
                    _%g5378153928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5381753925%_
                                           _%hd5380453884%_
                                           _%hd5380153874%_
                                           _%hd5379853864%_
                                           _%hd5379553854%_
                                           _%hd5379253844%_
                                           _%hd5378953834%_)
                                          (_%g5377953823%_
                                           _%g5378053827%_)))))))
                      (_%loop5381253906%_ _%target5380953900%_ '()))
                    (_%g5377953823%_ _%g5378053827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5377953823%_
                                                   _%g5378053827%_))))
                                          (_%g5377953823%_ _%g5378053827%_))))
                                  (_%g5377953823%_ _%g5378053827%_))))
                          (_%g5377953823%_ _%g5378053827%_))))
                  (_%g5377953823%_ _%g5378053827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5377953823%_
                                                   _%g5378053827%_))))
                                          (_%g5377953823%_ _%g5378053827%_))))
                                  (_%g5377953823%_ _%g5378053827%_)))))
                      (_%g5377853978%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj92519 _%klass53772%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92519
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92519
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj92519
                                    'type-descriptor)))
                             _%var53774%_
                             _%klass53772%_
                             _%checked?53777%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53776%_)))))
                 (_%expand52876%_
                  (lambda (_%var53664%_
                           _%Type53666%_
                           _%body53667%_
                           _%checked?53668%_
                           _%checked-mutators?53669%_
                           _%maybe?53670%_)
                    (let* ((_%klass53672%_
                            (gx#syntax-local-value _%Type53666%_ false))
                           (_%expr-body53679%_
                            (_%expand-body52874%_
                             _%klass53672%_
                             _%var53664%_
                             _%Type53666%_
                             _%body53667%_
                             (let ((_%$e53675%_ _%checked?53668%_))
                               (if _%$e53675%_
                                   _%$e53675%_
                                   _%checked-mutators?53669%_)))))
                      (if _%checked?53668%_
                          (let* ((_%g5368453703%_
                                  (lambda (_%g5368553699%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5368553699%_)))
                                 (_%g5368353765%_
                                  (lambda (_%g5368553707%_)
                                    (if (gx#stx-pair? _%g5368553707%_)
                                        (let ((_%e5368953710%_
                                               (gx#syntax-e _%g5368553707%_)))
                                          (let ((_%hd5369053714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5368953710%_)))
                                                (_%tl5369153717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5368953710%_))))
                                            (if (gx#stx-pair? _%tl5369153717%_)
                                                (let ((_%e5369253720%_
                                                       (gx#syntax-e
                                                        _%tl5369153717%_)))
                                                  (let ((_%hd5369353724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5369253720%_)))
                                                        (_%tl5369453727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5369253720%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5369453727%_)
                                                        (let ((_%e5369553730%_
                                                               (gx#syntax-e
                                                                _%tl5369453727%_)))
                                                          (let ((_%hd5369653734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5369553730%_)))
                        (_%tl5369753737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5369553730%_))))
                    (if (gx#stx-null? _%tl5369753737%_)
                        ((lambda (_%g5368653740%_
                                  _%g5368753742%_
                                  _%g5368853743%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5368753742%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5368853743%_ '())))
                                       (cons _%g5368653740%_ '()))))
                         _%hd5369653734%_
                         _%hd5369353724%_
                         _%hd5369053714%_)
                        (_%g5368453703%_ _%g5368553707%_))))
                (_%g5368453703%_ _%g5368553707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5368453703%_
                                                 _%g5368553707%_))))
                                        (_%g5368453703%_ _%g5368553707%_)))))
                            (_%g5368353765%_
                             (list (let ((_%instance?53769%_
                                          (let ((__obj92520 _%klass53672%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj92520
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj92520
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj92520
                                                 'predicate)))))
                                     (if _%maybe?53670%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?53769%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?53769%_))
                                   _%var53664%_
                                   _%expr-body53679%_)))
                          _%expr-body53679%_)))))
          (let* ((_%__stx8727887279%_ _%stx52871%_)
                 (_%g5288253025%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8727887279%_))))
            (let ((_%__kont8728187282%_
                   (lambda (_%g5288453592%_
                            _%g5288553594%_
                            _%g5288653595%_
                            _%g5288753596%_)
                     (let* ((_%g5362153629%_
                             (lambda (_%g5362253625%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5362253625%_)))
                            (_%g5362053656%_
                             (lambda (_%g5362253633%_)
                               ((lambda (_%g5362353636%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5288753596%_
                                                    (cons _%g5288653595%_
                                                          (cons _%g5362353636%_
                                                                '())))
                                              (foldr (lambda (_%g5364753650%_
                                                              _%g5364853653%_)
                                                       (cons _%g5364753650%_
                                                             _%g5364853653%_))
                                                     '()
                                                     _%g5288453592%_))))
                                _%g5362253633%_))))
                       (_%g5362053656%_
                        (let ((__obj92521
                               (gx#syntax-local-value _%g5288553594%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92521
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92521
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92521
                               'identifier)))))))
                  (_%__kont8728587286%_
                   (lambda (_%g5291253472%_ _%g5291353474%_ _%g5291453475%_)
                     (_%expand52876%_
                      _%g5291453475%_
                      _%g5291353474%_
                      (foldr (lambda (_%g5349853501%_ _%g5349953504%_)
                               (cons _%g5349853501%_ _%g5349953504%_))
                             '()
                             _%g5291253472%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8728987290%_
                   (lambda (_%g5293953352%_ _%g5294053354%_ _%g5294153355%_)
                     (_%expand52876%_
                      _%g5294153355%_
                      _%g5294053354%_
                      (foldr (lambda (_%g5337853381%_ _%g5337953384%_)
                               (cons _%g5337853381%_ _%g5337953384%_))
                             '()
                             _%g5293953352%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8729387294%_
                   (lambda (_%g5296653232%_ _%g5296753234%_ _%g5296853235%_)
                     (_%expand52876%_
                      _%g5296853235%_
                      _%g5296753234%_
                      (foldr (lambda (_%g5325853261%_ _%g5325953264%_)
                               (cons _%g5325853261%_ _%g5325953264%_))
                             '()
                             _%g5296653232%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8729787298%_
                   (lambda (_%g5299353110%_ _%g5299453112%_ _%g5299553113%_)
                     (_%expand52876%_
                      _%g5299553113%_
                      _%g5299453112%_
                      (foldr (lambda (_%g5313853141%_ _%g5313953144%_)
                               (cons _%g5313853141%_ _%g5313953144%_))
                             '()
                             _%g5299353110%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8751787518%_
                      (lambda (_%e5299653032%_
                               _%hd5299753036%_
                               _%tl5299853039%_
                               _%e5299953042%_
                               _%hd5300053046%_
                               _%tl5300153049%_
                               _%e5300253052%_
                               _%hd5300353056%_
                               _%tl5300453059%_
                               _%e5300553062%_
                               _%hd5300653066%_
                               _%tl5300753069%_
                               _%e5300853072%_
                               _%hd5300953076%_
                               _%tl5301053079%_
                               _%__splice8729987300%_
                               _%target5301153082%_
                               _%tl5301353085%_)
                        (letrec ((_%loop5301453088%_
                                  (lambda (_%hd5301253092%_ _%body5301853095%_)
                                    (if (gx#stx-pair? _%hd5301253092%_)
                                        (let ((_%e5301553097%_
                                               (gx#syntax-e _%hd5301253092%_)))
                                          (let ((_%lp-tl5301753104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5301553097%_)))
                                                (_%lp-hd5301653101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5301553097%_))))
                                            (_%loop5301453088%_
                                             _%lp-tl5301753104%_
                                             (cons _%lp-hd5301653101%_
                                                   _%body5301853095%_))))
                                        (let ((_%body5301953107%_
                                               (reverse _%body5301853095%_)))
                                          (let ((_%g5299353110%_
                                                 _%body5301953107%_)
                                                (_%g5299453112%_
                                                 _%hd5300953076%_)
                                                (_%g5299553113%_
                                                 _%hd5300353056%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5299453112%_))
                                                (_%__kont8729787298%_
                                                 _%g5299353110%_
                                                 _%g5299453112%_
                                                 _%g5299553113%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))))))))
                          (_%loop5301453088%_ _%target5301153082%_ '()))))
                     (_%__match8747387474%_
                      (lambda (_%e5296953154%_
                               _%hd5297053158%_
                               _%tl5297153161%_
                               _%e5297253164%_
                               _%hd5297353168%_
                               _%tl5297453171%_
                               _%e5297553174%_
                               _%hd5297653178%_
                               _%tl5297753181%_
                               _%e5297853184%_
                               _%hd5297953188%_
                               _%tl5298053191%_
                               _%e5298153194%_
                               _%hd5298253198%_
                               _%tl5298353201%_
                               _%__splice8729587296%_
                               _%target5298453204%_
                               _%tl5298653207%_)
                        (letrec ((_%loop5298753210%_
                                  (lambda (_%hd5298553214%_ _%body5299153217%_)
                                    (if (gx#stx-pair? _%hd5298553214%_)
                                        (let ((_%e5298853219%_
                                               (gx#syntax-e _%hd5298553214%_)))
                                          (let ((_%lp-tl5299053226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5298853219%_)))
                                                (_%lp-hd5298953223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5298853219%_))))
                                            (_%loop5298753210%_
                                             _%lp-tl5299053226%_
                                             (cons _%lp-hd5298953223%_
                                                   _%body5299153217%_))))
                                        (let ((_%body5299253229%_
                                               (reverse _%body5299153217%_)))
                                          (let ((_%g5296653232%_
                                                 _%body5299253229%_)
                                                (_%g5296753234%_
                                                 _%hd5298253198%_)
                                                (_%g5296853235%_
                                                 _%hd5297653178%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5296753234%_))
                                                (_%__kont8729387294%_
                                                 _%g5296653232%_
                                                 _%g5296753234%_
                                                 _%g5296853235%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))))))))
                          (_%loop5298753210%_ _%target5298453204%_ '()))))
                     (_%__match8742987430%_
                      (lambda (_%e5294253274%_
                               _%hd5294353278%_
                               _%tl5294453281%_
                               _%e5294553284%_
                               _%hd5294653288%_
                               _%tl5294753291%_
                               _%e5294853294%_
                               _%hd5294953298%_
                               _%tl5295053301%_
                               _%e5295153304%_
                               _%hd5295253308%_
                               _%tl5295353311%_
                               _%e5295453314%_
                               _%hd5295553318%_
                               _%tl5295653321%_
                               _%__splice8729187292%_
                               _%target5295753324%_
                               _%tl5295953327%_)
                        (letrec ((_%loop5296053330%_
                                  (lambda (_%hd5295853334%_ _%body5296453337%_)
                                    (if (gx#stx-pair? _%hd5295853334%_)
                                        (let ((_%e5296153339%_
                                               (gx#syntax-e _%hd5295853334%_)))
                                          (let ((_%lp-tl5296353346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5296153339%_)))
                                                (_%lp-hd5296253343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5296153339%_))))
                                            (_%loop5296053330%_
                                             _%lp-tl5296353346%_
                                             (cons _%lp-hd5296253343%_
                                                   _%body5296453337%_))))
                                        (let ((_%body5296553349%_
                                               (reverse _%body5296453337%_)))
                                          (let ((_%g5293953352%_
                                                 _%body5296553349%_)
                                                (_%g5294053354%_
                                                 _%hd5295553318%_)
                                                (_%g5294153355%_
                                                 _%hd5294953298%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5294053354%_))
                                                (_%__kont8728987290%_
                                                 _%g5293953352%_
                                                 _%g5294053354%_
                                                 _%g5294153355%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))))))))
                          (_%loop5296053330%_ _%target5295753324%_ '()))))
                     (_%__match8738587386%_
                      (lambda (_%e5291553394%_
                               _%hd5291653398%_
                               _%tl5291753401%_
                               _%e5291853404%_
                               _%hd5291953408%_
                               _%tl5292053411%_
                               _%e5292153414%_
                               _%hd5292253418%_
                               _%tl5292353421%_
                               _%e5292453424%_
                               _%hd5292553428%_
                               _%tl5292653431%_
                               _%e5292753434%_
                               _%hd5292853438%_
                               _%tl5292953441%_
                               _%__splice8728787288%_
                               _%target5293053444%_
                               _%tl5293253447%_)
                        (letrec ((_%loop5293353450%_
                                  (lambda (_%hd5293153454%_ _%body5293753457%_)
                                    (if (gx#stx-pair? _%hd5293153454%_)
                                        (let ((_%e5293453459%_
                                               (gx#syntax-e _%hd5293153454%_)))
                                          (let ((_%lp-tl5293653466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5293453459%_)))
                                                (_%lp-hd5293553463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5293453459%_))))
                                            (_%loop5293353450%_
                                             _%lp-tl5293653466%_
                                             (cons _%lp-hd5293553463%_
                                                   _%body5293753457%_))))
                                        (let ((_%body5293853469%_
                                               (reverse _%body5293753457%_)))
                                          (let ((_%g5291253472%_
                                                 _%body5293853469%_)
                                                (_%g5291353474%_
                                                 _%hd5292853438%_)
                                                (_%g5291453475%_
                                                 _%hd5292253418%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5291353474%_))
                                                (_%__kont8728587286%_
                                                 _%g5291253472%_
                                                 _%g5291353474%_
                                                 _%g5291453475%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))))))))
                          (_%loop5293353450%_ _%target5293053444%_ '()))))
                     (_%__match8736587366%_
                      (lambda (_%e5291553394%_
                               _%hd5291653398%_
                               _%tl5291753401%_
                               _%e5291853404%_
                               _%hd5291953408%_
                               _%tl5292053411%_
                               _%e5292153414%_
                               _%hd5292253418%_
                               _%tl5292353421%_
                               _%e5292453424%_
                               _%hd5292553428%_
                               _%tl5292653431%_)
                        (if (gx#identifier? _%hd5292553428%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92707_|
                                 _%hd5292553428%_)
                                (if (gx#stx-pair? _%tl5292653431%_)
                                    (let ((_%e5292753434%_
                                           (gx#syntax-e _%tl5292653431%_)))
                                      (let ((_%tl5292953441%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5292753434%_)))
                                            (_%hd5292853438%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5292753434%_))))
                                        (if (gx#stx-null? _%tl5292953441%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5292053411%_)
                                                (let ((_%__splice8728787288%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5292053411%_
                                                        '0)))
                                                  (let ((_%tl5293253447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8728787288%_
                                                            '1)))
                                                        (_%target5293053444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8728787288%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5293253447%_)
                                                        (_%__match8738587386%_
                                                         _%e5291553394%_
                                                         _%hd5291653398%_
                                                         _%tl5291753401%_
                                                         _%e5291853404%_
                                                         _%hd5291953408%_
                                                         _%tl5292053411%_
                                                         _%e5292153414%_
                                                         _%hd5292253418%_
                                                         _%tl5292353421%_
                                                         _%e5292453424%_
                                                         _%hd5292553428%_
                                                         _%tl5292653431%_
                                                         _%e5292753434%_
                                                         _%hd5292853438%_
                                                         _%tl5292953441%_
                                                         _%__splice8728787288%_
                                                         _%target5293053444%_
                                                         _%tl5293253447%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5288253025%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5288253025%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5288253025%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92708_|
                                     _%hd5292553428%_)
                                    (if (gx#stx-pair? _%tl5292653431%_)
                                        (let ((_%e5295453314%_
                                               (gx#syntax-e _%tl5292653431%_)))
                                          (let ((_%tl5295653321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5295453314%_)))
                                                (_%hd5295553318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5295453314%_))))
                                            (if (gx#stx-null? _%tl5295653321%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5292053411%_)
                                                    (let ((_%__splice8729187292%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5292053411%_
                                                            '0)))
                                                      (let ((_%tl5295953327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8729187292%_ '1)))
                    (_%target5295753324%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8729187292%_ '0))))
                (if (gx#stx-null? _%tl5295953327%_)
                    (_%__match8742987430%_
                     _%e5291553394%_
                     _%hd5291653398%_
                     _%tl5291753401%_
                     _%e5291853404%_
                     _%hd5291953408%_
                     _%tl5292053411%_
                     _%e5292153414%_
                     _%hd5292253418%_
                     _%tl5292353421%_
                     _%e5292453424%_
                     _%hd5292553428%_
                     _%tl5292653431%_
                     _%e5295453314%_
                     _%hd5295553318%_
                     _%tl5295653321%_
                     _%__splice8729187292%_
                     _%target5295753324%_
                     _%tl5295953327%_)
                    (let () (declare (not safe)) (_%g5288253025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5288253025%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5288253025%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92709_|
                                         _%hd5292553428%_)
                                        (if (gx#stx-pair? _%tl5292653431%_)
                                            (let ((_%e5298153194%_
                                                   (gx#syntax-e
                                                    _%tl5292653431%_)))
                                              (let ((_%tl5298353201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5298153194%_)))
                                                    (_%hd5298253198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5298153194%_))))
                                                (if (gx#stx-null?
                                                     _%tl5298353201%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5292053411%_)
                                                        (let ((_%__splice8729587296%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5292053411%_
                                                                '0)))
                                                          (let ((_%tl5298653207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8729587296%_ '1)))
                        (_%target5298453204%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8729587296%_ '0))))
                    (if (gx#stx-null? _%tl5298653207%_)
                        (_%__match8747387474%_
                         _%e5291553394%_
                         _%hd5291653398%_
                         _%tl5291753401%_
                         _%e5291853404%_
                         _%hd5291953408%_
                         _%tl5292053411%_
                         _%e5292153414%_
                         _%hd5292253418%_
                         _%tl5292353421%_
                         _%e5292453424%_
                         _%hd5292553428%_
                         _%tl5292653431%_
                         _%e5298153194%_
                         _%hd5298253198%_
                         _%tl5298353201%_
                         _%__splice8729587296%_
                         _%target5298453204%_
                         _%tl5298653207%_)
                        (let () (declare (not safe)) (_%g5288253025%_)))))
                (let () (declare (not safe)) (_%g5288253025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5288253025%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5288253025%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92710_|
                                             _%hd5292553428%_)
                                            (if (gx#stx-pair? _%tl5292653431%_)
                                                (let ((_%e5300853072%_
                                                       (gx#syntax-e
                                                        _%tl5292653431%_)))
                                                  (let ((_%tl5301053079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5300853072%_)))
                                                        (_%hd5300953076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5300853072%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5301053079%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5292053411%_)
                                                            (let ((_%__splice8729987300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5292053411%_
                            '0)))
                      (let ((_%tl5301353085%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8729987300%_ '1)))
                            (_%target5301153082%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8729987300%_ '0))))
                        (if (gx#stx-null? _%tl5301353085%_)
                            (_%__match8751787518%_
                             _%e5291553394%_
                             _%hd5291653398%_
                             _%tl5291753401%_
                             _%e5291853404%_
                             _%hd5291953408%_
                             _%tl5292053411%_
                             _%e5292153414%_
                             _%hd5292253418%_
                             _%tl5292353421%_
                             _%e5292453424%_
                             _%hd5292553428%_
                             _%tl5292653431%_
                             _%e5300853072%_
                             _%hd5300953076%_
                             _%tl5301053079%_
                             _%__splice8729987300%_
                             _%target5301153082%_
                             _%tl5301353085%_)
                            (let () (declare (not safe)) (_%g5288253025%_)))))
                    (let () (declare (not safe)) (_%g5288253025%_)))
                (let () (declare (not safe)) (_%g5288253025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288253025%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5288253025%_))))))
                            (let () (declare (not safe)) (_%g5288253025%_)))))
                     (_%__match8734187342%_
                      (lambda (_%e5288853514%_
                               _%hd5288953518%_
                               _%tl5289053521%_
                               _%e5289153524%_
                               _%hd5289253528%_
                               _%tl5289353531%_
                               _%e5289453534%_
                               _%hd5289553538%_
                               _%tl5289653541%_
                               _%e5289753544%_
                               _%hd5289853548%_
                               _%tl5289953551%_
                               _%e5290053554%_
                               _%hd5290153558%_
                               _%tl5290253561%_
                               _%__splice8728387284%_
                               _%target5290353564%_
                               _%tl5290553567%_)
                        (letrec ((_%loop5290653570%_
                                  (lambda (_%hd5290453574%_ _%body5291053577%_)
                                    (if (gx#stx-pair? _%hd5290453574%_)
                                        (let ((_%e5290753579%_
                                               (gx#syntax-e _%hd5290453574%_)))
                                          (let ((_%lp-tl5290953586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5290753579%_)))
                                                (_%lp-hd5290853583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5290753579%_))))
                                            (_%loop5290653570%_
                                             _%lp-tl5290953586%_
                                             (cons _%lp-hd5290853583%_
                                                   _%body5291053577%_))))
                                        (let ((_%body5291153589%_
                                               (reverse _%body5291053577%_)))
                                          (let ((_%g5288453592%_
                                                 _%body5291153589%_)
                                                (_%g5288553594%_
                                                 _%hd5290153558%_)
                                                (_%g5288653595%_
                                                 _%hd5289853548%_)
                                                (_%g5288753596%_
                                                 _%hd5289553538%_))
                                            (if (let ((__tmp92711
                                                       (gx#syntax-local-value
                                                        _%g5288553594%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92711))
                                                (_%__kont8728187282%_
                                                 _%g5288453592%_
                                                 _%g5288553594%_
                                                 _%g5288653595%_
                                                 _%g5288753596%_)
                                                (_%__match8736587366%_
                                                 _%e5288853514%_
                                                 _%hd5288953518%_
                                                 _%tl5289053521%_
                                                 _%e5289153524%_
                                                 _%hd5289253528%_
                                                 _%tl5289353531%_
                                                 _%e5289453534%_
                                                 _%hd5289553538%_
                                                 _%tl5289653541%_
                                                 _%e5289753544%_
                                                 _%hd5289853548%_
                                                 _%tl5289953551%_))))))))
                          (_%loop5290653570%_ _%target5290353564%_ '())))))
                (if (gx#stx-pair? _%__stx8727887279%_)
                    (let ((_%e5288853514%_ (gx#syntax-e _%__stx8727887279%_)))
                      (let ((_%tl5289053521%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5288853514%_)))
                            (_%hd5288953518%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5288853514%_))))
                        (if (gx#stx-pair? _%tl5289053521%_)
                            (let ((_%e5289153524%_
                                   (gx#syntax-e _%tl5289053521%_)))
                              (let ((_%tl5289353531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5289153524%_)))
                                    (_%hd5289253528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5289153524%_))))
                                (if (gx#stx-pair? _%hd5289253528%_)
                                    (let ((_%e5289453534%_
                                           (gx#syntax-e _%hd5289253528%_)))
                                      (let ((_%tl5289653541%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5289453534%_)))
                                            (_%hd5289553538%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5289453534%_))))
                                        (if (gx#stx-pair? _%tl5289653541%_)
                                            (let ((_%e5289753544%_
                                                   (gx#syntax-e
                                                    _%tl5289653541%_)))
                                              (let ((_%tl5289953551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5289753544%_)))
                                                    (_%hd5289853548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5289753544%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5289953551%_)
                                                    (let ((_%e5290053554%_
                                                           (gx#syntax-e
                                                            _%tl5289953551%_)))
                                                      (let ((_%tl5290253561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5290053554%_)))
                    (_%hd5290153558%_
                     (let () (declare (not safe)) (##car _%e5290053554%_))))
                (if (gx#stx-null? _%tl5290253561%_)
                    (if (gx#stx-pair/null? _%tl5289353531%_)
                        (let ((_%__splice8728387284%_
                               (gx#syntax-split-splice->vector
                                _%tl5289353531%_
                                '0)))
                          (let ((_%tl5290553567%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8728387284%_ '1)))
                                (_%target5290353564%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8728387284%_ '0))))
                            (if (gx#stx-null? _%tl5290553567%_)
                                (_%__match8734187342%_
                                 _%e5288853514%_
                                 _%hd5288953518%_
                                 _%tl5289053521%_
                                 _%e5289153524%_
                                 _%hd5289253528%_
                                 _%tl5289353531%_
                                 _%e5289453534%_
                                 _%hd5289553538%_
                                 _%tl5289653541%_
                                 _%e5289753544%_
                                 _%hd5289853548%_
                                 _%tl5289953551%_
                                 _%e5290053554%_
                                 _%hd5290153558%_
                                 _%tl5290253561%_
                                 _%__splice8728387284%_
                                 _%target5290353564%_
                                 _%tl5290553567%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5288253025%_)))))
                        (let () (declare (not safe)) (_%g5288253025%_)))
                    (let () (declare (not safe)) (_%g5288253025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5288253025%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5288253025%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5288253025%_)))))
                            (let () (declare (not safe)) (_%g5288253025%_)))))
                    (let () (declare (not safe)) (_%g5288253025%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx53988%_)
        (letrec ((_%expand-body53991%_
                  (lambda (_%var54982%_
                           _%Interface54984%_
                           _%body54985%_
                           _%checked?54986%_)
                    (let* ((_%type54988%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx53988%_
                               _%Interface54984%_)))
                           (_%g5499155035%_
                            (lambda (_%g5499255031%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5499255031%_)))
                           (_%g5499055191%_
                            (lambda (_%g5499255039%_)
                              (if (gx#stx-pair? _%g5499255039%_)
                                  (let ((_%e5500055042%_
                                         (gx#syntax-e _%g5499255039%_)))
                                    (let ((_%hd5500155046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5500055042%_)))
                                          (_%tl5500255049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5500055042%_))))
                                      (if (gx#stx-pair? _%tl5500255049%_)
                                          (let ((_%e5500355052%_
                                                 (gx#syntax-e
                                                  _%tl5500255049%_)))
                                            (let ((_%hd5500455056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5500355052%_)))
                                                  (_%tl5500555059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5500355052%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5500555059%_)
                                                  (let ((_%e5500655062%_
                                                         (gx#syntax-e
                                                          _%tl5500555059%_)))
                                                    (let ((_%hd5500755066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5500655062%_)))
                                                          (_%tl5500855069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5500655062%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5500855069%_)
                                                          (let ((_%e5500955072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5500855069%_)))
                    (let ((_%hd5501055076%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5500955072%_)))
                          (_%tl5501155079%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5500955072%_))))
                      (if (gx#stx-pair? _%tl5501155079%_)
                          (let ((_%e5501255082%_
                                 (gx#syntax-e _%tl5501155079%_)))
                            (let ((_%hd5501355086%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5501255082%_)))
                                  (_%tl5501455089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5501255082%_))))
                              (if (gx#stx-pair? _%tl5501455089%_)
                                  (let ((_%e5501555092%_
                                         (gx#syntax-e _%tl5501455089%_)))
                                    (let ((_%hd5501655096%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5501555092%_)))
                                          (_%tl5501755099%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5501555092%_))))
                                      (if (gx#stx-pair? _%tl5501755099%_)
                                          (let ((_%e5501855102%_
                                                 (gx#syntax-e
                                                  _%tl5501755099%_)))
                                            (let ((_%hd5501955106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5501855102%_)))
                                                  (_%tl5502055109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5501855102%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5501955106%_)
                                                  (let ((_g92712_
                                                         (gx#syntax-split-splice
                                                          _%hd5501955106%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92712_)
                           (##values-length _g92712_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92713_ 2)))
                    (error "Context expects 2 values" _g92713_)))
              (let ((_%target5502155112%_
                     (let () (declare (not safe)) (##values-ref _g92712_ 0)))
                    (_%tl5502355115%_
                     (let () (declare (not safe)) (##values-ref _g92712_ 1))))
                (if (gx#stx-null? _%tl5502355115%_)
                    (letrec ((_%loop5502455118%_
                              (lambda (_%hd5502255122%_ _%body5502855125%_)
                                (if (gx#stx-pair? _%hd5502255122%_)
                                    (let ((_%e5502555127%_
                                           (gx#syntax-e _%hd5502255122%_)))
                                      (let ((_%lp-hd5502655131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5502555127%_)))
                                            (_%lp-tl5502755134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5502555127%_))))
                                        (_%loop5502455118%_
                                         _%lp-tl5502755134%_
                                         (cons _%lp-hd5502655131%_
                                               _%body5502855125%_))))
                                    (let ((_%body5502955137%_
                                           (reverse _%body5502855125%_)))
                                      (if (gx#stx-null? _%tl5502055109%_)
                                          ((lambda (_%g5499355140%_
                                                    _%g5499455142%_
                                                    _%g5499555143%_
                                                    _%g5499655144%_
                                                    _%g5499755145%_
                                                    _%g5499855146%_
                                                    _%g5499955147%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5499655144%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5499755145%_ '()))
                                         (cons _%g5499655144%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5499955147%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5499655144%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5499855146%_ '()))
                               (cons _%g5499555143%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5499455142%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5518255185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5518355188%_)
                      (cons _%g5518255185%_ _%g5518355188%_))
                    '()
                    _%g5499355140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5502955137%_
                                           _%hd5501655096%_
                                           _%hd5501355086%_
                                           _%hd5501055076%_
                                           _%hd5500755066%_
                                           _%hd5500455056%_
                                           _%hd5500155046%_)
                                          (_%g5499155035%_
                                           _%g5499255039%_)))))))
                      (_%loop5502455118%_ _%target5502155112%_ '()))
                    (_%g5499155035%_ _%g5499255039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5499155035%_
                                                   _%g5499255039%_))))
                                          (_%g5499155035%_ _%g5499255039%_))))
                                  (_%g5499155035%_ _%g5499255039%_))))
                          (_%g5499155035%_ _%g5499255039%_))))
                  (_%g5499155035%_ _%g5499255039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5499155035%_
                                                   _%g5499255039%_))))
                                          (_%g5499155035%_ _%g5499255039%_))))
                                  (_%g5499155035%_ _%g5499255039%_)))))
                      (_%g5499055191%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type54988%_
                             (let ((__obj92522 _%type54988%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92522
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92522
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj92522
                                    'type-descriptor)))
                             _%var54982%_
                             _%checked?54986%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54985%_)))))
                 (_%expand53993%_
                  (lambda (_%var54781%_
                           _%Interface54783%_
                           _%body54784%_
                           _%checked?54785%_
                           _%checked-methods?54786%_
                           _%maybe?54787%_)
                    (let* ((_%g5478954797%_
                            (lambda (_%g5479054793%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5479054793%_)))
                           (_%g5478854974%_
                            (lambda (_%g5479054801%_)
                              ((lambda (_%g5479154804%_)
                                 (if _%checked?54785%_
                                     (if _%maybe?54787%_
                                         (let* ((_%g5481654831%_
                                                 (lambda (_%g5481754827%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5481754827%_)))
                                                (_%g5481554877%_
                                                 (lambda (_%g5481754835%_)
                                                   (if (gx#stx-pair?
                                                        _%g5481754835%_)
                                                       (let ((_%e5482054838%_
                                                              (gx#syntax-e
                                                               _%g5481754835%_)))
                                                         (let ((_%hd5482154842%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5482054838%_)))
                       (_%tl5482254845%_
                        (let () (declare (not safe)) (##cdr _%e5482054838%_))))
                   (if (gx#stx-pair? _%tl5482254845%_)
                       (let ((_%e5482354848%_ (gx#syntax-e _%tl5482254845%_)))
                         (let ((_%hd5482454852%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5482354848%_)))
                               (_%tl5482554855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5482354848%_))))
                           (if (gx#stx-null? _%tl5482554855%_)
                               ((lambda (_%g5481854858%_ _%g5481954860%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5481954860%_
                                                    (cons (cons _%g5481854858%_
                                                                (cons _%g5481954860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5481954860%_
                                                                (cons _%g5479154804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5481954860%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5482454852%_
                                _%hd5482154842%_)
                               (_%g5481654831%_ _%g5481754835%_))))
                       (_%g5481654831%_ _%g5481754835%_))))
               (_%g5481654831%_ _%g5481754835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5481554877%_
                                            (list _%var54781%_
                                                  _%Interface54783%_)))
                                         (let* ((_%g5488154896%_
                                                 (lambda (_%g5488254892%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5488254892%_)))
                                                (_%g5488054940%_
                                                 (lambda (_%g5488254900%_)
                                                   (if (gx#stx-pair?
                                                        _%g5488254900%_)
                                                       (let ((_%e5488554903%_
                                                              (gx#syntax-e
                                                               _%g5488254900%_)))
                                                         (let ((_%hd5488654907%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5488554903%_)))
                       (_%tl5488754910%_
                        (let () (declare (not safe)) (##cdr _%e5488554903%_))))
                   (if (gx#stx-pair? _%tl5488754910%_)
                       (let ((_%e5488854913%_ (gx#syntax-e _%tl5488754910%_)))
                         (let ((_%hd5488954917%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5488854913%_)))
                               (_%tl5489054920%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5488854913%_))))
                           (if (gx#stx-null? _%tl5489054920%_)
                               ((lambda (_%g5488354923%_ _%g5488454925%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5488454925%_
                                                    (cons (cons _%g5488354923%_
                                                                (cons _%g5488454925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5479154804%_ '()))))
                                _%hd5488954917%_
                                _%hd5488654907%_)
                               (_%g5488154896%_ _%g5488254900%_))))
                       (_%g5488154896%_ _%g5488254900%_))))
               (_%g5488154896%_ _%g5488254900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5488054940%_
                                            (list _%var54781%_
                                                  _%Interface54783%_))))
                                     (if _%maybe?54787%_
                                         (let* ((_%g5494454952%_
                                                 (lambda (_%g5494554948%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5494554948%_)))
                                                (_%g5494354970%_
                                                 (lambda (_%g5494554956%_)
                                                   ((lambda (_%g5494654959%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5494654959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5479154804%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5494654959%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5494554956%_))))
                                           (_%g5494354970%_ _%var54781%_))
                                         _%g5479154804%_)))
                               _%g5479054801%_))))
                      (_%g5478854974%_
                       (_%expand-body53991%_
                        _%var54781%_
                        _%Interface54783%_
                        _%body54784%_
                        (let ((_%$e54978%_ _%checked?54785%_))
                          (if _%$e54978%_
                              _%$e54978%_
                              _%checked-methods?54786%_))))))))
          (let* ((_%__stx8752087521%_ _%stx53988%_)
                 (_%g5399954142%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8752087521%_))))
            (let ((_%__kont8752387524%_
                   (lambda (_%g5400154709%_
                            _%g5400254711%_
                            _%g5400354712%_
                            _%g5400454713%_)
                     (let* ((_%g5473854746%_
                             (lambda (_%g5473954742%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5473954742%_)))
                            (_%g5473754773%_
                             (lambda (_%g5473954750%_)
                               ((lambda (_%g5474054753%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5400454713%_
                                                    (cons _%g5400354712%_
                                                          (cons _%g5474054753%_
                                                                '())))
                                              (foldr (lambda (_%g5476454767%_
                                                              _%g5476554770%_)
                                                       (cons _%g5476454767%_
                                                             _%g5476554770%_))
                                                     '()
                                                     _%g5400154709%_))))
                                _%g5473954750%_))))
                       (_%g5473754773%_
                        (let ((__obj92523
                               (gx#syntax-local-value _%g5400254711%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92523
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92523
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92523
                               'identifier)))))))
                  (_%__kont8752787528%_
                   (lambda (_%g5402954589%_ _%g5403054591%_ _%g5403154592%_)
                     (_%expand53993%_
                      _%g5403154592%_
                      _%g5403054591%_
                      (foldr (lambda (_%g5461554618%_ _%g5461654621%_)
                               (cons _%g5461554618%_ _%g5461654621%_))
                             '()
                             _%g5402954589%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8753187532%_
                   (lambda (_%g5405654469%_ _%g5405754471%_ _%g5405854472%_)
                     (_%expand53993%_
                      _%g5405854472%_
                      _%g5405754471%_
                      (foldr (lambda (_%g5449554498%_ _%g5449654501%_)
                               (cons _%g5449554498%_ _%g5449654501%_))
                             '()
                             _%g5405654469%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8753587536%_
                   (lambda (_%g5408354349%_ _%g5408454351%_ _%g5408554352%_)
                     (_%expand53993%_
                      _%g5408554352%_
                      _%g5408454351%_
                      (foldr (lambda (_%g5437554378%_ _%g5437654381%_)
                               (cons _%g5437554378%_ _%g5437654381%_))
                             '()
                             _%g5408354349%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8753987540%_
                   (lambda (_%g5411054227%_ _%g5411154229%_ _%g5411254230%_)
                     (_%expand53993%_
                      _%g5411254230%_
                      _%g5411154229%_
                      (foldr (lambda (_%g5425554258%_ _%g5425654261%_)
                               (cons _%g5425554258%_ _%g5425654261%_))
                             '()
                             _%g5411054227%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8775987760%_
                      (lambda (_%e5411354149%_
                               _%hd5411454153%_
                               _%tl5411554156%_
                               _%e5411654159%_
                               _%hd5411754163%_
                               _%tl5411854166%_
                               _%e5411954169%_
                               _%hd5412054173%_
                               _%tl5412154176%_
                               _%e5412254179%_
                               _%hd5412354183%_
                               _%tl5412454186%_
                               _%e5412554189%_
                               _%hd5412654193%_
                               _%tl5412754196%_
                               _%__splice8754187542%_
                               _%target5412854199%_
                               _%tl5413054202%_)
                        (letrec ((_%loop5413154205%_
                                  (lambda (_%hd5412954209%_ _%body5413554212%_)
                                    (if (gx#stx-pair? _%hd5412954209%_)
                                        (let ((_%e5413254214%_
                                               (gx#syntax-e _%hd5412954209%_)))
                                          (let ((_%lp-tl5413454221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5413254214%_)))
                                                (_%lp-hd5413354218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5413254214%_))))
                                            (_%loop5413154205%_
                                             _%lp-tl5413454221%_
                                             (cons _%lp-hd5413354218%_
                                                   _%body5413554212%_))))
                                        (let ((_%body5413654224%_
                                               (reverse _%body5413554212%_)))
                                          (let ((_%g5411054227%_
                                                 _%body5413654224%_)
                                                (_%g5411154229%_
                                                 _%hd5412654193%_)
                                                (_%g5411254230%_
                                                 _%hd5412054173%_))
                                            (if (and (gx#identifier?
                                                      _%g5411254230%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5411154229%_)))
                                                (_%__kont8753987540%_
                                                 _%g5411054227%_
                                                 _%g5411154229%_
                                                 _%g5411254230%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))))))))
                          (_%loop5413154205%_ _%target5412854199%_ '()))))
                     (_%__match8771587716%_
                      (lambda (_%e5408654271%_
                               _%hd5408754275%_
                               _%tl5408854278%_
                               _%e5408954281%_
                               _%hd5409054285%_
                               _%tl5409154288%_
                               _%e5409254291%_
                               _%hd5409354295%_
                               _%tl5409454298%_
                               _%e5409554301%_
                               _%hd5409654305%_
                               _%tl5409754308%_
                               _%e5409854311%_
                               _%hd5409954315%_
                               _%tl5410054318%_
                               _%__splice8753787538%_
                               _%target5410154321%_
                               _%tl5410354324%_)
                        (letrec ((_%loop5410454327%_
                                  (lambda (_%hd5410254331%_ _%body5410854334%_)
                                    (if (gx#stx-pair? _%hd5410254331%_)
                                        (let ((_%e5410554336%_
                                               (gx#syntax-e _%hd5410254331%_)))
                                          (let ((_%lp-tl5410754343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5410554336%_)))
                                                (_%lp-hd5410654340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5410554336%_))))
                                            (_%loop5410454327%_
                                             _%lp-tl5410754343%_
                                             (cons _%lp-hd5410654340%_
                                                   _%body5410854334%_))))
                                        (let ((_%body5410954346%_
                                               (reverse _%body5410854334%_)))
                                          (let ((_%g5408354349%_
                                                 _%body5410954346%_)
                                                (_%g5408454351%_
                                                 _%hd5409954315%_)
                                                (_%g5408554352%_
                                                 _%hd5409354295%_))
                                            (if (and (gx#identifier?
                                                      _%g5408554352%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5408454351%_)))
                                                (_%__kont8753587536%_
                                                 _%g5408354349%_
                                                 _%g5408454351%_
                                                 _%g5408554352%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))))))))
                          (_%loop5410454327%_ _%target5410154321%_ '()))))
                     (_%__match8767187672%_
                      (lambda (_%e5405954391%_
                               _%hd5406054395%_
                               _%tl5406154398%_
                               _%e5406254401%_
                               _%hd5406354405%_
                               _%tl5406454408%_
                               _%e5406554411%_
                               _%hd5406654415%_
                               _%tl5406754418%_
                               _%e5406854421%_
                               _%hd5406954425%_
                               _%tl5407054428%_
                               _%e5407154431%_
                               _%hd5407254435%_
                               _%tl5407354438%_
                               _%__splice8753387534%_
                               _%target5407454441%_
                               _%tl5407654444%_)
                        (letrec ((_%loop5407754447%_
                                  (lambda (_%hd5407554451%_ _%body5408154454%_)
                                    (if (gx#stx-pair? _%hd5407554451%_)
                                        (let ((_%e5407854456%_
                                               (gx#syntax-e _%hd5407554451%_)))
                                          (let ((_%lp-tl5408054463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5407854456%_)))
                                                (_%lp-hd5407954460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5407854456%_))))
                                            (_%loop5407754447%_
                                             _%lp-tl5408054463%_
                                             (cons _%lp-hd5407954460%_
                                                   _%body5408154454%_))))
                                        (let ((_%body5408254466%_
                                               (reverse _%body5408154454%_)))
                                          (let ((_%g5405654469%_
                                                 _%body5408254466%_)
                                                (_%g5405754471%_
                                                 _%hd5407254435%_)
                                                (_%g5405854472%_
                                                 _%hd5406654415%_))
                                            (if (and (gx#identifier?
                                                      _%g5405854472%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5405754471%_)))
                                                (_%__kont8753187532%_
                                                 _%g5405654469%_
                                                 _%g5405754471%_
                                                 _%g5405854472%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))))))))
                          (_%loop5407754447%_ _%target5407454441%_ '()))))
                     (_%__match8762787628%_
                      (lambda (_%e5403254511%_
                               _%hd5403354515%_
                               _%tl5403454518%_
                               _%e5403554521%_
                               _%hd5403654525%_
                               _%tl5403754528%_
                               _%e5403854531%_
                               _%hd5403954535%_
                               _%tl5404054538%_
                               _%e5404154541%_
                               _%hd5404254545%_
                               _%tl5404354548%_
                               _%e5404454551%_
                               _%hd5404554555%_
                               _%tl5404654558%_
                               _%__splice8752987530%_
                               _%target5404754561%_
                               _%tl5404954564%_)
                        (letrec ((_%loop5405054567%_
                                  (lambda (_%hd5404854571%_ _%body5405454574%_)
                                    (if (gx#stx-pair? _%hd5404854571%_)
                                        (let ((_%e5405154576%_
                                               (gx#syntax-e _%hd5404854571%_)))
                                          (let ((_%lp-tl5405354583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5405154576%_)))
                                                (_%lp-hd5405254580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5405154576%_))))
                                            (_%loop5405054567%_
                                             _%lp-tl5405354583%_
                                             (cons _%lp-hd5405254580%_
                                                   _%body5405454574%_))))
                                        (let ((_%body5405554586%_
                                               (reverse _%body5405454574%_)))
                                          (let ((_%g5402954589%_
                                                 _%body5405554586%_)
                                                (_%g5403054591%_
                                                 _%hd5404554555%_)
                                                (_%g5403154592%_
                                                 _%hd5403954535%_))
                                            (if (and (gx#identifier?
                                                      _%g5403154592%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5403054591%_)))
                                                (_%__kont8752787528%_
                                                 _%g5402954589%_
                                                 _%g5403054591%_
                                                 _%g5403154592%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))))))))
                          (_%loop5405054567%_ _%target5404754561%_ '()))))
                     (_%__match8760787608%_
                      (lambda (_%e5403254511%_
                               _%hd5403354515%_
                               _%tl5403454518%_
                               _%e5403554521%_
                               _%hd5403654525%_
                               _%tl5403754528%_
                               _%e5403854531%_
                               _%hd5403954535%_
                               _%tl5404054538%_
                               _%e5404154541%_
                               _%hd5404254545%_
                               _%tl5404354548%_)
                        (if (gx#identifier? _%hd5404254545%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92714_|
                                 _%hd5404254545%_)
                                (if (gx#stx-pair? _%tl5404354548%_)
                                    (let ((_%e5404454551%_
                                           (gx#syntax-e _%tl5404354548%_)))
                                      (let ((_%tl5404654558%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5404454551%_)))
                                            (_%hd5404554555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5404454551%_))))
                                        (if (gx#stx-null? _%tl5404654558%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5403754528%_)
                                                (let ((_%__splice8752987530%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5403754528%_
                                                        '0)))
                                                  (let ((_%tl5404954564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8752987530%_
                                                            '1)))
                                                        (_%target5404754561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8752987530%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5404954564%_)
                                                        (_%__match8762787628%_
                                                         _%e5403254511%_
                                                         _%hd5403354515%_
                                                         _%tl5403454518%_
                                                         _%e5403554521%_
                                                         _%hd5403654525%_
                                                         _%tl5403754528%_
                                                         _%e5403854531%_
                                                         _%hd5403954535%_
                                                         _%tl5404054538%_
                                                         _%e5404154541%_
                                                         _%hd5404254545%_
                                                         _%tl5404354548%_
                                                         _%e5404454551%_
                                                         _%hd5404554555%_
                                                         _%tl5404654558%_
                                                         _%__splice8752987530%_
                                                         _%target5404754561%_
                                                         _%tl5404954564%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5399954142%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5399954142%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5399954142%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92715_|
                                     _%hd5404254545%_)
                                    (if (gx#stx-pair? _%tl5404354548%_)
                                        (let ((_%e5407154431%_
                                               (gx#syntax-e _%tl5404354548%_)))
                                          (let ((_%tl5407354438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5407154431%_)))
                                                (_%hd5407254435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5407154431%_))))
                                            (if (gx#stx-null? _%tl5407354438%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5403754528%_)
                                                    (let ((_%__splice8753387534%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5403754528%_
                                                            '0)))
                                                      (let ((_%tl5407654444%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8753387534%_ '1)))
                    (_%target5407454441%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8753387534%_ '0))))
                (if (gx#stx-null? _%tl5407654444%_)
                    (_%__match8767187672%_
                     _%e5403254511%_
                     _%hd5403354515%_
                     _%tl5403454518%_
                     _%e5403554521%_
                     _%hd5403654525%_
                     _%tl5403754528%_
                     _%e5403854531%_
                     _%hd5403954535%_
                     _%tl5404054538%_
                     _%e5404154541%_
                     _%hd5404254545%_
                     _%tl5404354548%_
                     _%e5407154431%_
                     _%hd5407254435%_
                     _%tl5407354438%_
                     _%__splice8753387534%_
                     _%target5407454441%_
                     _%tl5407654444%_)
                    (let () (declare (not safe)) (_%g5399954142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5399954142%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5399954142%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92716_|
                                         _%hd5404254545%_)
                                        (if (gx#stx-pair? _%tl5404354548%_)
                                            (let ((_%e5409854311%_
                                                   (gx#syntax-e
                                                    _%tl5404354548%_)))
                                              (let ((_%tl5410054318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5409854311%_)))
                                                    (_%hd5409954315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5409854311%_))))
                                                (if (gx#stx-null?
                                                     _%tl5410054318%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5403754528%_)
                                                        (let ((_%__splice8753787538%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5403754528%_
                                                                '0)))
                                                          (let ((_%tl5410354324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8753787538%_ '1)))
                        (_%target5410154321%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8753787538%_ '0))))
                    (if (gx#stx-null? _%tl5410354324%_)
                        (_%__match8771587716%_
                         _%e5403254511%_
                         _%hd5403354515%_
                         _%tl5403454518%_
                         _%e5403554521%_
                         _%hd5403654525%_
                         _%tl5403754528%_
                         _%e5403854531%_
                         _%hd5403954535%_
                         _%tl5404054538%_
                         _%e5404154541%_
                         _%hd5404254545%_
                         _%tl5404354548%_
                         _%e5409854311%_
                         _%hd5409954315%_
                         _%tl5410054318%_
                         _%__splice8753787538%_
                         _%target5410154321%_
                         _%tl5410354324%_)
                        (let () (declare (not safe)) (_%g5399954142%_)))))
                (let () (declare (not safe)) (_%g5399954142%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5399954142%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5399954142%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92717_|
                                             _%hd5404254545%_)
                                            (if (gx#stx-pair? _%tl5404354548%_)
                                                (let ((_%e5412554189%_
                                                       (gx#syntax-e
                                                        _%tl5404354548%_)))
                                                  (let ((_%tl5412754196%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5412554189%_)))
                                                        (_%hd5412654193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5412554189%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5412754196%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5403754528%_)
                                                            (let ((_%__splice8754187542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5403754528%_
                            '0)))
                      (let ((_%tl5413054202%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8754187542%_ '1)))
                            (_%target5412854199%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8754187542%_ '0))))
                        (if (gx#stx-null? _%tl5413054202%_)
                            (_%__match8775987760%_
                             _%e5403254511%_
                             _%hd5403354515%_
                             _%tl5403454518%_
                             _%e5403554521%_
                             _%hd5403654525%_
                             _%tl5403754528%_
                             _%e5403854531%_
                             _%hd5403954535%_
                             _%tl5404054538%_
                             _%e5404154541%_
                             _%hd5404254545%_
                             _%tl5404354548%_
                             _%e5412554189%_
                             _%hd5412654193%_
                             _%tl5412754196%_
                             _%__splice8754187542%_
                             _%target5412854199%_
                             _%tl5413054202%_)
                            (let () (declare (not safe)) (_%g5399954142%_)))))
                    (let () (declare (not safe)) (_%g5399954142%_)))
                (let () (declare (not safe)) (_%g5399954142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5399954142%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5399954142%_))))))
                            (let () (declare (not safe)) (_%g5399954142%_)))))
                     (_%__match8758387584%_
                      (lambda (_%e5400554631%_
                               _%hd5400654635%_
                               _%tl5400754638%_
                               _%e5400854641%_
                               _%hd5400954645%_
                               _%tl5401054648%_
                               _%e5401154651%_
                               _%hd5401254655%_
                               _%tl5401354658%_
                               _%e5401454661%_
                               _%hd5401554665%_
                               _%tl5401654668%_
                               _%e5401754671%_
                               _%hd5401854675%_
                               _%tl5401954678%_
                               _%__splice8752587526%_
                               _%target5402054681%_
                               _%tl5402254684%_)
                        (letrec ((_%loop5402354687%_
                                  (lambda (_%hd5402154691%_ _%body5402754694%_)
                                    (if (gx#stx-pair? _%hd5402154691%_)
                                        (let ((_%e5402454696%_
                                               (gx#syntax-e _%hd5402154691%_)))
                                          (let ((_%lp-tl5402654703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5402454696%_)))
                                                (_%lp-hd5402554700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5402454696%_))))
                                            (_%loop5402354687%_
                                             _%lp-tl5402654703%_
                                             (cons _%lp-hd5402554700%_
                                                   _%body5402754694%_))))
                                        (let ((_%body5402854706%_
                                               (reverse _%body5402754694%_)))
                                          (let ((_%g5400154709%_
                                                 _%body5402854706%_)
                                                (_%g5400254711%_
                                                 _%hd5401854675%_)
                                                (_%g5400354712%_
                                                 _%hd5401554665%_)
                                                (_%g5400454713%_
                                                 _%hd5401254655%_))
                                            (if (let ((__tmp92718
                                                       (gx#syntax-local-value
                                                        _%g5400254711%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92718))
                                                (_%__kont8752387524%_
                                                 _%g5400154709%_
                                                 _%g5400254711%_
                                                 _%g5400354712%_
                                                 _%g5400454713%_)
                                                (_%__match8760787608%_
                                                 _%e5400554631%_
                                                 _%hd5400654635%_
                                                 _%tl5400754638%_
                                                 _%e5400854641%_
                                                 _%hd5400954645%_
                                                 _%tl5401054648%_
                                                 _%e5401154651%_
                                                 _%hd5401254655%_
                                                 _%tl5401354658%_
                                                 _%e5401454661%_
                                                 _%hd5401554665%_
                                                 _%tl5401654668%_))))))))
                          (_%loop5402354687%_ _%target5402054681%_ '())))))
                (if (gx#stx-pair? _%__stx8752087521%_)
                    (let ((_%e5400554631%_ (gx#syntax-e _%__stx8752087521%_)))
                      (let ((_%tl5400754638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5400554631%_)))
                            (_%hd5400654635%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5400554631%_))))
                        (if (gx#stx-pair? _%tl5400754638%_)
                            (let ((_%e5400854641%_
                                   (gx#syntax-e _%tl5400754638%_)))
                              (let ((_%tl5401054648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5400854641%_)))
                                    (_%hd5400954645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5400854641%_))))
                                (if (gx#stx-pair? _%hd5400954645%_)
                                    (let ((_%e5401154651%_
                                           (gx#syntax-e _%hd5400954645%_)))
                                      (let ((_%tl5401354658%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5401154651%_)))
                                            (_%hd5401254655%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5401154651%_))))
                                        (if (gx#stx-pair? _%tl5401354658%_)
                                            (let ((_%e5401454661%_
                                                   (gx#syntax-e
                                                    _%tl5401354658%_)))
                                              (let ((_%tl5401654668%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5401454661%_)))
                                                    (_%hd5401554665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5401454661%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5401654668%_)
                                                    (let ((_%e5401754671%_
                                                           (gx#syntax-e
                                                            _%tl5401654668%_)))
                                                      (let ((_%tl5401954678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5401754671%_)))
                    (_%hd5401854675%_
                     (let () (declare (not safe)) (##car _%e5401754671%_))))
                (if (gx#stx-null? _%tl5401954678%_)
                    (if (gx#stx-pair/null? _%tl5401054648%_)
                        (let ((_%__splice8752587526%_
                               (gx#syntax-split-splice->vector
                                _%tl5401054648%_
                                '0)))
                          (let ((_%tl5402254684%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8752587526%_ '1)))
                                (_%target5402054681%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8752587526%_ '0))))
                            (if (gx#stx-null? _%tl5402254684%_)
                                (_%__match8758387584%_
                                 _%e5400554631%_
                                 _%hd5400654635%_
                                 _%tl5400754638%_
                                 _%e5400854641%_
                                 _%hd5400954645%_
                                 _%tl5401054648%_
                                 _%e5401154651%_
                                 _%hd5401254655%_
                                 _%tl5401354658%_
                                 _%e5401454661%_
                                 _%hd5401554665%_
                                 _%tl5401654668%_
                                 _%e5401754671%_
                                 _%hd5401854675%_
                                 _%tl5401954678%_
                                 _%__splice8752587526%_
                                 _%target5402054681%_
                                 _%tl5402254684%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5399954142%_)))))
                        (let () (declare (not safe)) (_%g5399954142%_)))
                    (let () (declare (not safe)) (_%g5399954142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5399954142%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5399954142%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5399954142%_)))))
                            (let () (declare (not safe)) (_%g5399954142%_)))))
                    (let () (declare (not safe)) (_%g5399954142%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55201%_)
        (let* ((_%__stx8776287763%_ _%stx55201%_)
               (_%g5520655266%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8776287763%_))))
          (let ((_%__kont8776587766%_
                 (lambda (_%g5520855822%_ _%g5520955824%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5520955824%_ '()))
                               (foldr (lambda (_%g5584055843%_ _%g5584155846%_)
                                        (cons _%g5584055843%_ _%g5584155846%_))
                                      '()
                                      _%g5520855822%_)))))
                (_%__kont8776987770%_
                 (lambda (_%g5522555410%_ _%g5522655412%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5522655412%_)
                       (let* ((_%g5543255439%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55201%_
                                _%g5522655412%_))
                              (_%E5543455445%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5543255439%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5543555743%_
                               (lambda (_%parts55449%_ _%var55451%_)
                                 (let ((_%$e55453%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55451%_))))
                                   (if _%$e55453%_
                                       ((lambda (_%te55457%_)
                                          (let _%loop55460%_ ((_%parts55463%_
                                                               _%parts55449%_)
                                                              (_%type55465%_
                                                               (##direct-structure-ref
                                                                _%te55457%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55466%_
                                                               _%var55451%_)
                                                              (_%checked-method?55467%_
                                                               (##direct-structure-ref
                                                                _%te55457%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55468%_
                                                               '#f))
                                            (let* ((_%parts5546955477%_
                                                    _%parts55463%_)
                                                   (_%else5547155538%_
                                                    (lambda ()
                                                      (let* ((_%g5548955497%_
                                                              (lambda (_%g5549055493%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5549055493%_)))
                     (_%g5548855534%_
                      (lambda (_%g5549055501%_)
                        ((lambda (_%g5549155504%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5549155504%_
                                       (foldr (lambda (_%g5552555528%_
                                                       _%g5552655531%_)
                                                (cons _%g5552555528%_
                                                      _%g5552655531%_))
                                              '()
                                              _%g5522555410%_))))
                         _%g5549055501%_))))
                (_%g5548855534%_ _%object55466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5547355717%_
                                                    (lambda (_%rest55542%_
                                                             _%part55544%_)
                                                      (if (and (not _%nil-check?55468%_)
                                                               (let ((__tmp92719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55544%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp92719)))
                  (let ((_%str55548%_ (symbol->string _%part55544%_)))
                    (_%loop55460%_
                     (cons (let ((__tmp92720
                                  (substring
                                   _%str55548%_
                                   '1
                                   (string-length _%str55548%_))))
                             (declare (not safe))
                             (##string->symbol __tmp92720))
                           _%rest55542%_)
                     _%type55465%_
                     _%object55466%_
                     _%checked-method?55467%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55465%_))
                      (let* ((_%g5555355568%_
                              (lambda (_%g5555455564%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5555455564%_)))
                             (_%g5555255637%_
                              (lambda (_%g5555455572%_)
                                (if (gx#stx-pair? _%g5555455572%_)
                                    (let ((_%e5555755575%_
                                           (gx#syntax-e _%g5555455572%_)))
                                      (let ((_%hd5555855579%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5555755575%_)))
                                            (_%tl5555955582%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5555755575%_))))
                                        (if (gx#stx-pair? _%tl5555955582%_)
                                            (let ((_%e5556055585%_
                                                   (gx#syntax-e
                                                    _%tl5555955582%_)))
                                              (let ((_%hd5556155589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5556055585%_)))
                                                    (_%tl5556255592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5556055585%_))))
                                                (if (gx#stx-null?
                                                     _%tl5556255592%_)
                                                    ((lambda (_%g5555555595%_
                                                              _%g5555655597%_)
                                                       (if (null? _%rest55542%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5555555595%_
                                     (cons _%g5555655597%_ '()))
                               (foldr (lambda (_%g5561655619%_ _%g5561755622%_)
                                        (cons _%g5561655619%_ _%g5561755622%_))
                                      '()
                                      _%g5522555410%_)))
                   (let ((_%$e55625%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55465%_
                           _%part55544%_)))
                     (if _%$e55625%_
                         ((lambda (_%slot-type55629%_)
                            (let ((_%slot-type55632%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55201%_
                                      _%slot-type55629%_))))
                              (_%loop55460%_
                               _%rest55542%_
                               _%slot-type55632%_
                               (cons _%g5555555595%_
                                     (cons _%g5555655597%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55465%_
                                _%part55544%_)
                               '#f)))
                          _%$e55625%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55201%_
                          _%g5522655412%_
                          _%part55544%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5556155589%_
                                                     _%hd5555855579%_)
                                                    (_%g5555355568%_
                                                     _%g5555455572%_))))
                                            (_%g5555355568%_
                                             _%g5555455572%_))))
                                    (_%g5555355568%_ _%g5555455572%_)))))
                        (_%g5555255637%_
                         (list (if _%nil-check?55468%_
                                   (cons 'check-nil!
                                         (cons _%object55466%_ '()))
                                   _%object55466%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55201%_
                                _%type55465%_
                                _%part55544%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55465%_))
                          (if (null? _%rest55542%_)
                              (let* ((_%g5564355658%_
                                      (lambda (_%g5564455654%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5564455654%_)))
                                     (_%g5564255711%_
                                      (lambda (_%g5564455662%_)
                                        (if (gx#stx-pair? _%g5564455662%_)
                                            (let ((_%e5564755665%_
                                                   (gx#syntax-e
                                                    _%g5564455662%_)))
                                              (let ((_%hd5564855669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5564755665%_)))
                                                    (_%tl5564955672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5564755665%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5564955672%_)
                                                    (let ((_%e5565055675%_
                                                           (gx#syntax-e
                                                            _%tl5564955672%_)))
                                                      (let ((_%hd5565155679%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5565055675%_)))
                    (_%tl5565255682%_
                     (let () (declare (not safe)) (##cdr _%e5565055675%_))))
                (if (gx#stx-null? _%tl5565255682%_)
                    ((lambda (_%g5564555685%_ _%g5564655687%_)
                       (cons _%g5564555685%_
                             (cons _%g5564655687%_
                                   (foldr (lambda (_%g5570255705%_
                                                   _%g5570355708%_)
                                            (cons _%g5570255705%_
                                                  _%g5570355708%_))
                                          '()
                                          _%g5522555410%_))))
                     _%hd5565155679%_
                     _%hd5564855669%_)
                    (_%g5564355658%_ _%g5564455662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5564355658%_
                                                     _%g5564455662%_))))
                                            (_%g5564355658%_
                                             _%g5564455662%_)))))
                                (_%g5564255711%_
                                 (list (if _%nil-check?55468%_
                                           (cons 'check-nil!
                                                 (cons _%object55466%_ '()))
                                           _%object55466%_)
                                       (gx#stx-identifier
                                        _%g5522655412%_
                                        (if _%checked-method?55467%_ '"" '"&")
                                        (let ((__obj92524 _%type55465%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj92524
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj92524
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj92524
                                               'name)))
                                        '"-"
                                        _%part55544%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55201%_
                               _%g5522655412%_
                               _%part55544%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55201%_
                           _%type55465%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5546955477%_)
                                                  (let ((_%hd5547455721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5546955477%_)))
                                                        (_%tl5547555724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5546955477%_))))
                                                    (let* ((_%part55727%_
                                                            _%hd5547455721%_)
                                                           (_%rest55730%_
                                                            _%tl5547555724%_))
                                                      (_%K5547355717%_
                                                       _%rest55730%_
                                                       _%part55727%_)))
                                                  (_%else5547155538%_)))))
                                        _%$e55453%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5522655412%_
                                                   (foldr (lambda (_%g5573455737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5573555740%_)
                    (cons _%g5573455737%_ _%g5573555740%_))
                  '()
                  _%g5522555410%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5543255439%_)
                             (let ((_%hd5543655747%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5543255439%_)))
                                   (_%tl5543755750%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5543255439%_))))
                               (let* ((_%var55753%_ _%hd5543655747%_)
                                      (_%parts55756%_ _%tl5543755750%_))
                                 (_%K5543555743%_
                                  _%parts55756%_
                                  _%var55753%_)))
                             (_%E5543455445%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5522655412%_
                                   (foldr (lambda (_%g5575855761%_
                                                   _%g5575955764%_)
                                            (cons _%g5575855761%_
                                                  _%g5575955764%_))
                                          '()
                                          _%g5522555410%_))))))
                (_%__kont8777387774%_
                 (lambda (_%g5524855311%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5532655329%_ _%g5532755332%_)
                                  (cons _%g5532655329%_ _%g5532755332%_))
                                '()
                                _%g5524855311%_)))))
            (let* ((_%__match8784987850%_
                    (lambda (_%e5524955273%_
                             _%hd5525055277%_
                             _%tl5525155280%_
                             _%__splice8777587776%_
                             _%target5525255283%_
                             _%tl5525455286%_)
                      (letrec ((_%loop5525555289%_
                                (lambda (_%hd5525355293%_ _%arg5525955296%_)
                                  (if (gx#stx-pair? _%hd5525355293%_)
                                      (let ((_%e5525655298%_
                                             (gx#syntax-e _%hd5525355293%_)))
                                        (let ((_%lp-tl5525855305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5525655298%_)))
                                              (_%lp-hd5525755302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5525655298%_))))
                                          (_%loop5525555289%_
                                           _%lp-tl5525855305%_
                                           (cons _%lp-hd5525755302%_
                                                 _%arg5525955296%_))))
                                      (let ((_%arg5526055308%_
                                             (reverse _%arg5525955296%_)))
                                        (_%__kont8777387774%_
                                         _%arg5526055308%_))))))
                        (_%loop5525555289%_ _%target5525255283%_ '()))))
                   (_%__match8783587836%_
                    (lambda (_%e5522755342%_
                             _%hd5522855346%_
                             _%tl5522955349%_
                             _%e5523055352%_
                             _%hd5523155356%_
                             _%tl5523255359%_
                             _%e5523355362%_
                             _%hd5523455366%_
                             _%tl5523555369%_
                             _%e5523655372%_
                             _%hd5523755376%_
                             _%tl5523855379%_
                             _%__splice8777187772%_
                             _%target5523955382%_
                             _%tl5524155385%_)
                      (letrec ((_%loop5524255388%_
                                (lambda (_%hd5524055392%_ _%rand5524655395%_)
                                  (if (gx#stx-pair? _%hd5524055392%_)
                                      (let ((_%e5524355397%_
                                             (gx#syntax-e _%hd5524055392%_)))
                                        (let ((_%lp-tl5524555404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5524355397%_)))
                                              (_%lp-hd5524455401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5524355397%_))))
                                          (_%loop5524255388%_
                                           _%lp-tl5524555404%_
                                           (cons _%lp-hd5524455401%_
                                                 _%rand5524655395%_))))
                                      (let ((_%rand5524755407%_
                                             (reverse _%rand5524655395%_)))
                                        (_%__kont8776987770%_
                                         _%rand5524755407%_
                                         _%hd5523755376%_))))))
                        (_%loop5524255388%_ _%target5523955382%_ '()))))
                   (_%__match8780987810%_
                    (lambda (_%e5522755342%_
                             _%hd5522855346%_
                             _%tl5522955349%_
                             _%e5523055352%_
                             _%hd5523155356%_
                             _%tl5523255359%_)
                      (if (gx#stx-pair? _%hd5523155356%_)
                          (let ((_%e5523355362%_
                                 (gx#syntax-e _%hd5523155356%_)))
                            (let ((_%tl5523555369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5523355362%_)))
                                  (_%hd5523455366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5523355362%_))))
                              (if (gx#identifier? _%hd5523455366%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92721_|
                                       _%hd5523455366%_)
                                      (if (gx#stx-pair? _%tl5523555369%_)
                                          (let ((_%e5523655372%_
                                                 (gx#syntax-e
                                                  _%tl5523555369%_)))
                                            (let ((_%tl5523855379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5523655372%_)))
                                                  (_%hd5523755376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5523655372%_))))
                                              (if (gx#stx-null?
                                                   _%tl5523855379%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5523255359%_)
                                                      (let ((_%__splice8777187772%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5523255359%_
                                                              '0)))
                                                        (let ((_%tl5524155385%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8777187772%_ '1)))
                      (_%target5523955382%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8777187772%_ '0))))
                  (if (gx#stx-null? _%tl5524155385%_)
                      (_%__match8783587836%_
                       _%e5522755342%_
                       _%hd5522855346%_
                       _%tl5522955349%_
                       _%e5523055352%_
                       _%hd5523155356%_
                       _%tl5523255359%_
                       _%e5523355362%_
                       _%hd5523455366%_
                       _%tl5523555369%_
                       _%e5523655372%_
                       _%hd5523755376%_
                       _%tl5523855379%_
                       _%__splice8777187772%_
                       _%target5523955382%_
                       _%tl5524155385%_)
                      (if (gx#stx-pair/null? _%tl5522955349%_)
                          (let ((_%__splice8777587776%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5522955349%_
                                  '0)))
                            (let ((_%tl5525455286%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8777587776%_ '1)))
                                  (_%target5525255283%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8777587776%_
                                      '0))))
                              (if (gx#stx-null? _%tl5525455286%_)
                                  (_%__match8784987850%_
                                   _%e5522755342%_
                                   _%hd5522855346%_
                                   _%tl5522955349%_
                                   _%__splice8777587776%_
                                   _%target5525255283%_
                                   _%tl5525455286%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5520655266%_)))))
                          (let () (declare (not safe)) (_%g5520655266%_))))))
              (if (gx#stx-pair/null? _%tl5522955349%_)
                  (let ((_%__splice8777587776%_
                         (gx#syntax-split-splice->vector _%tl5522955349%_ '0)))
                    (let ((_%tl5525455286%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8777587776%_ '1)))
                          (_%target5525255283%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8777587776%_ '0))))
                      (if (gx#stx-null? _%tl5525455286%_)
                          (_%__match8784987850%_
                           _%e5522755342%_
                           _%hd5522855346%_
                           _%tl5522955349%_
                           _%__splice8777587776%_
                           _%target5525255283%_
                           _%tl5525455286%_)
                          (let () (declare (not safe)) (_%g5520655266%_)))))
                  (let () (declare (not safe)) (_%g5520655266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5522955349%_)
                                                      (let ((_%__splice8777587776%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5522955349%_
                                                              '0)))
                                                        (let ((_%tl5525455286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8777587776%_ '1)))
                      (_%target5525255283%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8777587776%_ '0))))
                  (if (gx#stx-null? _%tl5525455286%_)
                      (_%__match8784987850%_
                       _%e5522755342%_
                       _%hd5522855346%_
                       _%tl5522955349%_
                       _%__splice8777587776%_
                       _%target5525255283%_
                       _%tl5525455286%_)
                      (let () (declare (not safe)) (_%g5520655266%_)))))
              (let () (declare (not safe)) (_%g5520655266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5522955349%_)
                                              (let ((_%__splice8777587776%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5522955349%_
                                                      '0)))
                                                (let ((_%tl5525455286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8777587776%_
                                                          '1)))
                                                      (_%target5525255283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8777587776%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5525455286%_)
                                                      (_%__match8784987850%_
                                                       _%e5522755342%_
                                                       _%hd5522855346%_
                                                       _%tl5522955349%_
                                                       _%__splice8777587776%_
                                                       _%target5525255283%_
                                                       _%tl5525455286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5520655266%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5520655266%_))))
                                      (if (gx#stx-pair/null? _%tl5522955349%_)
                                          (let ((_%__splice8777587776%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5522955349%_
                                                  '0)))
                                            (let ((_%tl5525455286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8777587776%_
                                                      '1)))
                                                  (_%target5525255283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8777587776%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5525455286%_)
                                                  (_%__match8784987850%_
                                                   _%e5522755342%_
                                                   _%hd5522855346%_
                                                   _%tl5522955349%_
                                                   _%__splice8777587776%_
                                                   _%target5525255283%_
                                                   _%tl5525455286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5520655266%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5520655266%_))))
                                  (if (gx#stx-pair/null? _%tl5522955349%_)
                                      (let ((_%__splice8777587776%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5522955349%_
                                              '0)))
                                        (let ((_%tl5525455286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8777587776%_
                                                  '1)))
                                              (_%target5525255283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8777587776%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5525455286%_)
                                              (_%__match8784987850%_
                                               _%e5522755342%_
                                               _%hd5522855346%_
                                               _%tl5522955349%_
                                               _%__splice8777587776%_
                                               _%target5525255283%_
                                               _%tl5525455286%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5520655266%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5520655266%_))))))
                          (if (gx#stx-pair/null? _%tl5522955349%_)
                              (let ((_%__splice8777587776%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5522955349%_
                                      '0)))
                                (let ((_%tl5525455286%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8777587776%_
                                          '1)))
                                      (_%target5525255283%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8777587776%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5525455286%_)
                                      (_%__match8784987850%_
                                       _%e5522755342%_
                                       _%hd5522855346%_
                                       _%tl5522955349%_
                                       _%__splice8777587776%_
                                       _%target5525255283%_
                                       _%tl5525455286%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5520655266%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5520655266%_))))))
                   (_%__match8779787798%_
                    (lambda (_%e5521055774%_
                             _%hd5521155778%_
                             _%tl5521255781%_
                             _%e5521355784%_
                             _%hd5521455788%_
                             _%tl5521555791%_
                             _%__splice8776787768%_
                             _%target5521655794%_
                             _%tl5521855797%_)
                      (letrec ((_%loop5521955800%_
                                (lambda (_%hd5521755804%_ _%rand5522355807%_)
                                  (if (gx#stx-pair? _%hd5521755804%_)
                                      (let ((_%e5522055809%_
                                             (gx#syntax-e _%hd5521755804%_)))
                                        (let ((_%lp-tl5522255816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5522055809%_)))
                                              (_%lp-hd5522155813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5522055809%_))))
                                          (_%loop5521955800%_
                                           _%lp-tl5522255816%_
                                           (cons _%lp-hd5522155813%_
                                                 _%rand5522355807%_))))
                                      (let ((_%rand5522455819%_
                                             (reverse _%rand5522355807%_)))
                                        (let ((_%g5520855822%_
                                               _%rand5522455819%_)
                                              (_%g5520955824%_
                                               _%hd5521455788%_))
                                          (if (gx#identifier? _%g5520955824%_)
                                              (_%__kont8776587766%_
                                               _%g5520855822%_
                                               _%g5520955824%_)
                                              (_%__match8780987810%_
                                               _%e5521055774%_
                                               _%hd5521155778%_
                                               _%tl5521255781%_
                                               _%e5521355784%_
                                               _%hd5521455788%_
                                               _%tl5521555791%_))))))))
                        (_%loop5521955800%_ _%target5521655794%_ '())))))
              (if (gx#stx-pair? _%__stx8776287763%_)
                  (let ((_%e5521055774%_ (gx#syntax-e _%__stx8776287763%_)))
                    (let ((_%tl5521255781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5521055774%_)))
                          (_%hd5521155778%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5521055774%_))))
                      (if (gx#stx-pair? _%tl5521255781%_)
                          (let ((_%e5521355784%_
                                 (gx#syntax-e _%tl5521255781%_)))
                            (let ((_%tl5521555791%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5521355784%_)))
                                  (_%hd5521455788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5521355784%_))))
                              (if (gx#stx-pair/null? _%tl5521555791%_)
                                  (let ((_%__splice8776787768%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5521555791%_
                                          '0)))
                                    (let ((_%tl5521855797%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8776787768%_
                                              '1)))
                                          (_%target5521655794%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8776787768%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5521855797%_)
                                          (_%__match8779787798%_
                                           _%e5521055774%_
                                           _%hd5521155778%_
                                           _%tl5521255781%_
                                           _%e5521355784%_
                                           _%hd5521455788%_
                                           _%tl5521555791%_
                                           _%__splice8776787768%_
                                           _%target5521655794%_
                                           _%tl5521855797%_)
                                          (if (gx#stx-pair? _%hd5521455788%_)
                                              (let ((_%e5523355362%_
                                                     (gx#syntax-e
                                                      _%hd5521455788%_)))
                                                (let ((_%tl5523555369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5523355362%_)))
                                                      (_%hd5523455366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5523355362%_))))
                                                  (if (gx#identifier?
                                                       _%hd5523455366%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92721_|
                                                           _%hd5523455366%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5523555369%_)
                                                              (let ((_%e5523655372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5523555369%_)))
                        (let ((_%tl5523855379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5523655372%_)))
                              (_%hd5523755376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5523655372%_))))
                          (if (gx#stx-pair/null? _%tl5521255781%_)
                              (let ((_%__splice8777587776%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5521255781%_
                                      '0)))
                                (let ((_%tl5525455286%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8777587776%_
                                          '1)))
                                      (_%target5525255283%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8777587776%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5525455286%_)
                                      (_%__match8784987850%_
                                       _%e5521055774%_
                                       _%hd5521155778%_
                                       _%tl5521255781%_
                                       _%__splice8777587776%_
                                       _%target5525255283%_
                                       _%tl5525455286%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5520655266%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5520655266%_)))))
                      (if (gx#stx-pair/null? _%tl5521255781%_)
                          (let ((_%__splice8777587776%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5521255781%_
                                  '0)))
                            (let ((_%tl5525455286%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8777587776%_ '1)))
                                  (_%target5525255283%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8777587776%_
                                      '0))))
                              (if (gx#stx-null? _%tl5525455286%_)
                                  (_%__match8784987850%_
                                   _%e5521055774%_
                                   _%hd5521155778%_
                                   _%tl5521255781%_
                                   _%__splice8777587776%_
                                   _%target5525255283%_
                                   _%tl5525455286%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5520655266%_)))))
                          (let () (declare (not safe)) (_%g5520655266%_))))
                  (if (gx#stx-pair/null? _%tl5521255781%_)
                      (let ((_%__splice8777587776%_
                             (gx#syntax-split-splice->vector
                              _%tl5521255781%_
                              '0)))
                        (let ((_%tl5525455286%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8777587776%_ '1)))
                              (_%target5525255283%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8777587776%_ '0))))
                          (if (gx#stx-null? _%tl5525455286%_)
                              (_%__match8784987850%_
                               _%e5521055774%_
                               _%hd5521155778%_
                               _%tl5521255781%_
                               _%__splice8777587776%_
                               _%target5525255283%_
                               _%tl5525455286%_)
                              (let ()
                                (declare (not safe))
                                (_%g5520655266%_)))))
                      (let () (declare (not safe)) (_%g5520655266%_))))
              (if (gx#stx-pair/null? _%tl5521255781%_)
                  (let ((_%__splice8777587776%_
                         (gx#syntax-split-splice->vector _%tl5521255781%_ '0)))
                    (let ((_%tl5525455286%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8777587776%_ '1)))
                          (_%target5525255283%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8777587776%_ '0))))
                      (if (gx#stx-null? _%tl5525455286%_)
                          (_%__match8784987850%_
                           _%e5521055774%_
                           _%hd5521155778%_
                           _%tl5521255781%_
                           _%__splice8777587776%_
                           _%target5525255283%_
                           _%tl5525455286%_)
                          (let () (declare (not safe)) (_%g5520655266%_)))))
                  (let () (declare (not safe)) (_%g5520655266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5521255781%_)
                                                  (let ((_%__splice8777587776%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5521255781%_
                                                          '0)))
                                                    (let ((_%tl5525455286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8777587776%_
                                                              '1)))
                                                          (_%target5525255283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8777587776%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5525455286%_)
                                                          (_%__match8784987850%_
                                                           _%e5521055774%_
                                                           _%hd5521155778%_
                                                           _%tl5521255781%_
                                                           _%__splice8777587776%_
                                                           _%target5525255283%_
                                                           _%tl5525455286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5520655266%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5520655266%_)))))))
                                  (if (gx#stx-pair? _%hd5521455788%_)
                                      (let ((_%e5523355362%_
                                             (gx#syntax-e _%hd5521455788%_)))
                                        (let ((_%tl5523555369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5523355362%_)))
                                              (_%hd5523455366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5523355362%_))))
                                          (if (gx#identifier? _%hd5523455366%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g92721_|
                                                   _%hd5523455366%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5523555369%_)
                                                      (let ((_%e5523655372%_
                                                             (gx#syntax-e
                                                              _%tl5523555369%_)))
                                                        (let ((_%tl5523855379%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5523655372%_)))
                      (_%hd5523755376%_
                       (let () (declare (not safe)) (##car _%e5523655372%_))))
                  (if (gx#stx-pair/null? _%tl5521255781%_)
                      (let ((_%__splice8777587776%_
                             (gx#syntax-split-splice->vector
                              _%tl5521255781%_
                              '0)))
                        (let ((_%tl5525455286%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8777587776%_ '1)))
                              (_%target5525255283%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8777587776%_ '0))))
                          (if (gx#stx-null? _%tl5525455286%_)
                              (_%__match8784987850%_
                               _%e5521055774%_
                               _%hd5521155778%_
                               _%tl5521255781%_
                               _%__splice8777587776%_
                               _%target5525255283%_
                               _%tl5525455286%_)
                              (let ()
                                (declare (not safe))
                                (_%g5520655266%_)))))
                      (let () (declare (not safe)) (_%g5520655266%_)))))
              (if (gx#stx-pair/null? _%tl5521255781%_)
                  (let ((_%__splice8777587776%_
                         (gx#syntax-split-splice->vector _%tl5521255781%_ '0)))
                    (let ((_%tl5525455286%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8777587776%_ '1)))
                          (_%target5525255283%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8777587776%_ '0))))
                      (if (gx#stx-null? _%tl5525455286%_)
                          (_%__match8784987850%_
                           _%e5521055774%_
                           _%hd5521155778%_
                           _%tl5521255781%_
                           _%__splice8777587776%_
                           _%target5525255283%_
                           _%tl5525455286%_)
                          (let () (declare (not safe)) (_%g5520655266%_)))))
                  (let () (declare (not safe)) (_%g5520655266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5521255781%_)
                                                      (let ((_%__splice8777587776%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5521255781%_
                                                              '0)))
                                                        (let ((_%tl5525455286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8777587776%_ '1)))
                      (_%target5525255283%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8777587776%_ '0))))
                  (if (gx#stx-null? _%tl5525455286%_)
                      (_%__match8784987850%_
                       _%e5521055774%_
                       _%hd5521155778%_
                       _%tl5521255781%_
                       _%__splice8777587776%_
                       _%target5525255283%_
                       _%tl5525455286%_)
                      (let () (declare (not safe)) (_%g5520655266%_)))))
              (let () (declare (not safe)) (_%g5520655266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5521255781%_)
                                                  (let ((_%__splice8777587776%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5521255781%_
                                                          '0)))
                                                    (let ((_%tl5525455286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8777587776%_
                                                              '1)))
                                                          (_%target5525255283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8777587776%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5525455286%_)
                                                          (_%__match8784987850%_
                                                           _%e5521055774%_
                                                           _%hd5521155778%_
                                                           _%tl5521255781%_
                                                           _%__splice8777587776%_
                                                           _%target5525255283%_
                                                           _%tl5525455286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5520655266%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5520655266%_))))))
                                      (if (gx#stx-pair/null? _%tl5521255781%_)
                                          (let ((_%__splice8777587776%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5521255781%_
                                                  '0)))
                                            (let ((_%tl5525455286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8777587776%_
                                                      '1)))
                                                  (_%target5525255283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8777587776%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5525455286%_)
                                                  (_%__match8784987850%_
                                                   _%e5521055774%_
                                                   _%hd5521155778%_
                                                   _%tl5521255781%_
                                                   _%__splice8777587776%_
                                                   _%target5525255283%_
                                                   _%tl5525455286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5520655266%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5520655266%_)))))))
                          (if (gx#stx-pair/null? _%tl5521255781%_)
                              (let ((_%__splice8777587776%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5521255781%_
                                      '0)))
                                (let ((_%tl5525455286%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8777587776%_
                                          '1)))
                                      (_%target5525255283%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8777587776%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5525455286%_)
                                      (_%__match8784987850%_
                                       _%e5521055774%_
                                       _%hd5521155778%_
                                       _%tl5521255781%_
                                       _%__splice8777587776%_
                                       _%target5525255283%_
                                       _%tl5525455286%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5520655266%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5520655266%_))))))
                  (let () (declare (not safe)) (_%g5520655266%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx55856%_)
        (let* ((_%__stx8785287853%_ _%stx55856%_)
               (_%g5586055881%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8785287853%_))))
          (let ((_%__kont8785587856%_
                 (lambda (_%g5586255949%_)
                   (let* ((_%g5596155968%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55856%_
                            _%g5586255949%_))
                          (_%E5596355974%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5596155968%_
                                    '([var . parts]))
                             (void)))
                          (_%K5596456190%_
                           (lambda (_%parts55978%_ _%var55980%_)
                             (let ((_%$e55982%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55980%_))))
                               (if _%$e55982%_
                                   ((lambda (_%te55986%_)
                                      (let _%loop55989%_ ((_%parts55992%_
                                                           _%parts55978%_)
                                                          (_%type55994%_
                                                           (##direct-structure-ref
                                                            _%te55986%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55995%_
                                                           _%var55980%_)
                                                          (_%nil-check?55996%_
                                                           '#f))
                                        (let* ((_%parts5599756005%_
                                                _%parts55992%_)
                                               (_%else5599956017%_
                                                (lambda () _%object55995%_))
                                               (_%K5600156172%_
                                                (lambda (_%rest56021%_
                                                         _%part56023%_)
                                                  (if (and (not _%nil-check?55996%_)
                                                           (let ((__tmp92722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56023%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92722)))
              (let ((_%str56027%_ (symbol->string _%part56023%_)))
                (_%loop55989%_
                 (cons (let ((__tmp92723
                              (substring
                               _%str56027%_
                               '1
                               (string-length _%str56027%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92723))
                       _%rest56021%_)
                 _%type55994%_
                 _%object55995%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55994%_))
                  (let* ((_%g5603256047%_
                          (lambda (_%g5603356043%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5603356043%_)))
                         (_%g5603156164%_
                          (lambda (_%g5603356051%_)
                            (if (gx#stx-pair? _%g5603356051%_)
                                (let ((_%e5603656054%_
                                       (gx#syntax-e _%g5603356051%_)))
                                  (let ((_%hd5603756058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5603656054%_)))
                                        (_%tl5603856061%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5603656054%_))))
                                    (if (gx#stx-pair? _%tl5603856061%_)
                                        (let ((_%e5603956064%_
                                               (gx#syntax-e _%tl5603856061%_)))
                                          (let ((_%hd5604056068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5603956064%_)))
                                                (_%tl5604156071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5603956064%_))))
                                            (if (gx#stx-null? _%tl5604156071%_)
                                                ((lambda (_%g5603456074%_
                                                          _%g5603556076%_)
                                                   (if (null? _%rest56021%_)
                                                       (let ((_%$e56106%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type55994%_
                                                               _%part56023%_)))
                                                         (if _%$e56106%_
                                                             ((lambda (_%slot-type56110%_)
                                                                (let* ((_%g5611356121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5611456117%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5611456117%_)))
                               (_%g5611256144%_
                                (lambda (_%g5611456125%_)
                                  ((lambda (_%g5611556128%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5611556128%_
                                                             '()))
                                                 (cons (cons _%g5603456074%_
                                                             (cons _%g5603556076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5611456125%_))))
                          (_%g5611256144%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx55856%_
                              _%slot-type56110%_)))))
                      _%$e56106%_)
                     (if _%nil-check?55996%_
                         (cons _%g5603456074%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5603556076%_ '()))
                                     '()))
                         (cons _%g5603456074%_ (cons _%g5603556076%_ '())))))
               (let ((_%$e56152%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type55994%_
                       _%part56023%_)))
                 (if _%$e56152%_
                     ((lambda (_%type56156%_)
                        (let ((_%type56159%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx55856%_
                                  _%type56156%_))))
                          (if _%nil-check?55996%_
                              (_%loop55989%_
                               _%rest56021%_
                               _%type56159%_
                               (cons _%g5603456074%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5603556076%_ '()))
                                           '()))
                               '#f)
                              (_%loop55989%_
                               _%rest56021%_
                               _%type56159%_
                               (cons _%g5603456074%_
                                     (cons _%g5603556076%_ '()))
                               '#f))))
                      _%$e56152%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx55856%_
                      _%g5586255949%_
                      _%part56023%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5604056068%_
                                                 _%hd5603756058%_)
                                                (_%g5603256047%_
                                                 _%g5603356051%_))))
                                        (_%g5603256047%_ _%g5603356051%_))))
                                (_%g5603256047%_ _%g5603356051%_)))))
                    (_%g5603156164%_
                     (list (if _%nil-check?55996%_
                               (cons 'check-nil! (cons _%object55995%_ '()))
                               _%object55995%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx55856%_
                            _%type55994%_
                            _%part56023%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55994%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55856%_
                       _%type55994%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5599756005%_)
                                              (let ((_%hd5600256176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5599756005%_)))
                                                    (_%tl5600356179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5599756005%_))))
                                                (let* ((_%part56182%_
                                                        _%hd5600256176%_)
                                                       (_%rest56185%_
                                                        _%tl5600356179%_))
                                                  (_%K5600156172%_
                                                   _%rest56185%_
                                                   _%part56182%_)))
                                              (_%else5599956017%_)))))
                                    _%$e55982%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5586255949%_ '())))))))
                     (if (pair? _%g5596155968%_)
                         (let ((_%hd5596556194%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5596155968%_)))
                               (_%tl5596656197%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5596155968%_))))
                           (let* ((_%var56200%_ _%hd5596556194%_)
                                  (_%parts56203%_ _%tl5596656197%_))
                             (_%K5596456190%_ _%parts56203%_ _%var56200%_)))
                         (_%E5596355974%_)))))
                (_%__kont8785787858%_
                 (lambda (_%g5586955908%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5586955908%_ '())))))
            (let ((_%__match8787387874%_
                   (lambda (_%e5586355929%_
                            _%hd5586455933%_
                            _%tl5586555936%_
                            _%e5586655939%_
                            _%hd5586755943%_
                            _%tl5586855946%_)
                     (let ((_%g5586255949%_ _%hd5586755943%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5586255949%_)
                           (_%__kont8785587856%_ _%g5586255949%_)
                           (_%__kont8785787858%_ _%hd5586755943%_))))))
              (if (gx#stx-pair? _%__stx8785287853%_)
                  (let ((_%e5586355929%_ (gx#syntax-e _%__stx8785287853%_)))
                    (let ((_%tl5586555936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5586355929%_)))
                          (_%hd5586455933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5586355929%_))))
                      (if (gx#stx-pair? _%tl5586555936%_)
                          (let ((_%e5586655939%_
                                 (gx#syntax-e _%tl5586555936%_)))
                            (let ((_%tl5586855946%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5586655939%_)))
                                  (_%hd5586755943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5586655939%_))))
                              (if (gx#stx-null? _%tl5586855946%_)
                                  (_%__match8787387874%_
                                   _%e5586355929%_
                                   _%hd5586455933%_
                                   _%tl5586555936%_
                                   _%e5586655939%_
                                   _%hd5586755943%_
                                   _%tl5586855946%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5586055881%_)))))
                          (let () (declare (not safe)) (_%g5586055881%_)))))
                  (let () (declare (not safe)) (_%g5586055881%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56210%_)
        (let* ((_%__stx8789087891%_ _%stx56210%_)
               (_%g5621456243%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8789087891%_))))
          (let ((_%__kont8789387894%_
                 (lambda (_%g5621656335%_ _%g5621756337%_)
                   (let* ((_%g5635156358%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56210%_
                            _%g5621756337%_))
                          (_%E5635356364%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5635156358%_
                                    '([var . parts]))
                             (void)))
                          (_%K5635456594%_
                           (lambda (_%parts56368%_ _%var56370%_)
                             (let ((_%$e56372%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56370%_))))
                               (if _%$e56372%_
                                   ((lambda (_%te56376%_)
                                      (let _%loop56379%_ ((_%parts56382%_
                                                           _%parts56368%_)
                                                          (_%type56384%_
                                                           (##direct-structure-ref
                                                            _%te56376%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56385%_
                                                           _%var56370%_)
                                                          (_%checked-mutator?56386%_
                                                           (##direct-structure-ref
                                                            _%te56376%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56387%_
                                                           '#f))
                                        (let* ((_%parts5638856395%_
                                                _%parts56382%_)
                                               (_%E5639056401%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5638856395%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5639156576%_
                                                (lambda (_%rest56405%_
                                                         _%part56407%_)
                                                  (if (and (not _%nil-check?56387%_)
                                                           (let ((__tmp92724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56407%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92724)))
              (let ((_%str56411%_ (symbol->string _%part56407%_)))
                (_%loop56379%_
                 (cons (let ((__tmp92725
                              (substring
                               _%str56411%_
                               '1
                               (string-length _%str56411%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92725))
                       _%rest56405%_)
                 _%type56384%_
                 _%object56385%_
                 _%checked-mutator?56386%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56384%_))
                  (if (null? _%rest56405%_)
                      (let* ((_%g5641856433%_
                              (lambda (_%g5641956429%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5641956429%_)))
                             (_%g5641756490%_
                              (lambda (_%g5641956437%_)
                                (if (gx#stx-pair? _%g5641956437%_)
                                    (let ((_%e5642256440%_
                                           (gx#syntax-e _%g5641956437%_)))
                                      (let ((_%hd5642356444%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5642256440%_)))
                                            (_%tl5642456447%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5642256440%_))))
                                        (if (gx#stx-pair? _%tl5642456447%_)
                                            (let ((_%e5642556450%_
                                                   (gx#syntax-e
                                                    _%tl5642456447%_)))
                                              (let ((_%hd5642656454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5642556450%_)))
                                                    (_%tl5642756457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5642556450%_))))
                                                (if (gx#stx-null?
                                                     _%tl5642756457%_)
                                                    ((lambda (_%g5642056460%_
                                                              _%g5642156462%_)
                                                       (if _%nil-check?56387%_
                                                           (cons _%g5642056460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5642156462%_ '()))
                               (cons _%g5621656335%_ '())))
                   (cons _%g5642056460%_
                         (cons _%g5642156462%_ (cons _%g5621656335%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5642656454%_
                                                     _%hd5642356444%_)
                                                    (_%g5641856433%_
                                                     _%g5641956437%_))))
                                            (_%g5641856433%_
                                             _%g5641956437%_))))
                                    (_%g5641856433%_ _%g5641956437%_)))))
                        (_%g5641756490%_
                         (list _%object56385%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56210%_
                                _%type56384%_
                                _%part56407%_
                                (if _%checked-mutator?56386%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56384%_
                                     _%part56407%_)
                                    '#f)))))
                      (let ((_%$e56494%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56384%_
                              _%part56407%_)))
                        (if _%$e56494%_
                            ((lambda (_%type56498%_)
                               (let* ((_%type56501%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56210%_
                                          _%type56498%_)))
                                      (_%g5650456519%_
                                       (lambda (_%g5650556515%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5650556515%_)))
                                      (_%g5650356566%_
                                       (lambda (_%g5650556523%_)
                                         (if (gx#stx-pair? _%g5650556523%_)
                                             (let ((_%e5650856526%_
                                                    (gx#syntax-e
                                                     _%g5650556523%_)))
                                               (let ((_%hd5650956530%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5650856526%_)))
                                                     (_%tl5651056533%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5650856526%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5651056533%_)
                                                     (let ((_%e5651156536%_
                                                            (gx#syntax-e
                                                             _%tl5651056533%_)))
                                                       (let ((_%hd5651256540%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5651156536%_)))
                     (_%tl5651356543%_
                      (let () (declare (not safe)) (##cdr _%e5651156536%_))))
                 (if (gx#stx-null? _%tl5651356543%_)
                     ((lambda (_%g5650656546%_ _%g5650756548%_)
                        (_%loop56379%_
                         _%rest56405%_
                         _%type56501%_
                         (cons _%g5650656546%_ (cons _%g5650756548%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56501%_
                          _%part56407%_)
                         '#f))
                      _%hd5651256540%_
                      _%hd5650956530%_)
                     (_%g5650456519%_ _%g5650556523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5650456519%_
                                                      _%g5650556523%_))))
                                             (_%g5650456519%_
                                              _%g5650556523%_)))))
                                 (_%g5650356566%_
                                  (list (if _%nil-check?56387%_
                                            (cons 'check-nil!
                                                  (cons _%object56385%_ '()))
                                            _%object56385%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56210%_
                                         _%type56501%_
                                         _%part56407%_)))))
                             _%$e56494%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56210%_
                             _%g5621756337%_
                             _%part56407%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56384%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56210%_
                       _%type56384%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5638856395%_)
                                              (let ((_%hd5639256580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5638856395%_)))
                                                    (_%tl5639356583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5638856395%_))))
                                                (let* ((_%part56586%_
                                                        _%hd5639256580%_)
                                                       (_%rest56589%_
                                                        _%tl5639356583%_))
                                                  (_%K5639156576%_
                                                   _%rest56589%_
                                                   _%part56586%_)))
                                              (_%E5639056401%_)))))
                                    _%$e56372%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56210%_)))))))
                     (if (pair? _%g5635156358%_)
                         (let ((_%hd5635556598%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5635156358%_)))
                               (_%tl5635656601%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5635156358%_))))
                           (let* ((_%var56604%_ _%hd5635556598%_)
                                  (_%parts56607%_ _%tl5635656601%_))
                             (_%K5635456594%_ _%parts56607%_ _%var56604%_)))
                         (_%E5635356364%_)))))
                (_%__kont8789587896%_
                 (lambda (_%g5622756280%_ _%g5622856282%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56210%_)))))
            (let ((_%__match8791787918%_
                   (lambda (_%e5621856305%_
                            _%hd5621956309%_
                            _%tl5622056312%_
                            _%e5622156315%_
                            _%hd5622256319%_
                            _%tl5622356322%_
                            _%e5622456325%_
                            _%hd5622556329%_
                            _%tl5622656332%_)
                     (let ((_%g5621656335%_ _%hd5622556329%_)
                           (_%g5621756337%_ _%hd5622256319%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5621756337%_)
                           (_%__kont8789387894%_
                            _%g5621656335%_
                            _%g5621756337%_)
                           (_%__kont8789587896%_
                            _%hd5622556329%_
                            _%hd5622256319%_))))))
              (if (gx#stx-pair? _%__stx8789087891%_)
                  (let ((_%e5621856305%_ (gx#syntax-e _%__stx8789087891%_)))
                    (let ((_%tl5622056312%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5621856305%_)))
                          (_%hd5621956309%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5621856305%_))))
                      (if (gx#stx-pair? _%tl5622056312%_)
                          (let ((_%e5622156315%_
                                 (gx#syntax-e _%tl5622056312%_)))
                            (let ((_%tl5622356322%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5622156315%_)))
                                  (_%hd5622256319%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5622156315%_))))
                              (if (gx#stx-pair? _%tl5622356322%_)
                                  (let ((_%e5622456325%_
                                         (gx#syntax-e _%tl5622356322%_)))
                                    (let ((_%tl5622656332%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5622456325%_)))
                                          (_%hd5622556329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5622456325%_))))
                                      (if (gx#stx-null? _%tl5622656332%_)
                                          (_%__match8791787918%_
                                           _%e5621856305%_
                                           _%hd5621956309%_
                                           _%tl5622056312%_
                                           _%e5622156315%_
                                           _%hd5622256319%_
                                           _%tl5622356322%_
                                           _%e5622456325%_
                                           _%hd5622556329%_
                                           _%tl5622656332%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5621456243%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5621456243%_)))))
                          (let () (declare (not safe)) (_%g5621456243%_)))))
                  (let () (declare (not safe)) (_%g5621456243%_))))))))))

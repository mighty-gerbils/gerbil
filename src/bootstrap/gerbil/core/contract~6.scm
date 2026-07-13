(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g102590_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102591_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102592_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102595_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102596_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102599_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102600_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102601_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102602_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102606_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102607_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102608_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102609_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102613_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx53056%_)
        (let* ((_%__stx9586795868%_ _%stx53056%_)
               (_%$%g5306553274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9586795868%_))))
          (let ((_%__kont9587095871%_
                 (lambda (_%$%g5306754166%_
                          _%$%g5306854168%_
                          _%$%g5306954169%_
                          _%$%g5307054170%_
                          _%$%g5307154171%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5307154171%_
                                     (cons _%$%g5307054170%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5307154171%_
                                                       (cons _%$%g5306954169%_
                                                             (cons _%$%g5306854168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5421454217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5421554220%_)
                  (cons _%$%g5421454217%_ _%$%g5421554220%_))
                '()
                _%$%g5306754166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9587495875%_
                 (lambda (_%$%g5309954012%_
                          _%$%g5310054014%_
                          _%$%g5310154015%_
                          _%$%g5310254016%_
                          _%$%g5310354017%_
                          _%$%g5310454018%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5310454018%_
                                     (cons _%$%g5310354017%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5310454018%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%$%g5310254016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%$%g5310454018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g5310154015%_
                                       (cons _%$%g5310054014%_ '())))
                           (foldr (lambda (_%$%g5406254065%_ _%$%g5406354068%_)
                                    (cons _%$%g5406254065%_ _%$%g5406354068%_))
                                  '()
                                  _%$%g5309954012%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9587895879%_
                 (lambda (_%$%g5313853831%_
                          _%$%g5313953833%_
                          _%$%g5314053834%_
                          _%$%g5314153835%_)
                   (let ((_%meta53872%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53056%_
                             _%$%g5313953833%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta53872%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%$%g5314153835%_
                                           (cons _%$%g5314053834%_
                                                 (cons _%$%g5313953833%_ '())))
                                     (foldr (lambda (_%$%g5387653879%_
                                                     _%$%g5387753882%_)
                                              (cons _%$%g5387653879%_
                                                    _%$%g5387753882%_))
                                            '()
                                            _%$%g5313853831%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta53872%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%$%g5314153835%_
                                               (cons _%$%g5314053834%_
                                                     (cons _%$%g5313953833%_
                                                           '())))
                                         (foldr (lambda (_%$%g5388653889%_
                                                         _%$%g5388753892%_)
                                                  (cons _%$%g5388653889%_
                                                        _%$%g5388753892%_))
                                                '()
                                                _%$%g5313853831%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx53056%_
                              _%$%g5313953833%_
                              _%meta53872%_))))))
                (_%__kont9588295883%_
                 (lambda (_%$%g5316653711%_
                          _%$%g5316753713%_
                          _%$%g5316853714%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%$%g5316853714%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5316753713%_ '())))
                               (foldr (lambda (_%$%g5373753740%_
                                               _%$%g5373853743%_)
                                        (cons _%$%g5373753740%_
                                              _%$%g5373853743%_))
                                      '()
                                      _%$%g5316653711%_)))))
                (_%__kont9588695887%_
                 (lambda (_%$%g5319353571%_
                          _%$%g5319453573%_
                          _%$%g5319553574%_
                          _%$%g5319653575%_
                          _%$%g5319753576%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5319753576%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5319653575%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5319753576%_
                                                       (cons _%$%g5319553574%_
                                                             (cons _%$%g5319453573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5361753620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5361853623%_)
                  (cons _%$%g5361753620%_ _%$%g5361853623%_))
                '()
                _%$%g5319353571%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9589095891%_
                 (lambda (_%$%g5322853431%_
                          _%$%g5322953433%_
                          _%$%g5323053434%_
                          _%$%g5323153435%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5323153435%_ _%$%g5323053434%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%$%g5322953433%_
                                                 (foldr (lambda (_%$%g5345753460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5345853463%_)
                  (cons _%$%g5345753460%_ _%$%g5345853463%_))
                '()
                _%$%g5322853431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9589495895%_
                 (lambda (_%$%g5325353329%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g5334753350%_
                                               _%$%g5334853353%_)
                                        (cons _%$%g5334753350%_
                                              _%$%g5334853353%_))
                                      '()
                                      _%$%g5325353329%_))))))
            (let* ((_%__match9620096201%_
                    (lambda (_%$%e5325453281%_
                             _%$%hd5325553285%_
                             _%$%tl5325653288%_
                             _%$%e5325753291%_
                             _%$%hd5325853295%_
                             _%$%tl5325953298%_
                             _%__splice9589695897%_
                             _%$%target5326053301%_
                             _%$%tl5326253304%_)
                      (letrec ((_%$%loop5326353307%_
                                (lambda (_%$%hd5326153311%_
                                         _%$%body5326753314%_)
                                  (if (gx#stx-pair? _%$%hd5326153311%_)
                                      (let ((_%$%e5326453316%_
                                             (gx#syntax-e _%$%hd5326153311%_)))
                                        (let ((_%$%lp-tl5326653323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326453316%_)))
                                              (_%$%lp-hd5326553320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326453316%_))))
                                          (_%$%loop5326353307%_
                                           _%$%lp-tl5326653323%_
                                           (cons _%$%lp-hd5326553320%_
                                                 _%$%body5326753314%_))))
                                      (let ((_%$%body5326853326%_
                                             (reverse _%$%body5326753314%_)))
                                        (_%__kont9589495895%_
                                         _%$%body5326853326%_))))))
                        (_%$%loop5326353307%_ _%$%target5326053301%_ '()))))
                   (_%__match9617896179%_
                    (lambda (_%$%e5323253363%_
                             _%$%hd5323353367%_
                             _%$%tl5323453370%_
                             _%$%e5323553373%_
                             _%$%hd5323653377%_
                             _%$%tl5323753380%_
                             _%$%e5323853383%_
                             _%$%hd5323953387%_
                             _%$%tl5324053390%_
                             _%$%e5324153393%_
                             _%$%hd5324253397%_
                             _%$%tl5324353400%_
                             _%__splice9589295893%_
                             _%$%target5324453403%_
                             _%$%tl5324653406%_)
                      (letrec ((_%$%loop5324753409%_
                                (lambda (_%$%hd5324553413%_
                                         _%$%body5325153416%_)
                                  (if (gx#stx-pair? _%$%hd5324553413%_)
                                      (let ((_%$%e5324853418%_
                                             (gx#syntax-e _%$%hd5324553413%_)))
                                        (let ((_%$%lp-tl5325053425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324853418%_)))
                                              (_%$%lp-hd5324953422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324853418%_))))
                                          (_%$%loop5324753409%_
                                           _%$%lp-tl5325053425%_
                                           (cons _%$%lp-hd5324953422%_
                                                 _%$%body5325153416%_))))
                                      (let ((_%$%body5325253428%_
                                             (reverse _%$%body5325153416%_)))
                                        (let ((_%$%g5322853431%_
                                               _%$%body5325253428%_)
                                              (_%$%g5322953433%_
                                               _%$%tl5324053390%_)
                                              (_%$%g5323053434%_
                                               _%$%tl5324353400%_)
                                              (_%$%g5323153435%_
                                               _%$%hd5324253397%_))
                                          (if (gx#identifier?
                                               _%$%g5323153435%_)
                                              (_%__kont9589095891%_
                                               _%$%g5322853431%_
                                               _%$%g5322953433%_
                                               _%$%g5323053434%_
                                               _%$%g5323153435%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_)))))))))
                        (_%$%loop5324753409%_ _%$%target5324453403%_ '()))))
                   (_%__match9616496165%_
                    (lambda (_%$%e5323253363%_
                             _%$%hd5323353367%_
                             _%$%tl5323453370%_
                             _%$%e5323553373%_
                             _%$%hd5323653377%_
                             _%$%tl5323753380%_
                             _%$%e5323853383%_
                             _%$%hd5323953387%_
                             _%$%tl5324053390%_)
                      (if (gx#stx-pair? _%$%hd5323953387%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5323953387%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (if (gx#stx-pair/null? _%$%tl5323753380%_)
                                  (let ((_%__splice9589295893%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5323753380%_
                                          '0)))
                                    (let ((_%$%tl5324653406%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '1)))
                                          (_%$%target5324453403%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5324653406%_)
                                          (_%__match9617896179%_
                                           _%$%e5323253363%_
                                           _%$%hd5323353367%_
                                           _%$%tl5323453370%_
                                           _%$%e5323553373%_
                                           _%$%hd5323653377%_
                                           _%$%tl5323753380%_
                                           _%$%e5323853383%_
                                           _%$%hd5323953387%_
                                           _%$%tl5324053390%_
                                           _%$%e5324153393%_
                                           _%$%hd5324253397%_
                                           _%$%tl5324353400%_
                                           _%__splice9589295893%_
                                           _%$%target5324453403%_
                                           _%$%tl5324653406%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                   (_%__match9614696147%_
                    (lambda (_%$%e5319853473%_
                             _%$%hd5319953477%_
                             _%$%tl5320053480%_
                             _%$%e5320153483%_
                             _%$%hd5320253487%_
                             _%$%tl5320353490%_
                             _%$%e5320453493%_
                             _%$%hd5320553497%_
                             _%$%tl5320653500%_
                             _%$%e5320753503%_
                             _%$%hd5320853507%_
                             _%$%tl5320953510%_
                             _%$%e5321053513%_
                             _%$%hd5321153517%_
                             _%$%tl5321253520%_
                             _%$%e5321353523%_
                             _%$%hd5321453527%_
                             _%$%tl5321553530%_
                             _%$%e5321653533%_
                             _%$%hd5321753537%_
                             _%$%tl5321853540%_
                             _%__splice9588895889%_
                             _%$%target5321953543%_
                             _%$%tl5322153546%_)
                      (letrec ((_%$%loop5322253549%_
                                (lambda (_%$%hd5322053553%_
                                         _%$%body5322653556%_)
                                  (if (gx#stx-pair? _%$%hd5322053553%_)
                                      (let ((_%$%e5322353558%_
                                             (gx#syntax-e _%$%hd5322053553%_)))
                                        (let ((_%$%lp-tl5322553565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5322353558%_)))
                                              (_%$%lp-hd5322453562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5322353558%_))))
                                          (_%$%loop5322253549%_
                                           _%$%lp-tl5322553565%_
                                           (cons _%$%lp-hd5322453562%_
                                                 _%$%body5322653556%_))))
                                      (let ((_%$%body5322753568%_
                                             (reverse _%$%body5322653556%_)))
                                        (let ((_%$%g5319353571%_
                                               _%$%body5322753568%_)
                                              (_%$%g5319453573%_
                                               _%$%hd5321753537%_)
                                              (_%$%g5319553574%_
                                               _%$%hd5321453527%_)
                                              (_%$%g5319653575%_
                                               _%$%hd5321153517%_)
                                              (_%$%g5319753576%_
                                               _%$%hd5320553497%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5319753576%_)
                                                   (gx#identifier?
                                                    _%$%g5319453573%_)
                                                   (gx#identifier?
                                                    _%$%g5319553574%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5319553574%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5319553574%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5319553574%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5319553574%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9588695887%_
                                               _%$%g5319353571%_
                                               _%$%g5319453573%_
                                               _%$%g5319553574%_
                                               _%$%g5319653575%_
                                               _%$%g5319753576%_)
                                              (_%__match9616496165%_
                                               _%$%e5319853473%_
                                               _%$%hd5319953477%_
                                               _%$%tl5320053480%_
                                               _%$%e5320153483%_
                                               _%$%hd5320253487%_
                                               _%$%tl5320353490%_
                                               _%$%e5320453493%_
                                               _%$%hd5320553497%_
                                               _%$%tl5320653500%_))))))))
                        (_%$%loop5322253549%_ _%$%target5321953543%_ '()))))
                   (_%__match9609096091%_
                    (lambda (_%$%e5316953633%_
                             _%$%hd5317053637%_
                             _%$%tl5317153640%_
                             _%$%e5317253643%_
                             _%$%hd5317353647%_
                             _%$%tl5317453650%_
                             _%$%e5317553653%_
                             _%$%hd5317653657%_
                             _%$%tl5317753660%_
                             _%$%e5317853663%_
                             _%$%hd5317953667%_
                             _%$%tl5318053670%_
                             _%$%e5318153673%_
                             _%$%hd5318253677%_
                             _%$%tl5318353680%_
                             _%__splice9588495885%_
                             _%$%target5318453683%_
                             _%$%tl5318653686%_)
                      (letrec ((_%$%loop5318753689%_
                                (lambda (_%$%hd5318553693%_
                                         _%$%body5319153696%_)
                                  (if (gx#stx-pair? _%$%hd5318553693%_)
                                      (let ((_%$%e5318853698%_
                                             (gx#syntax-e _%$%hd5318553693%_)))
                                        (let ((_%$%lp-tl5319053705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5318853698%_)))
                                              (_%$%lp-hd5318953702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5318853698%_))))
                                          (_%$%loop5318753689%_
                                           _%$%lp-tl5319053705%_
                                           (cons _%$%lp-hd5318953702%_
                                                 _%$%body5319153696%_))))
                                      (let ((_%$%body5319253708%_
                                             (reverse _%$%body5319153696%_)))
                                        (let ((_%$%g5316653711%_
                                               _%$%body5319253708%_)
                                              (_%$%g5316753713%_
                                               _%$%hd5318253677%_)
                                              (_%$%g5316853714%_
                                               _%$%hd5317653657%_))
                                          (if (gx#identifier?
                                               _%$%g5316853714%_)
                                              (_%__kont9588295883%_
                                               _%$%g5316653711%_
                                               _%$%g5316753713%_
                                               _%$%g5316853714%_)
                                              (_%__match9616496165%_
                                               _%$%e5316953633%_
                                               _%$%hd5317053637%_
                                               _%$%tl5317153640%_
                                               _%$%e5317253643%_
                                               _%$%hd5317353647%_
                                               _%$%tl5317453650%_
                                               _%$%e5317553653%_
                                               _%$%hd5317653657%_
                                               _%$%tl5317753660%_))))))))
                        (_%$%loop5318753689%_ _%$%target5318453683%_ '()))))
                   (_%__match9607096071%_
                    (lambda (_%$%e5316953633%_
                             _%$%hd5317053637%_
                             _%$%tl5317153640%_
                             _%$%e5317253643%_
                             _%$%hd5317353647%_
                             _%$%tl5317453650%_
                             _%$%e5317553653%_
                             _%$%hd5317653657%_
                             _%$%tl5317753660%_
                             _%$%e5317853663%_
                             _%$%hd5317953667%_
                             _%$%tl5318053670%_)
                      (if (gx#identifier? _%$%hd5317953667%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g102590_|
                               _%$%hd5317953667%_)
                              (if (gx#stx-pair? _%$%tl5318053670%_)
                                  (let ((_%$%e5318153673%_
                                         (gx#syntax-e _%$%tl5318053670%_)))
                                    (let ((_%$%tl5318353680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5318153673%_)))
                                          (_%$%hd5318253677%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5318153673%_))))
                                      (if (gx#stx-null? _%$%tl5318353680%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl5317453650%_)
                                              (let ((_%__splice9588495885%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5317453650%_
                                                      '0)))
                                                (let ((_%$%tl5318653686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9588495885%_
                                                          '1)))
                                                      (_%$%target5318453683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9588495885%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5318653686%_)
                                                      (_%__match9609096091%_
                                                       _%$%e5316953633%_
                                                       _%$%hd5317053637%_
                                                       _%$%tl5317153640%_
                                                       _%$%e5317253643%_
                                                       _%$%hd5317353647%_
                                                       _%$%tl5317453650%_
                                                       _%$%e5317553653%_
                                                       _%$%hd5317653657%_
                                                       _%$%tl5317753660%_
                                                       _%$%e5317853663%_
                                                       _%$%hd5317953667%_
                                                       _%$%tl5318053670%_
                                                       _%$%e5318153673%_
                                                       _%$%hd5318253677%_
                                                       _%$%tl5318353680%_
                                                       _%__splice9588495885%_
                                                       _%$%target5318453683%_
                                                       _%$%tl5318653686%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd5317653657%_)
                                                          (let ((_%$%e5324153393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd5317653657%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5317653657%_)
                                                  (let ((_%$%e5324153393%_
                                                         (gx#syntax-e
                                                          _%$%hd5317653657%_)))
                                                    (let ((_%$%tl5324353400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324153393%_)))
                                                          (_%$%hd5324253397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324153393%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5306553274%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_))))
                                          (if (gx#stx-pair? _%$%tl5318353680%_)
                                              (let ((_%$%e5321353523%_
                                                     (gx#syntax-e
                                                      _%$%tl5318353680%_)))
                                                (let ((_%$%tl5321553530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5321353523%_)))
                                                      (_%$%hd5321453527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5321353523%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5321553530%_)
                                                      (let ((_%$%e5321653533%_
                                                             (gx#syntax-e
                                                              _%$%tl5321553530%_)))
                                                        (let ((_%$%tl5321853540%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5321653533%_)))
                      (_%$%hd5321753537%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5321653533%_))))
                  (if (gx#stx-null? _%$%tl5321853540%_)
                      (if (gx#stx-pair/null? _%$%tl5317453650%_)
                          (let ((_%__splice9588895889%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5317453650%_
                                  '0)))
                            (let ((_%$%tl5322153546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9588895889%_ '1)))
                                  (_%$%target5321953543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9588895889%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5322153546%_)
                                  (_%__match9614696147%_
                                   _%$%e5316953633%_
                                   _%$%hd5317053637%_
                                   _%$%tl5317153640%_
                                   _%$%e5317253643%_
                                   _%$%hd5317353647%_
                                   _%$%tl5317453650%_
                                   _%$%e5317553653%_
                                   _%$%hd5317653657%_
                                   _%$%tl5317753660%_
                                   _%$%e5317853663%_
                                   _%$%hd5317953667%_
                                   _%$%tl5318053670%_
                                   _%$%e5318153673%_
                                   _%$%hd5318253677%_
                                   _%$%tl5318353680%_
                                   _%$%e5321353523%_
                                   _%$%hd5321453527%_
                                   _%$%tl5321553530%_
                                   _%$%e5321653533%_
                                   _%$%hd5321753537%_
                                   _%$%tl5321853540%_
                                   _%__splice9588895889%_
                                   _%$%target5321953543%_
                                   _%$%tl5322153546%_)
                                  (if (gx#stx-pair? _%$%hd5317653657%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5317653657%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))
                          (if (gx#stx-pair? _%$%hd5317653657%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5317653657%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                      (if (gx#stx-pair? _%$%hd5317653657%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5317653657%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (if (gx#stx-pair/null? _%$%tl5317453650%_)
                                  (let ((_%__splice9589295893%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5317453650%_
                                          '0)))
                                    (let ((_%$%tl5324653406%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '1)))
                                          (_%$%target5324453403%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5324653406%_)
                                          (_%__match9617896179%_
                                           _%$%e5316953633%_
                                           _%$%hd5317053637%_
                                           _%$%tl5317153640%_
                                           _%$%e5317253643%_
                                           _%$%hd5317353647%_
                                           _%$%tl5317453650%_
                                           _%$%e5317553653%_
                                           _%$%hd5317653657%_
                                           _%$%tl5317753660%_
                                           _%$%e5324153393%_
                                           _%$%hd5324253397%_
                                           _%$%tl5324353400%_
                                           _%__splice9589295893%_
                                           _%$%target5324453403%_
                                           _%$%tl5324653406%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))))
              (if (gx#stx-pair? _%$%hd5317653657%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5317653657%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (if (gx#stx-pair/null? _%$%tl5317453650%_)
                          (let ((_%__splice9589295893%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5317453650%_
                                  '0)))
                            (let ((_%$%tl5324653406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9589295893%_ '1)))
                                  (_%$%target5324453403%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9589295893%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324653406%_)
                                  (_%__match9617896179%_
                                   _%$%e5316953633%_
                                   _%$%hd5317053637%_
                                   _%$%tl5317153640%_
                                   _%$%e5317253643%_
                                   _%$%hd5317353647%_
                                   _%$%tl5317453650%_
                                   _%$%e5317553653%_
                                   _%$%hd5317653657%_
                                   _%$%tl5317753660%_
                                   _%$%e5324153393%_
                                   _%$%hd5324253397%_
                                   _%$%tl5324353400%_
                                   _%__splice9589295893%_
                                   _%$%target5324453403%_
                                   _%$%tl5324653406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5317653657%_)
                                                  (let ((_%$%e5324153393%_
                                                         (gx#syntax-e
                                                          _%$%hd5317653657%_)))
                                                    (let ((_%$%tl5324353400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324153393%_)))
                                                          (_%$%hd5324253397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324153393%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5317453650%_)
                                                          (let ((_%__splice9589295893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5317453650%_
                          '0)))
                    (let ((_%$%tl5324653406%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9589295893%_ '1)))
                          (_%$%target5324453403%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9589295893%_ '0))))
                      (if (gx#stx-null? _%$%tl5324653406%_)
                          (_%__match9617896179%_
                           _%$%e5316953633%_
                           _%$%hd5317053637%_
                           _%$%tl5317153640%_
                           _%$%e5317253643%_
                           _%$%hd5317353647%_
                           _%$%tl5317453650%_
                           _%$%e5317553653%_
                           _%$%hd5317653657%_
                           _%$%tl5317753660%_
                           _%$%e5324153393%_
                           _%$%hd5324253397%_
                           _%$%tl5324353400%_
                           _%__splice9589295893%_
                           _%$%target5324453403%_
                           _%$%tl5324653406%_)
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))))
                                  (if (gx#stx-pair? _%$%hd5317653657%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5317653657%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5317453650%_)
                                              (let ((_%__splice9589295893%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5317453650%_
                                                      '0)))
                                                (let ((_%$%tl5324653406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9589295893%_
                                                          '1)))
                                                      (_%$%target5324453403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9589295893%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5324653406%_)
                                                      (_%__match9617896179%_
                                                       _%$%e5316953633%_
                                                       _%$%hd5317053637%_
                                                       _%$%tl5317153640%_
                                                       _%$%e5317253643%_
                                                       _%$%hd5317353647%_
                                                       _%$%tl5317453650%_
                                                       _%$%e5317553653%_
                                                       _%$%hd5317653657%_
                                                       _%$%tl5317753660%_
                                                       _%$%e5324153393%_
                                                       _%$%hd5324253397%_
                                                       _%$%tl5324353400%_
                                                       _%__splice9589295893%_
                                                       _%$%target5324453403%_
                                                       _%$%tl5324653406%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5306553274%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))
                              (if (gx#stx-pair? _%$%hd5317653657%_)
                                  (let ((_%$%e5324153393%_
                                         (gx#syntax-e _%$%hd5317653657%_)))
                                    (let ((_%$%tl5324353400%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5324153393%_)))
                                          (_%$%hd5324253397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5324153393%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5317453650%_)
                                          (let ((_%__splice9589295893%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5317453650%_
                                                  '0)))
                                            (let ((_%$%tl5324653406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9589295893%_
                                                      '1)))
                                                  (_%$%target5324453403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9589295893%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5324653406%_)
                                                  (_%__match9617896179%_
                                                   _%$%e5316953633%_
                                                   _%$%hd5317053637%_
                                                   _%$%tl5317153640%_
                                                   _%$%e5317253643%_
                                                   _%$%hd5317353647%_
                                                   _%$%tl5317453650%_
                                                   _%$%e5317553653%_
                                                   _%$%hd5317653657%_
                                                   _%$%tl5317753660%_
                                                   _%$%e5324153393%_
                                                   _%$%hd5324253397%_
                                                   _%$%tl5324353400%_
                                                   _%__splice9589295893%_
                                                   _%$%target5324453403%_
                                                   _%$%tl5324653406%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                          (if (gx#stx-pair? _%$%hd5317653657%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5317653657%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (if (gx#stx-pair/null? _%$%tl5317453650%_)
                                      (let ((_%__splice9589295893%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5317453650%_
                                              '0)))
                                        (let ((_%$%tl5324653406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9589295893%_
                                                  '1)))
                                              (_%$%target5324453403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9589295893%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5324653406%_)
                                              (_%__match9617896179%_
                                               _%$%e5316953633%_
                                               _%$%hd5317053637%_
                                               _%$%tl5317153640%_
                                               _%$%e5317253643%_
                                               _%$%hd5317353647%_
                                               _%$%tl5317453650%_
                                               _%$%e5317553653%_
                                               _%$%hd5317653657%_
                                               _%$%tl5317753660%_
                                               _%$%e5324153393%_
                                               _%$%hd5324253397%_
                                               _%$%tl5324353400%_
                                               _%__splice9589295893%_
                                               _%$%target5324453403%_
                                               _%$%tl5324653406%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))))
                   (_%__match9604696047%_
                    (lambda (_%$%e5314253753%_
                             _%$%hd5314353757%_
                             _%$%tl5314453760%_
                             _%$%e5314553763%_
                             _%$%hd5314653767%_
                             _%$%tl5314753770%_
                             _%$%e5314853773%_
                             _%$%hd5314953777%_
                             _%$%tl5315053780%_
                             _%$%e5315153783%_
                             _%$%hd5315253787%_
                             _%$%tl5315353790%_
                             _%$%e5315453793%_
                             _%$%hd5315553797%_
                             _%$%tl5315653800%_
                             _%__splice9588095881%_
                             _%$%target5315753803%_
                             _%$%tl5315953806%_)
                      (letrec ((_%$%loop5316053809%_
                                (lambda (_%$%hd5315853813%_
                                         _%$%body5316453816%_)
                                  (if (gx#stx-pair? _%$%hd5315853813%_)
                                      (let ((_%$%e5316153818%_
                                             (gx#syntax-e _%$%hd5315853813%_)))
                                        (let ((_%$%lp-tl5316353825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5316153818%_)))
                                              (_%$%lp-hd5316253822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5316153818%_))))
                                          (_%$%loop5316053809%_
                                           _%$%lp-tl5316353825%_
                                           (cons _%$%lp-hd5316253822%_
                                                 _%$%body5316453816%_))))
                                      (let ((_%$%body5316553828%_
                                             (reverse _%$%body5316453816%_)))
                                        (let ((_%$%g5313853831%_
                                               _%$%body5316553828%_)
                                              (_%$%g5313953833%_
                                               _%$%hd5315553797%_)
                                              (_%$%g5314053834%_
                                               _%$%hd5315253787%_)
                                              (_%$%g5314153835%_
                                               _%$%hd5314953777%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5314153835%_)
                                                   (gx#identifier?
                                                    _%$%g5313953833%_)
                                                   (gx#identifier?
                                                    _%$%g5314053834%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5314053834%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5314053834%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5314053834%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5314053834%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9587895879%_
                                               _%$%g5313853831%_
                                               _%$%g5313953833%_
                                               _%$%g5314053834%_
                                               _%$%g5314153835%_)
                                              (_%__match9607096071%_
                                               _%$%e5314253753%_
                                               _%$%hd5314353757%_
                                               _%$%tl5314453760%_
                                               _%$%e5314553763%_
                                               _%$%hd5314653767%_
                                               _%$%tl5314753770%_
                                               _%$%e5314853773%_
                                               _%$%hd5314953777%_
                                               _%$%tl5315053780%_
                                               _%$%e5315153783%_
                                               _%$%hd5315253787%_
                                               _%$%tl5315353790%_))))))))
                        (_%$%loop5316053809%_ _%$%target5315753803%_ '()))))
                   (_%__match9600696007%_
                    (lambda (_%$%e5310553904%_
                             _%$%hd5310653908%_
                             _%$%tl5310753911%_
                             _%$%e5310853914%_
                             _%$%hd5310953918%_
                             _%$%tl5311053921%_
                             _%$%e5311153924%_
                             _%$%hd5311253928%_
                             _%$%tl5311353931%_
                             _%$%e5311453934%_
                             _%$%hd5311553938%_
                             _%$%tl5311653941%_
                             _%$%e5311753944%_
                             _%$%hd5311853948%_
                             _%$%tl5311953951%_
                             _%$%e5312053954%_
                             _%$%hd5312153958%_
                             _%$%tl5312253961%_
                             _%$%e5312353964%_
                             _%$%hd5312453968%_
                             _%$%tl5312553971%_
                             _%$%e5312653974%_
                             _%$%hd5312753978%_
                             _%$%tl5312853981%_
                             _%__splice9587695877%_
                             _%$%target5312953984%_
                             _%$%tl5313153987%_)
                      (letrec ((_%$%loop5313253990%_
                                (lambda (_%$%hd5313053994%_
                                         _%$%body5313653997%_)
                                  (if (gx#stx-pair? _%$%hd5313053994%_)
                                      (let ((_%$%e5313353999%_
                                             (gx#syntax-e _%$%hd5313053994%_)))
                                        (let ((_%$%lp-tl5313554006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5313353999%_)))
                                              (_%$%lp-hd5313454003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5313353999%_))))
                                          (_%$%loop5313253990%_
                                           _%$%lp-tl5313554006%_
                                           (cons _%$%lp-hd5313454003%_
                                                 _%$%body5313653997%_))))
                                      (let ((_%$%body5313754009%_
                                             (reverse _%$%body5313653997%_)))
                                        (let ((_%$%g5309954012%_
                                               _%$%body5313754009%_)
                                              (_%$%g5310054014%_
                                               _%$%hd5312753978%_)
                                              (_%$%g5310154015%_
                                               _%$%hd5312453968%_)
                                              (_%$%g5310254016%_
                                               _%$%hd5312153958%_)
                                              (_%$%g5310354017%_
                                               _%$%hd5311553938%_)
                                              (_%$%g5310454018%_
                                               _%$%hd5311253928%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5310454018%_)
                                                   (gx#identifier?
                                                    _%$%g5310054014%_)
                                                   (gx#identifier?
                                                    _%$%g5310154015%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5310154015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5310154015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5310154015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5310154015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9587495875%_
                                               _%$%g5309954012%_
                                               _%$%g5310054014%_
                                               _%$%g5310154015%_
                                               _%$%g5310254016%_
                                               _%$%g5310354017%_
                                               _%$%g5310454018%_)
                                              (_%__match9607096071%_
                                               _%$%e5310553904%_
                                               _%$%hd5310653908%_
                                               _%$%tl5310753911%_
                                               _%$%e5310853914%_
                                               _%$%hd5310953918%_
                                               _%$%tl5311053921%_
                                               _%$%e5311153924%_
                                               _%$%hd5311253928%_
                                               _%$%tl5311353931%_
                                               _%$%e5311453934%_
                                               _%$%hd5311553938%_
                                               _%$%tl5311653941%_))))))))
                        (_%$%loop5313253990%_ _%$%target5312953984%_ '()))))
                   (_%__match9597495975%_
                    (lambda (_%$%e5310553904%_
                             _%$%hd5310653908%_
                             _%$%tl5310753911%_
                             _%$%e5310853914%_
                             _%$%hd5310953918%_
                             _%$%tl5311053921%_
                             _%$%e5311153924%_
                             _%$%hd5311253928%_
                             _%$%tl5311353931%_
                             _%$%e5311453934%_
                             _%$%hd5311553938%_
                             _%$%tl5311653941%_
                             _%$%e5311753944%_
                             _%$%hd5311853948%_
                             _%$%tl5311953951%_)
                      (if (gx#identifier? _%$%hd5311853948%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g102591_|
                               _%$%hd5311853948%_)
                              (if (gx#stx-pair? _%$%tl5311953951%_)
                                  (let ((_%$%e5312053954%_
                                         (gx#syntax-e _%$%tl5311953951%_)))
                                    (let ((_%$%tl5312253961%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5312053954%_)))
                                          (_%$%hd5312153958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5312053954%_))))
                                      (if (gx#stx-pair? _%$%tl5312253961%_)
                                          (let ((_%$%e5312353964%_
                                                 (gx#syntax-e
                                                  _%$%tl5312253961%_)))
                                            (let ((_%$%tl5312553971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5312353964%_)))
                                                  (_%$%hd5312453968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5312353964%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5312553971%_)
                                                  (let ((_%$%e5312653974%_
                                                         (gx#syntax-e
                                                          _%$%tl5312553971%_)))
                                                    (let ((_%$%tl5312853981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5312653974%_)))
                                                          (_%$%hd5312753978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5312653974%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5312853981%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5311053921%_)
                                                              (let ((_%__splice9587695877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5311053921%_
                              '0)))
                        (let ((_%$%tl5313153987%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9587695877%_ '1)))
                              (_%$%target5312953984%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9587695877%_ '0))))
                          (if (gx#stx-null? _%$%tl5313153987%_)
                              (_%__match9600696007%_
                               _%$%e5310553904%_
                               _%$%hd5310653908%_
                               _%$%tl5310753911%_
                               _%$%e5310853914%_
                               _%$%hd5310953918%_
                               _%$%tl5311053921%_
                               _%$%e5311153924%_
                               _%$%hd5311253928%_
                               _%$%tl5311353931%_
                               _%$%e5311453934%_
                               _%$%hd5311553938%_
                               _%$%tl5311653941%_
                               _%$%e5311753944%_
                               _%$%hd5311853948%_
                               _%$%tl5311953951%_
                               _%$%e5312053954%_
                               _%$%hd5312153958%_
                               _%$%tl5312253961%_
                               _%$%e5312353964%_
                               _%$%hd5312453968%_
                               _%$%tl5312553971%_
                               _%$%e5312653974%_
                               _%$%hd5312753978%_
                               _%$%tl5312853981%_
                               _%__splice9587695877%_
                               _%$%target5312953984%_
                               _%$%tl5313153987%_)
                              (if (gx#stx-pair? _%$%hd5311253928%_)
                                  (let ((_%$%e5324153393%_
                                         (gx#syntax-e _%$%hd5311253928%_)))
                                    (let ((_%$%tl5324353400%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5324153393%_)))
                                          (_%$%hd5324253397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5324153393%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))))
                      (if (gx#stx-pair? _%$%hd5311253928%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5311253928%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))
                  (if (gx#stx-pair? _%$%hd5311253928%_)
                      (let ((_%$%e5324153393%_
                             (gx#syntax-e _%$%hd5311253928%_)))
                        (let ((_%$%tl5324353400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5324153393%_)))
                              (_%$%hd5324253397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5324153393%_))))
                          (if (gx#stx-pair/null? _%$%tl5311053921%_)
                              (let ((_%__splice9589295893%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5311053921%_
                                      '0)))
                                (let ((_%$%tl5324653406%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '1)))
                                      (_%$%target5324453403%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5324653406%_)
                                      (_%__match9617896179%_
                                       _%$%e5310553904%_
                                       _%$%hd5310653908%_
                                       _%$%tl5310753911%_
                                       _%$%e5310853914%_
                                       _%$%hd5310953918%_
                                       _%$%tl5311053921%_
                                       _%$%e5311153924%_
                                       _%$%hd5311253928%_
                                       _%$%tl5311353931%_
                                       _%$%e5324153393%_
                                       _%$%hd5324253397%_
                                       _%$%tl5324353400%_
                                       _%__splice9589295893%_
                                       _%$%target5324453403%_
                                       _%$%tl5324653406%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%$%hd5311553938%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102590_|
                                                           _%$%hd5311553938%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl5312553971%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl5311053921%_)
                          (let ((_%__splice9588895889%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5311053921%_
                                  '0)))
                            (let ((_%$%tl5322153546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9588895889%_ '1)))
                                  (_%$%target5321953543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9588895889%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5322153546%_)
                                  (_%__match9614696147%_
                                   _%$%e5310553904%_
                                   _%$%hd5310653908%_
                                   _%$%tl5310753911%_
                                   _%$%e5310853914%_
                                   _%$%hd5310953918%_
                                   _%$%tl5311053921%_
                                   _%$%e5311153924%_
                                   _%$%hd5311253928%_
                                   _%$%tl5311353931%_
                                   _%$%e5311453934%_
                                   _%$%hd5311553938%_
                                   _%$%tl5311653941%_
                                   _%$%e5311753944%_
                                   _%$%hd5311853948%_
                                   _%$%tl5311953951%_
                                   _%$%e5312053954%_
                                   _%$%hd5312153958%_
                                   _%$%tl5312253961%_
                                   _%$%e5312353964%_
                                   _%$%hd5312453968%_
                                   _%$%tl5312553971%_
                                   _%__splice9588895889%_
                                   _%$%target5321953543%_
                                   _%$%tl5322153546%_)
                                  (if (gx#stx-pair? _%$%hd5311253928%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5311253928%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))
                          (if (gx#stx-pair? _%$%hd5311253928%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5311253928%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                      (if (gx#stx-pair? _%$%hd5311253928%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5311253928%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (if (gx#stx-pair/null? _%$%tl5311053921%_)
                                  (let ((_%__splice9589295893%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5311053921%_
                                          '0)))
                                    (let ((_%$%tl5324653406%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '1)))
                                          (_%$%target5324453403%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5324653406%_)
                                          (_%__match9617896179%_
                                           _%$%e5310553904%_
                                           _%$%hd5310653908%_
                                           _%$%tl5310753911%_
                                           _%$%e5310853914%_
                                           _%$%hd5310953918%_
                                           _%$%tl5311053921%_
                                           _%$%e5311153924%_
                                           _%$%hd5311253928%_
                                           _%$%tl5311353931%_
                                           _%$%e5324153393%_
                                           _%$%hd5324253397%_
                                           _%$%tl5324353400%_
                                           _%__splice9589295893%_
                                           _%$%target5324453403%_
                                           _%$%tl5324653406%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))
                  (if (gx#stx-pair? _%$%hd5311253928%_)
                      (let ((_%$%e5324153393%_
                             (gx#syntax-e _%$%hd5311253928%_)))
                        (let ((_%$%tl5324353400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5324153393%_)))
                              (_%$%hd5324253397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5324153393%_))))
                          (if (gx#stx-pair/null? _%$%tl5311053921%_)
                              (let ((_%__splice9589295893%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5311053921%_
                                      '0)))
                                (let ((_%$%tl5324653406%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '1)))
                                      (_%$%target5324453403%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5324653406%_)
                                      (_%__match9617896179%_
                                       _%$%e5310553904%_
                                       _%$%hd5310653908%_
                                       _%$%tl5310753911%_
                                       _%$%e5310853914%_
                                       _%$%hd5310953918%_
                                       _%$%tl5311053921%_
                                       _%$%e5311153924%_
                                       _%$%hd5311253928%_
                                       _%$%tl5311353931%_
                                       _%$%e5324153393%_
                                       _%$%hd5324253397%_
                                       _%$%tl5324353400%_
                                       _%__splice9589295893%_
                                       _%$%target5324453403%_
                                       _%$%tl5324653406%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))
              (if (gx#stx-pair? _%$%hd5311253928%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5311253928%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (if (gx#stx-pair/null? _%$%tl5311053921%_)
                          (let ((_%__splice9589295893%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5311053921%_
                                  '0)))
                            (let ((_%$%tl5324653406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9589295893%_ '1)))
                                  (_%$%target5324453403%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9589295893%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324653406%_)
                                  (_%__match9617896179%_
                                   _%$%e5310553904%_
                                   _%$%hd5310653908%_
                                   _%$%tl5310753911%_
                                   _%$%e5310853914%_
                                   _%$%hd5310953918%_
                                   _%$%tl5311053921%_
                                   _%$%e5311153924%_
                                   _%$%hd5311253928%_
                                   _%$%tl5311353931%_
                                   _%$%e5324153393%_
                                   _%$%hd5324253397%_
                                   _%$%tl5324353400%_
                                   _%__splice9589295893%_
                                   _%$%target5324453403%_
                                   _%$%tl5324653406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5311253928%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5311253928%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5311053921%_)
                                                      (let ((_%__splice9589295893%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5311053921%_
                                                              '0)))
                                                        (let ((_%$%tl5324653406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '1)))
                      (_%$%target5324453403%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '0))))
                  (if (gx#stx-null? _%$%tl5324653406%_)
                      (_%__match9617896179%_
                       _%$%e5310553904%_
                       _%$%hd5310653908%_
                       _%$%tl5310753911%_
                       _%$%e5310853914%_
                       _%$%hd5310953918%_
                       _%$%tl5311053921%_
                       _%$%e5311153924%_
                       _%$%hd5311253928%_
                       _%$%tl5311353931%_
                       _%$%e5324153393%_
                       _%$%hd5324253397%_
                       _%$%tl5324353400%_
                       _%__splice9589295893%_
                       _%$%target5324453403%_
                       _%$%tl5324653406%_)
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))))
                                  (if (gx#stx-null? _%$%tl5311953951%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5311053921%_)
                                          (let ((_%__splice9588095881%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5311053921%_
                                                  '0)))
                                            (let ((_%$%tl5315953806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9588095881%_
                                                      '1)))
                                                  (_%$%target5315753803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9588095881%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5315953806%_)
                                                  (_%__match9604696047%_
                                                   _%$%e5310553904%_
                                                   _%$%hd5310653908%_
                                                   _%$%tl5310753911%_
                                                   _%$%e5310853914%_
                                                   _%$%hd5310953918%_
                                                   _%$%tl5311053921%_
                                                   _%$%e5311153924%_
                                                   _%$%hd5311253928%_
                                                   _%$%tl5311353931%_
                                                   _%$%e5311453934%_
                                                   _%$%hd5311553938%_
                                                   _%$%tl5311653941%_
                                                   _%$%e5311753944%_
                                                   _%$%hd5311853948%_
                                                   _%$%tl5311953951%_
                                                   _%__splice9588095881%_
                                                   _%$%target5315753803%_
                                                   _%$%tl5315953806%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5311253928%_)
                                                      (let ((_%$%e5324153393%_
                                                             (gx#syntax-e
                                                              _%$%hd5311253928%_)))
                                                        (let ((_%$%tl5324353400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324153393%_)))
                      (_%$%hd5324253397%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324153393%_))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))
              (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5311253928%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5311253928%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                      (if (gx#stx-pair? _%$%hd5311253928%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5311253928%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5311053921%_)
                                                  (let ((_%__splice9589295893%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5311053921%_
                                                          '0)))
                                                    (let ((_%$%tl5324653406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '1)))
                                                          (_%$%target5324453403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324653406%_)
                                                          (_%__match9617896179%_
                                                           _%$%e5310553904%_
                                                           _%$%hd5310653908%_
                                                           _%$%tl5310753911%_
                                                           _%$%e5310853914%_
                                                           _%$%hd5310953918%_
                                                           _%$%tl5311053921%_
                                                           _%$%e5311153924%_
                                                           _%$%hd5311253928%_
                                                           _%$%tl5311353931%_
                                                           _%$%e5324153393%_
                                                           _%$%hd5324253397%_
                                                           _%$%tl5324353400%_
                                                           _%__splice9589295893%_
                                                           _%$%target5324453403%_
                                                           _%$%tl5324653406%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5306553274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                              (if (gx#stx-null? _%$%tl5311953951%_)
                                  (if (gx#stx-pair/null? _%$%tl5311053921%_)
                                      (let ((_%__splice9588095881%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5311053921%_
                                              '0)))
                                        (let ((_%$%tl5315953806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9588095881%_
                                                  '1)))
                                              (_%$%target5315753803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9588095881%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5315953806%_)
                                              (_%__match9604696047%_
                                               _%$%e5310553904%_
                                               _%$%hd5310653908%_
                                               _%$%tl5310753911%_
                                               _%$%e5310853914%_
                                               _%$%hd5310953918%_
                                               _%$%tl5311053921%_
                                               _%$%e5311153924%_
                                               _%$%hd5311253928%_
                                               _%$%tl5311353931%_
                                               _%$%e5311453934%_
                                               _%$%hd5311553938%_
                                               _%$%tl5311653941%_
                                               _%$%e5311753944%_
                                               _%$%hd5311853948%_
                                               _%$%tl5311953951%_
                                               _%__splice9588095881%_
                                               _%$%target5315753803%_
                                               _%$%tl5315953806%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd5311253928%_)
                                                  (let ((_%$%e5324153393%_
                                                         (gx#syntax-e
                                                          _%$%hd5311253928%_)))
                                                    (let ((_%$%tl5324353400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324153393%_)))
                                                          (_%$%hd5324253397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324153393%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5306553274%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_))))))
                                      (if (gx#stx-pair? _%$%hd5311253928%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5311253928%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                  (if (gx#identifier? _%$%hd5311553938%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102590_|
                                           _%$%hd5311553938%_)
                                          (if (gx#stx-pair? _%$%tl5311953951%_)
                                              (let ((_%$%e5321353523%_
                                                     (gx#syntax-e
                                                      _%$%tl5311953951%_)))
                                                (let ((_%$%tl5321553530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5321353523%_)))
                                                      (_%$%hd5321453527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5321353523%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5321553530%_)
                                                      (let ((_%$%e5321653533%_
                                                             (gx#syntax-e
                                                              _%$%tl5321553530%_)))
                                                        (let ((_%$%tl5321853540%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5321653533%_)))
                      (_%$%hd5321753537%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5321653533%_))))
                  (if (gx#stx-null? _%$%tl5321853540%_)
                      (if (gx#stx-pair/null? _%$%tl5311053921%_)
                          (let ((_%__splice9588895889%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5311053921%_
                                  '0)))
                            (let ((_%$%tl5322153546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9588895889%_ '1)))
                                  (_%$%target5321953543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9588895889%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5322153546%_)
                                  (_%__match9614696147%_
                                   _%$%e5310553904%_
                                   _%$%hd5310653908%_
                                   _%$%tl5310753911%_
                                   _%$%e5310853914%_
                                   _%$%hd5310953918%_
                                   _%$%tl5311053921%_
                                   _%$%e5311153924%_
                                   _%$%hd5311253928%_
                                   _%$%tl5311353931%_
                                   _%$%e5311453934%_
                                   _%$%hd5311553938%_
                                   _%$%tl5311653941%_
                                   _%$%e5311753944%_
                                   _%$%hd5311853948%_
                                   _%$%tl5311953951%_
                                   _%$%e5321353523%_
                                   _%$%hd5321453527%_
                                   _%$%tl5321553530%_
                                   _%$%e5321653533%_
                                   _%$%hd5321753537%_
                                   _%$%tl5321853540%_
                                   _%__splice9588895889%_
                                   _%$%target5321953543%_
                                   _%$%tl5322153546%_)
                                  (if (gx#stx-pair? _%$%hd5311253928%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5311253928%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))
                          (if (gx#stx-pair? _%$%hd5311253928%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5311253928%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                      (if (gx#stx-pair? _%$%hd5311253928%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5311253928%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (if (gx#stx-pair/null? _%$%tl5311053921%_)
                                  (let ((_%__splice9589295893%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5311053921%_
                                          '0)))
                                    (let ((_%$%tl5324653406%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '1)))
                                          (_%$%target5324453403%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5324653406%_)
                                          (_%__match9617896179%_
                                           _%$%e5310553904%_
                                           _%$%hd5310653908%_
                                           _%$%tl5310753911%_
                                           _%$%e5310853914%_
                                           _%$%hd5310953918%_
                                           _%$%tl5311053921%_
                                           _%$%e5311153924%_
                                           _%$%hd5311253928%_
                                           _%$%tl5311353931%_
                                           _%$%e5324153393%_
                                           _%$%hd5324253397%_
                                           _%$%tl5324353400%_
                                           _%__splice9589295893%_
                                           _%$%target5324453403%_
                                           _%$%tl5324653406%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))))
              (if (gx#stx-pair? _%$%hd5311253928%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5311253928%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (if (gx#stx-pair/null? _%$%tl5311053921%_)
                          (let ((_%__splice9589295893%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5311053921%_
                                  '0)))
                            (let ((_%$%tl5324653406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9589295893%_ '1)))
                                  (_%$%target5324453403%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9589295893%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324653406%_)
                                  (_%__match9617896179%_
                                   _%$%e5310553904%_
                                   _%$%hd5310653908%_
                                   _%$%tl5310753911%_
                                   _%$%e5310853914%_
                                   _%$%hd5310953918%_
                                   _%$%tl5311053921%_
                                   _%$%e5311153924%_
                                   _%$%hd5311253928%_
                                   _%$%tl5311353931%_
                                   _%$%e5324153393%_
                                   _%$%hd5324253397%_
                                   _%$%tl5324353400%_
                                   _%__splice9589295893%_
                                   _%$%target5324453403%_
                                   _%$%tl5324653406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5311253928%_)
                                                  (let ((_%$%e5324153393%_
                                                         (gx#syntax-e
                                                          _%$%hd5311253928%_)))
                                                    (let ((_%$%tl5324353400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324153393%_)))
                                                          (_%$%hd5324253397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324153393%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5311053921%_)
                                                          (let ((_%__splice9589295893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5311053921%_
                          '0)))
                    (let ((_%$%tl5324653406%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9589295893%_ '1)))
                          (_%$%target5324453403%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9589295893%_ '0))))
                      (if (gx#stx-null? _%$%tl5324653406%_)
                          (_%__match9617896179%_
                           _%$%e5310553904%_
                           _%$%hd5310653908%_
                           _%$%tl5310753911%_
                           _%$%e5310853914%_
                           _%$%hd5310953918%_
                           _%$%tl5311053921%_
                           _%$%e5311153924%_
                           _%$%hd5311253928%_
                           _%$%tl5311353931%_
                           _%$%e5324153393%_
                           _%$%hd5324253397%_
                           _%$%tl5324353400%_
                           _%__splice9589295893%_
                           _%$%target5324453403%_
                           _%$%tl5324653406%_)
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_))))
                                          (if (gx#stx-pair? _%$%hd5311253928%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5311253928%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5311053921%_)
                                                      (let ((_%__splice9589295893%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5311053921%_
                                                              '0)))
                                                        (let ((_%$%tl5324653406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '1)))
                      (_%$%target5324453403%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '0))))
                  (if (gx#stx-null? _%$%tl5324653406%_)
                      (_%__match9617896179%_
                       _%$%e5310553904%_
                       _%$%hd5310653908%_
                       _%$%tl5310753911%_
                       _%$%e5310853914%_
                       _%$%hd5310953918%_
                       _%$%tl5311053921%_
                       _%$%e5311153924%_
                       _%$%hd5311253928%_
                       _%$%tl5311353931%_
                       _%$%e5324153393%_
                       _%$%hd5324253397%_
                       _%$%tl5324353400%_
                       _%__splice9589295893%_
                       _%$%target5324453403%_
                       _%$%tl5324653406%_)
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                      (if (gx#stx-pair? _%$%hd5311253928%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5311253928%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5311053921%_)
                                                  (let ((_%__splice9589295893%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5311053921%_
                                                          '0)))
                                                    (let ((_%$%tl5324653406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '1)))
                                                          (_%$%target5324453403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324653406%_)
                                                          (_%__match9617896179%_
                                                           _%$%e5310553904%_
                                                           _%$%hd5310653908%_
                                                           _%$%tl5310753911%_
                                                           _%$%e5310853914%_
                                                           _%$%hd5310953918%_
                                                           _%$%tl5311053921%_
                                                           _%$%e5311153924%_
                                                           _%$%hd5311253928%_
                                                           _%$%tl5311353931%_
                                                           _%$%e5324153393%_
                                                           _%$%hd5324253397%_
                                                           _%$%tl5324353400%_
                                                           _%__splice9589295893%_
                                                           _%$%target5324453403%_
                                                           _%$%tl5324653406%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5306553274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))))
                          (if (gx#stx-null? _%$%tl5311953951%_)
                              (if (gx#stx-pair/null? _%$%tl5311053921%_)
                                  (let ((_%__splice9588095881%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5311053921%_
                                          '0)))
                                    (let ((_%$%tl5315953806%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9588095881%_
                                              '1)))
                                          (_%$%target5315753803%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9588095881%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5315953806%_)
                                          (_%__match9604696047%_
                                           _%$%e5310553904%_
                                           _%$%hd5310653908%_
                                           _%$%tl5310753911%_
                                           _%$%e5310853914%_
                                           _%$%hd5310953918%_
                                           _%$%tl5311053921%_
                                           _%$%e5311153924%_
                                           _%$%hd5311253928%_
                                           _%$%tl5311353931%_
                                           _%$%e5311453934%_
                                           _%$%hd5311553938%_
                                           _%$%tl5311653941%_
                                           _%$%e5311753944%_
                                           _%$%hd5311853948%_
                                           _%$%tl5311953951%_
                                           _%__splice9588095881%_
                                           _%$%target5315753803%_
                                           _%$%tl5315953806%_)
                                          (if (gx#stx-pair? _%$%hd5311253928%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5311253928%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))))
                                  (if (gx#stx-pair? _%$%hd5311253928%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5311253928%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))
                              (if (gx#identifier? _%$%hd5311553938%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102590_|
                                       _%$%hd5311553938%_)
                                      (if (gx#stx-pair? _%$%tl5311953951%_)
                                          (let ((_%$%e5321353523%_
                                                 (gx#syntax-e
                                                  _%$%tl5311953951%_)))
                                            (let ((_%$%tl5321553530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5321353523%_)))
                                                  (_%$%hd5321453527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5321353523%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5321553530%_)
                                                  (let ((_%$%e5321653533%_
                                                         (gx#syntax-e
                                                          _%$%tl5321553530%_)))
                                                    (let ((_%$%tl5321853540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5321653533%_)))
                                                          (_%$%hd5321753537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5321653533%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5321853540%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5311053921%_)
                                                              (let ((_%__splice9588895889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5311053921%_
                              '0)))
                        (let ((_%$%tl5322153546%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9588895889%_ '1)))
                              (_%$%target5321953543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9588895889%_ '0))))
                          (if (gx#stx-null? _%$%tl5322153546%_)
                              (_%__match9614696147%_
                               _%$%e5310553904%_
                               _%$%hd5310653908%_
                               _%$%tl5310753911%_
                               _%$%e5310853914%_
                               _%$%hd5310953918%_
                               _%$%tl5311053921%_
                               _%$%e5311153924%_
                               _%$%hd5311253928%_
                               _%$%tl5311353931%_
                               _%$%e5311453934%_
                               _%$%hd5311553938%_
                               _%$%tl5311653941%_
                               _%$%e5311753944%_
                               _%$%hd5311853948%_
                               _%$%tl5311953951%_
                               _%$%e5321353523%_
                               _%$%hd5321453527%_
                               _%$%tl5321553530%_
                               _%$%e5321653533%_
                               _%$%hd5321753537%_
                               _%$%tl5321853540%_
                               _%__splice9588895889%_
                               _%$%target5321953543%_
                               _%$%tl5322153546%_)
                              (if (gx#stx-pair? _%$%hd5311253928%_)
                                  (let ((_%$%e5324153393%_
                                         (gx#syntax-e _%$%hd5311253928%_)))
                                    (let ((_%$%tl5324353400%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5324153393%_)))
                                          (_%$%hd5324253397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5324153393%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))))
                      (if (gx#stx-pair? _%$%hd5311253928%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5311253928%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))
                  (if (gx#stx-pair? _%$%hd5311253928%_)
                      (let ((_%$%e5324153393%_
                             (gx#syntax-e _%$%hd5311253928%_)))
                        (let ((_%$%tl5324353400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5324153393%_)))
                              (_%$%hd5324253397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5324153393%_))))
                          (if (gx#stx-pair/null? _%$%tl5311053921%_)
                              (let ((_%__splice9589295893%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5311053921%_
                                      '0)))
                                (let ((_%$%tl5324653406%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '1)))
                                      (_%$%target5324453403%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5324653406%_)
                                      (_%__match9617896179%_
                                       _%$%e5310553904%_
                                       _%$%hd5310653908%_
                                       _%$%tl5310753911%_
                                       _%$%e5310853914%_
                                       _%$%hd5310953918%_
                                       _%$%tl5311053921%_
                                       _%$%e5311153924%_
                                       _%$%hd5311253928%_
                                       _%$%tl5311353931%_
                                       _%$%e5324153393%_
                                       _%$%hd5324253397%_
                                       _%$%tl5324353400%_
                                       _%__splice9589295893%_
                                       _%$%target5324453403%_
                                       _%$%tl5324653406%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5311253928%_)
                                                      (let ((_%$%e5324153393%_
                                                             (gx#syntax-e
                                                              _%$%hd5311253928%_)))
                                                        (let ((_%$%tl5324353400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324153393%_)))
                      (_%$%hd5324253397%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324153393%_))))
                  (if (gx#stx-pair/null? _%$%tl5311053921%_)
                      (let ((_%__splice9589295893%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5311053921%_
                              '0)))
                        (let ((_%$%tl5324653406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '1)))
                              (_%$%target5324453403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '0))))
                          (if (gx#stx-null? _%$%tl5324653406%_)
                              (_%__match9617896179%_
                               _%$%e5310553904%_
                               _%$%hd5310653908%_
                               _%$%tl5310753911%_
                               _%$%e5310853914%_
                               _%$%hd5310953918%_
                               _%$%tl5311053921%_
                               _%$%e5311153924%_
                               _%$%hd5311253928%_
                               _%$%tl5311353931%_
                               _%$%e5324153393%_
                               _%$%hd5324253397%_
                               _%$%tl5324353400%_
                               _%__splice9589295893%_
                               _%$%target5324453403%_
                               _%$%tl5324653406%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5311253928%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5311253928%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5311053921%_)
                                                      (let ((_%__splice9589295893%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5311053921%_
                                                              '0)))
                                                        (let ((_%$%tl5324653406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '1)))
                      (_%$%target5324453403%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '0))))
                  (if (gx#stx-null? _%$%tl5324653406%_)
                      (_%__match9617896179%_
                       _%$%e5310553904%_
                       _%$%hd5310653908%_
                       _%$%tl5310753911%_
                       _%$%e5310853914%_
                       _%$%hd5310953918%_
                       _%$%tl5311053921%_
                       _%$%e5311153924%_
                       _%$%hd5311253928%_
                       _%$%tl5311353931%_
                       _%$%e5324153393%_
                       _%$%hd5324253397%_
                       _%$%tl5324353400%_
                       _%__splice9589295893%_
                       _%$%target5324453403%_
                       _%$%tl5324653406%_)
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                      (if (gx#stx-pair? _%$%hd5311253928%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5311253928%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5311053921%_)
                                                  (let ((_%__splice9589295893%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5311053921%_
                                                          '0)))
                                                    (let ((_%$%tl5324653406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '1)))
                                                          (_%$%target5324453403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324653406%_)
                                                          (_%__match9617896179%_
                                                           _%$%e5310553904%_
                                                           _%$%hd5310653908%_
                                                           _%$%tl5310753911%_
                                                           _%$%e5310853914%_
                                                           _%$%hd5310953918%_
                                                           _%$%tl5311053921%_
                                                           _%$%e5311153924%_
                                                           _%$%hd5311253928%_
                                                           _%$%tl5311353931%_
                                                           _%$%e5324153393%_
                                                           _%$%hd5324253397%_
                                                           _%$%tl5324353400%_
                                                           _%__splice9589295893%_
                                                           _%$%target5324453403%_
                                                           _%$%tl5324653406%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5306553274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                  (if (gx#stx-pair? _%$%hd5311253928%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5311253928%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5311053921%_)
                                              (let ((_%__splice9589295893%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5311053921%_
                                                      '0)))
                                                (let ((_%$%tl5324653406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9589295893%_
                                                          '1)))
                                                      (_%$%target5324453403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9589295893%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5324653406%_)
                                                      (_%__match9617896179%_
                                                       _%$%e5310553904%_
                                                       _%$%hd5310653908%_
                                                       _%$%tl5310753911%_
                                                       _%$%e5310853914%_
                                                       _%$%hd5310953918%_
                                                       _%$%tl5311053921%_
                                                       _%$%e5311153924%_
                                                       _%$%hd5311253928%_
                                                       _%$%tl5311353931%_
                                                       _%$%e5324153393%_
                                                       _%$%hd5324253397%_
                                                       _%$%tl5324353400%_
                                                       _%__splice9589295893%_
                                                       _%$%target5324453403%_
                                                       _%$%tl5324653406%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5306553274%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))))
                   (_%__match9594495945%_
                    (lambda (_%$%e5307254078%_
                             _%$%hd5307354082%_
                             _%$%tl5307454085%_
                             _%$%e5307554088%_
                             _%$%hd5307654092%_
                             _%$%tl5307754095%_
                             _%$%e5307854098%_
                             _%$%hd5307954102%_
                             _%$%tl5308054105%_
                             _%$%e5308154108%_
                             _%$%hd5308254112%_
                             _%$%tl5308354115%_
                             _%$%e5308454118%_
                             _%$%hd5308554122%_
                             _%$%tl5308654125%_
                             _%$%e5308754128%_
                             _%$%hd5308854132%_
                             _%$%tl5308954135%_
                             _%__splice9587295873%_
                             _%$%target5309054138%_
                             _%$%tl5309254141%_)
                      (letrec ((_%$%loop5309354144%_
                                (lambda (_%$%hd5309154148%_
                                         _%$%body5309754151%_)
                                  (if (gx#stx-pair? _%$%hd5309154148%_)
                                      (let ((_%$%e5309454153%_
                                             (gx#syntax-e _%$%hd5309154148%_)))
                                        (let ((_%$%lp-tl5309654160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5309454153%_)))
                                              (_%$%lp-hd5309554157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5309454153%_))))
                                          (_%$%loop5309354144%_
                                           _%$%lp-tl5309654160%_
                                           (cons _%$%lp-hd5309554157%_
                                                 _%$%body5309754151%_))))
                                      (let ((_%$%body5309854163%_
                                             (reverse _%$%body5309754151%_)))
                                        (let ((_%$%g5306754166%_
                                               _%$%body5309854163%_)
                                              (_%$%g5306854168%_
                                               _%$%hd5308854132%_)
                                              (_%$%g5306954169%_
                                               _%$%hd5308554122%_)
                                              (_%$%g5307054170%_
                                               _%$%hd5308254112%_)
                                              (_%$%g5307154171%_
                                               _%$%hd5307954102%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5307154171%_)
                                                   (gx#identifier?
                                                    _%$%g5306954169%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5306954169%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5306954169%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5306954169%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5306954169%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%$%g5306954169%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9587095871%_
                                               _%$%g5306754166%_
                                               _%$%g5306854168%_
                                               _%$%g5306954169%_
                                               _%$%g5307054170%_
                                               _%$%g5307154171%_)
                                              (_%__match9597495975%_
                                               _%$%e5307254078%_
                                               _%$%hd5307354082%_
                                               _%$%tl5307454085%_
                                               _%$%e5307554088%_
                                               _%$%hd5307654092%_
                                               _%$%tl5307754095%_
                                               _%$%e5307854098%_
                                               _%$%hd5307954102%_
                                               _%$%tl5308054105%_
                                               _%$%e5308154108%_
                                               _%$%hd5308254112%_
                                               _%$%tl5308354115%_
                                               _%$%e5308454118%_
                                               _%$%hd5308554122%_
                                               _%$%tl5308654125%_))))))))
                        (_%$%loop5309354144%_ _%$%target5309054138%_ '())))))
              (if (gx#stx-pair? _%__stx9586795868%_)
                  (let ((_%$%e5307254078%_ (gx#syntax-e _%__stx9586795868%_)))
                    (let ((_%$%tl5307454085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5307254078%_)))
                          (_%$%hd5307354082%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5307254078%_))))
                      (if (gx#stx-pair? _%$%tl5307454085%_)
                          (let ((_%$%e5307554088%_
                                 (gx#syntax-e _%$%tl5307454085%_)))
                            (let ((_%$%tl5307754095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5307554088%_)))
                                  (_%$%hd5307654092%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5307554088%_))))
                              (if (gx#stx-pair? _%$%hd5307654092%_)
                                  (let ((_%$%e5307854098%_
                                         (gx#syntax-e _%$%hd5307654092%_)))
                                    (let ((_%$%tl5308054105%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5307854098%_)))
                                          (_%$%hd5307954102%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5307854098%_))))
                                      (if (gx#stx-pair? _%$%tl5308054105%_)
                                          (let ((_%$%e5308154108%_
                                                 (gx#syntax-e
                                                  _%$%tl5308054105%_)))
                                            (let ((_%$%tl5308354115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5308154108%_)))
                                                  (_%$%hd5308254112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5308154108%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5308354115%_)
                                                  (let ((_%$%e5308454118%_
                                                         (gx#syntax-e
                                                          _%$%tl5308354115%_)))
                                                    (let ((_%$%tl5308654125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5308454118%_)))
                                                          (_%$%hd5308554122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5308454118%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5308654125%_)
                                                          (let ((_%$%e5308754128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5308654125%_)))
                    (let ((_%$%tl5308954135%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5308754128%_)))
                          (_%$%hd5308854132%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5308754128%_))))
                      (if (gx#stx-null? _%$%tl5308954135%_)
                          (if (gx#stx-pair/null? _%$%tl5307754095%_)
                              (let ((_%__splice9587295873%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5307754095%_
                                      '0)))
                                (let ((_%$%tl5309254141%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9587295873%_
                                          '1)))
                                      (_%$%target5309054138%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9587295873%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5309254141%_)
                                      (_%__match9594495945%_
                                       _%$%e5307254078%_
                                       _%$%hd5307354082%_
                                       _%$%tl5307454085%_
                                       _%$%e5307554088%_
                                       _%$%hd5307654092%_
                                       _%$%tl5307754095%_
                                       _%$%e5307854098%_
                                       _%$%hd5307954102%_
                                       _%$%tl5308054105%_
                                       _%$%e5308154108%_
                                       _%$%hd5308254112%_
                                       _%$%tl5308354115%_
                                       _%$%e5308454118%_
                                       _%$%hd5308554122%_
                                       _%$%tl5308654125%_
                                       _%$%e5308754128%_
                                       _%$%hd5308854132%_
                                       _%$%tl5308954135%_
                                       _%__splice9587295873%_
                                       _%$%target5309054138%_
                                       _%$%tl5309254141%_)
                                      (if (gx#stx-pair? _%$%hd5307954102%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5307954102%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))))
                              (if (gx#stx-pair? _%$%hd5307954102%_)
                                  (let ((_%$%e5324153393%_
                                         (gx#syntax-e _%$%hd5307954102%_)))
                                    (let ((_%$%tl5324353400%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5324153393%_)))
                                          (_%$%hd5324253397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5324153393%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                          (if (gx#identifier? _%$%hd5308554122%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g102591_|
                                   _%$%hd5308554122%_)
                                  (if (gx#stx-pair? _%$%tl5308954135%_)
                                      (let ((_%$%e5312353964%_
                                             (gx#syntax-e _%$%tl5308954135%_)))
                                        (let ((_%$%tl5312553971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5312353964%_)))
                                              (_%$%hd5312453968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5312353964%_))))
                                          (if (gx#stx-pair? _%$%tl5312553971%_)
                                              (let ((_%$%e5312653974%_
                                                     (gx#syntax-e
                                                      _%$%tl5312553971%_)))
                                                (let ((_%$%tl5312853981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5312653974%_)))
                                                      (_%$%hd5312753978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5312653974%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5312853981%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5307754095%_)
                                                          (let ((_%__splice9587695877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5307754095%_
                          '0)))
                    (let ((_%$%tl5313153987%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9587695877%_ '1)))
                          (_%$%target5312953984%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9587695877%_ '0))))
                      (if (gx#stx-null? _%$%tl5313153987%_)
                          (_%__match9600696007%_
                           _%$%e5307254078%_
                           _%$%hd5307354082%_
                           _%$%tl5307454085%_
                           _%$%e5307554088%_
                           _%$%hd5307654092%_
                           _%$%tl5307754095%_
                           _%$%e5307854098%_
                           _%$%hd5307954102%_
                           _%$%tl5308054105%_
                           _%$%e5308154108%_
                           _%$%hd5308254112%_
                           _%$%tl5308354115%_
                           _%$%e5308454118%_
                           _%$%hd5308554122%_
                           _%$%tl5308654125%_
                           _%$%e5308754128%_
                           _%$%hd5308854132%_
                           _%$%tl5308954135%_
                           _%$%e5312353964%_
                           _%$%hd5312453968%_
                           _%$%tl5312553971%_
                           _%$%e5312653974%_
                           _%$%hd5312753978%_
                           _%$%tl5312853981%_
                           _%__splice9587695877%_
                           _%$%target5312953984%_
                           _%$%tl5313153987%_)
                          (if (gx#stx-pair? _%$%hd5307954102%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5307954102%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))))
                  (if (gx#stx-pair? _%$%hd5307954102%_)
                      (let ((_%$%e5324153393%_
                             (gx#syntax-e _%$%hd5307954102%_)))
                        (let ((_%$%tl5324353400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5324153393%_)))
                              (_%$%hd5324253397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5324153393%_))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))
              (if (gx#stx-pair? _%$%hd5307954102%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5307954102%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (if (gx#stx-pair/null? _%$%tl5307754095%_)
                          (let ((_%__splice9589295893%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5307754095%_
                                  '0)))
                            (let ((_%$%tl5324653406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9589295893%_ '1)))
                                  (_%$%target5324453403%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9589295893%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324653406%_)
                                  (_%__match9617896179%_
                                   _%$%e5307254078%_
                                   _%$%hd5307354082%_
                                   _%$%tl5307454085%_
                                   _%$%e5307554088%_
                                   _%$%hd5307654092%_
                                   _%$%tl5307754095%_
                                   _%$%e5307854098%_
                                   _%$%hd5307954102%_
                                   _%$%tl5308054105%_
                                   _%$%e5324153393%_
                                   _%$%hd5324253397%_
                                   _%$%tl5324353400%_
                                   _%__splice9589295893%_
                                   _%$%target5324453403%_
                                   _%$%tl5324653406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%$%hd5308254112%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g102590_|
                                                       _%$%hd5308254112%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl5312553971%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5307754095%_)
                                                              (let ((_%__splice9588895889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5307754095%_
                              '0)))
                        (let ((_%$%tl5322153546%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9588895889%_ '1)))
                              (_%$%target5321953543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9588895889%_ '0))))
                          (if (gx#stx-null? _%$%tl5322153546%_)
                              (_%__match9614696147%_
                               _%$%e5307254078%_
                               _%$%hd5307354082%_
                               _%$%tl5307454085%_
                               _%$%e5307554088%_
                               _%$%hd5307654092%_
                               _%$%tl5307754095%_
                               _%$%e5307854098%_
                               _%$%hd5307954102%_
                               _%$%tl5308054105%_
                               _%$%e5308154108%_
                               _%$%hd5308254112%_
                               _%$%tl5308354115%_
                               _%$%e5308454118%_
                               _%$%hd5308554122%_
                               _%$%tl5308654125%_
                               _%$%e5308754128%_
                               _%$%hd5308854132%_
                               _%$%tl5308954135%_
                               _%$%e5312353964%_
                               _%$%hd5312453968%_
                               _%$%tl5312553971%_
                               _%__splice9588895889%_
                               _%$%target5321953543%_
                               _%$%tl5322153546%_)
                              (if (gx#stx-pair? _%$%hd5307954102%_)
                                  (let ((_%$%e5324153393%_
                                         (gx#syntax-e _%$%hd5307954102%_)))
                                    (let ((_%$%tl5324353400%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5324153393%_)))
                                          (_%$%hd5324253397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5324153393%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))))
                      (if (gx#stx-pair? _%$%hd5307954102%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5307954102%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))
                  (if (gx#stx-pair? _%$%hd5307954102%_)
                      (let ((_%$%e5324153393%_
                             (gx#syntax-e _%$%hd5307954102%_)))
                        (let ((_%$%tl5324353400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5324153393%_)))
                              (_%$%hd5324253397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5324153393%_))))
                          (if (gx#stx-pair/null? _%$%tl5307754095%_)
                              (let ((_%__splice9589295893%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5307754095%_
                                      '0)))
                                (let ((_%$%tl5324653406%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '1)))
                                      (_%$%target5324453403%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9589295893%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5324653406%_)
                                      (_%__match9617896179%_
                                       _%$%e5307254078%_
                                       _%$%hd5307354082%_
                                       _%$%tl5307454085%_
                                       _%$%e5307554088%_
                                       _%$%hd5307654092%_
                                       _%$%tl5307754095%_
                                       _%$%e5307854098%_
                                       _%$%hd5307954102%_
                                       _%$%tl5308054105%_
                                       _%$%e5324153393%_
                                       _%$%hd5324253397%_
                                       _%$%tl5324353400%_
                                       _%__splice9589295893%_
                                       _%$%target5324453403%_
                                       _%$%tl5324653406%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))
              (if (gx#stx-pair? _%$%hd5307954102%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5307954102%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (if (gx#stx-pair/null? _%$%tl5307754095%_)
                          (let ((_%__splice9589295893%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5307754095%_
                                  '0)))
                            (let ((_%$%tl5324653406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9589295893%_ '1)))
                                  (_%$%target5324453403%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9589295893%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324653406%_)
                                  (_%__match9617896179%_
                                   _%$%e5307254078%_
                                   _%$%hd5307354082%_
                                   _%$%tl5307454085%_
                                   _%$%e5307554088%_
                                   _%$%hd5307654092%_
                                   _%$%tl5307754095%_
                                   _%$%e5307854098%_
                                   _%$%hd5307954102%_
                                   _%$%tl5308054105%_
                                   _%$%e5324153393%_
                                   _%$%hd5324253397%_
                                   _%$%tl5324353400%_
                                   _%__splice9589295893%_
                                   _%$%target5324453403%_
                                   _%$%tl5324653406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5307954102%_)
                                                      (let ((_%$%e5324153393%_
                                                             (gx#syntax-e
                                                              _%$%hd5307954102%_)))
                                                        (let ((_%$%tl5324353400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324153393%_)))
                      (_%$%hd5324253397%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324153393%_))))
                  (if (gx#stx-pair/null? _%$%tl5307754095%_)
                      (let ((_%__splice9589295893%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5307754095%_
                              '0)))
                        (let ((_%$%tl5324653406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '1)))
                              (_%$%target5324453403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '0))))
                          (if (gx#stx-null? _%$%tl5324653406%_)
                              (_%__match9617896179%_
                               _%$%e5307254078%_
                               _%$%hd5307354082%_
                               _%$%tl5307454085%_
                               _%$%e5307554088%_
                               _%$%hd5307654092%_
                               _%$%tl5307754095%_
                               _%$%e5307854098%_
                               _%$%hd5307954102%_
                               _%$%tl5308054105%_
                               _%$%e5324153393%_
                               _%$%hd5324253397%_
                               _%$%tl5324353400%_
                               _%__splice9589295893%_
                               _%$%target5324453403%_
                               _%$%tl5324653406%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%$%hd5307954102%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5307954102%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5307754095%_)
                                                  (let ((_%__splice9589295893%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5307754095%_
                                                          '0)))
                                                    (let ((_%$%tl5324653406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '1)))
                                                          (_%$%target5324453403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324653406%_)
                                                          (_%__match9617896179%_
                                                           _%$%e5307254078%_
                                                           _%$%hd5307354082%_
                                                           _%$%tl5307454085%_
                                                           _%$%e5307554088%_
                                                           _%$%hd5307654092%_
                                                           _%$%tl5307754095%_
                                                           _%$%e5307854098%_
                                                           _%$%hd5307954102%_
                                                           _%$%tl5308054105%_
                                                           _%$%e5324153393%_
                                                           _%$%hd5324253397%_
                                                           _%$%tl5324353400%_
                                                           _%__splice9589295893%_
                                                           _%$%target5324453403%_
                                                           _%$%tl5324653406%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5306553274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                  (if (gx#identifier? _%$%hd5308254112%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102590_|
                                           _%$%hd5308254112%_)
                                          (if (gx#stx-pair? _%$%tl5308954135%_)
                                              (let ((_%$%e5321653533%_
                                                     (gx#syntax-e
                                                      _%$%tl5308954135%_)))
                                                (let ((_%$%tl5321853540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5321653533%_)))
                                                      (_%$%hd5321753537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5321653533%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5321853540%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5307754095%_)
                                                          (let ((_%__splice9588895889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5307754095%_
                          '0)))
                    (let ((_%$%tl5322153546%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9588895889%_ '1)))
                          (_%$%target5321953543%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9588895889%_ '0))))
                      (if (gx#stx-null? _%$%tl5322153546%_)
                          (_%__match9614696147%_
                           _%$%e5307254078%_
                           _%$%hd5307354082%_
                           _%$%tl5307454085%_
                           _%$%e5307554088%_
                           _%$%hd5307654092%_
                           _%$%tl5307754095%_
                           _%$%e5307854098%_
                           _%$%hd5307954102%_
                           _%$%tl5308054105%_
                           _%$%e5308154108%_
                           _%$%hd5308254112%_
                           _%$%tl5308354115%_
                           _%$%e5308454118%_
                           _%$%hd5308554122%_
                           _%$%tl5308654125%_
                           _%$%e5308754128%_
                           _%$%hd5308854132%_
                           _%$%tl5308954135%_
                           _%$%e5321653533%_
                           _%$%hd5321753537%_
                           _%$%tl5321853540%_
                           _%__splice9588895889%_
                           _%$%target5321953543%_
                           _%$%tl5322153546%_)
                          (if (gx#stx-pair? _%$%hd5307954102%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5307954102%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))))
                  (if (gx#stx-pair? _%$%hd5307954102%_)
                      (let ((_%$%e5324153393%_
                             (gx#syntax-e _%$%hd5307954102%_)))
                        (let ((_%$%tl5324353400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5324153393%_)))
                              (_%$%hd5324253397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5324153393%_))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))
              (if (gx#stx-pair? _%$%hd5307954102%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5307954102%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (if (gx#stx-pair/null? _%$%tl5307754095%_)
                          (let ((_%__splice9589295893%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5307754095%_
                                  '0)))
                            (let ((_%$%tl5324653406%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9589295893%_ '1)))
                                  (_%$%target5324453403%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9589295893%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324653406%_)
                                  (_%__match9617896179%_
                                   _%$%e5307254078%_
                                   _%$%hd5307354082%_
                                   _%$%tl5307454085%_
                                   _%$%e5307554088%_
                                   _%$%hd5307654092%_
                                   _%$%tl5307754095%_
                                   _%$%e5307854098%_
                                   _%$%hd5307954102%_
                                   _%$%tl5308054105%_
                                   _%$%e5324153393%_
                                   _%$%hd5324253397%_
                                   _%$%tl5324353400%_
                                   _%__splice9589295893%_
                                   _%$%target5324453403%_
                                   _%$%tl5324653406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5307954102%_)
                                                  (let ((_%$%e5324153393%_
                                                         (gx#syntax-e
                                                          _%$%hd5307954102%_)))
                                                    (let ((_%$%tl5324353400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324153393%_)))
                                                          (_%$%hd5324253397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324153393%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5307754095%_)
                                                          (let ((_%__splice9589295893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5307754095%_
                          '0)))
                    (let ((_%$%tl5324653406%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9589295893%_ '1)))
                          (_%$%target5324453403%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9589295893%_ '0))))
                      (if (gx#stx-null? _%$%tl5324653406%_)
                          (_%__match9617896179%_
                           _%$%e5307254078%_
                           _%$%hd5307354082%_
                           _%$%tl5307454085%_
                           _%$%e5307554088%_
                           _%$%hd5307654092%_
                           _%$%tl5307754095%_
                           _%$%e5307854098%_
                           _%$%hd5307954102%_
                           _%$%tl5308054105%_
                           _%$%e5324153393%_
                           _%$%hd5324253397%_
                           _%$%tl5324353400%_
                           _%__splice9589295893%_
                           _%$%target5324453403%_
                           _%$%tl5324653406%_)
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_))))
                                          (if (gx#stx-pair? _%$%hd5307954102%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5307954102%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5307754095%_)
                                                      (let ((_%__splice9589295893%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5307754095%_
                                                              '0)))
                                                        (let ((_%$%tl5324653406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '1)))
                      (_%$%target5324453403%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '0))))
                  (if (gx#stx-null? _%$%tl5324653406%_)
                      (_%__match9617896179%_
                       _%$%e5307254078%_
                       _%$%hd5307354082%_
                       _%$%tl5307454085%_
                       _%$%e5307554088%_
                       _%$%hd5307654092%_
                       _%$%tl5307754095%_
                       _%$%e5307854098%_
                       _%$%hd5307954102%_
                       _%$%tl5308054105%_
                       _%$%e5324153393%_
                       _%$%hd5324253397%_
                       _%$%tl5324353400%_
                       _%__splice9589295893%_
                       _%$%target5324453403%_
                       _%$%tl5324653406%_)
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                      (if (gx#stx-pair? _%$%hd5307954102%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5307954102%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5307754095%_)
                                                  (let ((_%__splice9589295893%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5307754095%_
                                                          '0)))
                                                    (let ((_%$%tl5324653406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '1)))
                                                          (_%$%target5324453403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324653406%_)
                                                          (_%__match9617896179%_
                                                           _%$%e5307254078%_
                                                           _%$%hd5307354082%_
                                                           _%$%tl5307454085%_
                                                           _%$%e5307554088%_
                                                           _%$%hd5307654092%_
                                                           _%$%tl5307754095%_
                                                           _%$%e5307854098%_
                                                           _%$%hd5307954102%_
                                                           _%$%tl5308054105%_
                                                           _%$%e5324153393%_
                                                           _%$%hd5324253397%_
                                                           _%$%tl5324353400%_
                                                           _%__splice9589295893%_
                                                           _%$%target5324453403%_
                                                           _%$%tl5324653406%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5306553274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                              (if (gx#identifier? _%$%hd5308254112%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102590_|
                                       _%$%hd5308254112%_)
                                      (if (gx#stx-pair? _%$%tl5308954135%_)
                                          (let ((_%$%e5321653533%_
                                                 (gx#syntax-e
                                                  _%$%tl5308954135%_)))
                                            (let ((_%$%tl5321853540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5321653533%_)))
                                                  (_%$%hd5321753537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5321653533%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5321853540%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5307754095%_)
                                                      (let ((_%__splice9588895889%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5307754095%_
                                                              '0)))
                                                        (let ((_%$%tl5322153546%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9588895889%_ '1)))
                      (_%$%target5321953543%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9588895889%_ '0))))
                  (if (gx#stx-null? _%$%tl5322153546%_)
                      (_%__match9614696147%_
                       _%$%e5307254078%_
                       _%$%hd5307354082%_
                       _%$%tl5307454085%_
                       _%$%e5307554088%_
                       _%$%hd5307654092%_
                       _%$%tl5307754095%_
                       _%$%e5307854098%_
                       _%$%hd5307954102%_
                       _%$%tl5308054105%_
                       _%$%e5308154108%_
                       _%$%hd5308254112%_
                       _%$%tl5308354115%_
                       _%$%e5308454118%_
                       _%$%hd5308554122%_
                       _%$%tl5308654125%_
                       _%$%e5308754128%_
                       _%$%hd5308854132%_
                       _%$%tl5308954135%_
                       _%$%e5321653533%_
                       _%$%hd5321753537%_
                       _%$%tl5321853540%_
                       _%__splice9588895889%_
                       _%$%target5321953543%_
                       _%$%tl5322153546%_)
                      (if (gx#stx-pair? _%$%hd5307954102%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5307954102%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                          (let () (declare (not safe)) (_%$%g5306553274%_))))))
              (if (gx#stx-pair? _%$%hd5307954102%_)
                  (let ((_%$%e5324153393%_ (gx#syntax-e _%$%hd5307954102%_)))
                    (let ((_%$%tl5324353400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5324153393%_)))
                          (_%$%hd5324253397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5324153393%_))))
                      (let () (declare (not safe)) (_%$%g5306553274%_))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5307954102%_)
                                                      (let ((_%$%e5324153393%_
                                                             (gx#syntax-e
                                                              _%$%hd5307954102%_)))
                                                        (let ((_%$%tl5324353400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324153393%_)))
                      (_%$%hd5324253397%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324153393%_))))
                  (if (gx#stx-pair/null? _%$%tl5307754095%_)
                      (let ((_%__splice9589295893%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5307754095%_
                              '0)))
                        (let ((_%$%tl5324653406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '1)))
                              (_%$%target5324453403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '0))))
                          (if (gx#stx-null? _%$%tl5324653406%_)
                              (_%__match9617896179%_
                               _%$%e5307254078%_
                               _%$%hd5307354082%_
                               _%$%tl5307454085%_
                               _%$%e5307554088%_
                               _%$%hd5307654092%_
                               _%$%tl5307754095%_
                               _%$%e5307854098%_
                               _%$%hd5307954102%_
                               _%$%tl5308054105%_
                               _%$%e5324153393%_
                               _%$%hd5324253397%_
                               _%$%tl5324353400%_
                               _%__splice9589295893%_
                               _%$%target5324453403%_
                               _%$%tl5324653406%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5307954102%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5307954102%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5307754095%_)
                                                      (let ((_%__splice9589295893%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5307754095%_
                                                              '0)))
                                                        (let ((_%$%tl5324653406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '1)))
                      (_%$%target5324453403%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '0))))
                  (if (gx#stx-null? _%$%tl5324653406%_)
                      (_%__match9617896179%_
                       _%$%e5307254078%_
                       _%$%hd5307354082%_
                       _%$%tl5307454085%_
                       _%$%e5307554088%_
                       _%$%hd5307654092%_
                       _%$%tl5307754095%_
                       _%$%e5307854098%_
                       _%$%hd5307954102%_
                       _%$%tl5308054105%_
                       _%$%e5324153393%_
                       _%$%hd5324253397%_
                       _%$%tl5324353400%_
                       _%__splice9589295893%_
                       _%$%target5324453403%_
                       _%$%tl5324653406%_)
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))
                                      (if (gx#stx-pair? _%$%hd5307954102%_)
                                          (let ((_%$%e5324153393%_
                                                 (gx#syntax-e
                                                  _%$%hd5307954102%_)))
                                            (let ((_%$%tl5324353400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324153393%_)))
                                                  (_%$%hd5324253397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324153393%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5307754095%_)
                                                  (let ((_%__splice9589295893%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5307754095%_
                                                          '0)))
                                                    (let ((_%$%tl5324653406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '1)))
                                                          (_%$%target5324453403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9589295893%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324653406%_)
                                                          (_%__match9617896179%_
                                                           _%$%e5307254078%_
                                                           _%$%hd5307354082%_
                                                           _%$%tl5307454085%_
                                                           _%$%e5307554088%_
                                                           _%$%hd5307654092%_
                                                           _%$%tl5307754095%_
                                                           _%$%e5307854098%_
                                                           _%$%hd5307954102%_
                                                           _%$%tl5308054105%_
                                                           _%$%e5324153393%_
                                                           _%$%hd5324253397%_
                                                           _%$%tl5324353400%_
                                                           _%__splice9589295893%_
                                                           _%$%target5324453403%_
                                                           _%$%tl5324653406%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5306553274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                  (if (gx#stx-pair? _%$%hd5307954102%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5307954102%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5307754095%_)
                                              (let ((_%__splice9589295893%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5307754095%_
                                                      '0)))
                                                (let ((_%$%tl5324653406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9589295893%_
                                                          '1)))
                                                      (_%$%target5324453403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9589295893%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5324653406%_)
                                                      (_%__match9617896179%_
                                                       _%$%e5307254078%_
                                                       _%$%hd5307354082%_
                                                       _%$%tl5307454085%_
                                                       _%$%e5307554088%_
                                                       _%$%hd5307654092%_
                                                       _%$%tl5307754095%_
                                                       _%$%e5307854098%_
                                                       _%$%hd5307954102%_
                                                       _%$%tl5308054105%_
                                                       _%$%e5324153393%_
                                                       _%$%hd5324253397%_
                                                       _%$%tl5324353400%_
                                                       _%__splice9589295893%_
                                                       _%$%target5324453403%_
                                                       _%$%tl5324653406%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5306553274%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))))
                  (if (gx#stx-null? _%$%tl5308654125%_)
                      (if (gx#stx-pair/null? _%$%tl5307754095%_)
                          (let ((_%__splice9588095881%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5307754095%_
                                  '0)))
                            (let ((_%$%tl5315953806%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9588095881%_ '1)))
                                  (_%$%target5315753803%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9588095881%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5315953806%_)
                                  (_%__match9604696047%_
                                   _%$%e5307254078%_
                                   _%$%hd5307354082%_
                                   _%$%tl5307454085%_
                                   _%$%e5307554088%_
                                   _%$%hd5307654092%_
                                   _%$%tl5307754095%_
                                   _%$%e5307854098%_
                                   _%$%hd5307954102%_
                                   _%$%tl5308054105%_
                                   _%$%e5308154108%_
                                   _%$%hd5308254112%_
                                   _%$%tl5308354115%_
                                   _%$%e5308454118%_
                                   _%$%hd5308554122%_
                                   _%$%tl5308654125%_
                                   _%__splice9588095881%_
                                   _%$%target5315753803%_
                                   _%$%tl5315953806%_)
                                  (if (gx#stx-pair? _%$%hd5307954102%_)
                                      (let ((_%$%e5324153393%_
                                             (gx#syntax-e _%$%hd5307954102%_)))
                                        (let ((_%$%tl5324353400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324153393%_)))
                                              (_%$%hd5324253397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324153393%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))
                          (if (gx#stx-pair? _%$%hd5307954102%_)
                              (let ((_%$%e5324153393%_
                                     (gx#syntax-e _%$%hd5307954102%_)))
                                (let ((_%$%tl5324353400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5324153393%_)))
                                      (_%$%hd5324253397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5324153393%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_))))
                      (if (gx#stx-pair? _%$%hd5307954102%_)
                          (let ((_%$%e5324153393%_
                                 (gx#syntax-e _%$%hd5307954102%_)))
                            (let ((_%$%tl5324353400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5324153393%_)))
                                  (_%$%hd5324253397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5324153393%_))))
                              (if (gx#stx-pair/null? _%$%tl5307754095%_)
                                  (let ((_%__splice9589295893%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5307754095%_
                                          '0)))
                                    (let ((_%$%tl5324653406%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '1)))
                                          (_%$%target5324453403%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9589295893%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5324653406%_)
                                          (_%__match9617896179%_
                                           _%$%e5307254078%_
                                           _%$%hd5307354082%_
                                           _%$%tl5307454085%_
                                           _%$%e5307554088%_
                                           _%$%hd5307654092%_
                                           _%$%tl5307754095%_
                                           _%$%e5307854098%_
                                           _%$%hd5307954102%_
                                           _%$%tl5308054105%_
                                           _%$%e5324153393%_
                                           _%$%hd5324253397%_
                                           _%$%tl5324353400%_
                                           _%__splice9589295893%_
                                           _%$%target5324453403%_
                                           _%$%tl5324653406%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5306553274%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g5306553274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5307954102%_)
                                                      (let ((_%$%e5324153393%_
                                                             (gx#syntax-e
                                                              _%$%hd5307954102%_)))
                                                        (let ((_%$%tl5324353400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324153393%_)))
                      (_%$%hd5324253397%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324153393%_))))
                  (if (gx#stx-pair/null? _%$%tl5307754095%_)
                      (let ((_%__splice9589295893%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5307754095%_
                              '0)))
                        (let ((_%$%tl5324653406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '1)))
                              (_%$%target5324453403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9589295893%_ '0))))
                          (if (gx#stx-null? _%$%tl5324653406%_)
                              (_%__match9617896179%_
                               _%$%e5307254078%_
                               _%$%hd5307354082%_
                               _%$%tl5307454085%_
                               _%$%e5307554088%_
                               _%$%hd5307654092%_
                               _%$%tl5307754095%_
                               _%$%e5307854098%_
                               _%$%hd5307954102%_
                               _%$%tl5308054105%_
                               _%$%e5324153393%_
                               _%$%hd5324253397%_
                               _%$%tl5324353400%_
                               _%__splice9589295893%_
                               _%$%target5324453403%_
                               _%$%tl5324653406%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5306553274%_)))))
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5307954102%_)
                                              (let ((_%$%e5324153393%_
                                                     (gx#syntax-e
                                                      _%$%hd5307954102%_)))
                                                (let ((_%$%tl5324353400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324153393%_)))
                                                      (_%$%hd5324253397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324153393%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5307754095%_)
                                                      (let ((_%__splice9589295893%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5307754095%_
                                                              '0)))
                                                        (let ((_%$%tl5324653406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '1)))
                      (_%$%target5324453403%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9589295893%_ '0))))
                  (if (gx#stx-null? _%$%tl5324653406%_)
                      (_%__match9617896179%_
                       _%$%e5307254078%_
                       _%$%hd5307354082%_
                       _%$%tl5307454085%_
                       _%$%e5307554088%_
                       _%$%hd5307654092%_
                       _%$%tl5307754095%_
                       _%$%e5307854098%_
                       _%$%hd5307954102%_
                       _%$%tl5308054105%_
                       _%$%e5324153393%_
                       _%$%hd5324253397%_
                       _%$%tl5324353400%_
                       _%__splice9589295893%_
                       _%$%target5324453403%_
                       _%$%tl5324653406%_)
                      (let () (declare (not safe)) (_%$%g5306553274%_)))))
              (let () (declare (not safe)) (_%$%g5306553274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5306553274%_))))))
                                  (if (gx#stx-null? _%$%hd5307654092%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5307754095%_)
                                          (let ((_%__splice9589695897%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5307754095%_
                                                  '0)))
                                            (let ((_%$%tl5326253304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9589695897%_
                                                      '1)))
                                                  (_%$%target5326053301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9589695897%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5326253304%_)
                                                  (_%__match9620096201%_
                                                   _%$%e5307254078%_
                                                   _%$%hd5307354082%_
                                                   _%$%tl5307454085%_
                                                   _%$%e5307554088%_
                                                   _%$%hd5307654092%_
                                                   _%$%tl5307754095%_
                                                   _%__splice9589695897%_
                                                   _%$%target5326053301%_
                                                   _%$%tl5326253304%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5306553274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5306553274%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5306553274%_))))))
                          (let () (declare (not safe)) (_%$%g5306553274%_)))))
                  (let () (declare (not safe)) (_%$%g5306553274%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx54234%_)
        (let* ((_%$%g5423854272%_
                (lambda (_%$%g5423954268%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5423954268%_)))
               (_%$%g5423754393%_
                (lambda (_%$%g5423954276%_)
                  (if (gx#stx-pair? _%$%g5423954276%_)
                      (let ((_%$%e5424354279%_
                             (gx#syntax-e _%$%g5423954276%_)))
                        (let ((_%$%hd5424454283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5424354279%_)))
                              (_%$%tl5424554286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5424354279%_))))
                          (if (gx#stx-pair? _%$%tl5424554286%_)
                              (let ((_%$%e5424654289%_
                                     (gx#syntax-e _%$%tl5424554286%_)))
                                (let ((_%$%hd5424754293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5424654289%_)))
                                      (_%$%tl5424854296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5424654289%_))))
                                  (if (gx#stx-pair? _%$%hd5424754293%_)
                                      (let ((_%$%e5424954299%_
                                             (gx#syntax-e _%$%hd5424754293%_)))
                                        (let ((_%$%hd5425054303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5424954299%_)))
                                              (_%$%tl5425154306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5424954299%_))))
                                          (if (gx#stx-pair? _%$%tl5425154306%_)
                                              (let ((_%$%e5425254309%_
                                                     (gx#syntax-e
                                                      _%$%tl5425154306%_)))
                                                (let ((_%$%hd5425354313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5425254309%_)))
                                                      (_%$%tl5425454316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5425254309%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5425354313%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102592_|
                                                           _%$%hd5425354313%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5425454316%_)
                                                              (let ((_%$%e5425554319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5425454316%_)))
                        (let ((_%$%hd5425654323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5425554319%_)))
                              (_%$%tl5425754326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5425554319%_))))
                          (if (gx#stx-null? _%$%tl5425754326%_)
                              (if (gx#stx-pair/null? _%$%tl5424854296%_)
                                  (let ((_g102593_
                                         (gx#syntax-split-splice
                                          _%$%tl5424854296%_
                                          '0)))
                                    (begin
                                      (let ((_g102594_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g102593_)
                                                   (##values-length _g102593_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g102594_ 2)))
                                            (error "Context expects 2 values"
                                                   _g102594_)))
                                      (let ((_%$%target5425854329%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g102593_ 0)))
                                            (_%$%tl5426054332%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g102593_ 1))))
                                        (if (gx#stx-null? _%$%tl5426054332%_)
                                            (letrec ((_%$%loop5426154335%_
                                                      (lambda (_%$%hd5425954339%_
                                                               _%$%body5426554342%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd5425954339%_)
                                                            (let ((_%$%e5426254344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd5425954339%_)))
                      (let ((_%$%lp-hd5426354348%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5426254344%_)))
                            (_%$%lp-tl5426454351%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5426254344%_))))
                        (_%$%loop5426154335%_
                         _%$%lp-tl5426454351%_
                         (cons _%$%lp-hd5426354348%_ _%$%body5426554342%_))))
                    (let ((_%$%body5426654354%_
                           (reverse _%$%body5426554342%_)))
                      (if (gx#identifier? _%$%hd5425054303%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%$%hd5425654323%_
                                            (cons _%$%hd5425054303%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%$%g5438454387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g5438554390%_)
                         (cons _%$%g5438454387%_ _%$%g5438554390%_))
                       '()
                       _%$%body5426654354%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%$%hd5425054303%_
                                                              (cons _%$%hd5425654323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd5425054303%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%$%g5423854272%_ _%$%g5423954276%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop5426154335%_
                                               _%$%target5425854329%_
                                               '()))
                                            (_%$%g5423854272%_
                                             _%$%g5423954276%_)))))
                                  (_%$%g5423854272%_ _%$%g5423954276%_))
                              (_%$%g5423854272%_ _%$%g5423954276%_))))
                      (_%$%g5423854272%_ _%$%g5423954276%_))
                  (_%$%g5423854272%_ _%$%g5423954276%_))
              (_%$%g5423854272%_ _%$%g5423954276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5423854272%_
                                               _%$%g5423954276%_))))
                                      (_%$%g5423854272%_ _%$%g5423954276%_))))
                              (_%$%g5423854272%_ _%$%g5423954276%_))))
                      (_%$%g5423854272%_ _%$%g5423954276%_)))))
          (_%$%g5423754393%_ _%$stx54234%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass55151%_ _%slot55153%_)
        (let ((_%$e55155%_
               (let ((__obj102389 _%klass55151%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102389
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102389 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102389
                      'slot-types)))))
          (if _%$e55155%_ (agetq _%slot55153%_ _%$e55155%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass55132%_ _%slot55134%_)
        (let ((_%$e55136%_
               (let ((__obj102390 _%klass55132%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102390
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102390 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102390
                      'slot-defaults)))))
          (if _%$e55136%_
              (let ((_%$e55143%_ (agetq _%slot55134%_ _%$e55136%_)))
                (if _%$e55143%_ (gx#syntax-local-introduce _%$e55143%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass55113%_ _%slot55115%_)
        (let ((_%$e55117%_
               (let ((__obj102391 _%klass55113%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102391
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102391 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102391
                      'slot-defaults)))))
          (if _%$e55117%_
              (let ((_%$e55124%_ (agetq _%slot55115%_ _%$e55117%_)))
                (if _%$e55124%_ (gx#syntax-local-introduce _%$e55124%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass54882%_ _%slot54884%_)
        (let ((_%$%contract5488554887%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass54882%_
                _%slot54884%_)))
          (if _%$%contract5488554887%_
              (let* ((_%contract54890%_ _%$%contract5488554887%_)
                     (_%__stx9620396204%_ _%contract54890%_)
                     (_%$%g5489554932%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9620396204%_))))
                (let ((_%__kont9620696207%_
                       (lambda (_%$%g5489755082%_ _%$%g5489855084%_)
                         (not (gx#free-identifier=?
                               _%$%g5489855084%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9620896209%_
                       (lambda (_%$%g5490555022%_
                                _%$%g5490655024%_
                                _%$%g5490755025%_)
                         (not (gx#free-identifier=?
                               _%$%g5490655024%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9621096211%_ (lambda (_%$%g5492054959%_) '#f)))
                  (let* ((_%__match9625696257%_
                          (lambda (_%$%e5490854982%_
                                   _%$%hd5490954986%_
                                   _%$%tl5491054989%_
                                   _%$%e5491154992%_
                                   _%$%hd5491254996%_
                                   _%$%tl5491354999%_
                                   _%$%e5491455002%_
                                   _%$%hd5491555006%_
                                   _%$%tl5491655009%_
                                   _%$%e5491755012%_
                                   _%$%hd5491855016%_
                                   _%$%tl5491955019%_)
                            (let ((_%$%g5490555022%_ _%$%hd5491855016%_)
                                  (_%$%g5490655024%_ _%$%hd5491555006%_)
                                  (_%$%g5490755025%_ _%$%hd5491254996%_))
                              (if (and (gx#identifier? _%$%g5490655024%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5490655024%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5490655024%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5490655024%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5490655024%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9620896209%_
                                   _%$%g5490555022%_
                                   _%$%g5490655024%_
                                   _%$%g5490755025%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5489554932%_))))))
                         (_%__match9622696227%_
                          (lambda (_%$%e5489955062%_
                                   _%$%hd5490055066%_
                                   _%$%tl5490155069%_
                                   _%$%e5490255072%_
                                   _%$%hd5490355076%_
                                   _%$%tl5490455079%_)
                            (let ((_%$%g5489755082%_ _%$%hd5490355076%_)
                                  (_%$%g5489855084%_ _%$%hd5490055066%_))
                              (if (and (gx#identifier? _%$%g5489855084%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5489855084%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5489855084%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5489855084%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5489855084%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9620696207%_
                                   _%$%g5489755082%_
                                   _%$%g5489855084%_)
                                  (if (gx#identifier? _%$%hd5490055066%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102595_|
                                           _%$%hd5490055066%_)
                                          (_%__kont9621096211%_
                                           _%$%hd5490355076%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5489554932%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5489554932%_))))))))
                    (if (gx#stx-pair? _%__stx9620396204%_)
                        (let ((_%$%e5489955062%_
                               (gx#syntax-e _%__stx9620396204%_)))
                          (let ((_%$%tl5490155069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5489955062%_)))
                                (_%$%hd5490055066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5489955062%_))))
                            (if (gx#stx-pair? _%$%tl5490155069%_)
                                (let ((_%$%e5490255072%_
                                       (gx#syntax-e _%$%tl5490155069%_)))
                                  (let ((_%$%tl5490455079%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5490255072%_)))
                                        (_%$%hd5490355076%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5490255072%_))))
                                    (if (gx#stx-null? _%$%tl5490455079%_)
                                        (_%__match9622696227%_
                                         _%$%e5489955062%_
                                         _%$%hd5490055066%_
                                         _%$%tl5490155069%_
                                         _%$%e5490255072%_
                                         _%$%hd5490355076%_
                                         _%$%tl5490455079%_)
                                        (if (gx#identifier? _%$%hd5490055066%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g102595_|
                                                 _%$%hd5490055066%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5490455079%_)
                                                    (let ((_%$%e5491455002%_
                                                           (gx#syntax-e
                                                            _%$%tl5490455079%_)))
                                                      (let ((_%$%tl5491655009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5491455002%_)))
                    (_%$%hd5491555006%_
                     (let () (declare (not safe)) (##car _%$%e5491455002%_))))
                (if (gx#stx-pair? _%$%tl5491655009%_)
                    (let ((_%$%e5491755012%_ (gx#syntax-e _%$%tl5491655009%_)))
                      (let ((_%$%tl5491955019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5491755012%_)))
                            (_%$%hd5491855016%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5491755012%_))))
                        (if (gx#stx-null? _%$%tl5491955019%_)
                            (_%__match9625696257%_
                             _%$%e5489955062%_
                             _%$%hd5490055066%_
                             _%$%tl5490155069%_
                             _%$%e5490255072%_
                             _%$%hd5490355076%_
                             _%$%tl5490455079%_
                             _%$%e5491455002%_
                             _%$%hd5491555006%_
                             _%$%tl5491655009%_
                             _%$%e5491755012%_
                             _%$%hd5491855016%_
                             _%$%tl5491955019%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5489554932%_)))))
                    (let () (declare (not safe)) (_%$%g5489554932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5489554932%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5489554932%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5489554932%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5489554932%_)))))
                        (let () (declare (not safe)) (_%$%g5489554932%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass54651%_ _%slot54653%_)
        (let ((_%$%contract5465454656%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass54651%_
                _%slot54653%_)))
          (if _%$%contract5465454656%_
              (let* ((_%contract54659%_ _%$%contract5465454656%_)
                     (_%__stx9627796278%_ _%contract54659%_)
                     (_%$%g5466454701%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9627796278%_))))
                (let ((_%__kont9628096281%_
                       (lambda (_%$%g5466654851%_ _%$%g5466754853%_)
                         (not (gx#free-identifier=?
                               _%$%g5466754853%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9628296283%_
                       (lambda (_%$%g5467454791%_
                                _%$%g5467554793%_
                                _%$%g5467654794%_)
                         '#t))
                      (_%__kont9628496285%_ (lambda (_%$%g5468954728%_) '#t)))
                  (let* ((_%__match9633096331%_
                          (lambda (_%$%e5467754751%_
                                   _%$%hd5467854755%_
                                   _%$%tl5467954758%_
                                   _%$%e5468054761%_
                                   _%$%hd5468154765%_
                                   _%$%tl5468254768%_
                                   _%$%e5468354771%_
                                   _%$%hd5468454775%_
                                   _%$%tl5468554778%_
                                   _%$%e5468654781%_
                                   _%$%hd5468754785%_
                                   _%$%tl5468854788%_)
                            (let ((_%$%g5467454791%_ _%$%hd5468754785%_)
                                  (_%$%g5467554793%_ _%$%hd5468454775%_)
                                  (_%$%g5467654794%_ _%$%hd5468154765%_))
                              (if (and (gx#identifier? _%$%g5467554793%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5467554793%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5467554793%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5467554793%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5467554793%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9628296283%_
                                   _%$%g5467454791%_
                                   _%$%g5467554793%_
                                   _%$%g5467654794%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5466454701%_))))))
                         (_%__match9630096301%_
                          (lambda (_%$%e5466854831%_
                                   _%$%hd5466954835%_
                                   _%$%tl5467054838%_
                                   _%$%e5467154841%_
                                   _%$%hd5467254845%_
                                   _%$%tl5467354848%_)
                            (let ((_%$%g5466654851%_ _%$%hd5467254845%_)
                                  (_%$%g5466754853%_ _%$%hd5466954835%_))
                              (if (and (gx#identifier? _%$%g5466754853%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5466754853%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5466754853%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5466754853%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5466754853%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9628096281%_
                                   _%$%g5466654851%_
                                   _%$%g5466754853%_)
                                  (if (gx#identifier? _%$%hd5466954835%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102596_|
                                           _%$%hd5466954835%_)
                                          (_%__kont9628496285%_
                                           _%$%hd5467254845%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5466454701%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5466454701%_))))))))
                    (if (gx#stx-pair? _%__stx9627796278%_)
                        (let ((_%$%e5466854831%_
                               (gx#syntax-e _%__stx9627796278%_)))
                          (let ((_%$%tl5467054838%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5466854831%_)))
                                (_%$%hd5466954835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5466854831%_))))
                            (if (gx#stx-pair? _%$%tl5467054838%_)
                                (let ((_%$%e5467154841%_
                                       (gx#syntax-e _%$%tl5467054838%_)))
                                  (let ((_%$%tl5467354848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5467154841%_)))
                                        (_%$%hd5467254845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5467154841%_))))
                                    (if (gx#stx-null? _%$%tl5467354848%_)
                                        (_%__match9630096301%_
                                         _%$%e5466854831%_
                                         _%$%hd5466954835%_
                                         _%$%tl5467054838%_
                                         _%$%e5467154841%_
                                         _%$%hd5467254845%_
                                         _%$%tl5467354848%_)
                                        (if (gx#identifier? _%$%hd5466954835%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g102596_|
                                                 _%$%hd5466954835%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5467354848%_)
                                                    (let ((_%$%e5468354771%_
                                                           (gx#syntax-e
                                                            _%$%tl5467354848%_)))
                                                      (let ((_%$%tl5468554778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5468354771%_)))
                    (_%$%hd5468454775%_
                     (let () (declare (not safe)) (##car _%$%e5468354771%_))))
                (if (gx#stx-pair? _%$%tl5468554778%_)
                    (let ((_%$%e5468654781%_ (gx#syntax-e _%$%tl5468554778%_)))
                      (let ((_%$%tl5468854788%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5468654781%_)))
                            (_%$%hd5468754785%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5468654781%_))))
                        (if (gx#stx-null? _%$%tl5468854788%_)
                            (_%__match9633096331%_
                             _%$%e5466854831%_
                             _%$%hd5466954835%_
                             _%$%tl5467054838%_
                             _%$%e5467154841%_
                             _%$%hd5467254845%_
                             _%$%tl5467354848%_
                             _%$%e5468354771%_
                             _%$%hd5468454775%_
                             _%$%tl5468554778%_
                             _%$%e5468654781%_
                             _%$%hd5468754785%_
                             _%$%tl5468854788%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5466454701%_)))))
                    (let () (declare (not safe)) (_%$%g5466454701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5466454701%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5466454701%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5466454701%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5466454701%_)))))
                        (let () (declare (not safe)) (_%$%g5466454701%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id54638%_)
        (if (gx#identifier? _%id54638%_)
            (let* ((_%str54641%_ (symbol->string (gx#stx-e _%id54638%_)))
                   (_%$%index5464354645%_ (string-index _%str54641%_ '#\.)))
              (if _%$%index5464354645%_
                  (let ((_%index54648%_ _%$%index5464354645%_))
                    (if (let () (declare (not safe)) (##fx> _%index54648%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str54641%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx54631%_ _%id54633%_)
        (let ((_%parts54635%_
               (string-split (symbol->string (gx#stx-e _%id54633%_)) '#\.)))
          (if (find string-empty? _%parts54635%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx54631%_
               _%id54633%_)
              (cons (gx#stx-identifier _%id54633%_ (car _%parts54635%_))
                    (map string->symbol (cdr _%parts54635%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx54517%_ _%klass-or-id54519%_ _%slot54520%_)
        (let* ((_%klass54522%_
                (if (gx#identifier? _%klass-or-id54519%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx54517%_
                       _%klass-or-id54519%_))
                    _%klass-or-id54519%_))
               (_%$e54527%_
                (agetq _%slot54520%_
                       (let ((__obj102392 _%klass54522%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj102392
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj102392
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj102392
                              'unchecked-accessors))))))
          (if _%$e54527%_
              _%$e54527%_
              (let ((_%$e54535%_
                     (agetq _%slot54520%_
                            (let ((_%$e54531%_
                                   (let ((__obj102393 _%klass54522%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj102393
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj102393
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj102393
                                          'slot-offsets)))))
                              (if _%$e54531%_ _%$e54531%_ '())))))
                (if _%$e54535%_
                    (let* ((_%$%g5454254561%_
                            (lambda (_%$%g5454354557%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5454354557%_)))
                           (_%$%g5454154625%_
                            (lambda (_%$%g5454354565%_)
                              (if (gx#stx-pair? _%$%g5454354565%_)
                                  (let ((_%$%e5454754568%_
                                         (gx#syntax-e _%$%g5454354565%_)))
                                    (let ((_%$%hd5454854572%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5454754568%_)))
                                          (_%$%tl5454954575%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5454754568%_))))
                                      (if (gx#stx-pair? _%$%tl5454954575%_)
                                          (let ((_%$%e5455054578%_
                                                 (gx#syntax-e
                                                  _%$%tl5454954575%_)))
                                            (let ((_%$%hd5455154582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5455054578%_)))
                                                  (_%$%tl5455254585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5455054578%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5455254585%_)
                                                  (let ((_%$%e5455354588%_
                                                         (gx#syntax-e
                                                          _%$%tl5455254585%_)))
                                                    (let ((_%$%hd5455454592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5455354588%_)))
                                                          (_%$%tl5455554595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5455354588%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5455554595%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-ref)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons _%$%hd5455454592%_
                                                       (cons _%$%hd5454854572%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%hd5455154582%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx54517%_))
                  (_%$%g5454254561%_ _%$%g5454354565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5454254561%_
                                                   _%$%g5454354565%_))))
                                          (_%$%g5454254561%_
                                           _%$%g5454354565%_))))
                                  (_%$%g5454254561%_ _%$%g5454354565%_)))))
                      (_%$%g5454154625%_
                       (list (let ((__obj102394 _%klass54522%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102394
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102394
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102394
                                    'type-descriptor)))
                             _%slot54520%_
                             _%$e54535%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx54517%_
                     _%klass54522%_
                     _%slot54520%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx54398%_
               _%klass-or-id54400%_
               _%slot54401%_
               _%checked?54402%_)
        (let* ((_%klass54404%_
                (if (gx#identifier? _%klass-or-id54400%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx54398%_
                       _%klass-or-id54400%_))
                    _%klass-or-id54400%_))
               (_%mutators54407%_
                (if _%checked?54402%_
                    (let ((__obj102395 _%klass54404%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102395
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj102395
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj102395
                           'mutators)))
                    (let ((__obj102396 _%klass54404%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102396
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj102396
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj102396
                           'unchecked-mutators)))))
               (_%$e54412%_ (agetq _%slot54401%_ _%mutators54407%_)))
          (if _%$e54412%_
              _%$e54412%_
              (let ((_%$e54420%_
                     (agetq _%slot54401%_
                            (let ((_%$e54416%_
                                   (let ((__obj102397 _%klass54404%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj102397
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj102397
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj102397
                                          'slot-offsets)))))
                              (if _%$e54416%_ _%$e54416%_ '())))))
                (if _%$e54420%_
                    (let* ((_%$%g5442754446%_
                            (lambda (_%$%g5442854442%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5442854442%_)))
                           (_%$%g5442654511%_
                            (lambda (_%$%g5442854450%_)
                              (if (gx#stx-pair? _%$%g5442854450%_)
                                  (let ((_%$%e5443254453%_
                                         (gx#syntax-e _%$%g5442854450%_)))
                                    (let ((_%$%hd5443354457%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5443254453%_)))
                                          (_%$%tl5443454460%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5443254453%_))))
                                      (if (gx#stx-pair? _%$%tl5443454460%_)
                                          (let ((_%$%e5443554463%_
                                                 (gx#syntax-e
                                                  _%$%tl5443454460%_)))
                                            (let ((_%$%hd5443654467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5443554463%_)))
                                                  (_%$%tl5443754470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5443554463%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5443754470%_)
                                                  (let ((_%$%e5443854473%_
                                                         (gx#syntax-e
                                                          _%$%tl5443754470%_)))
                                                    (let ((_%$%hd5443954477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5443854473%_)))
                                                          (_%$%tl5444054480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5443854473%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5444054480%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons (gx#datum->syntax '#f '$val) '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-set!)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons _%$%hd5443954477%_
                                                             (cons _%$%hd5443354457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd5443654467%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx54398%_))
                  (_%$%g5442754446%_ _%$%g5442854450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5442754446%_
                                                   _%$%g5442854450%_))))
                                          (_%$%g5442754446%_
                                           _%$%g5442854450%_))))
                                  (_%$%g5442754446%_ _%$%g5442854450%_)))))
                      (_%$%g5442654511%_
                       (list (let ((__obj102398 _%klass54404%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102398
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102398
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102398
                                    'type-descriptor)))
                             _%slot54401%_
                             _%$e54420%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx54398%_
                     _%klass54404%_
                     _%slot54401%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx55164%_)
        (letrec ((_%expand-body55167%_
                  (lambda (_%klass56065%_
                           _%var56067%_
                           _%Type56068%_
                           _%body56069%_
                           _%checked?56070%_)
                    (let* ((_%$%g5607256116%_
                            (lambda (_%$%g5607356112%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5607356112%_)))
                           (_%$%g5607156271%_
                            (lambda (_%$%g5607356120%_)
                              (if (gx#stx-pair? _%$%g5607356120%_)
                                  (let ((_%$%e5608156123%_
                                         (gx#syntax-e _%$%g5607356120%_)))
                                    (let ((_%$%hd5608256127%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5608156123%_)))
                                          (_%$%tl5608356130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5608156123%_))))
                                      (if (gx#stx-pair? _%$%tl5608356130%_)
                                          (let ((_%$%e5608456133%_
                                                 (gx#syntax-e
                                                  _%$%tl5608356130%_)))
                                            (let ((_%$%hd5608556137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5608456133%_)))
                                                  (_%$%tl5608656140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5608456133%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5608656140%_)
                                                  (let ((_%$%e5608756143%_
                                                         (gx#syntax-e
                                                          _%$%tl5608656140%_)))
                                                    (let ((_%$%hd5608856147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5608756143%_)))
                                                          (_%$%tl5608956150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5608756143%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5608956150%_)
                                                          (let ((_%$%e5609056153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5608956150%_)))
                    (let ((_%$%hd5609156157%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5609056153%_)))
                          (_%$%tl5609256160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5609056153%_))))
                      (if (gx#stx-pair? _%$%tl5609256160%_)
                          (let ((_%$%e5609356163%_
                                 (gx#syntax-e _%$%tl5609256160%_)))
                            (let ((_%$%hd5609456167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5609356163%_)))
                                  (_%$%tl5609556170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5609356163%_))))
                              (if (gx#stx-pair? _%$%tl5609556170%_)
                                  (let ((_%$%e5609656173%_
                                         (gx#syntax-e _%$%tl5609556170%_)))
                                    (let ((_%$%hd5609756177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5609656173%_)))
                                          (_%$%tl5609856180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5609656173%_))))
                                      (if (gx#stx-pair? _%$%tl5609856180%_)
                                          (let ((_%$%e5609956183%_
                                                 (gx#syntax-e
                                                  _%$%tl5609856180%_)))
                                            (let ((_%$%hd5610056187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5609956183%_)))
                                                  (_%$%tl5610156190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5609956183%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5610056187%_)
                                                  (let ((_g102597_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5610056187%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g102598_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102597_)
                           (##values-length _g102597_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102598_ 2)))
                    (error "Context expects 2 values" _g102598_)))
              (let ((_%$%target5610256193%_
                     (let () (declare (not safe)) (##values-ref _g102597_ 0)))
                    (_%$%tl5610456196%_
                     (let () (declare (not safe)) (##values-ref _g102597_ 1))))
                (if (gx#stx-null? _%$%tl5610456196%_)
                    (letrec ((_%$%loop5610556199%_
                              (lambda (_%$%hd5610356203%_ _%$%body5610956206%_)
                                (if (gx#stx-pair? _%$%hd5610356203%_)
                                    (let ((_%$%e5610656208%_
                                           (gx#syntax-e _%$%hd5610356203%_)))
                                      (let ((_%$%lp-hd5610756212%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5610656208%_)))
                                            (_%$%lp-tl5610856215%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5610656208%_))))
                                        (_%$%loop5610556199%_
                                         _%$%lp-tl5610856215%_
                                         (cons _%$%lp-hd5610756212%_
                                               _%$%body5610956206%_))))
                                    (let ((_%$%body5611056218%_
                                           (reverse _%$%body5610956206%_)))
                                      (if (gx#stx-null? _%$%tl5610156190%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5608856147%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5608556137%_ '()))
                                      (cons _%$%hd5608856147%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5608256127%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5608856147%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5609156157%_ '()))
                            (cons _%$%hd5609456167%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5609756177%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5626256265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5626356268%_)
                   (cons _%$%g5626256265%_ _%$%g5626356268%_))
                 '()
                 _%$%body5611056218%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5607256116%_
                                           _%$%g5607356120%_)))))))
                      (_%$%loop5610556199%_ _%$%target5610256193%_ '()))
                    (_%$%g5607256116%_ _%$%g5607356120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5607256116%_
                                                   _%$%g5607356120%_))))
                                          (_%$%g5607256116%_
                                           _%$%g5607356120%_))))
                                  (_%$%g5607256116%_ _%$%g5607356120%_))))
                          (_%$%g5607256116%_ _%$%g5607356120%_))))
                  (_%$%g5607256116%_ _%$%g5607356120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5607256116%_
                                                   _%$%g5607356120%_))))
                                          (_%$%g5607256116%_
                                           _%$%g5607356120%_))))
                                  (_%$%g5607256116%_ _%$%g5607356120%_)))))
                      (_%$%g5607156271%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj102399 _%klass56065%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102399
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102399
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj102399
                                    'type-descriptor)))
                             _%var56067%_
                             _%klass56065%_
                             _%checked?56070%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body56069%_)))))
                 (_%expand55169%_
                  (lambda (_%var55957%_
                           _%Type55959%_
                           _%body55960%_
                           _%checked?55961%_
                           _%checked-mutators?55962%_
                           _%maybe?55963%_)
                    (let* ((_%klass55965%_
                            (gx#syntax-local-value _%Type55959%_ false))
                           (_%expr-body55972%_
                            (_%expand-body55167%_
                             _%klass55965%_
                             _%var55957%_
                             _%Type55959%_
                             _%body55960%_
                             (let ((_%$e55968%_ _%checked?55961%_))
                               (if _%$e55968%_
                                   _%$e55968%_
                                   _%checked-mutators?55962%_)))))
                      (if _%checked?55961%_
                          (let* ((_%$%g5597755996%_
                                  (lambda (_%$%g5597855992%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g5597855992%_)))
                                 (_%$%g5597656058%_
                                  (lambda (_%$%g5597856000%_)
                                    (if (gx#stx-pair? _%$%g5597856000%_)
                                        (let ((_%$%e5598256003%_
                                               (gx#syntax-e
                                                _%$%g5597856000%_)))
                                          (let ((_%$%hd5598356007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5598256003%_)))
                                                (_%$%tl5598456010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5598256003%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl5598456010%_)
                                                (let ((_%$%e5598556013%_
                                                       (gx#syntax-e
                                                        _%$%tl5598456010%_)))
                                                  (let ((_%$%hd5598656017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5598556013%_)))
                                                        (_%$%tl5598756020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5598556013%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl5598756020%_)
                                                        (let ((_%$%e5598856023%_
                                                               (gx#syntax-e
                                                                _%$%tl5598756020%_)))
                                                          (let ((_%$%hd5598956027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5598856023%_)))
                        (_%$%tl5599056030%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5598856023%_))))
                    (if (gx#stx-null? _%$%tl5599056030%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%$%hd5598656017%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%$%hd5598356007%_ '())))
                                    (cons _%$%hd5598956027%_ '())))
                        (_%$%g5597755996%_ _%$%g5597856000%_))))
                (_%$%g5597755996%_ _%$%g5597856000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5597755996%_
                                                 _%$%g5597856000%_))))
                                        (_%$%g5597755996%_
                                         _%$%g5597856000%_)))))
                            (_%$%g5597656058%_
                             (list (let ((_%instance?56062%_
                                          (let ((__obj102400 _%klass55965%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj102400
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj102400
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj102400
                                                 'predicate)))))
                                     (if _%maybe?55963%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?56062%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?56062%_))
                                   _%var55957%_
                                   _%expr-body55972%_)))
                          _%expr-body55972%_)))))
          (let* ((_%__stx9635196352%_ _%stx55164%_)
                 (_%$%g5517555318%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9635196352%_))))
            (let ((_%__kont9635496355%_
                   (lambda (_%$%g5517755885%_
                            _%$%g5517855887%_
                            _%$%g5517955888%_
                            _%$%g5518055889%_)
                     (let* ((_%$%g5591455922%_
                             (lambda (_%$%g5591555918%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5591555918%_)))
                            (_%$%g5591355949%_
                             (lambda (_%$%g5591555926%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g5518055889%_
                                                 (cons _%$%g5517955888%_
                                                       (cons _%$%g5591555926%_
                                                             '())))
                                           (foldr (lambda (_%$%g5594055943%_
                                                           _%$%g5594155946%_)
                                                    (cons _%$%g5594055943%_
                                                          _%$%g5594155946%_))
                                                  '()
                                                  _%$%g5517755885%_))))))
                       (_%$%g5591355949%_
                        (let ((__obj102401
                               (gx#syntax-local-value _%$%g5517855887%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102401
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102401
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj102401
                               'identifier)))))))
                  (_%__kont9635896359%_
                   (lambda (_%$%g5520555765%_
                            _%$%g5520655767%_
                            _%$%g5520755768%_)
                     (_%expand55169%_
                      _%$%g5520755768%_
                      _%$%g5520655767%_
                      (foldr (lambda (_%$%g5579155794%_ _%$%g5579255797%_)
                               (cons _%$%g5579155794%_ _%$%g5579255797%_))
                             '()
                             _%$%g5520555765%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9636296363%_
                   (lambda (_%$%g5523255645%_
                            _%$%g5523355647%_
                            _%$%g5523455648%_)
                     (_%expand55169%_
                      _%$%g5523455648%_
                      _%$%g5523355647%_
                      (foldr (lambda (_%$%g5567155674%_ _%$%g5567255677%_)
                               (cons _%$%g5567155674%_ _%$%g5567255677%_))
                             '()
                             _%$%g5523255645%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9636696367%_
                   (lambda (_%$%g5525955525%_
                            _%$%g5526055527%_
                            _%$%g5526155528%_)
                     (_%expand55169%_
                      _%$%g5526155528%_
                      _%$%g5526055527%_
                      (foldr (lambda (_%$%g5555155554%_ _%$%g5555255557%_)
                               (cons _%$%g5555155554%_ _%$%g5555255557%_))
                             '()
                             _%$%g5525955525%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9637096371%_
                   (lambda (_%$%g5528655403%_
                            _%$%g5528755405%_
                            _%$%g5528855406%_)
                     (_%expand55169%_
                      _%$%g5528855406%_
                      _%$%g5528755405%_
                      (foldr (lambda (_%$%g5543155434%_ _%$%g5543255437%_)
                               (cons _%$%g5543155434%_ _%$%g5543255437%_))
                             '()
                             _%$%g5528655403%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9659096591%_
                      (lambda (_%$%e5528955325%_
                               _%$%hd5529055329%_
                               _%$%tl5529155332%_
                               _%$%e5529255335%_
                               _%$%hd5529355339%_
                               _%$%tl5529455342%_
                               _%$%e5529555345%_
                               _%$%hd5529655349%_
                               _%$%tl5529755352%_
                               _%$%e5529855355%_
                               _%$%hd5529955359%_
                               _%$%tl5530055362%_
                               _%$%e5530155365%_
                               _%$%hd5530255369%_
                               _%$%tl5530355372%_
                               _%__splice9637296373%_
                               _%$%target5530455375%_
                               _%$%tl5530655378%_)
                        (letrec ((_%$%loop5530755381%_
                                  (lambda (_%$%hd5530555385%_
                                           _%$%body5531155388%_)
                                    (if (gx#stx-pair? _%$%hd5530555385%_)
                                        (let ((_%$%e5530855390%_
                                               (gx#syntax-e
                                                _%$%hd5530555385%_)))
                                          (let ((_%$%lp-tl5531055397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5530855390%_)))
                                                (_%$%lp-hd5530955394%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5530855390%_))))
                                            (_%$%loop5530755381%_
                                             _%$%lp-tl5531055397%_
                                             (cons _%$%lp-hd5530955394%_
                                                   _%$%body5531155388%_))))
                                        (let ((_%$%body5531255400%_
                                               (reverse _%$%body5531155388%_)))
                                          (let ((_%$%g5528655403%_
                                                 _%$%body5531255400%_)
                                                (_%$%g5528755405%_
                                                 _%$%hd5530255369%_)
                                                (_%$%g5528855406%_
                                                 _%$%hd5529655349%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5528755405%_))
                                                (_%__kont9637096371%_
                                                 _%$%g5528655403%_
                                                 _%$%g5528755405%_
                                                 _%$%g5528855406%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))))))))
                          (_%$%loop5530755381%_ _%$%target5530455375%_ '()))))
                     (_%__match9654696547%_
                      (lambda (_%$%e5526255447%_
                               _%$%hd5526355451%_
                               _%$%tl5526455454%_
                               _%$%e5526555457%_
                               _%$%hd5526655461%_
                               _%$%tl5526755464%_
                               _%$%e5526855467%_
                               _%$%hd5526955471%_
                               _%$%tl5527055474%_
                               _%$%e5527155477%_
                               _%$%hd5527255481%_
                               _%$%tl5527355484%_
                               _%$%e5527455487%_
                               _%$%hd5527555491%_
                               _%$%tl5527655494%_
                               _%__splice9636896369%_
                               _%$%target5527755497%_
                               _%$%tl5527955500%_)
                        (letrec ((_%$%loop5528055503%_
                                  (lambda (_%$%hd5527855507%_
                                           _%$%body5528455510%_)
                                    (if (gx#stx-pair? _%$%hd5527855507%_)
                                        (let ((_%$%e5528155512%_
                                               (gx#syntax-e
                                                _%$%hd5527855507%_)))
                                          (let ((_%$%lp-tl5528355519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5528155512%_)))
                                                (_%$%lp-hd5528255516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5528155512%_))))
                                            (_%$%loop5528055503%_
                                             _%$%lp-tl5528355519%_
                                             (cons _%$%lp-hd5528255516%_
                                                   _%$%body5528455510%_))))
                                        (let ((_%$%body5528555522%_
                                               (reverse _%$%body5528455510%_)))
                                          (let ((_%$%g5525955525%_
                                                 _%$%body5528555522%_)
                                                (_%$%g5526055527%_
                                                 _%$%hd5527555491%_)
                                                (_%$%g5526155528%_
                                                 _%$%hd5526955471%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5526055527%_))
                                                (_%__kont9636696367%_
                                                 _%$%g5525955525%_
                                                 _%$%g5526055527%_
                                                 _%$%g5526155528%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))))))))
                          (_%$%loop5528055503%_ _%$%target5527755497%_ '()))))
                     (_%__match9650296503%_
                      (lambda (_%$%e5523555567%_
                               _%$%hd5523655571%_
                               _%$%tl5523755574%_
                               _%$%e5523855577%_
                               _%$%hd5523955581%_
                               _%$%tl5524055584%_
                               _%$%e5524155587%_
                               _%$%hd5524255591%_
                               _%$%tl5524355594%_
                               _%$%e5524455597%_
                               _%$%hd5524555601%_
                               _%$%tl5524655604%_
                               _%$%e5524755607%_
                               _%$%hd5524855611%_
                               _%$%tl5524955614%_
                               _%__splice9636496365%_
                               _%$%target5525055617%_
                               _%$%tl5525255620%_)
                        (letrec ((_%$%loop5525355623%_
                                  (lambda (_%$%hd5525155627%_
                                           _%$%body5525755630%_)
                                    (if (gx#stx-pair? _%$%hd5525155627%_)
                                        (let ((_%$%e5525455632%_
                                               (gx#syntax-e
                                                _%$%hd5525155627%_)))
                                          (let ((_%$%lp-tl5525655639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5525455632%_)))
                                                (_%$%lp-hd5525555636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5525455632%_))))
                                            (_%$%loop5525355623%_
                                             _%$%lp-tl5525655639%_
                                             (cons _%$%lp-hd5525555636%_
                                                   _%$%body5525755630%_))))
                                        (let ((_%$%body5525855642%_
                                               (reverse _%$%body5525755630%_)))
                                          (let ((_%$%g5523255645%_
                                                 _%$%body5525855642%_)
                                                (_%$%g5523355647%_
                                                 _%$%hd5524855611%_)
                                                (_%$%g5523455648%_
                                                 _%$%hd5524255591%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5523355647%_))
                                                (_%__kont9636296363%_
                                                 _%$%g5523255645%_
                                                 _%$%g5523355647%_
                                                 _%$%g5523455648%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))))))))
                          (_%$%loop5525355623%_ _%$%target5525055617%_ '()))))
                     (_%__match9645896459%_
                      (lambda (_%$%e5520855687%_
                               _%$%hd5520955691%_
                               _%$%tl5521055694%_
                               _%$%e5521155697%_
                               _%$%hd5521255701%_
                               _%$%tl5521355704%_
                               _%$%e5521455707%_
                               _%$%hd5521555711%_
                               _%$%tl5521655714%_
                               _%$%e5521755717%_
                               _%$%hd5521855721%_
                               _%$%tl5521955724%_
                               _%$%e5522055727%_
                               _%$%hd5522155731%_
                               _%$%tl5522255734%_
                               _%__splice9636096361%_
                               _%$%target5522355737%_
                               _%$%tl5522555740%_)
                        (letrec ((_%$%loop5522655743%_
                                  (lambda (_%$%hd5522455747%_
                                           _%$%body5523055750%_)
                                    (if (gx#stx-pair? _%$%hd5522455747%_)
                                        (let ((_%$%e5522755752%_
                                               (gx#syntax-e
                                                _%$%hd5522455747%_)))
                                          (let ((_%$%lp-tl5522955759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5522755752%_)))
                                                (_%$%lp-hd5522855756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5522755752%_))))
                                            (_%$%loop5522655743%_
                                             _%$%lp-tl5522955759%_
                                             (cons _%$%lp-hd5522855756%_
                                                   _%$%body5523055750%_))))
                                        (let ((_%$%body5523155762%_
                                               (reverse _%$%body5523055750%_)))
                                          (let ((_%$%g5520555765%_
                                                 _%$%body5523155762%_)
                                                (_%$%g5520655767%_
                                                 _%$%hd5522155731%_)
                                                (_%$%g5520755768%_
                                                 _%$%hd5521555711%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5520655767%_))
                                                (_%__kont9635896359%_
                                                 _%$%g5520555765%_
                                                 _%$%g5520655767%_
                                                 _%$%g5520755768%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))))))))
                          (_%$%loop5522655743%_ _%$%target5522355737%_ '()))))
                     (_%__match9643896439%_
                      (lambda (_%$%e5520855687%_
                               _%$%hd5520955691%_
                               _%$%tl5521055694%_
                               _%$%e5521155697%_
                               _%$%hd5521255701%_
                               _%$%tl5521355704%_
                               _%$%e5521455707%_
                               _%$%hd5521555711%_
                               _%$%tl5521655714%_
                               _%$%e5521755717%_
                               _%$%hd5521855721%_
                               _%$%tl5521955724%_)
                        (if (gx#identifier? _%$%hd5521855721%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g102599_|
                                 _%$%hd5521855721%_)
                                (if (gx#stx-pair? _%$%tl5521955724%_)
                                    (let ((_%$%e5522055727%_
                                           (gx#syntax-e _%$%tl5521955724%_)))
                                      (let ((_%$%tl5522255734%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5522055727%_)))
                                            (_%$%hd5522155731%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5522055727%_))))
                                        (if (gx#stx-null? _%$%tl5522255734%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5521355704%_)
                                                (let ((_%__splice9636096361%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5521355704%_
                                                        '0)))
                                                  (let ((_%$%tl5522555740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9636096361%_
                                                            '1)))
                                                        (_%$%target5522355737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9636096361%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5522555740%_)
                                                        (_%__match9645896459%_
                                                         _%$%e5520855687%_
                                                         _%$%hd5520955691%_
                                                         _%$%tl5521055694%_
                                                         _%$%e5521155697%_
                                                         _%$%hd5521255701%_
                                                         _%$%tl5521355704%_
                                                         _%$%e5521455707%_
                                                         _%$%hd5521555711%_
                                                         _%$%tl5521655714%_
                                                         _%$%e5521755717%_
                                                         _%$%hd5521855721%_
                                                         _%$%tl5521955724%_
                                                         _%$%e5522055727%_
                                                         _%$%hd5522155731%_
                                                         _%$%tl5522255734%_
                                                         _%__splice9636096361%_
                                                         _%$%target5522355737%_
                                                         _%$%tl5522555740%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5517555318%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5517555318%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5517555318%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g102600_|
                                     _%$%hd5521855721%_)
                                    (if (gx#stx-pair? _%$%tl5521955724%_)
                                        (let ((_%$%e5524755607%_
                                               (gx#syntax-e
                                                _%$%tl5521955724%_)))
                                          (let ((_%$%tl5524955614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5524755607%_)))
                                                (_%$%hd5524855611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5524755607%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5524955614%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5521355704%_)
                                                    (let ((_%__splice9636496365%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5521355704%_
                                                            '0)))
                                                      (let ((_%$%tl5525255620%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9636496365%_ '1)))
                    (_%$%target5525055617%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9636496365%_ '0))))
                (if (gx#stx-null? _%$%tl5525255620%_)
                    (_%__match9650296503%_
                     _%$%e5520855687%_
                     _%$%hd5520955691%_
                     _%$%tl5521055694%_
                     _%$%e5521155697%_
                     _%$%hd5521255701%_
                     _%$%tl5521355704%_
                     _%$%e5521455707%_
                     _%$%hd5521555711%_
                     _%$%tl5521655714%_
                     _%$%e5521755717%_
                     _%$%hd5521855721%_
                     _%$%tl5521955724%_
                     _%$%e5524755607%_
                     _%$%hd5524855611%_
                     _%$%tl5524955614%_
                     _%__splice9636496365%_
                     _%$%target5525055617%_
                     _%$%tl5525255620%_)
                    (let () (declare (not safe)) (_%$%g5517555318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5517555318%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5517555318%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g102601_|
                                         _%$%hd5521855721%_)
                                        (if (gx#stx-pair? _%$%tl5521955724%_)
                                            (let ((_%$%e5527455487%_
                                                   (gx#syntax-e
                                                    _%$%tl5521955724%_)))
                                              (let ((_%$%tl5527655494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5527455487%_)))
                                                    (_%$%hd5527555491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5527455487%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5527655494%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5521355704%_)
                                                        (let ((_%__splice9636896369%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5521355704%_
                                                                '0)))
                                                          (let ((_%$%tl5527955500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9636896369%_ '1)))
                        (_%$%target5527755497%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9636896369%_ '0))))
                    (if (gx#stx-null? _%$%tl5527955500%_)
                        (_%__match9654696547%_
                         _%$%e5520855687%_
                         _%$%hd5520955691%_
                         _%$%tl5521055694%_
                         _%$%e5521155697%_
                         _%$%hd5521255701%_
                         _%$%tl5521355704%_
                         _%$%e5521455707%_
                         _%$%hd5521555711%_
                         _%$%tl5521655714%_
                         _%$%e5521755717%_
                         _%$%hd5521855721%_
                         _%$%tl5521955724%_
                         _%$%e5527455487%_
                         _%$%hd5527555491%_
                         _%$%tl5527655494%_
                         _%__splice9636896369%_
                         _%$%target5527755497%_
                         _%$%tl5527955500%_)
                        (let () (declare (not safe)) (_%$%g5517555318%_)))))
                (let () (declare (not safe)) (_%$%g5517555318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5517555318%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5517555318%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g102602_|
                                             _%$%hd5521855721%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5521955724%_)
                                                (let ((_%$%e5530155365%_
                                                       (gx#syntax-e
                                                        _%$%tl5521955724%_)))
                                                  (let ((_%$%tl5530355372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5530155365%_)))
                                                        (_%$%hd5530255369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5530155365%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5530355372%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5521355704%_)
                                                            (let ((_%__splice9637296373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5521355704%_
                            '0)))
                      (let ((_%$%tl5530655378%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9637296373%_ '1)))
                            (_%$%target5530455375%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9637296373%_ '0))))
                        (if (gx#stx-null? _%$%tl5530655378%_)
                            (_%__match9659096591%_
                             _%$%e5520855687%_
                             _%$%hd5520955691%_
                             _%$%tl5521055694%_
                             _%$%e5521155697%_
                             _%$%hd5521255701%_
                             _%$%tl5521355704%_
                             _%$%e5521455707%_
                             _%$%hd5521555711%_
                             _%$%tl5521655714%_
                             _%$%e5521755717%_
                             _%$%hd5521855721%_
                             _%$%tl5521955724%_
                             _%$%e5530155365%_
                             _%$%hd5530255369%_
                             _%$%tl5530355372%_
                             _%__splice9637296373%_
                             _%$%target5530455375%_
                             _%$%tl5530655378%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5517555318%_)))))
                    (let () (declare (not safe)) (_%$%g5517555318%_)))
                (let () (declare (not safe)) (_%$%g5517555318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5517555318%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5517555318%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5517555318%_)))))
                     (_%__match9641496415%_
                      (lambda (_%$%e5518155807%_
                               _%$%hd5518255811%_
                               _%$%tl5518355814%_
                               _%$%e5518455817%_
                               _%$%hd5518555821%_
                               _%$%tl5518655824%_
                               _%$%e5518755827%_
                               _%$%hd5518855831%_
                               _%$%tl5518955834%_
                               _%$%e5519055837%_
                               _%$%hd5519155841%_
                               _%$%tl5519255844%_
                               _%$%e5519355847%_
                               _%$%hd5519455851%_
                               _%$%tl5519555854%_
                               _%__splice9635696357%_
                               _%$%target5519655857%_
                               _%$%tl5519855860%_)
                        (letrec ((_%$%loop5519955863%_
                                  (lambda (_%$%hd5519755867%_
                                           _%$%body5520355870%_)
                                    (if (gx#stx-pair? _%$%hd5519755867%_)
                                        (let ((_%$%e5520055872%_
                                               (gx#syntax-e
                                                _%$%hd5519755867%_)))
                                          (let ((_%$%lp-tl5520255879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5520055872%_)))
                                                (_%$%lp-hd5520155876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5520055872%_))))
                                            (_%$%loop5519955863%_
                                             _%$%lp-tl5520255879%_
                                             (cons _%$%lp-hd5520155876%_
                                                   _%$%body5520355870%_))))
                                        (let ((_%$%body5520455882%_
                                               (reverse _%$%body5520355870%_)))
                                          (let ((_%$%g5517755885%_
                                                 _%$%body5520455882%_)
                                                (_%$%g5517855887%_
                                                 _%$%hd5519455851%_)
                                                (_%$%g5517955888%_
                                                 _%$%hd5519155841%_)
                                                (_%$%g5518055889%_
                                                 _%$%hd5518855831%_))
                                            (if (let ((__tmp102603
                                                       (gx#syntax-local-value
                                                        _%$%g5517855887%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp102603))
                                                (_%__kont9635496355%_
                                                 _%$%g5517755885%_
                                                 _%$%g5517855887%_
                                                 _%$%g5517955888%_
                                                 _%$%g5518055889%_)
                                                (_%__match9643896439%_
                                                 _%$%e5518155807%_
                                                 _%$%hd5518255811%_
                                                 _%$%tl5518355814%_
                                                 _%$%e5518455817%_
                                                 _%$%hd5518555821%_
                                                 _%$%tl5518655824%_
                                                 _%$%e5518755827%_
                                                 _%$%hd5518855831%_
                                                 _%$%tl5518955834%_
                                                 _%$%e5519055837%_
                                                 _%$%hd5519155841%_
                                                 _%$%tl5519255844%_))))))))
                          (_%$%loop5519955863%_ _%$%target5519655857%_ '())))))
                (if (gx#stx-pair? _%__stx9635196352%_)
                    (let ((_%$%e5518155807%_
                           (gx#syntax-e _%__stx9635196352%_)))
                      (let ((_%$%tl5518355814%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5518155807%_)))
                            (_%$%hd5518255811%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5518155807%_))))
                        (if (gx#stx-pair? _%$%tl5518355814%_)
                            (let ((_%$%e5518455817%_
                                   (gx#syntax-e _%$%tl5518355814%_)))
                              (let ((_%$%tl5518655824%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5518455817%_)))
                                    (_%$%hd5518555821%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5518455817%_))))
                                (if (gx#stx-pair? _%$%hd5518555821%_)
                                    (let ((_%$%e5518755827%_
                                           (gx#syntax-e _%$%hd5518555821%_)))
                                      (let ((_%$%tl5518955834%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5518755827%_)))
                                            (_%$%hd5518855831%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5518755827%_))))
                                        (if (gx#stx-pair? _%$%tl5518955834%_)
                                            (let ((_%$%e5519055837%_
                                                   (gx#syntax-e
                                                    _%$%tl5518955834%_)))
                                              (let ((_%$%tl5519255844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5519055837%_)))
                                                    (_%$%hd5519155841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5519055837%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5519255844%_)
                                                    (let ((_%$%e5519355847%_
                                                           (gx#syntax-e
                                                            _%$%tl5519255844%_)))
                                                      (let ((_%$%tl5519555854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5519355847%_)))
                    (_%$%hd5519455851%_
                     (let () (declare (not safe)) (##car _%$%e5519355847%_))))
                (if (gx#stx-null? _%$%tl5519555854%_)
                    (if (gx#stx-pair/null? _%$%tl5518655824%_)
                        (let ((_%__splice9635696357%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5518655824%_
                                '0)))
                          (let ((_%$%tl5519855860%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9635696357%_ '1)))
                                (_%$%target5519655857%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9635696357%_ '0))))
                            (if (gx#stx-null? _%$%tl5519855860%_)
                                (_%__match9641496415%_
                                 _%$%e5518155807%_
                                 _%$%hd5518255811%_
                                 _%$%tl5518355814%_
                                 _%$%e5518455817%_
                                 _%$%hd5518555821%_
                                 _%$%tl5518655824%_
                                 _%$%e5518755827%_
                                 _%$%hd5518855831%_
                                 _%$%tl5518955834%_
                                 _%$%e5519055837%_
                                 _%$%hd5519155841%_
                                 _%$%tl5519255844%_
                                 _%$%e5519355847%_
                                 _%$%hd5519455851%_
                                 _%$%tl5519555854%_
                                 _%__splice9635696357%_
                                 _%$%target5519655857%_
                                 _%$%tl5519855860%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5517555318%_)))))
                        (let () (declare (not safe)) (_%$%g5517555318%_)))
                    (let () (declare (not safe)) (_%$%g5517555318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5517555318%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5517555318%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5517555318%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5517555318%_)))))
                    (let () (declare (not safe)) (_%$%g5517555318%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx56281%_)
        (letrec ((_%expand-body56284%_
                  (lambda (_%var57275%_
                           _%Interface57277%_
                           _%body57278%_
                           _%checked?57279%_)
                    (let* ((_%type57281%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx56281%_
                               _%Interface57277%_)))
                           (_%$%g5728457328%_
                            (lambda (_%$%g5728557324%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5728557324%_)))
                           (_%$%g5728357484%_
                            (lambda (_%$%g5728557332%_)
                              (if (gx#stx-pair? _%$%g5728557332%_)
                                  (let ((_%$%e5729357335%_
                                         (gx#syntax-e _%$%g5728557332%_)))
                                    (let ((_%$%hd5729457339%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5729357335%_)))
                                          (_%$%tl5729557342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5729357335%_))))
                                      (if (gx#stx-pair? _%$%tl5729557342%_)
                                          (let ((_%$%e5729657345%_
                                                 (gx#syntax-e
                                                  _%$%tl5729557342%_)))
                                            (let ((_%$%hd5729757349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5729657345%_)))
                                                  (_%$%tl5729857352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5729657345%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5729857352%_)
                                                  (let ((_%$%e5729957355%_
                                                         (gx#syntax-e
                                                          _%$%tl5729857352%_)))
                                                    (let ((_%$%hd5730057359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5729957355%_)))
                                                          (_%$%tl5730157362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5729957355%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5730157362%_)
                                                          (let ((_%$%e5730257365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5730157362%_)))
                    (let ((_%$%hd5730357369%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5730257365%_)))
                          (_%$%tl5730457372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5730257365%_))))
                      (if (gx#stx-pair? _%$%tl5730457372%_)
                          (let ((_%$%e5730557375%_
                                 (gx#syntax-e _%$%tl5730457372%_)))
                            (let ((_%$%hd5730657379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5730557375%_)))
                                  (_%$%tl5730757382%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5730557375%_))))
                              (if (gx#stx-pair? _%$%tl5730757382%_)
                                  (let ((_%$%e5730857385%_
                                         (gx#syntax-e _%$%tl5730757382%_)))
                                    (let ((_%$%hd5730957389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5730857385%_)))
                                          (_%$%tl5731057392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5730857385%_))))
                                      (if (gx#stx-pair? _%$%tl5731057392%_)
                                          (let ((_%$%e5731157395%_
                                                 (gx#syntax-e
                                                  _%$%tl5731057392%_)))
                                            (let ((_%$%hd5731257399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5731157395%_)))
                                                  (_%$%tl5731357402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5731157395%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5731257399%_)
                                                  (let ((_g102604_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5731257399%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g102605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102604_)
                           (##values-length _g102604_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102605_ 2)))
                    (error "Context expects 2 values" _g102605_)))
              (let ((_%$%target5731457405%_
                     (let () (declare (not safe)) (##values-ref _g102604_ 0)))
                    (_%$%tl5731657408%_
                     (let () (declare (not safe)) (##values-ref _g102604_ 1))))
                (if (gx#stx-null? _%$%tl5731657408%_)
                    (letrec ((_%$%loop5731757411%_
                              (lambda (_%$%hd5731557415%_ _%$%body5732157418%_)
                                (if (gx#stx-pair? _%$%hd5731557415%_)
                                    (let ((_%$%e5731857420%_
                                           (gx#syntax-e _%$%hd5731557415%_)))
                                      (let ((_%$%lp-hd5731957424%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5731857420%_)))
                                            (_%$%lp-tl5732057427%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5731857420%_))))
                                        (_%$%loop5731757411%_
                                         _%$%lp-tl5732057427%_
                                         (cons _%$%lp-hd5731957424%_
                                               _%$%body5732157418%_))))
                                    (let ((_%$%body5732257430%_
                                           (reverse _%$%body5732157418%_)))
                                      (if (gx#stx-null? _%$%tl5731357402%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5730357369%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5730057359%_ '()))
                                      (cons _%$%hd5730357369%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5729457339%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5730357369%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5729757349%_ '()))
                            (cons _%$%hd5730657379%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5730957389%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5747557478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5747657481%_)
                   (cons _%$%g5747557478%_ _%$%g5747657481%_))
                 '()
                 _%$%body5732257430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5728457328%_
                                           _%$%g5728557332%_)))))))
                      (_%$%loop5731757411%_ _%$%target5731457405%_ '()))
                    (_%$%g5728457328%_ _%$%g5728557332%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5728457328%_
                                                   _%$%g5728557332%_))))
                                          (_%$%g5728457328%_
                                           _%$%g5728557332%_))))
                                  (_%$%g5728457328%_ _%$%g5728557332%_))))
                          (_%$%g5728457328%_ _%$%g5728557332%_))))
                  (_%$%g5728457328%_ _%$%g5728557332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5728457328%_
                                                   _%$%g5728557332%_))))
                                          (_%$%g5728457328%_
                                           _%$%g5728557332%_))))
                                  (_%$%g5728457328%_ _%$%g5728557332%_)))))
                      (_%$%g5728357484%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type57281%_
                             (let ((__obj102402 _%type57281%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102402
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102402
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102402
                                    'type-descriptor)))
                             _%var57275%_
                             _%checked?57279%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body57278%_)))))
                 (_%expand56286%_
                  (lambda (_%var57074%_
                           _%Interface57076%_
                           _%body57077%_
                           _%checked?57078%_
                           _%checked-methods?57079%_
                           _%maybe?57080%_)
                    (let* ((_%$%g5708257090%_
                            (lambda (_%$%g5708357086%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5708357086%_)))
                           (_%$%g5708157267%_
                            (lambda (_%$%g5708357094%_)
                              (if _%checked?57078%_
                                  (if _%maybe?57080%_
                                      (let* ((_%$%g5710957124%_
                                              (lambda (_%$%g5711057120%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5711057120%_)))
                                             (_%$%g5710857170%_
                                              (lambda (_%$%g5711057128%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5711057128%_)
                                                    (let ((_%$%e5711357131%_
                                                           (gx#syntax-e
                                                            _%$%g5711057128%_)))
                                                      (let ((_%$%hd5711457135%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5711357131%_)))
                    (_%$%tl5711557138%_
                     (let () (declare (not safe)) (##cdr _%$%e5711357131%_))))
                (if (gx#stx-pair? _%$%tl5711557138%_)
                    (let ((_%$%e5711657141%_ (gx#syntax-e _%$%tl5711557138%_)))
                      (let ((_%$%hd5711757145%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5711657141%_)))
                            (_%$%tl5711857148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5711657141%_))))
                        (if (gx#stx-null? _%$%tl5711857148%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5711457135%_
                                              (cons (cons _%$%hd5711757145%_
                                                          (cons _%$%hd5711457135%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%$%hd5711457135%_
                                                          (cons _%$%g5708357094%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%$%hd5711457135%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g5710957124%_ _%$%g5711057128%_))))
                    (_%$%g5710957124%_ _%$%g5711057128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5710957124%_
                                                     _%$%g5711057128%_)))))
                                        (_%$%g5710857170%_
                                         (list _%var57074%_
                                               _%Interface57076%_)))
                                      (let* ((_%$%g5717457189%_
                                              (lambda (_%$%g5717557185%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5717557185%_)))
                                             (_%$%g5717357233%_
                                              (lambda (_%$%g5717557193%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5717557193%_)
                                                    (let ((_%$%e5717857196%_
                                                           (gx#syntax-e
                                                            _%$%g5717557193%_)))
                                                      (let ((_%$%hd5717957200%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5717857196%_)))
                    (_%$%tl5718057203%_
                     (let () (declare (not safe)) (##cdr _%$%e5717857196%_))))
                (if (gx#stx-pair? _%$%tl5718057203%_)
                    (let ((_%$%e5718157206%_ (gx#syntax-e _%$%tl5718057203%_)))
                      (let ((_%$%hd5718257210%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5718157206%_)))
                            (_%$%tl5718357213%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5718157206%_))))
                        (if (gx#stx-null? _%$%tl5718357213%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5717957200%_
                                              (cons (cons _%$%hd5718257210%_
                                                          (cons _%$%hd5717957200%_
                                                                '()))
                                                    '()))
                                        (cons _%$%g5708357094%_ '())))
                            (_%$%g5717457189%_ _%$%g5717557193%_))))
                    (_%$%g5717457189%_ _%$%g5717557193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5717457189%_
                                                     _%$%g5717557193%_)))))
                                        (_%$%g5717357233%_
                                         (list _%var57074%_
                                               _%Interface57076%_))))
                                  (if _%maybe?57080%_
                                      (let* ((_%$%g5723757245%_
                                              (lambda (_%$%g5723857241%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5723857241%_)))
                                             (_%$%g5723657263%_
                                              (lambda (_%$%g5723857249%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%$%g5723857249%_
                                                            (cons _%$%g5708357094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%$%g5723857249%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5723657263%_ _%var57074%_))
                                      _%$%g5708357094%_)))))
                      (_%$%g5708157267%_
                       (_%expand-body56284%_
                        _%var57074%_
                        _%Interface57076%_
                        _%body57077%_
                        (let ((_%$e57271%_ _%checked?57078%_))
                          (if _%$e57271%_
                              _%$e57271%_
                              _%checked-methods?57079%_))))))))
          (let* ((_%__stx9659396594%_ _%stx56281%_)
                 (_%$%g5629256435%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9659396594%_))))
            (let ((_%__kont9659696597%_
                   (lambda (_%$%g5629457002%_
                            _%$%g5629557004%_
                            _%$%g5629657005%_
                            _%$%g5629757006%_)
                     (let* ((_%$%g5703157039%_
                             (lambda (_%$%g5703257035%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5703257035%_)))
                            (_%$%g5703057066%_
                             (lambda (_%$%g5703257043%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%$%g5629757006%_
                                                 (cons _%$%g5629657005%_
                                                       (cons _%$%g5703257043%_
                                                             '())))
                                           (foldr (lambda (_%$%g5705757060%_
                                                           _%$%g5705857063%_)
                                                    (cons _%$%g5705757060%_
                                                          _%$%g5705857063%_))
                                                  '()
                                                  _%$%g5629457002%_))))))
                       (_%$%g5703057066%_
                        (let ((__obj102403
                               (gx#syntax-local-value _%$%g5629557004%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102403
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102403
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj102403
                               'identifier)))))))
                  (_%__kont9660096601%_
                   (lambda (_%$%g5632256882%_
                            _%$%g5632356884%_
                            _%$%g5632456885%_)
                     (_%expand56286%_
                      _%$%g5632456885%_
                      _%$%g5632356884%_
                      (foldr (lambda (_%$%g5690856911%_ _%$%g5690956914%_)
                               (cons _%$%g5690856911%_ _%$%g5690956914%_))
                             '()
                             _%$%g5632256882%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9660496605%_
                   (lambda (_%$%g5634956762%_
                            _%$%g5635056764%_
                            _%$%g5635156765%_)
                     (_%expand56286%_
                      _%$%g5635156765%_
                      _%$%g5635056764%_
                      (foldr (lambda (_%$%g5678856791%_ _%$%g5678956794%_)
                               (cons _%$%g5678856791%_ _%$%g5678956794%_))
                             '()
                             _%$%g5634956762%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9660896609%_
                   (lambda (_%$%g5637656642%_
                            _%$%g5637756644%_
                            _%$%g5637856645%_)
                     (_%expand56286%_
                      _%$%g5637856645%_
                      _%$%g5637756644%_
                      (foldr (lambda (_%$%g5666856671%_ _%$%g5666956674%_)
                               (cons _%$%g5666856671%_ _%$%g5666956674%_))
                             '()
                             _%$%g5637656642%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9661296613%_
                   (lambda (_%$%g5640356520%_
                            _%$%g5640456522%_
                            _%$%g5640556523%_)
                     (_%expand56286%_
                      _%$%g5640556523%_
                      _%$%g5640456522%_
                      (foldr (lambda (_%$%g5654856551%_ _%$%g5654956554%_)
                               (cons _%$%g5654856551%_ _%$%g5654956554%_))
                             '()
                             _%$%g5640356520%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9683296833%_
                      (lambda (_%$%e5640656442%_
                               _%$%hd5640756446%_
                               _%$%tl5640856449%_
                               _%$%e5640956452%_
                               _%$%hd5641056456%_
                               _%$%tl5641156459%_
                               _%$%e5641256462%_
                               _%$%hd5641356466%_
                               _%$%tl5641456469%_
                               _%$%e5641556472%_
                               _%$%hd5641656476%_
                               _%$%tl5641756479%_
                               _%$%e5641856482%_
                               _%$%hd5641956486%_
                               _%$%tl5642056489%_
                               _%__splice9661496615%_
                               _%$%target5642156492%_
                               _%$%tl5642356495%_)
                        (letrec ((_%$%loop5642456498%_
                                  (lambda (_%$%hd5642256502%_
                                           _%$%body5642856505%_)
                                    (if (gx#stx-pair? _%$%hd5642256502%_)
                                        (let ((_%$%e5642556507%_
                                               (gx#syntax-e
                                                _%$%hd5642256502%_)))
                                          (let ((_%$%lp-tl5642756514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5642556507%_)))
                                                (_%$%lp-hd5642656511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5642556507%_))))
                                            (_%$%loop5642456498%_
                                             _%$%lp-tl5642756514%_
                                             (cons _%$%lp-hd5642656511%_
                                                   _%$%body5642856505%_))))
                                        (let ((_%$%body5642956517%_
                                               (reverse _%$%body5642856505%_)))
                                          (let ((_%$%g5640356520%_
                                                 _%$%body5642956517%_)
                                                (_%$%g5640456522%_
                                                 _%$%hd5641956486%_)
                                                (_%$%g5640556523%_
                                                 _%$%hd5641356466%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5640556523%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5640456522%_)))
                                                (_%__kont9661296613%_
                                                 _%$%g5640356520%_
                                                 _%$%g5640456522%_
                                                 _%$%g5640556523%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))))))))
                          (_%$%loop5642456498%_ _%$%target5642156492%_ '()))))
                     (_%__match9678896789%_
                      (lambda (_%$%e5637956564%_
                               _%$%hd5638056568%_
                               _%$%tl5638156571%_
                               _%$%e5638256574%_
                               _%$%hd5638356578%_
                               _%$%tl5638456581%_
                               _%$%e5638556584%_
                               _%$%hd5638656588%_
                               _%$%tl5638756591%_
                               _%$%e5638856594%_
                               _%$%hd5638956598%_
                               _%$%tl5639056601%_
                               _%$%e5639156604%_
                               _%$%hd5639256608%_
                               _%$%tl5639356611%_
                               _%__splice9661096611%_
                               _%$%target5639456614%_
                               _%$%tl5639656617%_)
                        (letrec ((_%$%loop5639756620%_
                                  (lambda (_%$%hd5639556624%_
                                           _%$%body5640156627%_)
                                    (if (gx#stx-pair? _%$%hd5639556624%_)
                                        (let ((_%$%e5639856629%_
                                               (gx#syntax-e
                                                _%$%hd5639556624%_)))
                                          (let ((_%$%lp-tl5640056636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5639856629%_)))
                                                (_%$%lp-hd5639956633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5639856629%_))))
                                            (_%$%loop5639756620%_
                                             _%$%lp-tl5640056636%_
                                             (cons _%$%lp-hd5639956633%_
                                                   _%$%body5640156627%_))))
                                        (let ((_%$%body5640256639%_
                                               (reverse _%$%body5640156627%_)))
                                          (let ((_%$%g5637656642%_
                                                 _%$%body5640256639%_)
                                                (_%$%g5637756644%_
                                                 _%$%hd5639256608%_)
                                                (_%$%g5637856645%_
                                                 _%$%hd5638656588%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5637856645%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5637756644%_)))
                                                (_%__kont9660896609%_
                                                 _%$%g5637656642%_
                                                 _%$%g5637756644%_
                                                 _%$%g5637856645%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))))))))
                          (_%$%loop5639756620%_ _%$%target5639456614%_ '()))))
                     (_%__match9674496745%_
                      (lambda (_%$%e5635256684%_
                               _%$%hd5635356688%_
                               _%$%tl5635456691%_
                               _%$%e5635556694%_
                               _%$%hd5635656698%_
                               _%$%tl5635756701%_
                               _%$%e5635856704%_
                               _%$%hd5635956708%_
                               _%$%tl5636056711%_
                               _%$%e5636156714%_
                               _%$%hd5636256718%_
                               _%$%tl5636356721%_
                               _%$%e5636456724%_
                               _%$%hd5636556728%_
                               _%$%tl5636656731%_
                               _%__splice9660696607%_
                               _%$%target5636756734%_
                               _%$%tl5636956737%_)
                        (letrec ((_%$%loop5637056740%_
                                  (lambda (_%$%hd5636856744%_
                                           _%$%body5637456747%_)
                                    (if (gx#stx-pair? _%$%hd5636856744%_)
                                        (let ((_%$%e5637156749%_
                                               (gx#syntax-e
                                                _%$%hd5636856744%_)))
                                          (let ((_%$%lp-tl5637356756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5637156749%_)))
                                                (_%$%lp-hd5637256753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5637156749%_))))
                                            (_%$%loop5637056740%_
                                             _%$%lp-tl5637356756%_
                                             (cons _%$%lp-hd5637256753%_
                                                   _%$%body5637456747%_))))
                                        (let ((_%$%body5637556759%_
                                               (reverse _%$%body5637456747%_)))
                                          (let ((_%$%g5634956762%_
                                                 _%$%body5637556759%_)
                                                (_%$%g5635056764%_
                                                 _%$%hd5636556728%_)
                                                (_%$%g5635156765%_
                                                 _%$%hd5635956708%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5635156765%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5635056764%_)))
                                                (_%__kont9660496605%_
                                                 _%$%g5634956762%_
                                                 _%$%g5635056764%_
                                                 _%$%g5635156765%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))))))))
                          (_%$%loop5637056740%_ _%$%target5636756734%_ '()))))
                     (_%__match9670096701%_
                      (lambda (_%$%e5632556804%_
                               _%$%hd5632656808%_
                               _%$%tl5632756811%_
                               _%$%e5632856814%_
                               _%$%hd5632956818%_
                               _%$%tl5633056821%_
                               _%$%e5633156824%_
                               _%$%hd5633256828%_
                               _%$%tl5633356831%_
                               _%$%e5633456834%_
                               _%$%hd5633556838%_
                               _%$%tl5633656841%_
                               _%$%e5633756844%_
                               _%$%hd5633856848%_
                               _%$%tl5633956851%_
                               _%__splice9660296603%_
                               _%$%target5634056854%_
                               _%$%tl5634256857%_)
                        (letrec ((_%$%loop5634356860%_
                                  (lambda (_%$%hd5634156864%_
                                           _%$%body5634756867%_)
                                    (if (gx#stx-pair? _%$%hd5634156864%_)
                                        (let ((_%$%e5634456869%_
                                               (gx#syntax-e
                                                _%$%hd5634156864%_)))
                                          (let ((_%$%lp-tl5634656876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5634456869%_)))
                                                (_%$%lp-hd5634556873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5634456869%_))))
                                            (_%$%loop5634356860%_
                                             _%$%lp-tl5634656876%_
                                             (cons _%$%lp-hd5634556873%_
                                                   _%$%body5634756867%_))))
                                        (let ((_%$%body5634856879%_
                                               (reverse _%$%body5634756867%_)))
                                          (let ((_%$%g5632256882%_
                                                 _%$%body5634856879%_)
                                                (_%$%g5632356884%_
                                                 _%$%hd5633856848%_)
                                                (_%$%g5632456885%_
                                                 _%$%hd5633256828%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5632456885%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5632356884%_)))
                                                (_%__kont9660096601%_
                                                 _%$%g5632256882%_
                                                 _%$%g5632356884%_
                                                 _%$%g5632456885%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))))))))
                          (_%$%loop5634356860%_ _%$%target5634056854%_ '()))))
                     (_%__match9668096681%_
                      (lambda (_%$%e5632556804%_
                               _%$%hd5632656808%_
                               _%$%tl5632756811%_
                               _%$%e5632856814%_
                               _%$%hd5632956818%_
                               _%$%tl5633056821%_
                               _%$%e5633156824%_
                               _%$%hd5633256828%_
                               _%$%tl5633356831%_
                               _%$%e5633456834%_
                               _%$%hd5633556838%_
                               _%$%tl5633656841%_)
                        (if (gx#identifier? _%$%hd5633556838%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g102606_|
                                 _%$%hd5633556838%_)
                                (if (gx#stx-pair? _%$%tl5633656841%_)
                                    (let ((_%$%e5633756844%_
                                           (gx#syntax-e _%$%tl5633656841%_)))
                                      (let ((_%$%tl5633956851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5633756844%_)))
                                            (_%$%hd5633856848%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5633756844%_))))
                                        (if (gx#stx-null? _%$%tl5633956851%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5633056821%_)
                                                (let ((_%__splice9660296603%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5633056821%_
                                                        '0)))
                                                  (let ((_%$%tl5634256857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9660296603%_
                                                            '1)))
                                                        (_%$%target5634056854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9660296603%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5634256857%_)
                                                        (_%__match9670096701%_
                                                         _%$%e5632556804%_
                                                         _%$%hd5632656808%_
                                                         _%$%tl5632756811%_
                                                         _%$%e5632856814%_
                                                         _%$%hd5632956818%_
                                                         _%$%tl5633056821%_
                                                         _%$%e5633156824%_
                                                         _%$%hd5633256828%_
                                                         _%$%tl5633356831%_
                                                         _%$%e5633456834%_
                                                         _%$%hd5633556838%_
                                                         _%$%tl5633656841%_
                                                         _%$%e5633756844%_
                                                         _%$%hd5633856848%_
                                                         _%$%tl5633956851%_
                                                         _%__splice9660296603%_
                                                         _%$%target5634056854%_
                                                         _%$%tl5634256857%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5629256435%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5629256435%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5629256435%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g102607_|
                                     _%$%hd5633556838%_)
                                    (if (gx#stx-pair? _%$%tl5633656841%_)
                                        (let ((_%$%e5636456724%_
                                               (gx#syntax-e
                                                _%$%tl5633656841%_)))
                                          (let ((_%$%tl5636656731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5636456724%_)))
                                                (_%$%hd5636556728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5636456724%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5636656731%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5633056821%_)
                                                    (let ((_%__splice9660696607%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5633056821%_
                                                            '0)))
                                                      (let ((_%$%tl5636956737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9660696607%_ '1)))
                    (_%$%target5636756734%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9660696607%_ '0))))
                (if (gx#stx-null? _%$%tl5636956737%_)
                    (_%__match9674496745%_
                     _%$%e5632556804%_
                     _%$%hd5632656808%_
                     _%$%tl5632756811%_
                     _%$%e5632856814%_
                     _%$%hd5632956818%_
                     _%$%tl5633056821%_
                     _%$%e5633156824%_
                     _%$%hd5633256828%_
                     _%$%tl5633356831%_
                     _%$%e5633456834%_
                     _%$%hd5633556838%_
                     _%$%tl5633656841%_
                     _%$%e5636456724%_
                     _%$%hd5636556728%_
                     _%$%tl5636656731%_
                     _%__splice9660696607%_
                     _%$%target5636756734%_
                     _%$%tl5636956737%_)
                    (let () (declare (not safe)) (_%$%g5629256435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5629256435%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5629256435%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g102608_|
                                         _%$%hd5633556838%_)
                                        (if (gx#stx-pair? _%$%tl5633656841%_)
                                            (let ((_%$%e5639156604%_
                                                   (gx#syntax-e
                                                    _%$%tl5633656841%_)))
                                              (let ((_%$%tl5639356611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5639156604%_)))
                                                    (_%$%hd5639256608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5639156604%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5639356611%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5633056821%_)
                                                        (let ((_%__splice9661096611%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5633056821%_
                                                                '0)))
                                                          (let ((_%$%tl5639656617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9661096611%_ '1)))
                        (_%$%target5639456614%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9661096611%_ '0))))
                    (if (gx#stx-null? _%$%tl5639656617%_)
                        (_%__match9678896789%_
                         _%$%e5632556804%_
                         _%$%hd5632656808%_
                         _%$%tl5632756811%_
                         _%$%e5632856814%_
                         _%$%hd5632956818%_
                         _%$%tl5633056821%_
                         _%$%e5633156824%_
                         _%$%hd5633256828%_
                         _%$%tl5633356831%_
                         _%$%e5633456834%_
                         _%$%hd5633556838%_
                         _%$%tl5633656841%_
                         _%$%e5639156604%_
                         _%$%hd5639256608%_
                         _%$%tl5639356611%_
                         _%__splice9661096611%_
                         _%$%target5639456614%_
                         _%$%tl5639656617%_)
                        (let () (declare (not safe)) (_%$%g5629256435%_)))))
                (let () (declare (not safe)) (_%$%g5629256435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5629256435%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5629256435%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g102609_|
                                             _%$%hd5633556838%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5633656841%_)
                                                (let ((_%$%e5641856482%_
                                                       (gx#syntax-e
                                                        _%$%tl5633656841%_)))
                                                  (let ((_%$%tl5642056489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5641856482%_)))
                                                        (_%$%hd5641956486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5641856482%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5642056489%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5633056821%_)
                                                            (let ((_%__splice9661496615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5633056821%_
                            '0)))
                      (let ((_%$%tl5642356495%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9661496615%_ '1)))
                            (_%$%target5642156492%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9661496615%_ '0))))
                        (if (gx#stx-null? _%$%tl5642356495%_)
                            (_%__match9683296833%_
                             _%$%e5632556804%_
                             _%$%hd5632656808%_
                             _%$%tl5632756811%_
                             _%$%e5632856814%_
                             _%$%hd5632956818%_
                             _%$%tl5633056821%_
                             _%$%e5633156824%_
                             _%$%hd5633256828%_
                             _%$%tl5633356831%_
                             _%$%e5633456834%_
                             _%$%hd5633556838%_
                             _%$%tl5633656841%_
                             _%$%e5641856482%_
                             _%$%hd5641956486%_
                             _%$%tl5642056489%_
                             _%__splice9661496615%_
                             _%$%target5642156492%_
                             _%$%tl5642356495%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5629256435%_)))))
                    (let () (declare (not safe)) (_%$%g5629256435%_)))
                (let () (declare (not safe)) (_%$%g5629256435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5629256435%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5629256435%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5629256435%_)))))
                     (_%__match9665696657%_
                      (lambda (_%$%e5629856924%_
                               _%$%hd5629956928%_
                               _%$%tl5630056931%_
                               _%$%e5630156934%_
                               _%$%hd5630256938%_
                               _%$%tl5630356941%_
                               _%$%e5630456944%_
                               _%$%hd5630556948%_
                               _%$%tl5630656951%_
                               _%$%e5630756954%_
                               _%$%hd5630856958%_
                               _%$%tl5630956961%_
                               _%$%e5631056964%_
                               _%$%hd5631156968%_
                               _%$%tl5631256971%_
                               _%__splice9659896599%_
                               _%$%target5631356974%_
                               _%$%tl5631556977%_)
                        (letrec ((_%$%loop5631656980%_
                                  (lambda (_%$%hd5631456984%_
                                           _%$%body5632056987%_)
                                    (if (gx#stx-pair? _%$%hd5631456984%_)
                                        (let ((_%$%e5631756989%_
                                               (gx#syntax-e
                                                _%$%hd5631456984%_)))
                                          (let ((_%$%lp-tl5631956996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5631756989%_)))
                                                (_%$%lp-hd5631856993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5631756989%_))))
                                            (_%$%loop5631656980%_
                                             _%$%lp-tl5631956996%_
                                             (cons _%$%lp-hd5631856993%_
                                                   _%$%body5632056987%_))))
                                        (let ((_%$%body5632156999%_
                                               (reverse _%$%body5632056987%_)))
                                          (let ((_%$%g5629457002%_
                                                 _%$%body5632156999%_)
                                                (_%$%g5629557004%_
                                                 _%$%hd5631156968%_)
                                                (_%$%g5629657005%_
                                                 _%$%hd5630856958%_)
                                                (_%$%g5629757006%_
                                                 _%$%hd5630556948%_))
                                            (if (let ((__tmp102610
                                                       (gx#syntax-local-value
                                                        _%$%g5629557004%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp102610))
                                                (_%__kont9659696597%_
                                                 _%$%g5629457002%_
                                                 _%$%g5629557004%_
                                                 _%$%g5629657005%_
                                                 _%$%g5629757006%_)
                                                (_%__match9668096681%_
                                                 _%$%e5629856924%_
                                                 _%$%hd5629956928%_
                                                 _%$%tl5630056931%_
                                                 _%$%e5630156934%_
                                                 _%$%hd5630256938%_
                                                 _%$%tl5630356941%_
                                                 _%$%e5630456944%_
                                                 _%$%hd5630556948%_
                                                 _%$%tl5630656951%_
                                                 _%$%e5630756954%_
                                                 _%$%hd5630856958%_
                                                 _%$%tl5630956961%_))))))))
                          (_%$%loop5631656980%_ _%$%target5631356974%_ '())))))
                (if (gx#stx-pair? _%__stx9659396594%_)
                    (let ((_%$%e5629856924%_
                           (gx#syntax-e _%__stx9659396594%_)))
                      (let ((_%$%tl5630056931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5629856924%_)))
                            (_%$%hd5629956928%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5629856924%_))))
                        (if (gx#stx-pair? _%$%tl5630056931%_)
                            (let ((_%$%e5630156934%_
                                   (gx#syntax-e _%$%tl5630056931%_)))
                              (let ((_%$%tl5630356941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5630156934%_)))
                                    (_%$%hd5630256938%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5630156934%_))))
                                (if (gx#stx-pair? _%$%hd5630256938%_)
                                    (let ((_%$%e5630456944%_
                                           (gx#syntax-e _%$%hd5630256938%_)))
                                      (let ((_%$%tl5630656951%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5630456944%_)))
                                            (_%$%hd5630556948%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5630456944%_))))
                                        (if (gx#stx-pair? _%$%tl5630656951%_)
                                            (let ((_%$%e5630756954%_
                                                   (gx#syntax-e
                                                    _%$%tl5630656951%_)))
                                              (let ((_%$%tl5630956961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5630756954%_)))
                                                    (_%$%hd5630856958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5630756954%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5630956961%_)
                                                    (let ((_%$%e5631056964%_
                                                           (gx#syntax-e
                                                            _%$%tl5630956961%_)))
                                                      (let ((_%$%tl5631256971%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5631056964%_)))
                    (_%$%hd5631156968%_
                     (let () (declare (not safe)) (##car _%$%e5631056964%_))))
                (if (gx#stx-null? _%$%tl5631256971%_)
                    (if (gx#stx-pair/null? _%$%tl5630356941%_)
                        (let ((_%__splice9659896599%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5630356941%_
                                '0)))
                          (let ((_%$%tl5631556977%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9659896599%_ '1)))
                                (_%$%target5631356974%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9659896599%_ '0))))
                            (if (gx#stx-null? _%$%tl5631556977%_)
                                (_%__match9665696657%_
                                 _%$%e5629856924%_
                                 _%$%hd5629956928%_
                                 _%$%tl5630056931%_
                                 _%$%e5630156934%_
                                 _%$%hd5630256938%_
                                 _%$%tl5630356941%_
                                 _%$%e5630456944%_
                                 _%$%hd5630556948%_
                                 _%$%tl5630656951%_
                                 _%$%e5630756954%_
                                 _%$%hd5630856958%_
                                 _%$%tl5630956961%_
                                 _%$%e5631056964%_
                                 _%$%hd5631156968%_
                                 _%$%tl5631256971%_
                                 _%__splice9659896599%_
                                 _%$%target5631356974%_
                                 _%$%tl5631556977%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5629256435%_)))))
                        (let () (declare (not safe)) (_%$%g5629256435%_)))
                    (let () (declare (not safe)) (_%$%g5629256435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5629256435%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5629256435%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5629256435%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5629256435%_)))))
                    (let () (declare (not safe)) (_%$%g5629256435%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx57494%_)
        (let* ((_%__stx9683596836%_ _%stx57494%_)
               (_%$%g5749957559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9683596836%_))))
          (let ((_%__kont9683896839%_
                 (lambda (_%$%g5750158115%_ _%$%g5750258117%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%$%g5750258117%_ '()))
                               (foldr (lambda (_%$%g5813358136%_
                                               _%$%g5813458139%_)
                                        (cons _%$%g5813358136%_
                                              _%$%g5813458139%_))
                                      '()
                                      _%$%g5750158115%_)))))
                (_%__kont9684296843%_
                 (lambda (_%$%g5751857703%_ _%$%g5751957705%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%$%g5751957705%_)
                       (let* ((_%$%g5772557732%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx57494%_
                                _%$%g5751957705%_))
                              (_%$%E5772757738%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%g5772557732%_
                                        '([var . parts]))
                                 (void)))
                              (_%$%K5772858036%_
                               (lambda (_%parts57742%_ _%var57744%_)
                                 (let ((_%$e57746%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var57744%_))))
                                   (if _%$e57746%_
                                       (let _%loop57753%_ ((_%parts57756%_
                                                            _%parts57742%_)
                                                           (_%type57758%_
                                                            (##direct-structure-ref
                                                             _%$e57746%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object57759%_
                                                            _%var57744%_)
                                                           (_%checked-method?57760%_
                                                            (##direct-structure-ref
                                                             _%$e57746%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?57761%_
                                                            '#f))
                                         (let* ((_%$%parts5776257770%_
                                                 _%parts57756%_)
                                                (_%$%else5776457831%_
                                                 (lambda ()
                                                   (let* ((_%$%g5778257790%_
                                                           (lambda (_%$%g5778357786%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5778357786%_)))
                                                          (_%$%g5778157827%_
                                                           (lambda (_%$%g5778357794%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%$%g5778357794%_
                                 (foldr (lambda (_%$%g5781857821%_
                                                 _%$%g5781957824%_)
                                          (cons _%$%g5781857821%_
                                                _%$%g5781957824%_))
                                        '()
                                        _%$%g5751857703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5778157827%_
                                                      _%object57759%_))))
                                                (_%$%K5776658010%_
                                                 (lambda (_%rest57835%_
                                                          _%part57837%_)
                                                   (if (and (not _%nil-check?57761%_)
                                                            (let ((__tmp102611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part57837%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp102611)))
               (let ((_%str57841%_ (symbol->string _%part57837%_)))
                 (_%loop57753%_
                  (cons (let ((__tmp102612
                               (substring
                                _%str57841%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str57841%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp102612))
                        _%rest57835%_)
                  _%type57758%_
                  _%object57759%_
                  _%checked-method?57760%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type57758%_))
                   (let* ((_%$%g5784657861%_
                           (lambda (_%$%g5784757857%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5784757857%_)))
                          (_%$%g5784557930%_
                           (lambda (_%$%g5784757865%_)
                             (if (gx#stx-pair? _%$%g5784757865%_)
                                 (let ((_%$%e5785057868%_
                                        (gx#syntax-e _%$%g5784757865%_)))
                                   (let ((_%$%hd5785157872%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5785057868%_)))
                                         (_%$%tl5785257875%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5785057868%_))))
                                     (if (gx#stx-pair? _%$%tl5785257875%_)
                                         (let ((_%$%e5785357878%_
                                                (gx#syntax-e
                                                 _%$%tl5785257875%_)))
                                           (let ((_%$%hd5785457882%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5785357878%_)))
                                                 (_%$%tl5785557885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5785357878%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5785557885%_)
                                                 (if (null? _%rest57835%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%$%hd5785457882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%hd5785157872%_ '()))
                         (foldr (lambda (_%$%g5790957912%_ _%$%g5791057915%_)
                                  (cons _%$%g5790957912%_ _%$%g5791057915%_))
                                '()
                                _%$%g5751857703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e57918%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type57758%_
                                                             _%part57837%_)))
                                                       (if _%$e57918%_
                                                           (let ((_%slot-type57925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx57494%_
                             _%$e57918%_))))
                     (_%loop57753%_
                      _%rest57835%_
                      _%slot-type57925%_
                      (cons _%$%hd5785457882%_ (cons _%$%hd5785157872%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type57758%_
                       _%part57837%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference value; unknown type for slot"
                    _%stx57494%_
                    _%$%g5751957705%_
                    _%part57837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5784657861%_
                                                  _%$%g5784757865%_))))
                                         (_%$%g5784657861%_
                                          _%$%g5784757865%_))))
                                 (_%$%g5784657861%_ _%$%g5784757865%_)))))
                     (_%$%g5784557930%_
                      (list (if _%nil-check?57761%_
                                (cons 'check-nil! (cons _%object57759%_ '()))
                                _%object57759%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx57494%_
                             _%type57758%_
                             _%part57837%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type57758%_))
                       (if (null? _%rest57835%_)
                           (let* ((_%$%g5793657951%_
                                   (lambda (_%$%g5793757947%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g5793757947%_)))
                                  (_%$%g5793558004%_
                                   (lambda (_%$%g5793757955%_)
                                     (if (gx#stx-pair? _%$%g5793757955%_)
                                         (let ((_%$%e5794057958%_
                                                (gx#syntax-e
                                                 _%$%g5793757955%_)))
                                           (let ((_%$%hd5794157962%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5794057958%_)))
                                                 (_%$%tl5794257965%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5794057958%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl5794257965%_)
                                                 (let ((_%$%e5794357968%_
                                                        (gx#syntax-e
                                                         _%$%tl5794257965%_)))
                                                   (let ((_%$%hd5794457972%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e5794357968%_)))
                                                         (_%$%tl5794557975%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e5794357968%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5794557975%_)
                                                         (cons _%$%hd5794457972%_
                                                               (cons _%$%hd5794157962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g5799557998%_
                                             _%$%g5799658001%_)
                                      (cons _%$%g5799557998%_
                                            _%$%g5799658001%_))
                                    '()
                                    _%$%g5751857703%_)))
                 (_%$%g5793657951%_ _%$%g5793757955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5793657951%_
                                                  _%$%g5793757955%_))))
                                         (_%$%g5793657951%_
                                          _%$%g5793757955%_)))))
                             (_%$%g5793558004%_
                              (list (if _%nil-check?57761%_
                                        (cons 'check-nil!
                                              (cons _%object57759%_ '()))
                                        _%object57759%_)
                                    (gx#stx-identifier
                                     _%$%g5751957705%_
                                     (if _%checked-method?57760%_ '"" '"&")
                                     (let ((__obj102404 _%type57758%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj102404
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj102404
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj102404
                                            'name)))
                                     '"-"
                                     _%part57837%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx57494%_
                            _%$%g5751957705%_
                            _%part57837%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx57494%_
                        _%type57758%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%parts5776257770%_)
                                               (let ((_%$%hd5776758014%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%parts5776257770%_)))
                                                     (_%$%tl5776858017%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%parts5776257770%_))))
                                                 (let* ((_%part58020%_
                                                         _%$%hd5776758014%_)
                                                        (_%rest58023%_
                                                         _%$%tl5776858017%_))
                                                   (_%$%K5776658010%_
                                                    _%rest58023%_
                                                    _%part58020%_)))
                                               (_%$%else5776457831%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%$%g5751957705%_
                                                   (foldr (lambda (_%$%g5802758030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g5802858033%_)
                    (cons _%$%g5802758030%_ _%$%g5802858033%_))
                  '()
                  _%$%g5751857703%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%$%g5772557732%_)
                             (let ((_%$%hd5772958040%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%g5772557732%_)))
                                   (_%$%tl5773058043%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%g5772557732%_))))
                               (let* ((_%var58046%_ _%$%hd5772958040%_)
                                      (_%parts58049%_ _%$%tl5773058043%_))
                                 (_%$%K5772858036%_
                                  _%parts58049%_
                                  _%var58046%_)))
                             (_%$%E5772757738%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%$%g5751957705%_
                                   (foldr (lambda (_%$%g5805158054%_
                                                   _%$%g5805258057%_)
                                            (cons _%$%g5805158054%_
                                                  _%$%g5805258057%_))
                                          '()
                                          _%$%g5751857703%_))))))
                (_%__kont9684696847%_
                 (lambda (_%$%g5754157604%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%$%g5761957622%_ _%$%g5762057625%_)
                                  (cons _%$%g5761957622%_ _%$%g5762057625%_))
                                '()
                                _%$%g5754157604%_)))))
            (let* ((_%__match9692296923%_
                    (lambda (_%$%e5754257566%_
                             _%$%hd5754357570%_
                             _%$%tl5754457573%_
                             _%__splice9684896849%_
                             _%$%target5754557576%_
                             _%$%tl5754757579%_)
                      (letrec ((_%$%loop5754857582%_
                                (lambda (_%$%hd5754657586%_
                                         _%$%arg5755257589%_)
                                  (if (gx#stx-pair? _%$%hd5754657586%_)
                                      (let ((_%$%e5754957591%_
                                             (gx#syntax-e _%$%hd5754657586%_)))
                                        (let ((_%$%lp-tl5755157598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5754957591%_)))
                                              (_%$%lp-hd5755057595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5754957591%_))))
                                          (_%$%loop5754857582%_
                                           _%$%lp-tl5755157598%_
                                           (cons _%$%lp-hd5755057595%_
                                                 _%$%arg5755257589%_))))
                                      (let ((_%$%arg5755357601%_
                                             (reverse _%$%arg5755257589%_)))
                                        (_%__kont9684696847%_
                                         _%$%arg5755357601%_))))))
                        (_%$%loop5754857582%_ _%$%target5754557576%_ '()))))
                   (_%__match9690896909%_
                    (lambda (_%$%e5752057635%_
                             _%$%hd5752157639%_
                             _%$%tl5752257642%_
                             _%$%e5752357645%_
                             _%$%hd5752457649%_
                             _%$%tl5752557652%_
                             _%$%e5752657655%_
                             _%$%hd5752757659%_
                             _%$%tl5752857662%_
                             _%$%e5752957665%_
                             _%$%hd5753057669%_
                             _%$%tl5753157672%_
                             _%__splice9684496845%_
                             _%$%target5753257675%_
                             _%$%tl5753457678%_)
                      (letrec ((_%$%loop5753557681%_
                                (lambda (_%$%hd5753357685%_
                                         _%$%rand5753957688%_)
                                  (if (gx#stx-pair? _%$%hd5753357685%_)
                                      (let ((_%$%e5753657690%_
                                             (gx#syntax-e _%$%hd5753357685%_)))
                                        (let ((_%$%lp-tl5753857697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5753657690%_)))
                                              (_%$%lp-hd5753757694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5753657690%_))))
                                          (_%$%loop5753557681%_
                                           _%$%lp-tl5753857697%_
                                           (cons _%$%lp-hd5753757694%_
                                                 _%$%rand5753957688%_))))
                                      (let ((_%$%rand5754057700%_
                                             (reverse _%$%rand5753957688%_)))
                                        (_%__kont9684296843%_
                                         _%$%rand5754057700%_
                                         _%$%hd5753057669%_))))))
                        (_%$%loop5753557681%_ _%$%target5753257675%_ '()))))
                   (_%__match9688296883%_
                    (lambda (_%$%e5752057635%_
                             _%$%hd5752157639%_
                             _%$%tl5752257642%_
                             _%$%e5752357645%_
                             _%$%hd5752457649%_
                             _%$%tl5752557652%_)
                      (if (gx#stx-pair? _%$%hd5752457649%_)
                          (let ((_%$%e5752657655%_
                                 (gx#syntax-e _%$%hd5752457649%_)))
                            (let ((_%$%tl5752857662%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5752657655%_)))
                                  (_%$%hd5752757659%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5752657655%_))))
                              (if (gx#identifier? _%$%hd5752757659%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102613_|
                                       _%$%hd5752757659%_)
                                      (if (gx#stx-pair? _%$%tl5752857662%_)
                                          (let ((_%$%e5752957665%_
                                                 (gx#syntax-e
                                                  _%$%tl5752857662%_)))
                                            (let ((_%$%tl5753157672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5752957665%_)))
                                                  (_%$%hd5753057669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5752957665%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5753157672%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5752557652%_)
                                                      (let ((_%__splice9684496845%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5752557652%_
                                                              '0)))
                                                        (let ((_%$%tl5753457678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9684496845%_ '1)))
                      (_%$%target5753257675%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9684496845%_ '0))))
                  (if (gx#stx-null? _%$%tl5753457678%_)
                      (_%__match9690896909%_
                       _%$%e5752057635%_
                       _%$%hd5752157639%_
                       _%$%tl5752257642%_
                       _%$%e5752357645%_
                       _%$%hd5752457649%_
                       _%$%tl5752557652%_
                       _%$%e5752657655%_
                       _%$%hd5752757659%_
                       _%$%tl5752857662%_
                       _%$%e5752957665%_
                       _%$%hd5753057669%_
                       _%$%tl5753157672%_
                       _%__splice9684496845%_
                       _%$%target5753257675%_
                       _%$%tl5753457678%_)
                      (if (gx#stx-pair/null? _%$%tl5752257642%_)
                          (let ((_%__splice9684896849%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5752257642%_
                                  '0)))
                            (let ((_%$%tl5754757579%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9684896849%_ '1)))
                                  (_%$%target5754557576%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9684896849%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5754757579%_)
                                  (_%__match9692296923%_
                                   _%$%e5752057635%_
                                   _%$%hd5752157639%_
                                   _%$%tl5752257642%_
                                   _%__splice9684896849%_
                                   _%$%target5754557576%_
                                   _%$%tl5754757579%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5749957559%_)))))
                          (let () (declare (not safe)) (_%$%g5749957559%_))))))
              (if (gx#stx-pair/null? _%$%tl5752257642%_)
                  (let ((_%__splice9684896849%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5752257642%_
                          '0)))
                    (let ((_%$%tl5754757579%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9684896849%_ '1)))
                          (_%$%target5754557576%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9684896849%_ '0))))
                      (if (gx#stx-null? _%$%tl5754757579%_)
                          (_%__match9692296923%_
                           _%$%e5752057635%_
                           _%$%hd5752157639%_
                           _%$%tl5752257642%_
                           _%__splice9684896849%_
                           _%$%target5754557576%_
                           _%$%tl5754757579%_)
                          (let () (declare (not safe)) (_%$%g5749957559%_)))))
                  (let () (declare (not safe)) (_%$%g5749957559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5752257642%_)
                                                      (let ((_%__splice9684896849%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5752257642%_
                                                              '0)))
                                                        (let ((_%$%tl5754757579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9684896849%_ '1)))
                      (_%$%target5754557576%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9684896849%_ '0))))
                  (if (gx#stx-null? _%$%tl5754757579%_)
                      (_%__match9692296923%_
                       _%$%e5752057635%_
                       _%$%hd5752157639%_
                       _%$%tl5752257642%_
                       _%__splice9684896849%_
                       _%$%target5754557576%_
                       _%$%tl5754757579%_)
                      (let () (declare (not safe)) (_%$%g5749957559%_)))))
              (let () (declare (not safe)) (_%$%g5749957559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5752257642%_)
                                              (let ((_%__splice9684896849%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5752257642%_
                                                      '0)))
                                                (let ((_%$%tl5754757579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9684896849%_
                                                          '1)))
                                                      (_%$%target5754557576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9684896849%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5754757579%_)
                                                      (_%__match9692296923%_
                                                       _%$%e5752057635%_
                                                       _%$%hd5752157639%_
                                                       _%$%tl5752257642%_
                                                       _%__splice9684896849%_
                                                       _%$%target5754557576%_
                                                       _%$%tl5754757579%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5749957559%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5749957559%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5752257642%_)
                                          (let ((_%__splice9684896849%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5752257642%_
                                                  '0)))
                                            (let ((_%$%tl5754757579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9684896849%_
                                                      '1)))
                                                  (_%$%target5754557576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9684896849%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5754757579%_)
                                                  (_%__match9692296923%_
                                                   _%$%e5752057635%_
                                                   _%$%hd5752157639%_
                                                   _%$%tl5752257642%_
                                                   _%__splice9684896849%_
                                                   _%$%target5754557576%_
                                                   _%$%tl5754757579%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5749957559%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5749957559%_))))
                                  (if (gx#stx-pair/null? _%$%tl5752257642%_)
                                      (let ((_%__splice9684896849%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5752257642%_
                                              '0)))
                                        (let ((_%$%tl5754757579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9684896849%_
                                                  '1)))
                                              (_%$%target5754557576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9684896849%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5754757579%_)
                                              (_%__match9692296923%_
                                               _%$%e5752057635%_
                                               _%$%hd5752157639%_
                                               _%$%tl5752257642%_
                                               _%__splice9684896849%_
                                               _%$%target5754557576%_
                                               _%$%tl5754757579%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5749957559%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5749957559%_))))))
                          (if (gx#stx-pair/null? _%$%tl5752257642%_)
                              (let ((_%__splice9684896849%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5752257642%_
                                      '0)))
                                (let ((_%$%tl5754757579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9684896849%_
                                          '1)))
                                      (_%$%target5754557576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9684896849%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5754757579%_)
                                      (_%__match9692296923%_
                                       _%$%e5752057635%_
                                       _%$%hd5752157639%_
                                       _%$%tl5752257642%_
                                       _%__splice9684896849%_
                                       _%$%target5754557576%_
                                       _%$%tl5754757579%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5749957559%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5749957559%_))))))
                   (_%__match9687096871%_
                    (lambda (_%$%e5750358067%_
                             _%$%hd5750458071%_
                             _%$%tl5750558074%_
                             _%$%e5750658077%_
                             _%$%hd5750758081%_
                             _%$%tl5750858084%_
                             _%__splice9684096841%_
                             _%$%target5750958087%_
                             _%$%tl5751158090%_)
                      (letrec ((_%$%loop5751258093%_
                                (lambda (_%$%hd5751058097%_
                                         _%$%rand5751658100%_)
                                  (if (gx#stx-pair? _%$%hd5751058097%_)
                                      (let ((_%$%e5751358102%_
                                             (gx#syntax-e _%$%hd5751058097%_)))
                                        (let ((_%$%lp-tl5751558109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5751358102%_)))
                                              (_%$%lp-hd5751458106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5751358102%_))))
                                          (_%$%loop5751258093%_
                                           _%$%lp-tl5751558109%_
                                           (cons _%$%lp-hd5751458106%_
                                                 _%$%rand5751658100%_))))
                                      (let ((_%$%rand5751758112%_
                                             (reverse _%$%rand5751658100%_)))
                                        (let ((_%$%g5750158115%_
                                               _%$%rand5751758112%_)
                                              (_%$%g5750258117%_
                                               _%$%hd5750758081%_))
                                          (if (gx#identifier?
                                               _%$%g5750258117%_)
                                              (_%__kont9683896839%_
                                               _%$%g5750158115%_
                                               _%$%g5750258117%_)
                                              (_%__match9688296883%_
                                               _%$%e5750358067%_
                                               _%$%hd5750458071%_
                                               _%$%tl5750558074%_
                                               _%$%e5750658077%_
                                               _%$%hd5750758081%_
                                               _%$%tl5750858084%_))))))))
                        (_%$%loop5751258093%_ _%$%target5750958087%_ '())))))
              (if (gx#stx-pair? _%__stx9683596836%_)
                  (let ((_%$%e5750358067%_ (gx#syntax-e _%__stx9683596836%_)))
                    (let ((_%$%tl5750558074%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5750358067%_)))
                          (_%$%hd5750458071%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5750358067%_))))
                      (if (gx#stx-pair? _%$%tl5750558074%_)
                          (let ((_%$%e5750658077%_
                                 (gx#syntax-e _%$%tl5750558074%_)))
                            (let ((_%$%tl5750858084%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5750658077%_)))
                                  (_%$%hd5750758081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5750658077%_))))
                              (if (gx#stx-pair/null? _%$%tl5750858084%_)
                                  (let ((_%__splice9684096841%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5750858084%_
                                          '0)))
                                    (let ((_%$%tl5751158090%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9684096841%_
                                              '1)))
                                          (_%$%target5750958087%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9684096841%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5751158090%_)
                                          (_%__match9687096871%_
                                           _%$%e5750358067%_
                                           _%$%hd5750458071%_
                                           _%$%tl5750558074%_
                                           _%$%e5750658077%_
                                           _%$%hd5750758081%_
                                           _%$%tl5750858084%_
                                           _%__splice9684096841%_
                                           _%$%target5750958087%_
                                           _%$%tl5751158090%_)
                                          (if (gx#stx-pair? _%$%hd5750758081%_)
                                              (let ((_%$%e5752657655%_
                                                     (gx#syntax-e
                                                      _%$%hd5750758081%_)))
                                                (let ((_%$%tl5752857662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5752657655%_)))
                                                      (_%$%hd5752757659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5752657655%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5752757659%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102613_|
                                                           _%$%hd5752757659%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5752857662%_)
                                                              (let ((_%$%e5752957665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5752857662%_)))
                        (let ((_%$%tl5753157672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5752957665%_)))
                              (_%$%hd5753057669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5752957665%_))))
                          (if (gx#stx-pair/null? _%$%tl5750558074%_)
                              (let ((_%__splice9684896849%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5750558074%_
                                      '0)))
                                (let ((_%$%tl5754757579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9684896849%_
                                          '1)))
                                      (_%$%target5754557576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9684896849%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5754757579%_)
                                      (_%__match9692296923%_
                                       _%$%e5750358067%_
                                       _%$%hd5750458071%_
                                       _%$%tl5750558074%_
                                       _%__splice9684896849%_
                                       _%$%target5754557576%_
                                       _%$%tl5754757579%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5749957559%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5749957559%_)))))
                      (if (gx#stx-pair/null? _%$%tl5750558074%_)
                          (let ((_%__splice9684896849%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5750558074%_
                                  '0)))
                            (let ((_%$%tl5754757579%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9684896849%_ '1)))
                                  (_%$%target5754557576%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9684896849%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5754757579%_)
                                  (_%__match9692296923%_
                                   _%$%e5750358067%_
                                   _%$%hd5750458071%_
                                   _%$%tl5750558074%_
                                   _%__splice9684896849%_
                                   _%$%target5754557576%_
                                   _%$%tl5754757579%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5749957559%_)))))
                          (let () (declare (not safe)) (_%$%g5749957559%_))))
                  (if (gx#stx-pair/null? _%$%tl5750558074%_)
                      (let ((_%__splice9684896849%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5750558074%_
                              '0)))
                        (let ((_%$%tl5754757579%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9684896849%_ '1)))
                              (_%$%target5754557576%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9684896849%_ '0))))
                          (if (gx#stx-null? _%$%tl5754757579%_)
                              (_%__match9692296923%_
                               _%$%e5750358067%_
                               _%$%hd5750458071%_
                               _%$%tl5750558074%_
                               _%__splice9684896849%_
                               _%$%target5754557576%_
                               _%$%tl5754757579%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5749957559%_)))))
                      (let () (declare (not safe)) (_%$%g5749957559%_))))
              (if (gx#stx-pair/null? _%$%tl5750558074%_)
                  (let ((_%__splice9684896849%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5750558074%_
                          '0)))
                    (let ((_%$%tl5754757579%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9684896849%_ '1)))
                          (_%$%target5754557576%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9684896849%_ '0))))
                      (if (gx#stx-null? _%$%tl5754757579%_)
                          (_%__match9692296923%_
                           _%$%e5750358067%_
                           _%$%hd5750458071%_
                           _%$%tl5750558074%_
                           _%__splice9684896849%_
                           _%$%target5754557576%_
                           _%$%tl5754757579%_)
                          (let () (declare (not safe)) (_%$%g5749957559%_)))))
                  (let () (declare (not safe)) (_%$%g5749957559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5750558074%_)
                                                  (let ((_%__splice9684896849%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5750558074%_
                                                          '0)))
                                                    (let ((_%$%tl5754757579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9684896849%_
                                                              '1)))
                                                          (_%$%target5754557576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9684896849%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5754757579%_)
                                                          (_%__match9692296923%_
                                                           _%$%e5750358067%_
                                                           _%$%hd5750458071%_
                                                           _%$%tl5750558074%_
                                                           _%__splice9684896849%_
                                                           _%$%target5754557576%_
                                                           _%$%tl5754757579%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5749957559%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5749957559%_)))))))
                                  (if (gx#stx-pair? _%$%hd5750758081%_)
                                      (let ((_%$%e5752657655%_
                                             (gx#syntax-e _%$%hd5750758081%_)))
                                        (let ((_%$%tl5752857662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5752657655%_)))
                                              (_%$%hd5752757659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5752657655%_))))
                                          (if (gx#identifier?
                                               _%$%hd5752757659%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g102613_|
                                                   _%$%hd5752757659%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5752857662%_)
                                                      (let ((_%$%e5752957665%_
                                                             (gx#syntax-e
                                                              _%$%tl5752857662%_)))
                                                        (let ((_%$%tl5753157672%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5752957665%_)))
                      (_%$%hd5753057669%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5752957665%_))))
                  (if (gx#stx-pair/null? _%$%tl5750558074%_)
                      (let ((_%__splice9684896849%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5750558074%_
                              '0)))
                        (let ((_%$%tl5754757579%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9684896849%_ '1)))
                              (_%$%target5754557576%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9684896849%_ '0))))
                          (if (gx#stx-null? _%$%tl5754757579%_)
                              (_%__match9692296923%_
                               _%$%e5750358067%_
                               _%$%hd5750458071%_
                               _%$%tl5750558074%_
                               _%__splice9684896849%_
                               _%$%target5754557576%_
                               _%$%tl5754757579%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5749957559%_)))))
                      (let () (declare (not safe)) (_%$%g5749957559%_)))))
              (if (gx#stx-pair/null? _%$%tl5750558074%_)
                  (let ((_%__splice9684896849%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5750558074%_
                          '0)))
                    (let ((_%$%tl5754757579%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9684896849%_ '1)))
                          (_%$%target5754557576%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9684896849%_ '0))))
                      (if (gx#stx-null? _%$%tl5754757579%_)
                          (_%__match9692296923%_
                           _%$%e5750358067%_
                           _%$%hd5750458071%_
                           _%$%tl5750558074%_
                           _%__splice9684896849%_
                           _%$%target5754557576%_
                           _%$%tl5754757579%_)
                          (let () (declare (not safe)) (_%$%g5749957559%_)))))
                  (let () (declare (not safe)) (_%$%g5749957559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5750558074%_)
                                                      (let ((_%__splice9684896849%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5750558074%_
                                                              '0)))
                                                        (let ((_%$%tl5754757579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9684896849%_ '1)))
                      (_%$%target5754557576%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9684896849%_ '0))))
                  (if (gx#stx-null? _%$%tl5754757579%_)
                      (_%__match9692296923%_
                       _%$%e5750358067%_
                       _%$%hd5750458071%_
                       _%$%tl5750558074%_
                       _%__splice9684896849%_
                       _%$%target5754557576%_
                       _%$%tl5754757579%_)
                      (let () (declare (not safe)) (_%$%g5749957559%_)))))
              (let () (declare (not safe)) (_%$%g5749957559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5750558074%_)
                                                  (let ((_%__splice9684896849%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5750558074%_
                                                          '0)))
                                                    (let ((_%$%tl5754757579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9684896849%_
                                                              '1)))
                                                          (_%$%target5754557576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9684896849%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5754757579%_)
                                                          (_%__match9692296923%_
                                                           _%$%e5750358067%_
                                                           _%$%hd5750458071%_
                                                           _%$%tl5750558074%_
                                                           _%__splice9684896849%_
                                                           _%$%target5754557576%_
                                                           _%$%tl5754757579%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5749957559%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5749957559%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5750558074%_)
                                          (let ((_%__splice9684896849%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5750558074%_
                                                  '0)))
                                            (let ((_%$%tl5754757579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9684896849%_
                                                      '1)))
                                                  (_%$%target5754557576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9684896849%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5754757579%_)
                                                  (_%__match9692296923%_
                                                   _%$%e5750358067%_
                                                   _%$%hd5750458071%_
                                                   _%$%tl5750558074%_
                                                   _%__splice9684896849%_
                                                   _%$%target5754557576%_
                                                   _%$%tl5754757579%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5749957559%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5749957559%_)))))))
                          (if (gx#stx-pair/null? _%$%tl5750558074%_)
                              (let ((_%__splice9684896849%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5750558074%_
                                      '0)))
                                (let ((_%$%tl5754757579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9684896849%_
                                          '1)))
                                      (_%$%target5754557576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9684896849%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5754757579%_)
                                      (_%__match9692296923%_
                                       _%$%e5750358067%_
                                       _%$%hd5750458071%_
                                       _%$%tl5750558074%_
                                       _%__splice9684896849%_
                                       _%$%target5754557576%_
                                       _%$%tl5754757579%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5749957559%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5749957559%_))))))
                  (let () (declare (not safe)) (_%$%g5749957559%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx58149%_)
        (let* ((_%__stx9692596926%_ _%stx58149%_)
               (_%$%g5815358174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9692596926%_))))
          (let ((_%__kont9692896929%_
                 (lambda (_%$%g5815558242%_)
                   (let* ((_%$%g5825458261%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx58149%_
                            _%$%g5815558242%_))
                          (_%$%E5825658267%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5825458261%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5825758483%_
                           (lambda (_%parts58271%_ _%var58273%_)
                             (let ((_%$e58275%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var58273%_))))
                               (if _%$e58275%_
                                   (let _%loop58282%_ ((_%parts58285%_
                                                        _%parts58271%_)
                                                       (_%type58287%_
                                                        (##direct-structure-ref
                                                         _%$e58275%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object58288%_
                                                        _%var58273%_)
                                                       (_%nil-check?58289%_
                                                        '#f))
                                     (let* ((_%$%parts5829058298%_
                                             _%parts58285%_)
                                            (_%$%else5829258310%_
                                             (lambda () _%object58288%_))
                                            (_%$%K5829458465%_
                                             (lambda (_%rest58314%_
                                                      _%part58316%_)
                                               (if (and (not _%nil-check?58289%_)
                                                        (let ((__tmp102614
                                                               (symbol->string
                                                                _%part58316%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp102614)))
                                                   (let ((_%str58320%_
                                                          (symbol->string
                                                           _%part58316%_)))
                                                     (_%loop58282%_
                                                      (cons (let ((__tmp102615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str58320%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str58320%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp102615))
                    _%rest58314%_)
              _%type58287%_
              _%object58288%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type58287%_))
                                                       (let* ((_%$%g5832558340%_
                                                               (lambda (_%$%g5832658336%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5832658336%_)))
                      (_%$%g5832458457%_
                       (lambda (_%$%g5832658344%_)
                         (if (gx#stx-pair? _%$%g5832658344%_)
                             (let ((_%$%e5832958347%_
                                    (gx#syntax-e _%$%g5832658344%_)))
                               (let ((_%$%hd5833058351%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5832958347%_)))
                                     (_%$%tl5833158354%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5832958347%_))))
                                 (if (gx#stx-pair? _%$%tl5833158354%_)
                                     (let ((_%$%e5833258357%_
                                            (gx#syntax-e _%$%tl5833158354%_)))
                                       (let ((_%$%hd5833358361%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5833258357%_)))
                                             (_%$%tl5833458364%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5833258357%_))))
                                         (if (gx#stx-null? _%$%tl5833458364%_)
                                             (if (null? _%rest58314%_)
                                                 (let ((_%$e58399%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type58287%_
                                                         _%part58316%_)))
                                                   (if _%$e58399%_
                                                       (let* ((_%$%g5840658414%_
                                                               (lambda (_%$%g5840758410%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5840758410%_)))
                      (_%$%g5840558437%_
                       (lambda (_%$%g5840758418%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%$%g5840758418%_ '()))
                                     (cons (cons _%$%hd5833358361%_
                                                 (cons _%$%hd5833058351%_ '()))
                                           '()))))))
                 (_%$%g5840558437%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx58149%_
                     _%$e58399%_))))
               (if _%nil-check?58289%_
                   (cons _%$%hd5833358361%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%$%hd5833058351%_ '()))
                               '()))
                   (cons _%$%hd5833358361%_ (cons _%$%hd5833058351%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e58445%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type58287%_
                                                         _%part58316%_)))
                                                   (if _%$e58445%_
                                                       (let ((_%type58452%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx58149%_
                         _%$e58445%_))))
                 (if _%nil-check?58289%_
                     (_%loop58282%_
                      _%rest58314%_
                      _%type58452%_
                      (cons _%$%hd5833358361%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%hd5833058351%_ '()))
                                  '()))
                      '#f)
                     (_%loop58282%_
                      _%rest58314%_
                      _%type58452%_
                      (cons _%$%hd5833358361%_ (cons _%$%hd5833058351%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx58149%_
                _%$%g5815558242%_
                _%part58316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g5832558340%_
                                              _%$%g5832658344%_))))
                                     (_%$%g5832558340%_ _%$%g5832658344%_))))
                             (_%$%g5832558340%_ _%$%g5832658344%_)))))
                 (_%$%g5832458457%_
                  (list (if _%nil-check?58289%_
                            (cons 'check-nil! (cons _%object58288%_ '()))
                            _%object58288%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx58149%_
                         _%type58287%_
                         _%part58316%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type58287%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots"
                    _%stx58149%_
                    _%$%g5815558242%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx58149%_
                    _%type58287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5829058298%_)
                                           (let ((_%$%hd5829558469%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5829058298%_)))
                                                 (_%$%tl5829658472%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5829058298%_))))
                                             (let* ((_%part58475%_
                                                     _%$%hd5829558469%_)
                                                    (_%rest58478%_
                                                     _%$%tl5829658472%_))
                                               (_%$%K5829458465%_
                                                _%rest58478%_
                                                _%part58475%_)))
                                           (_%$%else5829258310%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%$%g5815558242%_ '())))))))
                     (if (pair? _%$%g5825458261%_)
                         (let ((_%$%hd5825858487%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5825458261%_)))
                               (_%$%tl5825958490%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5825458261%_))))
                           (let* ((_%var58493%_ _%$%hd5825858487%_)
                                  (_%parts58496%_ _%$%tl5825958490%_))
                             (_%$%K5825758483%_ _%parts58496%_ _%var58493%_)))
                         (_%$%E5825658267%_)))))
                (_%__kont9693096931%_
                 (lambda (_%$%g5816258201%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%$%g5816258201%_ '())))))
            (let ((_%__match9694696947%_
                   (lambda (_%$%e5815658222%_
                            _%$%hd5815758226%_
                            _%$%tl5815858229%_
                            _%$%e5815958232%_
                            _%$%hd5816058236%_
                            _%$%tl5816158239%_)
                     (let ((_%$%g5815558242%_ _%$%hd5816058236%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5815558242%_)
                           (_%__kont9692896929%_ _%$%g5815558242%_)
                           (_%__kont9693096931%_ _%$%hd5816058236%_))))))
              (if (gx#stx-pair? _%__stx9692596926%_)
                  (let ((_%$%e5815658222%_ (gx#syntax-e _%__stx9692596926%_)))
                    (let ((_%$%tl5815858229%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5815658222%_)))
                          (_%$%hd5815758226%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5815658222%_))))
                      (if (gx#stx-pair? _%$%tl5815858229%_)
                          (let ((_%$%e5815958232%_
                                 (gx#syntax-e _%$%tl5815858229%_)))
                            (let ((_%$%tl5816158239%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5815958232%_)))
                                  (_%$%hd5816058236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5815958232%_))))
                              (if (gx#stx-null? _%$%tl5816158239%_)
                                  (_%__match9694696947%_
                                   _%$%e5815658222%_
                                   _%$%hd5815758226%_
                                   _%$%tl5815858229%_
                                   _%$%e5815958232%_
                                   _%$%hd5816058236%_
                                   _%$%tl5816158239%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5815358174%_)))))
                          (let () (declare (not safe)) (_%$%g5815358174%_)))))
                  (let () (declare (not safe)) (_%$%g5815358174%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx58503%_)
        (let* ((_%__stx9696396964%_ _%stx58503%_)
               (_%$%g5850758536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9696396964%_))))
          (let ((_%__kont9696696967%_
                 (lambda (_%$%g5850958628%_ _%$%g5851058630%_)
                   (let* ((_%$%g5864458651%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx58503%_
                            _%$%g5851058630%_))
                          (_%$%E5864658657%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5864458651%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5864758887%_
                           (lambda (_%parts58661%_ _%var58663%_)
                             (let ((_%$e58665%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var58663%_))))
                               (if _%$e58665%_
                                   (let _%loop58672%_ ((_%parts58675%_
                                                        _%parts58661%_)
                                                       (_%type58677%_
                                                        (##direct-structure-ref
                                                         _%$e58665%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object58678%_
                                                        _%var58663%_)
                                                       (_%checked-mutator?58679%_
                                                        (##direct-structure-ref
                                                         _%$e58665%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?58680%_
                                                        '#f))
                                     (let* ((_%$%parts5868158688%_
                                             _%parts58675%_)
                                            (_%$%E5868358694%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%parts5868158688%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%$%K5868458869%_
                                             (lambda (_%rest58698%_
                                                      _%part58700%_)
                                               (if (and (not _%nil-check?58680%_)
                                                        (let ((__tmp102616
                                                               (symbol->string
                                                                _%part58700%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp102616)))
                                                   (let ((_%str58704%_
                                                          (symbol->string
                                                           _%part58700%_)))
                                                     (_%loop58672%_
                                                      (cons (let ((__tmp102617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str58704%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str58704%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp102617))
                    _%rest58698%_)
              _%type58677%_
              _%object58678%_
              _%checked-mutator?58679%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type58677%_))
                                                       (if (null? _%rest58698%_)
                                                           (let* ((_%$%g5871158726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g5871258722%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5871258722%_)))
                          (_%$%g5871058783%_
                           (lambda (_%$%g5871258730%_)
                             (if (gx#stx-pair? _%$%g5871258730%_)
                                 (let ((_%$%e5871558733%_
                                        (gx#syntax-e _%$%g5871258730%_)))
                                   (let ((_%$%hd5871658737%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5871558733%_)))
                                         (_%$%tl5871758740%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5871558733%_))))
                                     (if (gx#stx-pair? _%$%tl5871758740%_)
                                         (let ((_%$%e5871858743%_
                                                (gx#syntax-e
                                                 _%$%tl5871758740%_)))
                                           (let ((_%$%hd5871958747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5871858743%_)))
                                                 (_%$%tl5872058750%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5871858743%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5872058750%_)
                                                 (if _%nil-check?58680%_
                                                     (cons _%$%hd5871958747%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%hd5871658737%_ '()))
                         (cons _%$%g5850958628%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%hd5871958747%_
                                                           (cons _%$%hd5871658737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g5850958628%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5871158726%_
                                                  _%$%g5871258730%_))))
                                         (_%$%g5871158726%_
                                          _%$%g5871258730%_))))
                                 (_%$%g5871158726%_ _%$%g5871258730%_)))))
                     (_%$%g5871058783%_
                      (list _%object58678%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx58503%_
                             _%type58677%_
                             _%part58700%_
                             (if _%checked-mutator?58679%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type58677%_
                                  _%part58700%_)
                                 '#f)))))
                   (let ((_%$e58787%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type58677%_
                           _%part58700%_)))
                     (if _%$e58787%_
                         (let* ((_%next-type58794%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx58503%_
                                    _%$e58787%_)))
                                (_%$%g5879758812%_
                                 (lambda (_%$%g5879858808%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5879858808%_)))
                                (_%$%g5879658859%_
                                 (lambda (_%$%g5879858816%_)
                                   (if (gx#stx-pair? _%$%g5879858816%_)
                                       (let ((_%$%e5880158819%_
                                              (gx#syntax-e _%$%g5879858816%_)))
                                         (let ((_%$%hd5880258823%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5880158819%_)))
                                               (_%$%tl5880358826%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5880158819%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5880358826%_)
                                               (let ((_%$%e5880458829%_
                                                      (gx#syntax-e
                                                       _%$%tl5880358826%_)))
                                                 (let ((_%$%hd5880558833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5880458829%_)))
                                                       (_%$%tl5880658836%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5880458829%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5880658836%_)
                                                       (_%loop58672%_
                                                        _%rest58698%_
                                                        _%next-type58794%_
                                                        (cons _%$%hd5880558833%_
                                                              (cons _%$%hd5880258823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type58677%_
                 _%part58700%_)
                '#f)
               (_%$%g5879758812%_ _%$%g5879858816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5879758812%_
                                                _%$%g5879858816%_))))
                                       (_%$%g5879758812%_
                                        _%$%g5879858816%_)))))
                           (_%$%g5879658859%_
                            (list (if _%nil-check?58680%_
                                      (cons 'check-nil!
                                            (cons _%object58678%_ '()))
                                      _%object58678%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx58503%_
                                   _%type58677%_
                                   _%part58700%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted setter; unknown type for slot"
                          _%stx58503%_
                          _%$%g5851058630%_
                          _%part58700%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type58677%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted setter; interface has no slots"
                    _%stx58503%_
                    _%$%g5851058630%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx58503%_
                    _%type58677%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5868158688%_)
                                           (let ((_%$%hd5868558873%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5868158688%_)))
                                                 (_%$%tl5868658876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5868158688%_))))
                                             (let* ((_%part58879%_
                                                     _%$%hd5868558873%_)
                                                    (_%rest58882%_
                                                     _%$%tl5868658876%_))
                                               (_%$%K5868458869%_
                                                _%rest58882%_
                                                _%part58879%_)))
                                           (_%$%E5868358694%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx58503%_)))))))
                     (if (pair? _%$%g5864458651%_)
                         (let ((_%$%hd5864858891%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5864458651%_)))
                               (_%$%tl5864958894%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5864458651%_))))
                           (let* ((_%var58897%_ _%$%hd5864858891%_)
                                  (_%parts58900%_ _%$%tl5864958894%_))
                             (_%$%K5864758887%_ _%parts58900%_ _%var58897%_)))
                         (_%$%E5864658657%_)))))
                (_%__kont9696896969%_
                 (lambda (_%$%g5852058573%_ _%$%g5852158575%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx58503%_)))))
            (let ((_%__match9699096991%_
                   (lambda (_%$%e5851158598%_
                            _%$%hd5851258602%_
                            _%$%tl5851358605%_
                            _%$%e5851458608%_
                            _%$%hd5851558612%_
                            _%$%tl5851658615%_
                            _%$%e5851758618%_
                            _%$%hd5851858622%_
                            _%$%tl5851958625%_)
                     (let ((_%$%g5850958628%_ _%$%hd5851858622%_)
                           (_%$%g5851058630%_ _%$%hd5851558612%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5851058630%_)
                           (_%__kont9696696967%_
                            _%$%g5850958628%_
                            _%$%g5851058630%_)
                           (_%__kont9696896969%_
                            _%$%hd5851858622%_
                            _%$%hd5851558612%_))))))
              (if (gx#stx-pair? _%__stx9696396964%_)
                  (let ((_%$%e5851158598%_ (gx#syntax-e _%__stx9696396964%_)))
                    (let ((_%$%tl5851358605%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5851158598%_)))
                          (_%$%hd5851258602%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5851158598%_))))
                      (if (gx#stx-pair? _%$%tl5851358605%_)
                          (let ((_%$%e5851458608%_
                                 (gx#syntax-e _%$%tl5851358605%_)))
                            (let ((_%$%tl5851658615%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5851458608%_)))
                                  (_%$%hd5851558612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5851458608%_))))
                              (if (gx#stx-pair? _%$%tl5851658615%_)
                                  (let ((_%$%e5851758618%_
                                         (gx#syntax-e _%$%tl5851658615%_)))
                                    (let ((_%$%tl5851958625%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5851758618%_)))
                                          (_%$%hd5851858622%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5851758618%_))))
                                      (if (gx#stx-null? _%$%tl5851958625%_)
                                          (_%__match9699096991%_
                                           _%$%e5851158598%_
                                           _%$%hd5851258602%_
                                           _%$%tl5851358605%_
                                           _%$%e5851458608%_
                                           _%$%hd5851558612%_
                                           _%$%tl5851658615%_
                                           _%$%e5851758618%_
                                           _%$%hd5851858622%_
                                           _%$%tl5851958625%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5850758536%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5850758536%_)))))
                          (let () (declare (not safe)) (_%$%g5850758536%_)))))
                  (let () (declare (not safe)) (_%$%g5850758536%_))))))))))

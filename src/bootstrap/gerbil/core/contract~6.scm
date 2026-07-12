(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g102411_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102412_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102413_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102416_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102417_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102420_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102421_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102422_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102423_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102427_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102428_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102429_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102430_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102434_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx53085%_)
        (let* ((_%__stx9573795738%_ _%stx53085%_)
               (_%$%g5309453303%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9573795738%_))))
          (let ((_%__kont9574095741%_
                 (lambda (_%$%g5309654195%_
                          _%$%g5309754197%_
                          _%$%g5309854198%_
                          _%$%g5309954199%_
                          _%$%g5310054200%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5310054200%_
                                     (cons _%$%g5309954199%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5310054200%_
                                                       (cons _%$%g5309854198%_
                                                             (cons _%$%g5309754197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5424354246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5424454249%_)
                  (cons _%$%g5424354246%_ _%$%g5424454249%_))
                '()
                _%$%g5309654195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9574495745%_
                 (lambda (_%$%g5312854041%_
                          _%$%g5312954043%_
                          _%$%g5313054044%_
                          _%$%g5313154045%_
                          _%$%g5313254046%_
                          _%$%g5313354047%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5313354047%_
                                     (cons _%$%g5313254046%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5313354047%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%$%g5313154045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%$%g5313354047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g5313054044%_
                                       (cons _%$%g5312954043%_ '())))
                           (foldr (lambda (_%$%g5409154094%_ _%$%g5409254097%_)
                                    (cons _%$%g5409154094%_ _%$%g5409254097%_))
                                  '()
                                  _%$%g5312854041%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9574895749%_
                 (lambda (_%$%g5316753860%_
                          _%$%g5316853862%_
                          _%$%g5316953863%_
                          _%$%g5317053864%_)
                   (let ((_%meta53901%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53085%_
                             _%$%g5316853862%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta53901%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%$%g5317053864%_
                                           (cons _%$%g5316953863%_
                                                 (cons _%$%g5316853862%_ '())))
                                     (foldr (lambda (_%$%g5390553908%_
                                                     _%$%g5390653911%_)
                                              (cons _%$%g5390553908%_
                                                    _%$%g5390653911%_))
                                            '()
                                            _%$%g5316753860%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta53901%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%$%g5317053864%_
                                               (cons _%$%g5316953863%_
                                                     (cons _%$%g5316853862%_
                                                           '())))
                                         (foldr (lambda (_%$%g5391553918%_
                                                         _%$%g5391653921%_)
                                                  (cons _%$%g5391553918%_
                                                        _%$%g5391653921%_))
                                                '()
                                                _%$%g5316753860%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx53085%_
                              _%$%g5316853862%_
                              _%meta53901%_))))))
                (_%__kont9575295753%_
                 (lambda (_%$%g5319553740%_
                          _%$%g5319653742%_
                          _%$%g5319753743%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%$%g5319753743%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5319653742%_ '())))
                               (foldr (lambda (_%$%g5376653769%_
                                               _%$%g5376753772%_)
                                        (cons _%$%g5376653769%_
                                              _%$%g5376753772%_))
                                      '()
                                      _%$%g5319553740%_)))))
                (_%__kont9575695757%_
                 (lambda (_%$%g5322253600%_
                          _%$%g5322353602%_
                          _%$%g5322453603%_
                          _%$%g5322553604%_
                          _%$%g5322653605%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5322653605%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5322553604%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5322653605%_
                                                       (cons _%$%g5322453603%_
                                                             (cons _%$%g5322353602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5364653649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5364753652%_)
                  (cons _%$%g5364653649%_ _%$%g5364753652%_))
                '()
                _%$%g5322253600%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9576095761%_
                 (lambda (_%$%g5325753460%_
                          _%$%g5325853462%_
                          _%$%g5325953463%_
                          _%$%g5326053464%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5326053464%_ _%$%g5325953463%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%$%g5325853462%_
                                                 (foldr (lambda (_%$%g5348653489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5348753492%_)
                  (cons _%$%g5348653489%_ _%$%g5348753492%_))
                '()
                _%$%g5325753460%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9576495765%_
                 (lambda (_%$%g5328253358%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g5337653379%_
                                               _%$%g5337753382%_)
                                        (cons _%$%g5337653379%_
                                              _%$%g5337753382%_))
                                      '()
                                      _%$%g5328253358%_))))))
            (let* ((_%__match9607096071%_
                    (lambda (_%$%e5328353310%_
                             _%$%hd5328453314%_
                             _%$%tl5328553317%_
                             _%$%e5328653320%_
                             _%$%hd5328753324%_
                             _%$%tl5328853327%_
                             _%__splice9576695767%_
                             _%$%target5328953330%_
                             _%$%tl5329153333%_)
                      (letrec ((_%$%loop5329253336%_
                                (lambda (_%$%hd5329053340%_
                                         _%$%body5329653343%_)
                                  (if (gx#stx-pair? _%$%hd5329053340%_)
                                      (let ((_%$%e5329353345%_
                                             (gx#syntax-e _%$%hd5329053340%_)))
                                        (let ((_%$%lp-tl5329553352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5329353345%_)))
                                              (_%$%lp-hd5329453349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5329353345%_))))
                                          (_%$%loop5329253336%_
                                           _%$%lp-tl5329553352%_
                                           (cons _%$%lp-hd5329453349%_
                                                 _%$%body5329653343%_))))
                                      (let ((_%$%body5329753355%_
                                             (reverse _%$%body5329653343%_)))
                                        (_%__kont9576495765%_
                                         _%$%body5329753355%_))))))
                        (_%$%loop5329253336%_ _%$%target5328953330%_ '()))))
                   (_%__match9604896049%_
                    (lambda (_%$%e5326153392%_
                             _%$%hd5326253396%_
                             _%$%tl5326353399%_
                             _%$%e5326453402%_
                             _%$%hd5326553406%_
                             _%$%tl5326653409%_
                             _%$%e5326753412%_
                             _%$%hd5326853416%_
                             _%$%tl5326953419%_
                             _%$%e5327053422%_
                             _%$%hd5327153426%_
                             _%$%tl5327253429%_
                             _%__splice9576295763%_
                             _%$%target5327353432%_
                             _%$%tl5327553435%_)
                      (letrec ((_%$%loop5327653438%_
                                (lambda (_%$%hd5327453442%_
                                         _%$%body5328053445%_)
                                  (if (gx#stx-pair? _%$%hd5327453442%_)
                                      (let ((_%$%e5327753447%_
                                             (gx#syntax-e _%$%hd5327453442%_)))
                                        (let ((_%$%lp-tl5327953454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327753447%_)))
                                              (_%$%lp-hd5327853451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327753447%_))))
                                          (_%$%loop5327653438%_
                                           _%$%lp-tl5327953454%_
                                           (cons _%$%lp-hd5327853451%_
                                                 _%$%body5328053445%_))))
                                      (let ((_%$%body5328153457%_
                                             (reverse _%$%body5328053445%_)))
                                        (let ((_%$%g5325753460%_
                                               _%$%body5328153457%_)
                                              (_%$%g5325853462%_
                                               _%$%tl5326953419%_)
                                              (_%$%g5325953463%_
                                               _%$%tl5327253429%_)
                                              (_%$%g5326053464%_
                                               _%$%hd5327153426%_))
                                          (if (gx#identifier?
                                               _%$%g5326053464%_)
                                              (_%__kont9576095761%_
                                               _%$%g5325753460%_
                                               _%$%g5325853462%_
                                               _%$%g5325953463%_
                                               _%$%g5326053464%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_)))))))))
                        (_%$%loop5327653438%_ _%$%target5327353432%_ '()))))
                   (_%__match9603496035%_
                    (lambda (_%$%e5326153392%_
                             _%$%hd5326253396%_
                             _%$%tl5326353399%_
                             _%$%e5326453402%_
                             _%$%hd5326553406%_
                             _%$%tl5326653409%_
                             _%$%e5326753412%_
                             _%$%hd5326853416%_
                             _%$%tl5326953419%_)
                      (if (gx#stx-pair? _%$%hd5326853416%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5326853416%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (if (gx#stx-pair/null? _%$%tl5326653409%_)
                                  (let ((_%__splice9576295763%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5326653409%_
                                          '0)))
                                    (let ((_%$%tl5327553435%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '1)))
                                          (_%$%target5327353432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327553435%_)
                                          (_%__match9604896049%_
                                           _%$%e5326153392%_
                                           _%$%hd5326253396%_
                                           _%$%tl5326353399%_
                                           _%$%e5326453402%_
                                           _%$%hd5326553406%_
                                           _%$%tl5326653409%_
                                           _%$%e5326753412%_
                                           _%$%hd5326853416%_
                                           _%$%tl5326953419%_
                                           _%$%e5327053422%_
                                           _%$%hd5327153426%_
                                           _%$%tl5327253429%_
                                           _%__splice9576295763%_
                                           _%$%target5327353432%_
                                           _%$%tl5327553435%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                   (_%__match9601696017%_
                    (lambda (_%$%e5322753502%_
                             _%$%hd5322853506%_
                             _%$%tl5322953509%_
                             _%$%e5323053512%_
                             _%$%hd5323153516%_
                             _%$%tl5323253519%_
                             _%$%e5323353522%_
                             _%$%hd5323453526%_
                             _%$%tl5323553529%_
                             _%$%e5323653532%_
                             _%$%hd5323753536%_
                             _%$%tl5323853539%_
                             _%$%e5323953542%_
                             _%$%hd5324053546%_
                             _%$%tl5324153549%_
                             _%$%e5324253552%_
                             _%$%hd5324353556%_
                             _%$%tl5324453559%_
                             _%$%e5324553562%_
                             _%$%hd5324653566%_
                             _%$%tl5324753569%_
                             _%__splice9575895759%_
                             _%$%target5324853572%_
                             _%$%tl5325053575%_)
                      (letrec ((_%$%loop5325153578%_
                                (lambda (_%$%hd5324953582%_
                                         _%$%body5325553585%_)
                                  (if (gx#stx-pair? _%$%hd5324953582%_)
                                      (let ((_%$%e5325253587%_
                                             (gx#syntax-e _%$%hd5324953582%_)))
                                        (let ((_%$%lp-tl5325453594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5325253587%_)))
                                              (_%$%lp-hd5325353591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5325253587%_))))
                                          (_%$%loop5325153578%_
                                           _%$%lp-tl5325453594%_
                                           (cons _%$%lp-hd5325353591%_
                                                 _%$%body5325553585%_))))
                                      (let ((_%$%body5325653597%_
                                             (reverse _%$%body5325553585%_)))
                                        (let ((_%$%g5322253600%_
                                               _%$%body5325653597%_)
                                              (_%$%g5322353602%_
                                               _%$%hd5324653566%_)
                                              (_%$%g5322453603%_
                                               _%$%hd5324353556%_)
                                              (_%$%g5322553604%_
                                               _%$%hd5324053546%_)
                                              (_%$%g5322653605%_
                                               _%$%hd5323453526%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5322653605%_)
                                                   (gx#identifier?
                                                    _%$%g5322353602%_)
                                                   (gx#identifier?
                                                    _%$%g5322453603%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5322453603%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5322453603%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5322453603%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5322453603%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9575695757%_
                                               _%$%g5322253600%_
                                               _%$%g5322353602%_
                                               _%$%g5322453603%_
                                               _%$%g5322553604%_
                                               _%$%g5322653605%_)
                                              (_%__match9603496035%_
                                               _%$%e5322753502%_
                                               _%$%hd5322853506%_
                                               _%$%tl5322953509%_
                                               _%$%e5323053512%_
                                               _%$%hd5323153516%_
                                               _%$%tl5323253519%_
                                               _%$%e5323353522%_
                                               _%$%hd5323453526%_
                                               _%$%tl5323553529%_))))))))
                        (_%$%loop5325153578%_ _%$%target5324853572%_ '()))))
                   (_%__match9596095961%_
                    (lambda (_%$%e5319853662%_
                             _%$%hd5319953666%_
                             _%$%tl5320053669%_
                             _%$%e5320153672%_
                             _%$%hd5320253676%_
                             _%$%tl5320353679%_
                             _%$%e5320453682%_
                             _%$%hd5320553686%_
                             _%$%tl5320653689%_
                             _%$%e5320753692%_
                             _%$%hd5320853696%_
                             _%$%tl5320953699%_
                             _%$%e5321053702%_
                             _%$%hd5321153706%_
                             _%$%tl5321253709%_
                             _%__splice9575495755%_
                             _%$%target5321353712%_
                             _%$%tl5321553715%_)
                      (letrec ((_%$%loop5321653718%_
                                (lambda (_%$%hd5321453722%_
                                         _%$%body5322053725%_)
                                  (if (gx#stx-pair? _%$%hd5321453722%_)
                                      (let ((_%$%e5321753727%_
                                             (gx#syntax-e _%$%hd5321453722%_)))
                                        (let ((_%$%lp-tl5321953734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5321753727%_)))
                                              (_%$%lp-hd5321853731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5321753727%_))))
                                          (_%$%loop5321653718%_
                                           _%$%lp-tl5321953734%_
                                           (cons _%$%lp-hd5321853731%_
                                                 _%$%body5322053725%_))))
                                      (let ((_%$%body5322153737%_
                                             (reverse _%$%body5322053725%_)))
                                        (let ((_%$%g5319553740%_
                                               _%$%body5322153737%_)
                                              (_%$%g5319653742%_
                                               _%$%hd5321153706%_)
                                              (_%$%g5319753743%_
                                               _%$%hd5320553686%_))
                                          (if (gx#identifier?
                                               _%$%g5319753743%_)
                                              (_%__kont9575295753%_
                                               _%$%g5319553740%_
                                               _%$%g5319653742%_
                                               _%$%g5319753743%_)
                                              (_%__match9603496035%_
                                               _%$%e5319853662%_
                                               _%$%hd5319953666%_
                                               _%$%tl5320053669%_
                                               _%$%e5320153672%_
                                               _%$%hd5320253676%_
                                               _%$%tl5320353679%_
                                               _%$%e5320453682%_
                                               _%$%hd5320553686%_
                                               _%$%tl5320653689%_))))))))
                        (_%$%loop5321653718%_ _%$%target5321353712%_ '()))))
                   (_%__match9594095941%_
                    (lambda (_%$%e5319853662%_
                             _%$%hd5319953666%_
                             _%$%tl5320053669%_
                             _%$%e5320153672%_
                             _%$%hd5320253676%_
                             _%$%tl5320353679%_
                             _%$%e5320453682%_
                             _%$%hd5320553686%_
                             _%$%tl5320653689%_
                             _%$%e5320753692%_
                             _%$%hd5320853696%_
                             _%$%tl5320953699%_)
                      (if (gx#identifier? _%$%hd5320853696%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g102411_|
                               _%$%hd5320853696%_)
                              (if (gx#stx-pair? _%$%tl5320953699%_)
                                  (let ((_%$%e5321053702%_
                                         (gx#syntax-e _%$%tl5320953699%_)))
                                    (let ((_%$%tl5321253709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5321053702%_)))
                                          (_%$%hd5321153706%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5321053702%_))))
                                      (if (gx#stx-null? _%$%tl5321253709%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl5320353679%_)
                                              (let ((_%__splice9575495755%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5320353679%_
                                                      '0)))
                                                (let ((_%$%tl5321553715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9575495755%_
                                                          '1)))
                                                      (_%$%target5321353712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9575495755%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5321553715%_)
                                                      (_%__match9596095961%_
                                                       _%$%e5319853662%_
                                                       _%$%hd5319953666%_
                                                       _%$%tl5320053669%_
                                                       _%$%e5320153672%_
                                                       _%$%hd5320253676%_
                                                       _%$%tl5320353679%_
                                                       _%$%e5320453682%_
                                                       _%$%hd5320553686%_
                                                       _%$%tl5320653689%_
                                                       _%$%e5320753692%_
                                                       _%$%hd5320853696%_
                                                       _%$%tl5320953699%_
                                                       _%$%e5321053702%_
                                                       _%$%hd5321153706%_
                                                       _%$%tl5321253709%_
                                                       _%__splice9575495755%_
                                                       _%$%target5321353712%_
                                                       _%$%tl5321553715%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd5320553686%_)
                                                          (let ((_%$%e5327053422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd5320553686%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5320553686%_)
                                                  (let ((_%$%e5327053422%_
                                                         (gx#syntax-e
                                                          _%$%hd5320553686%_)))
                                                    (let ((_%$%tl5327253429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5327053422%_)))
                                                          (_%$%hd5327153426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5327053422%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309453303%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_))))
                                          (if (gx#stx-pair? _%$%tl5321253709%_)
                                              (let ((_%$%e5324253552%_
                                                     (gx#syntax-e
                                                      _%$%tl5321253709%_)))
                                                (let ((_%$%tl5324453559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324253552%_)))
                                                      (_%$%hd5324353556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324253552%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5324453559%_)
                                                      (let ((_%$%e5324553562%_
                                                             (gx#syntax-e
                                                              _%$%tl5324453559%_)))
                                                        (let ((_%$%tl5324753569%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324553562%_)))
                      (_%$%hd5324653566%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324553562%_))))
                  (if (gx#stx-null? _%$%tl5324753569%_)
                      (if (gx#stx-pair/null? _%$%tl5320353679%_)
                          (let ((_%__splice9575895759%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5320353679%_
                                  '0)))
                            (let ((_%$%tl5325053575%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9575895759%_ '1)))
                                  (_%$%target5324853572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9575895759%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5325053575%_)
                                  (_%__match9601696017%_
                                   _%$%e5319853662%_
                                   _%$%hd5319953666%_
                                   _%$%tl5320053669%_
                                   _%$%e5320153672%_
                                   _%$%hd5320253676%_
                                   _%$%tl5320353679%_
                                   _%$%e5320453682%_
                                   _%$%hd5320553686%_
                                   _%$%tl5320653689%_
                                   _%$%e5320753692%_
                                   _%$%hd5320853696%_
                                   _%$%tl5320953699%_
                                   _%$%e5321053702%_
                                   _%$%hd5321153706%_
                                   _%$%tl5321253709%_
                                   _%$%e5324253552%_
                                   _%$%hd5324353556%_
                                   _%$%tl5324453559%_
                                   _%$%e5324553562%_
                                   _%$%hd5324653566%_
                                   _%$%tl5324753569%_
                                   _%__splice9575895759%_
                                   _%$%target5324853572%_
                                   _%$%tl5325053575%_)
                                  (if (gx#stx-pair? _%$%hd5320553686%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5320553686%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))
                          (if (gx#stx-pair? _%$%hd5320553686%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5320553686%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                      (if (gx#stx-pair? _%$%hd5320553686%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5320553686%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (if (gx#stx-pair/null? _%$%tl5320353679%_)
                                  (let ((_%__splice9576295763%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5320353679%_
                                          '0)))
                                    (let ((_%$%tl5327553435%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '1)))
                                          (_%$%target5327353432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327553435%_)
                                          (_%__match9604896049%_
                                           _%$%e5319853662%_
                                           _%$%hd5319953666%_
                                           _%$%tl5320053669%_
                                           _%$%e5320153672%_
                                           _%$%hd5320253676%_
                                           _%$%tl5320353679%_
                                           _%$%e5320453682%_
                                           _%$%hd5320553686%_
                                           _%$%tl5320653689%_
                                           _%$%e5327053422%_
                                           _%$%hd5327153426%_
                                           _%$%tl5327253429%_
                                           _%__splice9576295763%_
                                           _%$%target5327353432%_
                                           _%$%tl5327553435%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))))
              (if (gx#stx-pair? _%$%hd5320553686%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5320553686%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (if (gx#stx-pair/null? _%$%tl5320353679%_)
                          (let ((_%__splice9576295763%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5320353679%_
                                  '0)))
                            (let ((_%$%tl5327553435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576295763%_ '1)))
                                  (_%$%target5327353432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576295763%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327553435%_)
                                  (_%__match9604896049%_
                                   _%$%e5319853662%_
                                   _%$%hd5319953666%_
                                   _%$%tl5320053669%_
                                   _%$%e5320153672%_
                                   _%$%hd5320253676%_
                                   _%$%tl5320353679%_
                                   _%$%e5320453682%_
                                   _%$%hd5320553686%_
                                   _%$%tl5320653689%_
                                   _%$%e5327053422%_
                                   _%$%hd5327153426%_
                                   _%$%tl5327253429%_
                                   _%__splice9576295763%_
                                   _%$%target5327353432%_
                                   _%$%tl5327553435%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5320553686%_)
                                                  (let ((_%$%e5327053422%_
                                                         (gx#syntax-e
                                                          _%$%hd5320553686%_)))
                                                    (let ((_%$%tl5327253429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5327053422%_)))
                                                          (_%$%hd5327153426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5327053422%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5320353679%_)
                                                          (let ((_%__splice9576295763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5320353679%_
                          '0)))
                    (let ((_%$%tl5327553435%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576295763%_ '1)))
                          (_%$%target5327353432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576295763%_ '0))))
                      (if (gx#stx-null? _%$%tl5327553435%_)
                          (_%__match9604896049%_
                           _%$%e5319853662%_
                           _%$%hd5319953666%_
                           _%$%tl5320053669%_
                           _%$%e5320153672%_
                           _%$%hd5320253676%_
                           _%$%tl5320353679%_
                           _%$%e5320453682%_
                           _%$%hd5320553686%_
                           _%$%tl5320653689%_
                           _%$%e5327053422%_
                           _%$%hd5327153426%_
                           _%$%tl5327253429%_
                           _%__splice9576295763%_
                           _%$%target5327353432%_
                           _%$%tl5327553435%_)
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))))
                                  (if (gx#stx-pair? _%$%hd5320553686%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5320553686%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5320353679%_)
                                              (let ((_%__splice9576295763%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5320353679%_
                                                      '0)))
                                                (let ((_%$%tl5327553435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576295763%_
                                                          '1)))
                                                      (_%$%target5327353432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576295763%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5327553435%_)
                                                      (_%__match9604896049%_
                                                       _%$%e5319853662%_
                                                       _%$%hd5319953666%_
                                                       _%$%tl5320053669%_
                                                       _%$%e5320153672%_
                                                       _%$%hd5320253676%_
                                                       _%$%tl5320353679%_
                                                       _%$%e5320453682%_
                                                       _%$%hd5320553686%_
                                                       _%$%tl5320653689%_
                                                       _%$%e5327053422%_
                                                       _%$%hd5327153426%_
                                                       _%$%tl5327253429%_
                                                       _%__splice9576295763%_
                                                       _%$%target5327353432%_
                                                       _%$%tl5327553435%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309453303%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))
                              (if (gx#stx-pair? _%$%hd5320553686%_)
                                  (let ((_%$%e5327053422%_
                                         (gx#syntax-e _%$%hd5320553686%_)))
                                    (let ((_%$%tl5327253429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5327053422%_)))
                                          (_%$%hd5327153426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5327053422%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5320353679%_)
                                          (let ((_%__splice9576295763%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5320353679%_
                                                  '0)))
                                            (let ((_%$%tl5327553435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9576295763%_
                                                      '1)))
                                                  (_%$%target5327353432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9576295763%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5327553435%_)
                                                  (_%__match9604896049%_
                                                   _%$%e5319853662%_
                                                   _%$%hd5319953666%_
                                                   _%$%tl5320053669%_
                                                   _%$%e5320153672%_
                                                   _%$%hd5320253676%_
                                                   _%$%tl5320353679%_
                                                   _%$%e5320453682%_
                                                   _%$%hd5320553686%_
                                                   _%$%tl5320653689%_
                                                   _%$%e5327053422%_
                                                   _%$%hd5327153426%_
                                                   _%$%tl5327253429%_
                                                   _%__splice9576295763%_
                                                   _%$%target5327353432%_
                                                   _%$%tl5327553435%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                          (if (gx#stx-pair? _%$%hd5320553686%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5320553686%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (if (gx#stx-pair/null? _%$%tl5320353679%_)
                                      (let ((_%__splice9576295763%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5320353679%_
                                              '0)))
                                        (let ((_%$%tl5327553435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9576295763%_
                                                  '1)))
                                              (_%$%target5327353432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9576295763%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5327553435%_)
                                              (_%__match9604896049%_
                                               _%$%e5319853662%_
                                               _%$%hd5319953666%_
                                               _%$%tl5320053669%_
                                               _%$%e5320153672%_
                                               _%$%hd5320253676%_
                                               _%$%tl5320353679%_
                                               _%$%e5320453682%_
                                               _%$%hd5320553686%_
                                               _%$%tl5320653689%_
                                               _%$%e5327053422%_
                                               _%$%hd5327153426%_
                                               _%$%tl5327253429%_
                                               _%__splice9576295763%_
                                               _%$%target5327353432%_
                                               _%$%tl5327553435%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))))
                   (_%__match9591695917%_
                    (lambda (_%$%e5317153782%_
                             _%$%hd5317253786%_
                             _%$%tl5317353789%_
                             _%$%e5317453792%_
                             _%$%hd5317553796%_
                             _%$%tl5317653799%_
                             _%$%e5317753802%_
                             _%$%hd5317853806%_
                             _%$%tl5317953809%_
                             _%$%e5318053812%_
                             _%$%hd5318153816%_
                             _%$%tl5318253819%_
                             _%$%e5318353822%_
                             _%$%hd5318453826%_
                             _%$%tl5318553829%_
                             _%__splice9575095751%_
                             _%$%target5318653832%_
                             _%$%tl5318853835%_)
                      (letrec ((_%$%loop5318953838%_
                                (lambda (_%$%hd5318753842%_
                                         _%$%body5319353845%_)
                                  (if (gx#stx-pair? _%$%hd5318753842%_)
                                      (let ((_%$%e5319053847%_
                                             (gx#syntax-e _%$%hd5318753842%_)))
                                        (let ((_%$%lp-tl5319253854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5319053847%_)))
                                              (_%$%lp-hd5319153851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5319053847%_))))
                                          (_%$%loop5318953838%_
                                           _%$%lp-tl5319253854%_
                                           (cons _%$%lp-hd5319153851%_
                                                 _%$%body5319353845%_))))
                                      (let ((_%$%body5319453857%_
                                             (reverse _%$%body5319353845%_)))
                                        (let ((_%$%g5316753860%_
                                               _%$%body5319453857%_)
                                              (_%$%g5316853862%_
                                               _%$%hd5318453826%_)
                                              (_%$%g5316953863%_
                                               _%$%hd5318153816%_)
                                              (_%$%g5317053864%_
                                               _%$%hd5317853806%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5317053864%_)
                                                   (gx#identifier?
                                                    _%$%g5316853862%_)
                                                   (gx#identifier?
                                                    _%$%g5316953863%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5316953863%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5316953863%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5316953863%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5316953863%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9574895749%_
                                               _%$%g5316753860%_
                                               _%$%g5316853862%_
                                               _%$%g5316953863%_
                                               _%$%g5317053864%_)
                                              (_%__match9594095941%_
                                               _%$%e5317153782%_
                                               _%$%hd5317253786%_
                                               _%$%tl5317353789%_
                                               _%$%e5317453792%_
                                               _%$%hd5317553796%_
                                               _%$%tl5317653799%_
                                               _%$%e5317753802%_
                                               _%$%hd5317853806%_
                                               _%$%tl5317953809%_
                                               _%$%e5318053812%_
                                               _%$%hd5318153816%_
                                               _%$%tl5318253819%_))))))))
                        (_%$%loop5318953838%_ _%$%target5318653832%_ '()))))
                   (_%__match9587695877%_
                    (lambda (_%$%e5313453933%_
                             _%$%hd5313553937%_
                             _%$%tl5313653940%_
                             _%$%e5313753943%_
                             _%$%hd5313853947%_
                             _%$%tl5313953950%_
                             _%$%e5314053953%_
                             _%$%hd5314153957%_
                             _%$%tl5314253960%_
                             _%$%e5314353963%_
                             _%$%hd5314453967%_
                             _%$%tl5314553970%_
                             _%$%e5314653973%_
                             _%$%hd5314753977%_
                             _%$%tl5314853980%_
                             _%$%e5314953983%_
                             _%$%hd5315053987%_
                             _%$%tl5315153990%_
                             _%$%e5315253993%_
                             _%$%hd5315353997%_
                             _%$%tl5315454000%_
                             _%$%e5315554003%_
                             _%$%hd5315654007%_
                             _%$%tl5315754010%_
                             _%__splice9574695747%_
                             _%$%target5315854013%_
                             _%$%tl5316054016%_)
                      (letrec ((_%$%loop5316154019%_
                                (lambda (_%$%hd5315954023%_
                                         _%$%body5316554026%_)
                                  (if (gx#stx-pair? _%$%hd5315954023%_)
                                      (let ((_%$%e5316254028%_
                                             (gx#syntax-e _%$%hd5315954023%_)))
                                        (let ((_%$%lp-tl5316454035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5316254028%_)))
                                              (_%$%lp-hd5316354032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5316254028%_))))
                                          (_%$%loop5316154019%_
                                           _%$%lp-tl5316454035%_
                                           (cons _%$%lp-hd5316354032%_
                                                 _%$%body5316554026%_))))
                                      (let ((_%$%body5316654038%_
                                             (reverse _%$%body5316554026%_)))
                                        (let ((_%$%g5312854041%_
                                               _%$%body5316654038%_)
                                              (_%$%g5312954043%_
                                               _%$%hd5315654007%_)
                                              (_%$%g5313054044%_
                                               _%$%hd5315353997%_)
                                              (_%$%g5313154045%_
                                               _%$%hd5315053987%_)
                                              (_%$%g5313254046%_
                                               _%$%hd5314453967%_)
                                              (_%$%g5313354047%_
                                               _%$%hd5314153957%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5313354047%_)
                                                   (gx#identifier?
                                                    _%$%g5312954043%_)
                                                   (gx#identifier?
                                                    _%$%g5313054044%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5313054044%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5313054044%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5313054044%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5313054044%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9574495745%_
                                               _%$%g5312854041%_
                                               _%$%g5312954043%_
                                               _%$%g5313054044%_
                                               _%$%g5313154045%_
                                               _%$%g5313254046%_
                                               _%$%g5313354047%_)
                                              (_%__match9594095941%_
                                               _%$%e5313453933%_
                                               _%$%hd5313553937%_
                                               _%$%tl5313653940%_
                                               _%$%e5313753943%_
                                               _%$%hd5313853947%_
                                               _%$%tl5313953950%_
                                               _%$%e5314053953%_
                                               _%$%hd5314153957%_
                                               _%$%tl5314253960%_
                                               _%$%e5314353963%_
                                               _%$%hd5314453967%_
                                               _%$%tl5314553970%_))))))))
                        (_%$%loop5316154019%_ _%$%target5315854013%_ '()))))
                   (_%__match9584495845%_
                    (lambda (_%$%e5313453933%_
                             _%$%hd5313553937%_
                             _%$%tl5313653940%_
                             _%$%e5313753943%_
                             _%$%hd5313853947%_
                             _%$%tl5313953950%_
                             _%$%e5314053953%_
                             _%$%hd5314153957%_
                             _%$%tl5314253960%_
                             _%$%e5314353963%_
                             _%$%hd5314453967%_
                             _%$%tl5314553970%_
                             _%$%e5314653973%_
                             _%$%hd5314753977%_
                             _%$%tl5314853980%_)
                      (if (gx#identifier? _%$%hd5314753977%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g102412_|
                               _%$%hd5314753977%_)
                              (if (gx#stx-pair? _%$%tl5314853980%_)
                                  (let ((_%$%e5314953983%_
                                         (gx#syntax-e _%$%tl5314853980%_)))
                                    (let ((_%$%tl5315153990%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5314953983%_)))
                                          (_%$%hd5315053987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5314953983%_))))
                                      (if (gx#stx-pair? _%$%tl5315153990%_)
                                          (let ((_%$%e5315253993%_
                                                 (gx#syntax-e
                                                  _%$%tl5315153990%_)))
                                            (let ((_%$%tl5315454000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5315253993%_)))
                                                  (_%$%hd5315353997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5315253993%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5315454000%_)
                                                  (let ((_%$%e5315554003%_
                                                         (gx#syntax-e
                                                          _%$%tl5315454000%_)))
                                                    (let ((_%$%tl5315754010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5315554003%_)))
                                                          (_%$%hd5315654007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5315554003%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5315754010%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5313953950%_)
                                                              (let ((_%__splice9574695747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5313953950%_
                              '0)))
                        (let ((_%$%tl5316054016%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9574695747%_ '1)))
                              (_%$%target5315854013%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9574695747%_ '0))))
                          (if (gx#stx-null? _%$%tl5316054016%_)
                              (_%__match9587695877%_
                               _%$%e5313453933%_
                               _%$%hd5313553937%_
                               _%$%tl5313653940%_
                               _%$%e5313753943%_
                               _%$%hd5313853947%_
                               _%$%tl5313953950%_
                               _%$%e5314053953%_
                               _%$%hd5314153957%_
                               _%$%tl5314253960%_
                               _%$%e5314353963%_
                               _%$%hd5314453967%_
                               _%$%tl5314553970%_
                               _%$%e5314653973%_
                               _%$%hd5314753977%_
                               _%$%tl5314853980%_
                               _%$%e5314953983%_
                               _%$%hd5315053987%_
                               _%$%tl5315153990%_
                               _%$%e5315253993%_
                               _%$%hd5315353997%_
                               _%$%tl5315454000%_
                               _%$%e5315554003%_
                               _%$%hd5315654007%_
                               _%$%tl5315754010%_
                               _%__splice9574695747%_
                               _%$%target5315854013%_
                               _%$%tl5316054016%_)
                              (if (gx#stx-pair? _%$%hd5314153957%_)
                                  (let ((_%$%e5327053422%_
                                         (gx#syntax-e _%$%hd5314153957%_)))
                                    (let ((_%$%tl5327253429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5327053422%_)))
                                          (_%$%hd5327153426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5327053422%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))))
                      (if (gx#stx-pair? _%$%hd5314153957%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5314153957%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))
                  (if (gx#stx-pair? _%$%hd5314153957%_)
                      (let ((_%$%e5327053422%_
                             (gx#syntax-e _%$%hd5314153957%_)))
                        (let ((_%$%tl5327253429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5327053422%_)))
                              (_%$%hd5327153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5327053422%_))))
                          (if (gx#stx-pair/null? _%$%tl5313953950%_)
                              (let ((_%__splice9576295763%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5313953950%_
                                      '0)))
                                (let ((_%$%tl5327553435%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '1)))
                                      (_%$%target5327353432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327553435%_)
                                      (_%__match9604896049%_
                                       _%$%e5313453933%_
                                       _%$%hd5313553937%_
                                       _%$%tl5313653940%_
                                       _%$%e5313753943%_
                                       _%$%hd5313853947%_
                                       _%$%tl5313953950%_
                                       _%$%e5314053953%_
                                       _%$%hd5314153957%_
                                       _%$%tl5314253960%_
                                       _%$%e5327053422%_
                                       _%$%hd5327153426%_
                                       _%$%tl5327253429%_
                                       _%__splice9576295763%_
                                       _%$%target5327353432%_
                                       _%$%tl5327553435%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%$%hd5314453967%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102411_|
                                                           _%$%hd5314453967%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl5315454000%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl5313953950%_)
                          (let ((_%__splice9575895759%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313953950%_
                                  '0)))
                            (let ((_%$%tl5325053575%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9575895759%_ '1)))
                                  (_%$%target5324853572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9575895759%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5325053575%_)
                                  (_%__match9601696017%_
                                   _%$%e5313453933%_
                                   _%$%hd5313553937%_
                                   _%$%tl5313653940%_
                                   _%$%e5313753943%_
                                   _%$%hd5313853947%_
                                   _%$%tl5313953950%_
                                   _%$%e5314053953%_
                                   _%$%hd5314153957%_
                                   _%$%tl5314253960%_
                                   _%$%e5314353963%_
                                   _%$%hd5314453967%_
                                   _%$%tl5314553970%_
                                   _%$%e5314653973%_
                                   _%$%hd5314753977%_
                                   _%$%tl5314853980%_
                                   _%$%e5314953983%_
                                   _%$%hd5315053987%_
                                   _%$%tl5315153990%_
                                   _%$%e5315253993%_
                                   _%$%hd5315353997%_
                                   _%$%tl5315454000%_
                                   _%__splice9575895759%_
                                   _%$%target5324853572%_
                                   _%$%tl5325053575%_)
                                  (if (gx#stx-pair? _%$%hd5314153957%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5314153957%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))
                          (if (gx#stx-pair? _%$%hd5314153957%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5314153957%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                      (if (gx#stx-pair? _%$%hd5314153957%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5314153957%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (if (gx#stx-pair/null? _%$%tl5313953950%_)
                                  (let ((_%__splice9576295763%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5313953950%_
                                          '0)))
                                    (let ((_%$%tl5327553435%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '1)))
                                          (_%$%target5327353432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327553435%_)
                                          (_%__match9604896049%_
                                           _%$%e5313453933%_
                                           _%$%hd5313553937%_
                                           _%$%tl5313653940%_
                                           _%$%e5313753943%_
                                           _%$%hd5313853947%_
                                           _%$%tl5313953950%_
                                           _%$%e5314053953%_
                                           _%$%hd5314153957%_
                                           _%$%tl5314253960%_
                                           _%$%e5327053422%_
                                           _%$%hd5327153426%_
                                           _%$%tl5327253429%_
                                           _%__splice9576295763%_
                                           _%$%target5327353432%_
                                           _%$%tl5327553435%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))
                  (if (gx#stx-pair? _%$%hd5314153957%_)
                      (let ((_%$%e5327053422%_
                             (gx#syntax-e _%$%hd5314153957%_)))
                        (let ((_%$%tl5327253429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5327053422%_)))
                              (_%$%hd5327153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5327053422%_))))
                          (if (gx#stx-pair/null? _%$%tl5313953950%_)
                              (let ((_%__splice9576295763%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5313953950%_
                                      '0)))
                                (let ((_%$%tl5327553435%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '1)))
                                      (_%$%target5327353432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327553435%_)
                                      (_%__match9604896049%_
                                       _%$%e5313453933%_
                                       _%$%hd5313553937%_
                                       _%$%tl5313653940%_
                                       _%$%e5313753943%_
                                       _%$%hd5313853947%_
                                       _%$%tl5313953950%_
                                       _%$%e5314053953%_
                                       _%$%hd5314153957%_
                                       _%$%tl5314253960%_
                                       _%$%e5327053422%_
                                       _%$%hd5327153426%_
                                       _%$%tl5327253429%_
                                       _%__splice9576295763%_
                                       _%$%target5327353432%_
                                       _%$%tl5327553435%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))
              (if (gx#stx-pair? _%$%hd5314153957%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5314153957%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (if (gx#stx-pair/null? _%$%tl5313953950%_)
                          (let ((_%__splice9576295763%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313953950%_
                                  '0)))
                            (let ((_%$%tl5327553435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576295763%_ '1)))
                                  (_%$%target5327353432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576295763%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327553435%_)
                                  (_%__match9604896049%_
                                   _%$%e5313453933%_
                                   _%$%hd5313553937%_
                                   _%$%tl5313653940%_
                                   _%$%e5313753943%_
                                   _%$%hd5313853947%_
                                   _%$%tl5313953950%_
                                   _%$%e5314053953%_
                                   _%$%hd5314153957%_
                                   _%$%tl5314253960%_
                                   _%$%e5327053422%_
                                   _%$%hd5327153426%_
                                   _%$%tl5327253429%_
                                   _%__splice9576295763%_
                                   _%$%target5327353432%_
                                   _%$%tl5327553435%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5314153957%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5314153957%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5313953950%_)
                                                      (let ((_%__splice9576295763%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5313953950%_
                                                              '0)))
                                                        (let ((_%$%tl5327553435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '1)))
                      (_%$%target5327353432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '0))))
                  (if (gx#stx-null? _%$%tl5327553435%_)
                      (_%__match9604896049%_
                       _%$%e5313453933%_
                       _%$%hd5313553937%_
                       _%$%tl5313653940%_
                       _%$%e5313753943%_
                       _%$%hd5313853947%_
                       _%$%tl5313953950%_
                       _%$%e5314053953%_
                       _%$%hd5314153957%_
                       _%$%tl5314253960%_
                       _%$%e5327053422%_
                       _%$%hd5327153426%_
                       _%$%tl5327253429%_
                       _%__splice9576295763%_
                       _%$%target5327353432%_
                       _%$%tl5327553435%_)
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))))
                                  (if (gx#stx-null? _%$%tl5314853980%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5313953950%_)
                                          (let ((_%__splice9575095751%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5313953950%_
                                                  '0)))
                                            (let ((_%$%tl5318853835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9575095751%_
                                                      '1)))
                                                  (_%$%target5318653832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9575095751%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5318853835%_)
                                                  (_%__match9591695917%_
                                                   _%$%e5313453933%_
                                                   _%$%hd5313553937%_
                                                   _%$%tl5313653940%_
                                                   _%$%e5313753943%_
                                                   _%$%hd5313853947%_
                                                   _%$%tl5313953950%_
                                                   _%$%e5314053953%_
                                                   _%$%hd5314153957%_
                                                   _%$%tl5314253960%_
                                                   _%$%e5314353963%_
                                                   _%$%hd5314453967%_
                                                   _%$%tl5314553970%_
                                                   _%$%e5314653973%_
                                                   _%$%hd5314753977%_
                                                   _%$%tl5314853980%_
                                                   _%__splice9575095751%_
                                                   _%$%target5318653832%_
                                                   _%$%tl5318853835%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5314153957%_)
                                                      (let ((_%$%e5327053422%_
                                                             (gx#syntax-e
                                                              _%$%hd5314153957%_)))
                                                        (let ((_%$%tl5327253429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5327053422%_)))
                      (_%$%hd5327153426%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5327053422%_))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))
              (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5314153957%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5314153957%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                      (if (gx#stx-pair? _%$%hd5314153957%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5314153957%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5313953950%_)
                                                  (let ((_%__splice9576295763%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5313953950%_
                                                          '0)))
                                                    (let ((_%$%tl5327553435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '1)))
                                                          (_%$%target5327353432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327553435%_)
                                                          (_%__match9604896049%_
                                                           _%$%e5313453933%_
                                                           _%$%hd5313553937%_
                                                           _%$%tl5313653940%_
                                                           _%$%e5313753943%_
                                                           _%$%hd5313853947%_
                                                           _%$%tl5313953950%_
                                                           _%$%e5314053953%_
                                                           _%$%hd5314153957%_
                                                           _%$%tl5314253960%_
                                                           _%$%e5327053422%_
                                                           _%$%hd5327153426%_
                                                           _%$%tl5327253429%_
                                                           _%__splice9576295763%_
                                                           _%$%target5327353432%_
                                                           _%$%tl5327553435%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309453303%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                              (if (gx#stx-null? _%$%tl5314853980%_)
                                  (if (gx#stx-pair/null? _%$%tl5313953950%_)
                                      (let ((_%__splice9575095751%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5313953950%_
                                              '0)))
                                        (let ((_%$%tl5318853835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9575095751%_
                                                  '1)))
                                              (_%$%target5318653832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9575095751%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5318853835%_)
                                              (_%__match9591695917%_
                                               _%$%e5313453933%_
                                               _%$%hd5313553937%_
                                               _%$%tl5313653940%_
                                               _%$%e5313753943%_
                                               _%$%hd5313853947%_
                                               _%$%tl5313953950%_
                                               _%$%e5314053953%_
                                               _%$%hd5314153957%_
                                               _%$%tl5314253960%_
                                               _%$%e5314353963%_
                                               _%$%hd5314453967%_
                                               _%$%tl5314553970%_
                                               _%$%e5314653973%_
                                               _%$%hd5314753977%_
                                               _%$%tl5314853980%_
                                               _%__splice9575095751%_
                                               _%$%target5318653832%_
                                               _%$%tl5318853835%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd5314153957%_)
                                                  (let ((_%$%e5327053422%_
                                                         (gx#syntax-e
                                                          _%$%hd5314153957%_)))
                                                    (let ((_%$%tl5327253429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5327053422%_)))
                                                          (_%$%hd5327153426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5327053422%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309453303%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_))))))
                                      (if (gx#stx-pair? _%$%hd5314153957%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5314153957%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                  (if (gx#identifier? _%$%hd5314453967%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102411_|
                                           _%$%hd5314453967%_)
                                          (if (gx#stx-pair? _%$%tl5314853980%_)
                                              (let ((_%$%e5324253552%_
                                                     (gx#syntax-e
                                                      _%$%tl5314853980%_)))
                                                (let ((_%$%tl5324453559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324253552%_)))
                                                      (_%$%hd5324353556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324253552%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5324453559%_)
                                                      (let ((_%$%e5324553562%_
                                                             (gx#syntax-e
                                                              _%$%tl5324453559%_)))
                                                        (let ((_%$%tl5324753569%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324553562%_)))
                      (_%$%hd5324653566%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324553562%_))))
                  (if (gx#stx-null? _%$%tl5324753569%_)
                      (if (gx#stx-pair/null? _%$%tl5313953950%_)
                          (let ((_%__splice9575895759%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313953950%_
                                  '0)))
                            (let ((_%$%tl5325053575%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9575895759%_ '1)))
                                  (_%$%target5324853572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9575895759%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5325053575%_)
                                  (_%__match9601696017%_
                                   _%$%e5313453933%_
                                   _%$%hd5313553937%_
                                   _%$%tl5313653940%_
                                   _%$%e5313753943%_
                                   _%$%hd5313853947%_
                                   _%$%tl5313953950%_
                                   _%$%e5314053953%_
                                   _%$%hd5314153957%_
                                   _%$%tl5314253960%_
                                   _%$%e5314353963%_
                                   _%$%hd5314453967%_
                                   _%$%tl5314553970%_
                                   _%$%e5314653973%_
                                   _%$%hd5314753977%_
                                   _%$%tl5314853980%_
                                   _%$%e5324253552%_
                                   _%$%hd5324353556%_
                                   _%$%tl5324453559%_
                                   _%$%e5324553562%_
                                   _%$%hd5324653566%_
                                   _%$%tl5324753569%_
                                   _%__splice9575895759%_
                                   _%$%target5324853572%_
                                   _%$%tl5325053575%_)
                                  (if (gx#stx-pair? _%$%hd5314153957%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5314153957%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))
                          (if (gx#stx-pair? _%$%hd5314153957%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5314153957%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                      (if (gx#stx-pair? _%$%hd5314153957%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5314153957%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (if (gx#stx-pair/null? _%$%tl5313953950%_)
                                  (let ((_%__splice9576295763%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5313953950%_
                                          '0)))
                                    (let ((_%$%tl5327553435%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '1)))
                                          (_%$%target5327353432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327553435%_)
                                          (_%__match9604896049%_
                                           _%$%e5313453933%_
                                           _%$%hd5313553937%_
                                           _%$%tl5313653940%_
                                           _%$%e5313753943%_
                                           _%$%hd5313853947%_
                                           _%$%tl5313953950%_
                                           _%$%e5314053953%_
                                           _%$%hd5314153957%_
                                           _%$%tl5314253960%_
                                           _%$%e5327053422%_
                                           _%$%hd5327153426%_
                                           _%$%tl5327253429%_
                                           _%__splice9576295763%_
                                           _%$%target5327353432%_
                                           _%$%tl5327553435%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))))
              (if (gx#stx-pair? _%$%hd5314153957%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5314153957%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (if (gx#stx-pair/null? _%$%tl5313953950%_)
                          (let ((_%__splice9576295763%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313953950%_
                                  '0)))
                            (let ((_%$%tl5327553435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576295763%_ '1)))
                                  (_%$%target5327353432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576295763%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327553435%_)
                                  (_%__match9604896049%_
                                   _%$%e5313453933%_
                                   _%$%hd5313553937%_
                                   _%$%tl5313653940%_
                                   _%$%e5313753943%_
                                   _%$%hd5313853947%_
                                   _%$%tl5313953950%_
                                   _%$%e5314053953%_
                                   _%$%hd5314153957%_
                                   _%$%tl5314253960%_
                                   _%$%e5327053422%_
                                   _%$%hd5327153426%_
                                   _%$%tl5327253429%_
                                   _%__splice9576295763%_
                                   _%$%target5327353432%_
                                   _%$%tl5327553435%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5314153957%_)
                                                  (let ((_%$%e5327053422%_
                                                         (gx#syntax-e
                                                          _%$%hd5314153957%_)))
                                                    (let ((_%$%tl5327253429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5327053422%_)))
                                                          (_%$%hd5327153426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5327053422%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5313953950%_)
                                                          (let ((_%__splice9576295763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5313953950%_
                          '0)))
                    (let ((_%$%tl5327553435%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576295763%_ '1)))
                          (_%$%target5327353432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576295763%_ '0))))
                      (if (gx#stx-null? _%$%tl5327553435%_)
                          (_%__match9604896049%_
                           _%$%e5313453933%_
                           _%$%hd5313553937%_
                           _%$%tl5313653940%_
                           _%$%e5313753943%_
                           _%$%hd5313853947%_
                           _%$%tl5313953950%_
                           _%$%e5314053953%_
                           _%$%hd5314153957%_
                           _%$%tl5314253960%_
                           _%$%e5327053422%_
                           _%$%hd5327153426%_
                           _%$%tl5327253429%_
                           _%__splice9576295763%_
                           _%$%target5327353432%_
                           _%$%tl5327553435%_)
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_))))
                                          (if (gx#stx-pair? _%$%hd5314153957%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5314153957%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5313953950%_)
                                                      (let ((_%__splice9576295763%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5313953950%_
                                                              '0)))
                                                        (let ((_%$%tl5327553435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '1)))
                      (_%$%target5327353432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '0))))
                  (if (gx#stx-null? _%$%tl5327553435%_)
                      (_%__match9604896049%_
                       _%$%e5313453933%_
                       _%$%hd5313553937%_
                       _%$%tl5313653940%_
                       _%$%e5313753943%_
                       _%$%hd5313853947%_
                       _%$%tl5313953950%_
                       _%$%e5314053953%_
                       _%$%hd5314153957%_
                       _%$%tl5314253960%_
                       _%$%e5327053422%_
                       _%$%hd5327153426%_
                       _%$%tl5327253429%_
                       _%__splice9576295763%_
                       _%$%target5327353432%_
                       _%$%tl5327553435%_)
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                      (if (gx#stx-pair? _%$%hd5314153957%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5314153957%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5313953950%_)
                                                  (let ((_%__splice9576295763%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5313953950%_
                                                          '0)))
                                                    (let ((_%$%tl5327553435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '1)))
                                                          (_%$%target5327353432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327553435%_)
                                                          (_%__match9604896049%_
                                                           _%$%e5313453933%_
                                                           _%$%hd5313553937%_
                                                           _%$%tl5313653940%_
                                                           _%$%e5313753943%_
                                                           _%$%hd5313853947%_
                                                           _%$%tl5313953950%_
                                                           _%$%e5314053953%_
                                                           _%$%hd5314153957%_
                                                           _%$%tl5314253960%_
                                                           _%$%e5327053422%_
                                                           _%$%hd5327153426%_
                                                           _%$%tl5327253429%_
                                                           _%__splice9576295763%_
                                                           _%$%target5327353432%_
                                                           _%$%tl5327553435%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309453303%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))))
                          (if (gx#stx-null? _%$%tl5314853980%_)
                              (if (gx#stx-pair/null? _%$%tl5313953950%_)
                                  (let ((_%__splice9575095751%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5313953950%_
                                          '0)))
                                    (let ((_%$%tl5318853835%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9575095751%_
                                              '1)))
                                          (_%$%target5318653832%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9575095751%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5318853835%_)
                                          (_%__match9591695917%_
                                           _%$%e5313453933%_
                                           _%$%hd5313553937%_
                                           _%$%tl5313653940%_
                                           _%$%e5313753943%_
                                           _%$%hd5313853947%_
                                           _%$%tl5313953950%_
                                           _%$%e5314053953%_
                                           _%$%hd5314153957%_
                                           _%$%tl5314253960%_
                                           _%$%e5314353963%_
                                           _%$%hd5314453967%_
                                           _%$%tl5314553970%_
                                           _%$%e5314653973%_
                                           _%$%hd5314753977%_
                                           _%$%tl5314853980%_
                                           _%__splice9575095751%_
                                           _%$%target5318653832%_
                                           _%$%tl5318853835%_)
                                          (if (gx#stx-pair? _%$%hd5314153957%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5314153957%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))))
                                  (if (gx#stx-pair? _%$%hd5314153957%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5314153957%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))
                              (if (gx#identifier? _%$%hd5314453967%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102411_|
                                       _%$%hd5314453967%_)
                                      (if (gx#stx-pair? _%$%tl5314853980%_)
                                          (let ((_%$%e5324253552%_
                                                 (gx#syntax-e
                                                  _%$%tl5314853980%_)))
                                            (let ((_%$%tl5324453559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324253552%_)))
                                                  (_%$%hd5324353556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324253552%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5324453559%_)
                                                  (let ((_%$%e5324553562%_
                                                         (gx#syntax-e
                                                          _%$%tl5324453559%_)))
                                                    (let ((_%$%tl5324753569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324553562%_)))
                                                          (_%$%hd5324653566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324553562%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324753569%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5313953950%_)
                                                              (let ((_%__splice9575895759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5313953950%_
                              '0)))
                        (let ((_%$%tl5325053575%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575895759%_ '1)))
                              (_%$%target5324853572%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575895759%_ '0))))
                          (if (gx#stx-null? _%$%tl5325053575%_)
                              (_%__match9601696017%_
                               _%$%e5313453933%_
                               _%$%hd5313553937%_
                               _%$%tl5313653940%_
                               _%$%e5313753943%_
                               _%$%hd5313853947%_
                               _%$%tl5313953950%_
                               _%$%e5314053953%_
                               _%$%hd5314153957%_
                               _%$%tl5314253960%_
                               _%$%e5314353963%_
                               _%$%hd5314453967%_
                               _%$%tl5314553970%_
                               _%$%e5314653973%_
                               _%$%hd5314753977%_
                               _%$%tl5314853980%_
                               _%$%e5324253552%_
                               _%$%hd5324353556%_
                               _%$%tl5324453559%_
                               _%$%e5324553562%_
                               _%$%hd5324653566%_
                               _%$%tl5324753569%_
                               _%__splice9575895759%_
                               _%$%target5324853572%_
                               _%$%tl5325053575%_)
                              (if (gx#stx-pair? _%$%hd5314153957%_)
                                  (let ((_%$%e5327053422%_
                                         (gx#syntax-e _%$%hd5314153957%_)))
                                    (let ((_%$%tl5327253429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5327053422%_)))
                                          (_%$%hd5327153426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5327053422%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))))
                      (if (gx#stx-pair? _%$%hd5314153957%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5314153957%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))
                  (if (gx#stx-pair? _%$%hd5314153957%_)
                      (let ((_%$%e5327053422%_
                             (gx#syntax-e _%$%hd5314153957%_)))
                        (let ((_%$%tl5327253429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5327053422%_)))
                              (_%$%hd5327153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5327053422%_))))
                          (if (gx#stx-pair/null? _%$%tl5313953950%_)
                              (let ((_%__splice9576295763%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5313953950%_
                                      '0)))
                                (let ((_%$%tl5327553435%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '1)))
                                      (_%$%target5327353432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327553435%_)
                                      (_%__match9604896049%_
                                       _%$%e5313453933%_
                                       _%$%hd5313553937%_
                                       _%$%tl5313653940%_
                                       _%$%e5313753943%_
                                       _%$%hd5313853947%_
                                       _%$%tl5313953950%_
                                       _%$%e5314053953%_
                                       _%$%hd5314153957%_
                                       _%$%tl5314253960%_
                                       _%$%e5327053422%_
                                       _%$%hd5327153426%_
                                       _%$%tl5327253429%_
                                       _%__splice9576295763%_
                                       _%$%target5327353432%_
                                       _%$%tl5327553435%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5314153957%_)
                                                      (let ((_%$%e5327053422%_
                                                             (gx#syntax-e
                                                              _%$%hd5314153957%_)))
                                                        (let ((_%$%tl5327253429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5327053422%_)))
                      (_%$%hd5327153426%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5327053422%_))))
                  (if (gx#stx-pair/null? _%$%tl5313953950%_)
                      (let ((_%__splice9576295763%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5313953950%_
                              '0)))
                        (let ((_%$%tl5327553435%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '1)))
                              (_%$%target5327353432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '0))))
                          (if (gx#stx-null? _%$%tl5327553435%_)
                              (_%__match9604896049%_
                               _%$%e5313453933%_
                               _%$%hd5313553937%_
                               _%$%tl5313653940%_
                               _%$%e5313753943%_
                               _%$%hd5313853947%_
                               _%$%tl5313953950%_
                               _%$%e5314053953%_
                               _%$%hd5314153957%_
                               _%$%tl5314253960%_
                               _%$%e5327053422%_
                               _%$%hd5327153426%_
                               _%$%tl5327253429%_
                               _%__splice9576295763%_
                               _%$%target5327353432%_
                               _%$%tl5327553435%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5314153957%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5314153957%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5313953950%_)
                                                      (let ((_%__splice9576295763%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5313953950%_
                                                              '0)))
                                                        (let ((_%$%tl5327553435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '1)))
                      (_%$%target5327353432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '0))))
                  (if (gx#stx-null? _%$%tl5327553435%_)
                      (_%__match9604896049%_
                       _%$%e5313453933%_
                       _%$%hd5313553937%_
                       _%$%tl5313653940%_
                       _%$%e5313753943%_
                       _%$%hd5313853947%_
                       _%$%tl5313953950%_
                       _%$%e5314053953%_
                       _%$%hd5314153957%_
                       _%$%tl5314253960%_
                       _%$%e5327053422%_
                       _%$%hd5327153426%_
                       _%$%tl5327253429%_
                       _%__splice9576295763%_
                       _%$%target5327353432%_
                       _%$%tl5327553435%_)
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                      (if (gx#stx-pair? _%$%hd5314153957%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5314153957%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5313953950%_)
                                                  (let ((_%__splice9576295763%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5313953950%_
                                                          '0)))
                                                    (let ((_%$%tl5327553435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '1)))
                                                          (_%$%target5327353432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327553435%_)
                                                          (_%__match9604896049%_
                                                           _%$%e5313453933%_
                                                           _%$%hd5313553937%_
                                                           _%$%tl5313653940%_
                                                           _%$%e5313753943%_
                                                           _%$%hd5313853947%_
                                                           _%$%tl5313953950%_
                                                           _%$%e5314053953%_
                                                           _%$%hd5314153957%_
                                                           _%$%tl5314253960%_
                                                           _%$%e5327053422%_
                                                           _%$%hd5327153426%_
                                                           _%$%tl5327253429%_
                                                           _%__splice9576295763%_
                                                           _%$%target5327353432%_
                                                           _%$%tl5327553435%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309453303%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                  (if (gx#stx-pair? _%$%hd5314153957%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5314153957%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5313953950%_)
                                              (let ((_%__splice9576295763%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5313953950%_
                                                      '0)))
                                                (let ((_%$%tl5327553435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576295763%_
                                                          '1)))
                                                      (_%$%target5327353432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576295763%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5327553435%_)
                                                      (_%__match9604896049%_
                                                       _%$%e5313453933%_
                                                       _%$%hd5313553937%_
                                                       _%$%tl5313653940%_
                                                       _%$%e5313753943%_
                                                       _%$%hd5313853947%_
                                                       _%$%tl5313953950%_
                                                       _%$%e5314053953%_
                                                       _%$%hd5314153957%_
                                                       _%$%tl5314253960%_
                                                       _%$%e5327053422%_
                                                       _%$%hd5327153426%_
                                                       _%$%tl5327253429%_
                                                       _%__splice9576295763%_
                                                       _%$%target5327353432%_
                                                       _%$%tl5327553435%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309453303%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))))
                   (_%__match9581495815%_
                    (lambda (_%$%e5310154107%_
                             _%$%hd5310254111%_
                             _%$%tl5310354114%_
                             _%$%e5310454117%_
                             _%$%hd5310554121%_
                             _%$%tl5310654124%_
                             _%$%e5310754127%_
                             _%$%hd5310854131%_
                             _%$%tl5310954134%_
                             _%$%e5311054137%_
                             _%$%hd5311154141%_
                             _%$%tl5311254144%_
                             _%$%e5311354147%_
                             _%$%hd5311454151%_
                             _%$%tl5311554154%_
                             _%$%e5311654157%_
                             _%$%hd5311754161%_
                             _%$%tl5311854164%_
                             _%__splice9574295743%_
                             _%$%target5311954167%_
                             _%$%tl5312154170%_)
                      (letrec ((_%$%loop5312254173%_
                                (lambda (_%$%hd5312054177%_
                                         _%$%body5312654180%_)
                                  (if (gx#stx-pair? _%$%hd5312054177%_)
                                      (let ((_%$%e5312354182%_
                                             (gx#syntax-e _%$%hd5312054177%_)))
                                        (let ((_%$%lp-tl5312554189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5312354182%_)))
                                              (_%$%lp-hd5312454186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5312354182%_))))
                                          (_%$%loop5312254173%_
                                           _%$%lp-tl5312554189%_
                                           (cons _%$%lp-hd5312454186%_
                                                 _%$%body5312654180%_))))
                                      (let ((_%$%body5312754192%_
                                             (reverse _%$%body5312654180%_)))
                                        (let ((_%$%g5309654195%_
                                               _%$%body5312754192%_)
                                              (_%$%g5309754197%_
                                               _%$%hd5311754161%_)
                                              (_%$%g5309854198%_
                                               _%$%hd5311454151%_)
                                              (_%$%g5309954199%_
                                               _%$%hd5311154141%_)
                                              (_%$%g5310054200%_
                                               _%$%hd5310854131%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5310054200%_)
                                                   (gx#identifier?
                                                    _%$%g5309854198%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5309854198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5309854198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5309854198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5309854198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%$%g5309854198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9574095741%_
                                               _%$%g5309654195%_
                                               _%$%g5309754197%_
                                               _%$%g5309854198%_
                                               _%$%g5309954199%_
                                               _%$%g5310054200%_)
                                              (_%__match9584495845%_
                                               _%$%e5310154107%_
                                               _%$%hd5310254111%_
                                               _%$%tl5310354114%_
                                               _%$%e5310454117%_
                                               _%$%hd5310554121%_
                                               _%$%tl5310654124%_
                                               _%$%e5310754127%_
                                               _%$%hd5310854131%_
                                               _%$%tl5310954134%_
                                               _%$%e5311054137%_
                                               _%$%hd5311154141%_
                                               _%$%tl5311254144%_
                                               _%$%e5311354147%_
                                               _%$%hd5311454151%_
                                               _%$%tl5311554154%_))))))))
                        (_%$%loop5312254173%_ _%$%target5311954167%_ '())))))
              (if (gx#stx-pair? _%__stx9573795738%_)
                  (let ((_%$%e5310154107%_ (gx#syntax-e _%__stx9573795738%_)))
                    (let ((_%$%tl5310354114%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5310154107%_)))
                          (_%$%hd5310254111%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5310154107%_))))
                      (if (gx#stx-pair? _%$%tl5310354114%_)
                          (let ((_%$%e5310454117%_
                                 (gx#syntax-e _%$%tl5310354114%_)))
                            (let ((_%$%tl5310654124%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5310454117%_)))
                                  (_%$%hd5310554121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5310454117%_))))
                              (if (gx#stx-pair? _%$%hd5310554121%_)
                                  (let ((_%$%e5310754127%_
                                         (gx#syntax-e _%$%hd5310554121%_)))
                                    (let ((_%$%tl5310954134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5310754127%_)))
                                          (_%$%hd5310854131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5310754127%_))))
                                      (if (gx#stx-pair? _%$%tl5310954134%_)
                                          (let ((_%$%e5311054137%_
                                                 (gx#syntax-e
                                                  _%$%tl5310954134%_)))
                                            (let ((_%$%tl5311254144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5311054137%_)))
                                                  (_%$%hd5311154141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5311054137%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5311254144%_)
                                                  (let ((_%$%e5311354147%_
                                                         (gx#syntax-e
                                                          _%$%tl5311254144%_)))
                                                    (let ((_%$%tl5311554154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5311354147%_)))
                                                          (_%$%hd5311454151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5311354147%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5311554154%_)
                                                          (let ((_%$%e5311654157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5311554154%_)))
                    (let ((_%$%tl5311854164%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5311654157%_)))
                          (_%$%hd5311754161%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5311654157%_))))
                      (if (gx#stx-null? _%$%tl5311854164%_)
                          (if (gx#stx-pair/null? _%$%tl5310654124%_)
                              (let ((_%__splice9574295743%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5310654124%_
                                      '0)))
                                (let ((_%$%tl5312154170%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9574295743%_
                                          '1)))
                                      (_%$%target5311954167%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9574295743%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5312154170%_)
                                      (_%__match9581495815%_
                                       _%$%e5310154107%_
                                       _%$%hd5310254111%_
                                       _%$%tl5310354114%_
                                       _%$%e5310454117%_
                                       _%$%hd5310554121%_
                                       _%$%tl5310654124%_
                                       _%$%e5310754127%_
                                       _%$%hd5310854131%_
                                       _%$%tl5310954134%_
                                       _%$%e5311054137%_
                                       _%$%hd5311154141%_
                                       _%$%tl5311254144%_
                                       _%$%e5311354147%_
                                       _%$%hd5311454151%_
                                       _%$%tl5311554154%_
                                       _%$%e5311654157%_
                                       _%$%hd5311754161%_
                                       _%$%tl5311854164%_
                                       _%__splice9574295743%_
                                       _%$%target5311954167%_
                                       _%$%tl5312154170%_)
                                      (if (gx#stx-pair? _%$%hd5310854131%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5310854131%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))))
                              (if (gx#stx-pair? _%$%hd5310854131%_)
                                  (let ((_%$%e5327053422%_
                                         (gx#syntax-e _%$%hd5310854131%_)))
                                    (let ((_%$%tl5327253429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5327053422%_)))
                                          (_%$%hd5327153426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5327053422%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                          (if (gx#identifier? _%$%hd5311454151%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g102412_|
                                   _%$%hd5311454151%_)
                                  (if (gx#stx-pair? _%$%tl5311854164%_)
                                      (let ((_%$%e5315253993%_
                                             (gx#syntax-e _%$%tl5311854164%_)))
                                        (let ((_%$%tl5315454000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5315253993%_)))
                                              (_%$%hd5315353997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5315253993%_))))
                                          (if (gx#stx-pair? _%$%tl5315454000%_)
                                              (let ((_%$%e5315554003%_
                                                     (gx#syntax-e
                                                      _%$%tl5315454000%_)))
                                                (let ((_%$%tl5315754010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5315554003%_)))
                                                      (_%$%hd5315654007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5315554003%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5315754010%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5310654124%_)
                                                          (let ((_%__splice9574695747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5310654124%_
                          '0)))
                    (let ((_%$%tl5316054016%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9574695747%_ '1)))
                          (_%$%target5315854013%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9574695747%_ '0))))
                      (if (gx#stx-null? _%$%tl5316054016%_)
                          (_%__match9587695877%_
                           _%$%e5310154107%_
                           _%$%hd5310254111%_
                           _%$%tl5310354114%_
                           _%$%e5310454117%_
                           _%$%hd5310554121%_
                           _%$%tl5310654124%_
                           _%$%e5310754127%_
                           _%$%hd5310854131%_
                           _%$%tl5310954134%_
                           _%$%e5311054137%_
                           _%$%hd5311154141%_
                           _%$%tl5311254144%_
                           _%$%e5311354147%_
                           _%$%hd5311454151%_
                           _%$%tl5311554154%_
                           _%$%e5311654157%_
                           _%$%hd5311754161%_
                           _%$%tl5311854164%_
                           _%$%e5315253993%_
                           _%$%hd5315353997%_
                           _%$%tl5315454000%_
                           _%$%e5315554003%_
                           _%$%hd5315654007%_
                           _%$%tl5315754010%_
                           _%__splice9574695747%_
                           _%$%target5315854013%_
                           _%$%tl5316054016%_)
                          (if (gx#stx-pair? _%$%hd5310854131%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5310854131%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))))
                  (if (gx#stx-pair? _%$%hd5310854131%_)
                      (let ((_%$%e5327053422%_
                             (gx#syntax-e _%$%hd5310854131%_)))
                        (let ((_%$%tl5327253429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5327053422%_)))
                              (_%$%hd5327153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5327053422%_))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))
              (if (gx#stx-pair? _%$%hd5310854131%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5310854131%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (if (gx#stx-pair/null? _%$%tl5310654124%_)
                          (let ((_%__splice9576295763%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310654124%_
                                  '0)))
                            (let ((_%$%tl5327553435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576295763%_ '1)))
                                  (_%$%target5327353432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576295763%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327553435%_)
                                  (_%__match9604896049%_
                                   _%$%e5310154107%_
                                   _%$%hd5310254111%_
                                   _%$%tl5310354114%_
                                   _%$%e5310454117%_
                                   _%$%hd5310554121%_
                                   _%$%tl5310654124%_
                                   _%$%e5310754127%_
                                   _%$%hd5310854131%_
                                   _%$%tl5310954134%_
                                   _%$%e5327053422%_
                                   _%$%hd5327153426%_
                                   _%$%tl5327253429%_
                                   _%__splice9576295763%_
                                   _%$%target5327353432%_
                                   _%$%tl5327553435%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%$%hd5311154141%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g102411_|
                                                       _%$%hd5311154141%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl5315454000%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5310654124%_)
                                                              (let ((_%__splice9575895759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5310654124%_
                              '0)))
                        (let ((_%$%tl5325053575%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575895759%_ '1)))
                              (_%$%target5324853572%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575895759%_ '0))))
                          (if (gx#stx-null? _%$%tl5325053575%_)
                              (_%__match9601696017%_
                               _%$%e5310154107%_
                               _%$%hd5310254111%_
                               _%$%tl5310354114%_
                               _%$%e5310454117%_
                               _%$%hd5310554121%_
                               _%$%tl5310654124%_
                               _%$%e5310754127%_
                               _%$%hd5310854131%_
                               _%$%tl5310954134%_
                               _%$%e5311054137%_
                               _%$%hd5311154141%_
                               _%$%tl5311254144%_
                               _%$%e5311354147%_
                               _%$%hd5311454151%_
                               _%$%tl5311554154%_
                               _%$%e5311654157%_
                               _%$%hd5311754161%_
                               _%$%tl5311854164%_
                               _%$%e5315253993%_
                               _%$%hd5315353997%_
                               _%$%tl5315454000%_
                               _%__splice9575895759%_
                               _%$%target5324853572%_
                               _%$%tl5325053575%_)
                              (if (gx#stx-pair? _%$%hd5310854131%_)
                                  (let ((_%$%e5327053422%_
                                         (gx#syntax-e _%$%hd5310854131%_)))
                                    (let ((_%$%tl5327253429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5327053422%_)))
                                          (_%$%hd5327153426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5327053422%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))))
                      (if (gx#stx-pair? _%$%hd5310854131%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5310854131%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))
                  (if (gx#stx-pair? _%$%hd5310854131%_)
                      (let ((_%$%e5327053422%_
                             (gx#syntax-e _%$%hd5310854131%_)))
                        (let ((_%$%tl5327253429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5327053422%_)))
                              (_%$%hd5327153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5327053422%_))))
                          (if (gx#stx-pair/null? _%$%tl5310654124%_)
                              (let ((_%__splice9576295763%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5310654124%_
                                      '0)))
                                (let ((_%$%tl5327553435%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '1)))
                                      (_%$%target5327353432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9576295763%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327553435%_)
                                      (_%__match9604896049%_
                                       _%$%e5310154107%_
                                       _%$%hd5310254111%_
                                       _%$%tl5310354114%_
                                       _%$%e5310454117%_
                                       _%$%hd5310554121%_
                                       _%$%tl5310654124%_
                                       _%$%e5310754127%_
                                       _%$%hd5310854131%_
                                       _%$%tl5310954134%_
                                       _%$%e5327053422%_
                                       _%$%hd5327153426%_
                                       _%$%tl5327253429%_
                                       _%__splice9576295763%_
                                       _%$%target5327353432%_
                                       _%$%tl5327553435%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))
              (if (gx#stx-pair? _%$%hd5310854131%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5310854131%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (if (gx#stx-pair/null? _%$%tl5310654124%_)
                          (let ((_%__splice9576295763%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310654124%_
                                  '0)))
                            (let ((_%$%tl5327553435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576295763%_ '1)))
                                  (_%$%target5327353432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576295763%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327553435%_)
                                  (_%__match9604896049%_
                                   _%$%e5310154107%_
                                   _%$%hd5310254111%_
                                   _%$%tl5310354114%_
                                   _%$%e5310454117%_
                                   _%$%hd5310554121%_
                                   _%$%tl5310654124%_
                                   _%$%e5310754127%_
                                   _%$%hd5310854131%_
                                   _%$%tl5310954134%_
                                   _%$%e5327053422%_
                                   _%$%hd5327153426%_
                                   _%$%tl5327253429%_
                                   _%__splice9576295763%_
                                   _%$%target5327353432%_
                                   _%$%tl5327553435%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5310854131%_)
                                                      (let ((_%$%e5327053422%_
                                                             (gx#syntax-e
                                                              _%$%hd5310854131%_)))
                                                        (let ((_%$%tl5327253429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5327053422%_)))
                      (_%$%hd5327153426%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5327053422%_))))
                  (if (gx#stx-pair/null? _%$%tl5310654124%_)
                      (let ((_%__splice9576295763%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5310654124%_
                              '0)))
                        (let ((_%$%tl5327553435%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '1)))
                              (_%$%target5327353432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '0))))
                          (if (gx#stx-null? _%$%tl5327553435%_)
                              (_%__match9604896049%_
                               _%$%e5310154107%_
                               _%$%hd5310254111%_
                               _%$%tl5310354114%_
                               _%$%e5310454117%_
                               _%$%hd5310554121%_
                               _%$%tl5310654124%_
                               _%$%e5310754127%_
                               _%$%hd5310854131%_
                               _%$%tl5310954134%_
                               _%$%e5327053422%_
                               _%$%hd5327153426%_
                               _%$%tl5327253429%_
                               _%__splice9576295763%_
                               _%$%target5327353432%_
                               _%$%tl5327553435%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%$%hd5310854131%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5310854131%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5310654124%_)
                                                  (let ((_%__splice9576295763%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5310654124%_
                                                          '0)))
                                                    (let ((_%$%tl5327553435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '1)))
                                                          (_%$%target5327353432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327553435%_)
                                                          (_%__match9604896049%_
                                                           _%$%e5310154107%_
                                                           _%$%hd5310254111%_
                                                           _%$%tl5310354114%_
                                                           _%$%e5310454117%_
                                                           _%$%hd5310554121%_
                                                           _%$%tl5310654124%_
                                                           _%$%e5310754127%_
                                                           _%$%hd5310854131%_
                                                           _%$%tl5310954134%_
                                                           _%$%e5327053422%_
                                                           _%$%hd5327153426%_
                                                           _%$%tl5327253429%_
                                                           _%__splice9576295763%_
                                                           _%$%target5327353432%_
                                                           _%$%tl5327553435%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309453303%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                  (if (gx#identifier? _%$%hd5311154141%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102411_|
                                           _%$%hd5311154141%_)
                                          (if (gx#stx-pair? _%$%tl5311854164%_)
                                              (let ((_%$%e5324553562%_
                                                     (gx#syntax-e
                                                      _%$%tl5311854164%_)))
                                                (let ((_%$%tl5324753569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324553562%_)))
                                                      (_%$%hd5324653566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324553562%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5324753569%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5310654124%_)
                                                          (let ((_%__splice9575895759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5310654124%_
                          '0)))
                    (let ((_%$%tl5325053575%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575895759%_ '1)))
                          (_%$%target5324853572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575895759%_ '0))))
                      (if (gx#stx-null? _%$%tl5325053575%_)
                          (_%__match9601696017%_
                           _%$%e5310154107%_
                           _%$%hd5310254111%_
                           _%$%tl5310354114%_
                           _%$%e5310454117%_
                           _%$%hd5310554121%_
                           _%$%tl5310654124%_
                           _%$%e5310754127%_
                           _%$%hd5310854131%_
                           _%$%tl5310954134%_
                           _%$%e5311054137%_
                           _%$%hd5311154141%_
                           _%$%tl5311254144%_
                           _%$%e5311354147%_
                           _%$%hd5311454151%_
                           _%$%tl5311554154%_
                           _%$%e5311654157%_
                           _%$%hd5311754161%_
                           _%$%tl5311854164%_
                           _%$%e5324553562%_
                           _%$%hd5324653566%_
                           _%$%tl5324753569%_
                           _%__splice9575895759%_
                           _%$%target5324853572%_
                           _%$%tl5325053575%_)
                          (if (gx#stx-pair? _%$%hd5310854131%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5310854131%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))))
                  (if (gx#stx-pair? _%$%hd5310854131%_)
                      (let ((_%$%e5327053422%_
                             (gx#syntax-e _%$%hd5310854131%_)))
                        (let ((_%$%tl5327253429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5327053422%_)))
                              (_%$%hd5327153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5327053422%_))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))
              (if (gx#stx-pair? _%$%hd5310854131%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5310854131%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (if (gx#stx-pair/null? _%$%tl5310654124%_)
                          (let ((_%__splice9576295763%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310654124%_
                                  '0)))
                            (let ((_%$%tl5327553435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576295763%_ '1)))
                                  (_%$%target5327353432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576295763%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327553435%_)
                                  (_%__match9604896049%_
                                   _%$%e5310154107%_
                                   _%$%hd5310254111%_
                                   _%$%tl5310354114%_
                                   _%$%e5310454117%_
                                   _%$%hd5310554121%_
                                   _%$%tl5310654124%_
                                   _%$%e5310754127%_
                                   _%$%hd5310854131%_
                                   _%$%tl5310954134%_
                                   _%$%e5327053422%_
                                   _%$%hd5327153426%_
                                   _%$%tl5327253429%_
                                   _%__splice9576295763%_
                                   _%$%target5327353432%_
                                   _%$%tl5327553435%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5310854131%_)
                                                  (let ((_%$%e5327053422%_
                                                         (gx#syntax-e
                                                          _%$%hd5310854131%_)))
                                                    (let ((_%$%tl5327253429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5327053422%_)))
                                                          (_%$%hd5327153426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5327053422%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5310654124%_)
                                                          (let ((_%__splice9576295763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5310654124%_
                          '0)))
                    (let ((_%$%tl5327553435%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576295763%_ '1)))
                          (_%$%target5327353432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576295763%_ '0))))
                      (if (gx#stx-null? _%$%tl5327553435%_)
                          (_%__match9604896049%_
                           _%$%e5310154107%_
                           _%$%hd5310254111%_
                           _%$%tl5310354114%_
                           _%$%e5310454117%_
                           _%$%hd5310554121%_
                           _%$%tl5310654124%_
                           _%$%e5310754127%_
                           _%$%hd5310854131%_
                           _%$%tl5310954134%_
                           _%$%e5327053422%_
                           _%$%hd5327153426%_
                           _%$%tl5327253429%_
                           _%__splice9576295763%_
                           _%$%target5327353432%_
                           _%$%tl5327553435%_)
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_))))
                                          (if (gx#stx-pair? _%$%hd5310854131%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5310854131%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310654124%_)
                                                      (let ((_%__splice9576295763%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310654124%_
                                                              '0)))
                                                        (let ((_%$%tl5327553435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '1)))
                      (_%$%target5327353432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '0))))
                  (if (gx#stx-null? _%$%tl5327553435%_)
                      (_%__match9604896049%_
                       _%$%e5310154107%_
                       _%$%hd5310254111%_
                       _%$%tl5310354114%_
                       _%$%e5310454117%_
                       _%$%hd5310554121%_
                       _%$%tl5310654124%_
                       _%$%e5310754127%_
                       _%$%hd5310854131%_
                       _%$%tl5310954134%_
                       _%$%e5327053422%_
                       _%$%hd5327153426%_
                       _%$%tl5327253429%_
                       _%__splice9576295763%_
                       _%$%target5327353432%_
                       _%$%tl5327553435%_)
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                      (if (gx#stx-pair? _%$%hd5310854131%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5310854131%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5310654124%_)
                                                  (let ((_%__splice9576295763%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5310654124%_
                                                          '0)))
                                                    (let ((_%$%tl5327553435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '1)))
                                                          (_%$%target5327353432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327553435%_)
                                                          (_%__match9604896049%_
                                                           _%$%e5310154107%_
                                                           _%$%hd5310254111%_
                                                           _%$%tl5310354114%_
                                                           _%$%e5310454117%_
                                                           _%$%hd5310554121%_
                                                           _%$%tl5310654124%_
                                                           _%$%e5310754127%_
                                                           _%$%hd5310854131%_
                                                           _%$%tl5310954134%_
                                                           _%$%e5327053422%_
                                                           _%$%hd5327153426%_
                                                           _%$%tl5327253429%_
                                                           _%__splice9576295763%_
                                                           _%$%target5327353432%_
                                                           _%$%tl5327553435%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309453303%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                              (if (gx#identifier? _%$%hd5311154141%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102411_|
                                       _%$%hd5311154141%_)
                                      (if (gx#stx-pair? _%$%tl5311854164%_)
                                          (let ((_%$%e5324553562%_
                                                 (gx#syntax-e
                                                  _%$%tl5311854164%_)))
                                            (let ((_%$%tl5324753569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324553562%_)))
                                                  (_%$%hd5324653566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324553562%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5324753569%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310654124%_)
                                                      (let ((_%__splice9575895759%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310654124%_
                                                              '0)))
                                                        (let ((_%$%tl5325053575%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9575895759%_ '1)))
                      (_%$%target5324853572%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9575895759%_ '0))))
                  (if (gx#stx-null? _%$%tl5325053575%_)
                      (_%__match9601696017%_
                       _%$%e5310154107%_
                       _%$%hd5310254111%_
                       _%$%tl5310354114%_
                       _%$%e5310454117%_
                       _%$%hd5310554121%_
                       _%$%tl5310654124%_
                       _%$%e5310754127%_
                       _%$%hd5310854131%_
                       _%$%tl5310954134%_
                       _%$%e5311054137%_
                       _%$%hd5311154141%_
                       _%$%tl5311254144%_
                       _%$%e5311354147%_
                       _%$%hd5311454151%_
                       _%$%tl5311554154%_
                       _%$%e5311654157%_
                       _%$%hd5311754161%_
                       _%$%tl5311854164%_
                       _%$%e5324553562%_
                       _%$%hd5324653566%_
                       _%$%tl5324753569%_
                       _%__splice9575895759%_
                       _%$%target5324853572%_
                       _%$%tl5325053575%_)
                      (if (gx#stx-pair? _%$%hd5310854131%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5310854131%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                          (let () (declare (not safe)) (_%$%g5309453303%_))))))
              (if (gx#stx-pair? _%$%hd5310854131%_)
                  (let ((_%$%e5327053422%_ (gx#syntax-e _%$%hd5310854131%_)))
                    (let ((_%$%tl5327253429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5327053422%_)))
                          (_%$%hd5327153426%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5327053422%_))))
                      (let () (declare (not safe)) (_%$%g5309453303%_))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5310854131%_)
                                                      (let ((_%$%e5327053422%_
                                                             (gx#syntax-e
                                                              _%$%hd5310854131%_)))
                                                        (let ((_%$%tl5327253429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5327053422%_)))
                      (_%$%hd5327153426%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5327053422%_))))
                  (if (gx#stx-pair/null? _%$%tl5310654124%_)
                      (let ((_%__splice9576295763%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5310654124%_
                              '0)))
                        (let ((_%$%tl5327553435%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '1)))
                              (_%$%target5327353432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '0))))
                          (if (gx#stx-null? _%$%tl5327553435%_)
                              (_%__match9604896049%_
                               _%$%e5310154107%_
                               _%$%hd5310254111%_
                               _%$%tl5310354114%_
                               _%$%e5310454117%_
                               _%$%hd5310554121%_
                               _%$%tl5310654124%_
                               _%$%e5310754127%_
                               _%$%hd5310854131%_
                               _%$%tl5310954134%_
                               _%$%e5327053422%_
                               _%$%hd5327153426%_
                               _%$%tl5327253429%_
                               _%__splice9576295763%_
                               _%$%target5327353432%_
                               _%$%tl5327553435%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5310854131%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5310854131%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310654124%_)
                                                      (let ((_%__splice9576295763%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310654124%_
                                                              '0)))
                                                        (let ((_%$%tl5327553435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '1)))
                      (_%$%target5327353432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '0))))
                  (if (gx#stx-null? _%$%tl5327553435%_)
                      (_%__match9604896049%_
                       _%$%e5310154107%_
                       _%$%hd5310254111%_
                       _%$%tl5310354114%_
                       _%$%e5310454117%_
                       _%$%hd5310554121%_
                       _%$%tl5310654124%_
                       _%$%e5310754127%_
                       _%$%hd5310854131%_
                       _%$%tl5310954134%_
                       _%$%e5327053422%_
                       _%$%hd5327153426%_
                       _%$%tl5327253429%_
                       _%__splice9576295763%_
                       _%$%target5327353432%_
                       _%$%tl5327553435%_)
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))
                                      (if (gx#stx-pair? _%$%hd5310854131%_)
                                          (let ((_%$%e5327053422%_
                                                 (gx#syntax-e
                                                  _%$%hd5310854131%_)))
                                            (let ((_%$%tl5327253429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5327053422%_)))
                                                  (_%$%hd5327153426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5327053422%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5310654124%_)
                                                  (let ((_%__splice9576295763%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5310654124%_
                                                          '0)))
                                                    (let ((_%$%tl5327553435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '1)))
                                                          (_%$%target5327353432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9576295763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327553435%_)
                                                          (_%__match9604896049%_
                                                           _%$%e5310154107%_
                                                           _%$%hd5310254111%_
                                                           _%$%tl5310354114%_
                                                           _%$%e5310454117%_
                                                           _%$%hd5310554121%_
                                                           _%$%tl5310654124%_
                                                           _%$%e5310754127%_
                                                           _%$%hd5310854131%_
                                                           _%$%tl5310954134%_
                                                           _%$%e5327053422%_
                                                           _%$%hd5327153426%_
                                                           _%$%tl5327253429%_
                                                           _%__splice9576295763%_
                                                           _%$%target5327353432%_
                                                           _%$%tl5327553435%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309453303%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                  (if (gx#stx-pair? _%$%hd5310854131%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5310854131%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5310654124%_)
                                              (let ((_%__splice9576295763%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5310654124%_
                                                      '0)))
                                                (let ((_%$%tl5327553435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576295763%_
                                                          '1)))
                                                      (_%$%target5327353432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576295763%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5327553435%_)
                                                      (_%__match9604896049%_
                                                       _%$%e5310154107%_
                                                       _%$%hd5310254111%_
                                                       _%$%tl5310354114%_
                                                       _%$%e5310454117%_
                                                       _%$%hd5310554121%_
                                                       _%$%tl5310654124%_
                                                       _%$%e5310754127%_
                                                       _%$%hd5310854131%_
                                                       _%$%tl5310954134%_
                                                       _%$%e5327053422%_
                                                       _%$%hd5327153426%_
                                                       _%$%tl5327253429%_
                                                       _%__splice9576295763%_
                                                       _%$%target5327353432%_
                                                       _%$%tl5327553435%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309453303%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))))
                  (if (gx#stx-null? _%$%tl5311554154%_)
                      (if (gx#stx-pair/null? _%$%tl5310654124%_)
                          (let ((_%__splice9575095751%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310654124%_
                                  '0)))
                            (let ((_%$%tl5318853835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9575095751%_ '1)))
                                  (_%$%target5318653832%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9575095751%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5318853835%_)
                                  (_%__match9591695917%_
                                   _%$%e5310154107%_
                                   _%$%hd5310254111%_
                                   _%$%tl5310354114%_
                                   _%$%e5310454117%_
                                   _%$%hd5310554121%_
                                   _%$%tl5310654124%_
                                   _%$%e5310754127%_
                                   _%$%hd5310854131%_
                                   _%$%tl5310954134%_
                                   _%$%e5311054137%_
                                   _%$%hd5311154141%_
                                   _%$%tl5311254144%_
                                   _%$%e5311354147%_
                                   _%$%hd5311454151%_
                                   _%$%tl5311554154%_
                                   _%__splice9575095751%_
                                   _%$%target5318653832%_
                                   _%$%tl5318853835%_)
                                  (if (gx#stx-pair? _%$%hd5310854131%_)
                                      (let ((_%$%e5327053422%_
                                             (gx#syntax-e _%$%hd5310854131%_)))
                                        (let ((_%$%tl5327253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327053422%_)))
                                              (_%$%hd5327153426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327053422%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))
                          (if (gx#stx-pair? _%$%hd5310854131%_)
                              (let ((_%$%e5327053422%_
                                     (gx#syntax-e _%$%hd5310854131%_)))
                                (let ((_%$%tl5327253429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5327053422%_)))
                                      (_%$%hd5327153426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5327053422%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_))))
                      (if (gx#stx-pair? _%$%hd5310854131%_)
                          (let ((_%$%e5327053422%_
                                 (gx#syntax-e _%$%hd5310854131%_)))
                            (let ((_%$%tl5327253429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5327053422%_)))
                                  (_%$%hd5327153426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5327053422%_))))
                              (if (gx#stx-pair/null? _%$%tl5310654124%_)
                                  (let ((_%__splice9576295763%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5310654124%_
                                          '0)))
                                    (let ((_%$%tl5327553435%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '1)))
                                          (_%$%target5327353432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576295763%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327553435%_)
                                          (_%__match9604896049%_
                                           _%$%e5310154107%_
                                           _%$%hd5310254111%_
                                           _%$%tl5310354114%_
                                           _%$%e5310454117%_
                                           _%$%hd5310554121%_
                                           _%$%tl5310654124%_
                                           _%$%e5310754127%_
                                           _%$%hd5310854131%_
                                           _%$%tl5310954134%_
                                           _%$%e5327053422%_
                                           _%$%hd5327153426%_
                                           _%$%tl5327253429%_
                                           _%__splice9576295763%_
                                           _%$%target5327353432%_
                                           _%$%tl5327553435%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309453303%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g5309453303%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5310854131%_)
                                                      (let ((_%$%e5327053422%_
                                                             (gx#syntax-e
                                                              _%$%hd5310854131%_)))
                                                        (let ((_%$%tl5327253429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5327053422%_)))
                      (_%$%hd5327153426%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5327053422%_))))
                  (if (gx#stx-pair/null? _%$%tl5310654124%_)
                      (let ((_%__splice9576295763%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5310654124%_
                              '0)))
                        (let ((_%$%tl5327553435%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '1)))
                              (_%$%target5327353432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576295763%_ '0))))
                          (if (gx#stx-null? _%$%tl5327553435%_)
                              (_%__match9604896049%_
                               _%$%e5310154107%_
                               _%$%hd5310254111%_
                               _%$%tl5310354114%_
                               _%$%e5310454117%_
                               _%$%hd5310554121%_
                               _%$%tl5310654124%_
                               _%$%e5310754127%_
                               _%$%hd5310854131%_
                               _%$%tl5310954134%_
                               _%$%e5327053422%_
                               _%$%hd5327153426%_
                               _%$%tl5327253429%_
                               _%__splice9576295763%_
                               _%$%target5327353432%_
                               _%$%tl5327553435%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309453303%_)))))
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5310854131%_)
                                              (let ((_%$%e5327053422%_
                                                     (gx#syntax-e
                                                      _%$%hd5310854131%_)))
                                                (let ((_%$%tl5327253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5327053422%_)))
                                                      (_%$%hd5327153426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5327053422%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310654124%_)
                                                      (let ((_%__splice9576295763%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310654124%_
                                                              '0)))
                                                        (let ((_%$%tl5327553435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '1)))
                      (_%$%target5327353432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576295763%_ '0))))
                  (if (gx#stx-null? _%$%tl5327553435%_)
                      (_%__match9604896049%_
                       _%$%e5310154107%_
                       _%$%hd5310254111%_
                       _%$%tl5310354114%_
                       _%$%e5310454117%_
                       _%$%hd5310554121%_
                       _%$%tl5310654124%_
                       _%$%e5310754127%_
                       _%$%hd5310854131%_
                       _%$%tl5310954134%_
                       _%$%e5327053422%_
                       _%$%hd5327153426%_
                       _%$%tl5327253429%_
                       _%__splice9576295763%_
                       _%$%target5327353432%_
                       _%$%tl5327553435%_)
                      (let () (declare (not safe)) (_%$%g5309453303%_)))))
              (let () (declare (not safe)) (_%$%g5309453303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309453303%_))))))
                                  (if (gx#stx-null? _%$%hd5310554121%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5310654124%_)
                                          (let ((_%__splice9576695767%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5310654124%_
                                                  '0)))
                                            (let ((_%$%tl5329153333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9576695767%_
                                                      '1)))
                                                  (_%$%target5328953330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9576695767%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5329153333%_)
                                                  (_%__match9607096071%_
                                                   _%$%e5310154107%_
                                                   _%$%hd5310254111%_
                                                   _%$%tl5310354114%_
                                                   _%$%e5310454117%_
                                                   _%$%hd5310554121%_
                                                   _%$%tl5310654124%_
                                                   _%__splice9576695767%_
                                                   _%$%target5328953330%_
                                                   _%$%tl5329153333%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309453303%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309453303%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309453303%_))))))
                          (let () (declare (not safe)) (_%$%g5309453303%_)))))
                  (let () (declare (not safe)) (_%$%g5309453303%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx54263%_)
        (let* ((_%$%g5426754301%_
                (lambda (_%$%g5426854297%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5426854297%_)))
               (_%$%g5426654422%_
                (lambda (_%$%g5426854305%_)
                  (if (gx#stx-pair? _%$%g5426854305%_)
                      (let ((_%$%e5427254308%_
                             (gx#syntax-e _%$%g5426854305%_)))
                        (let ((_%$%hd5427354312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5427254308%_)))
                              (_%$%tl5427454315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5427254308%_))))
                          (if (gx#stx-pair? _%$%tl5427454315%_)
                              (let ((_%$%e5427554318%_
                                     (gx#syntax-e _%$%tl5427454315%_)))
                                (let ((_%$%hd5427654322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5427554318%_)))
                                      (_%$%tl5427754325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5427554318%_))))
                                  (if (gx#stx-pair? _%$%hd5427654322%_)
                                      (let ((_%$%e5427854328%_
                                             (gx#syntax-e _%$%hd5427654322%_)))
                                        (let ((_%$%hd5427954332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5427854328%_)))
                                              (_%$%tl5428054335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5427854328%_))))
                                          (if (gx#stx-pair? _%$%tl5428054335%_)
                                              (let ((_%$%e5428154338%_
                                                     (gx#syntax-e
                                                      _%$%tl5428054335%_)))
                                                (let ((_%$%hd5428254342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5428154338%_)))
                                                      (_%$%tl5428354345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5428154338%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5428254342%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102413_|
                                                           _%$%hd5428254342%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5428354345%_)
                                                              (let ((_%$%e5428454348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5428354345%_)))
                        (let ((_%$%hd5428554352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5428454348%_)))
                              (_%$%tl5428654355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5428454348%_))))
                          (if (gx#stx-null? _%$%tl5428654355%_)
                              (if (gx#stx-pair/null? _%$%tl5427754325%_)
                                  (let ((_g102414_
                                         (gx#syntax-split-splice
                                          _%$%tl5427754325%_
                                          '0)))
                                    (begin
                                      (let ((_g102415_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g102414_)
                                                   (##values-length _g102414_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g102415_ 2)))
                                            (error "Context expects 2 values"
                                                   _g102415_)))
                                      (let ((_%$%target5428754358%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g102414_ 0)))
                                            (_%$%tl5428954361%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g102414_ 1))))
                                        (if (gx#stx-null? _%$%tl5428954361%_)
                                            (letrec ((_%$%loop5429054364%_
                                                      (lambda (_%$%hd5428854368%_
                                                               _%$%body5429454371%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd5428854368%_)
                                                            (let ((_%$%e5429154373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd5428854368%_)))
                      (let ((_%$%lp-hd5429254377%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5429154373%_)))
                            (_%$%lp-tl5429354380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5429154373%_))))
                        (_%$%loop5429054364%_
                         _%$%lp-tl5429354380%_
                         (cons _%$%lp-hd5429254377%_ _%$%body5429454371%_))))
                    (let ((_%$%body5429554383%_
                           (reverse _%$%body5429454371%_)))
                      (if (gx#identifier? _%$%hd5427954332%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%$%hd5428554352%_
                                            (cons _%$%hd5427954332%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%$%g5441354416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g5441454419%_)
                         (cons _%$%g5441354416%_ _%$%g5441454419%_))
                       '()
                       _%$%body5429554383%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%$%hd5427954332%_
                                                              (cons _%$%hd5428554352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd5427954332%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%$%g5426754301%_ _%$%g5426854305%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop5429054364%_
                                               _%$%target5428754358%_
                                               '()))
                                            (_%$%g5426754301%_
                                             _%$%g5426854305%_)))))
                                  (_%$%g5426754301%_ _%$%g5426854305%_))
                              (_%$%g5426754301%_ _%$%g5426854305%_))))
                      (_%$%g5426754301%_ _%$%g5426854305%_))
                  (_%$%g5426754301%_ _%$%g5426854305%_))
              (_%$%g5426754301%_ _%$%g5426854305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5426754301%_
                                               _%$%g5426854305%_))))
                                      (_%$%g5426754301%_ _%$%g5426854305%_))))
                              (_%$%g5426754301%_ _%$%g5426854305%_))))
                      (_%$%g5426754301%_ _%$%g5426854305%_)))))
          (_%$%g5426654422%_ _%$stx54263%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass55180%_ _%slot55182%_)
        (let ((_%$e55184%_
               (let ((__obj102209 _%klass55180%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102209
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102209 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102209
                      'slot-types)))))
          (if _%$e55184%_ (agetq _%slot55182%_ _%$e55184%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass55161%_ _%slot55163%_)
        (let ((_%$e55165%_
               (let ((__obj102210 _%klass55161%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102210
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102210 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102210
                      'slot-defaults)))))
          (if _%$e55165%_
              (let ((_%$e55172%_ (agetq _%slot55163%_ _%$e55165%_)))
                (if _%$e55172%_ (gx#syntax-local-introduce _%$e55172%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass55142%_ _%slot55144%_)
        (let ((_%$e55146%_
               (let ((__obj102211 _%klass55142%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102211
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102211 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102211
                      'slot-defaults)))))
          (if _%$e55146%_
              (let ((_%$e55153%_ (agetq _%slot55144%_ _%$e55146%_)))
                (if _%$e55153%_ (gx#syntax-local-introduce _%$e55153%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass54911%_ _%slot54913%_)
        (let ((_%$%contract5491454916%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass54911%_
                _%slot54913%_)))
          (if _%$%contract5491454916%_
              (let* ((_%contract54919%_ _%$%contract5491454916%_)
                     (_%__stx9607396074%_ _%contract54919%_)
                     (_%$%g5492454961%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9607396074%_))))
                (let ((_%__kont9607696077%_
                       (lambda (_%$%g5492655111%_ _%$%g5492755113%_)
                         (not (gx#free-identifier=?
                               _%$%g5492755113%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9607896079%_
                       (lambda (_%$%g5493455051%_
                                _%$%g5493555053%_
                                _%$%g5493655054%_)
                         (not (gx#free-identifier=?
                               _%$%g5493555053%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9608096081%_ (lambda (_%$%g5494954988%_) '#f)))
                  (let* ((_%__match9612696127%_
                          (lambda (_%$%e5493755011%_
                                   _%$%hd5493855015%_
                                   _%$%tl5493955018%_
                                   _%$%e5494055021%_
                                   _%$%hd5494155025%_
                                   _%$%tl5494255028%_
                                   _%$%e5494355031%_
                                   _%$%hd5494455035%_
                                   _%$%tl5494555038%_
                                   _%$%e5494655041%_
                                   _%$%hd5494755045%_
                                   _%$%tl5494855048%_)
                            (let ((_%$%g5493455051%_ _%$%hd5494755045%_)
                                  (_%$%g5493555053%_ _%$%hd5494455035%_)
                                  (_%$%g5493655054%_ _%$%hd5494155025%_))
                              (if (and (gx#identifier? _%$%g5493555053%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5493555053%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5493555053%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5493555053%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5493555053%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9607896079%_
                                   _%$%g5493455051%_
                                   _%$%g5493555053%_
                                   _%$%g5493655054%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5492454961%_))))))
                         (_%__match9609696097%_
                          (lambda (_%$%e5492855091%_
                                   _%$%hd5492955095%_
                                   _%$%tl5493055098%_
                                   _%$%e5493155101%_
                                   _%$%hd5493255105%_
                                   _%$%tl5493355108%_)
                            (let ((_%$%g5492655111%_ _%$%hd5493255105%_)
                                  (_%$%g5492755113%_ _%$%hd5492955095%_))
                              (if (and (gx#identifier? _%$%g5492755113%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5492755113%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5492755113%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5492755113%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5492755113%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9607696077%_
                                   _%$%g5492655111%_
                                   _%$%g5492755113%_)
                                  (if (gx#identifier? _%$%hd5492955095%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102416_|
                                           _%$%hd5492955095%_)
                                          (_%__kont9608096081%_
                                           _%$%hd5493255105%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5492454961%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5492454961%_))))))))
                    (if (gx#stx-pair? _%__stx9607396074%_)
                        (let ((_%$%e5492855091%_
                               (gx#syntax-e _%__stx9607396074%_)))
                          (let ((_%$%tl5493055098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5492855091%_)))
                                (_%$%hd5492955095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5492855091%_))))
                            (if (gx#stx-pair? _%$%tl5493055098%_)
                                (let ((_%$%e5493155101%_
                                       (gx#syntax-e _%$%tl5493055098%_)))
                                  (let ((_%$%tl5493355108%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5493155101%_)))
                                        (_%$%hd5493255105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5493155101%_))))
                                    (if (gx#stx-null? _%$%tl5493355108%_)
                                        (_%__match9609696097%_
                                         _%$%e5492855091%_
                                         _%$%hd5492955095%_
                                         _%$%tl5493055098%_
                                         _%$%e5493155101%_
                                         _%$%hd5493255105%_
                                         _%$%tl5493355108%_)
                                        (if (gx#identifier? _%$%hd5492955095%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g102416_|
                                                 _%$%hd5492955095%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5493355108%_)
                                                    (let ((_%$%e5494355031%_
                                                           (gx#syntax-e
                                                            _%$%tl5493355108%_)))
                                                      (let ((_%$%tl5494555038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5494355031%_)))
                    (_%$%hd5494455035%_
                     (let () (declare (not safe)) (##car _%$%e5494355031%_))))
                (if (gx#stx-pair? _%$%tl5494555038%_)
                    (let ((_%$%e5494655041%_ (gx#syntax-e _%$%tl5494555038%_)))
                      (let ((_%$%tl5494855048%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5494655041%_)))
                            (_%$%hd5494755045%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5494655041%_))))
                        (if (gx#stx-null? _%$%tl5494855048%_)
                            (_%__match9612696127%_
                             _%$%e5492855091%_
                             _%$%hd5492955095%_
                             _%$%tl5493055098%_
                             _%$%e5493155101%_
                             _%$%hd5493255105%_
                             _%$%tl5493355108%_
                             _%$%e5494355031%_
                             _%$%hd5494455035%_
                             _%$%tl5494555038%_
                             _%$%e5494655041%_
                             _%$%hd5494755045%_
                             _%$%tl5494855048%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5492454961%_)))))
                    (let () (declare (not safe)) (_%$%g5492454961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5492454961%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5492454961%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5492454961%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5492454961%_)))))
                        (let () (declare (not safe)) (_%$%g5492454961%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass54680%_ _%slot54682%_)
        (let ((_%$%contract5468354685%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass54680%_
                _%slot54682%_)))
          (if _%$%contract5468354685%_
              (let* ((_%contract54688%_ _%$%contract5468354685%_)
                     (_%__stx9614796148%_ _%contract54688%_)
                     (_%$%g5469354730%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9614796148%_))))
                (let ((_%__kont9615096151%_
                       (lambda (_%$%g5469554880%_ _%$%g5469654882%_)
                         (not (gx#free-identifier=?
                               _%$%g5469654882%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9615296153%_
                       (lambda (_%$%g5470354820%_
                                _%$%g5470454822%_
                                _%$%g5470554823%_)
                         '#t))
                      (_%__kont9615496155%_ (lambda (_%$%g5471854757%_) '#t)))
                  (let* ((_%__match9620096201%_
                          (lambda (_%$%e5470654780%_
                                   _%$%hd5470754784%_
                                   _%$%tl5470854787%_
                                   _%$%e5470954790%_
                                   _%$%hd5471054794%_
                                   _%$%tl5471154797%_
                                   _%$%e5471254800%_
                                   _%$%hd5471354804%_
                                   _%$%tl5471454807%_
                                   _%$%e5471554810%_
                                   _%$%hd5471654814%_
                                   _%$%tl5471754817%_)
                            (let ((_%$%g5470354820%_ _%$%hd5471654814%_)
                                  (_%$%g5470454822%_ _%$%hd5471354804%_)
                                  (_%$%g5470554823%_ _%$%hd5471054794%_))
                              (if (and (gx#identifier? _%$%g5470454822%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5470454822%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5470454822%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5470454822%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5470454822%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9615296153%_
                                   _%$%g5470354820%_
                                   _%$%g5470454822%_
                                   _%$%g5470554823%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5469354730%_))))))
                         (_%__match9617096171%_
                          (lambda (_%$%e5469754860%_
                                   _%$%hd5469854864%_
                                   _%$%tl5469954867%_
                                   _%$%e5470054870%_
                                   _%$%hd5470154874%_
                                   _%$%tl5470254877%_)
                            (let ((_%$%g5469554880%_ _%$%hd5470154874%_)
                                  (_%$%g5469654882%_ _%$%hd5469854864%_))
                              (if (and (gx#identifier? _%$%g5469654882%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5469654882%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5469654882%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5469654882%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5469654882%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9615096151%_
                                   _%$%g5469554880%_
                                   _%$%g5469654882%_)
                                  (if (gx#identifier? _%$%hd5469854864%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102417_|
                                           _%$%hd5469854864%_)
                                          (_%__kont9615496155%_
                                           _%$%hd5470154874%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5469354730%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5469354730%_))))))))
                    (if (gx#stx-pair? _%__stx9614796148%_)
                        (let ((_%$%e5469754860%_
                               (gx#syntax-e _%__stx9614796148%_)))
                          (let ((_%$%tl5469954867%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5469754860%_)))
                                (_%$%hd5469854864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5469754860%_))))
                            (if (gx#stx-pair? _%$%tl5469954867%_)
                                (let ((_%$%e5470054870%_
                                       (gx#syntax-e _%$%tl5469954867%_)))
                                  (let ((_%$%tl5470254877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5470054870%_)))
                                        (_%$%hd5470154874%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5470054870%_))))
                                    (if (gx#stx-null? _%$%tl5470254877%_)
                                        (_%__match9617096171%_
                                         _%$%e5469754860%_
                                         _%$%hd5469854864%_
                                         _%$%tl5469954867%_
                                         _%$%e5470054870%_
                                         _%$%hd5470154874%_
                                         _%$%tl5470254877%_)
                                        (if (gx#identifier? _%$%hd5469854864%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g102417_|
                                                 _%$%hd5469854864%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5470254877%_)
                                                    (let ((_%$%e5471254800%_
                                                           (gx#syntax-e
                                                            _%$%tl5470254877%_)))
                                                      (let ((_%$%tl5471454807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5471254800%_)))
                    (_%$%hd5471354804%_
                     (let () (declare (not safe)) (##car _%$%e5471254800%_))))
                (if (gx#stx-pair? _%$%tl5471454807%_)
                    (let ((_%$%e5471554810%_ (gx#syntax-e _%$%tl5471454807%_)))
                      (let ((_%$%tl5471754817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5471554810%_)))
                            (_%$%hd5471654814%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5471554810%_))))
                        (if (gx#stx-null? _%$%tl5471754817%_)
                            (_%__match9620096201%_
                             _%$%e5469754860%_
                             _%$%hd5469854864%_
                             _%$%tl5469954867%_
                             _%$%e5470054870%_
                             _%$%hd5470154874%_
                             _%$%tl5470254877%_
                             _%$%e5471254800%_
                             _%$%hd5471354804%_
                             _%$%tl5471454807%_
                             _%$%e5471554810%_
                             _%$%hd5471654814%_
                             _%$%tl5471754817%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5469354730%_)))))
                    (let () (declare (not safe)) (_%$%g5469354730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5469354730%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5469354730%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5469354730%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5469354730%_)))))
                        (let () (declare (not safe)) (_%$%g5469354730%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id54667%_)
        (if (gx#identifier? _%id54667%_)
            (let* ((_%str54670%_ (symbol->string (gx#stx-e _%id54667%_)))
                   (_%$%index5467254674%_ (string-index _%str54670%_ '#\.)))
              (if _%$%index5467254674%_
                  (let ((_%index54677%_ _%$%index5467254674%_))
                    (if (let () (declare (not safe)) (##fx> _%index54677%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str54670%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx54660%_ _%id54662%_)
        (let ((_%parts54664%_
               (string-split (symbol->string (gx#stx-e _%id54662%_)) '#\.)))
          (if (find string-empty? _%parts54664%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx54660%_
               _%id54662%_)
              (cons (gx#stx-identifier _%id54662%_ (car _%parts54664%_))
                    (map string->symbol (cdr _%parts54664%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx54546%_ _%klass-or-id54548%_ _%slot54549%_)
        (let* ((_%klass54551%_
                (if (gx#identifier? _%klass-or-id54548%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx54546%_
                       _%klass-or-id54548%_))
                    _%klass-or-id54548%_))
               (_%$e54556%_
                (agetq _%slot54549%_
                       (let ((__obj102212 _%klass54551%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj102212
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj102212
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj102212
                              'unchecked-accessors))))))
          (if _%$e54556%_
              _%$e54556%_
              (let ((_%$e54564%_
                     (agetq _%slot54549%_
                            (let ((_%$e54560%_
                                   (let ((__obj102213 _%klass54551%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj102213
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj102213
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj102213
                                          'slot-offsets)))))
                              (if _%$e54560%_ _%$e54560%_ '())))))
                (if _%$e54564%_
                    (let* ((_%$%g5457154590%_
                            (lambda (_%$%g5457254586%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5457254586%_)))
                           (_%$%g5457054654%_
                            (lambda (_%$%g5457254594%_)
                              (if (gx#stx-pair? _%$%g5457254594%_)
                                  (let ((_%$%e5457654597%_
                                         (gx#syntax-e _%$%g5457254594%_)))
                                    (let ((_%$%hd5457754601%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5457654597%_)))
                                          (_%$%tl5457854604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5457654597%_))))
                                      (if (gx#stx-pair? _%$%tl5457854604%_)
                                          (let ((_%$%e5457954607%_
                                                 (gx#syntax-e
                                                  _%$%tl5457854604%_)))
                                            (let ((_%$%hd5458054611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5457954607%_)))
                                                  (_%$%tl5458154614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5457954607%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5458154614%_)
                                                  (let ((_%$%e5458254617%_
                                                         (gx#syntax-e
                                                          _%$%tl5458154614%_)))
                                                    (let ((_%$%hd5458354621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5458254617%_)))
                                                          (_%$%tl5458454624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5458254617%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5458454624%_)
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
                                                 (cons _%$%hd5458354621%_
                                                       (cons _%$%hd5457754601%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%hd5458054611%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx54546%_))
                  (_%$%g5457154590%_ _%$%g5457254594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5457154590%_
                                                   _%$%g5457254594%_))))
                                          (_%$%g5457154590%_
                                           _%$%g5457254594%_))))
                                  (_%$%g5457154590%_ _%$%g5457254594%_)))))
                      (_%$%g5457054654%_
                       (list (let ((__obj102214 _%klass54551%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102214
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102214
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102214
                                    'type-descriptor)))
                             _%slot54549%_
                             _%$e54564%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx54546%_
                     _%klass54551%_
                     _%slot54549%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx54427%_
               _%klass-or-id54429%_
               _%slot54430%_
               _%checked?54431%_)
        (let* ((_%klass54433%_
                (if (gx#identifier? _%klass-or-id54429%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx54427%_
                       _%klass-or-id54429%_))
                    _%klass-or-id54429%_))
               (_%mutators54436%_
                (if _%checked?54431%_
                    (let ((__obj102215 _%klass54433%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102215
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj102215
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj102215
                           'mutators)))
                    (let ((__obj102216 _%klass54433%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102216
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj102216
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj102216
                           'unchecked-mutators)))))
               (_%$e54441%_ (agetq _%slot54430%_ _%mutators54436%_)))
          (if _%$e54441%_
              _%$e54441%_
              (let ((_%$e54449%_
                     (agetq _%slot54430%_
                            (let ((_%$e54445%_
                                   (let ((__obj102217 _%klass54433%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj102217
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj102217
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj102217
                                          'slot-offsets)))))
                              (if _%$e54445%_ _%$e54445%_ '())))))
                (if _%$e54449%_
                    (let* ((_%$%g5445654475%_
                            (lambda (_%$%g5445754471%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5445754471%_)))
                           (_%$%g5445554540%_
                            (lambda (_%$%g5445754479%_)
                              (if (gx#stx-pair? _%$%g5445754479%_)
                                  (let ((_%$%e5446154482%_
                                         (gx#syntax-e _%$%g5445754479%_)))
                                    (let ((_%$%hd5446254486%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5446154482%_)))
                                          (_%$%tl5446354489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5446154482%_))))
                                      (if (gx#stx-pair? _%$%tl5446354489%_)
                                          (let ((_%$%e5446454492%_
                                                 (gx#syntax-e
                                                  _%$%tl5446354489%_)))
                                            (let ((_%$%hd5446554496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5446454492%_)))
                                                  (_%$%tl5446654499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5446454492%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5446654499%_)
                                                  (let ((_%$%e5446754502%_
                                                         (gx#syntax-e
                                                          _%$%tl5446654499%_)))
                                                    (let ((_%$%hd5446854506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5446754502%_)))
                                                          (_%$%tl5446954509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5446754502%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5446954509%_)
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
                                                       (cons _%$%hd5446854506%_
                                                             (cons _%$%hd5446254486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd5446554496%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx54427%_))
                  (_%$%g5445654475%_ _%$%g5445754479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5445654475%_
                                                   _%$%g5445754479%_))))
                                          (_%$%g5445654475%_
                                           _%$%g5445754479%_))))
                                  (_%$%g5445654475%_ _%$%g5445754479%_)))))
                      (_%$%g5445554540%_
                       (list (let ((__obj102218 _%klass54433%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102218
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102218
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102218
                                    'type-descriptor)))
                             _%slot54430%_
                             _%$e54449%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx54427%_
                     _%klass54433%_
                     _%slot54430%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx55193%_)
        (letrec ((_%expand-body55196%_
                  (lambda (_%klass56094%_
                           _%var56096%_
                           _%Type56097%_
                           _%body56098%_
                           _%checked?56099%_)
                    (let* ((_%$%g5610156145%_
                            (lambda (_%$%g5610256141%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5610256141%_)))
                           (_%$%g5610056300%_
                            (lambda (_%$%g5610256149%_)
                              (if (gx#stx-pair? _%$%g5610256149%_)
                                  (let ((_%$%e5611056152%_
                                         (gx#syntax-e _%$%g5610256149%_)))
                                    (let ((_%$%hd5611156156%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5611056152%_)))
                                          (_%$%tl5611256159%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5611056152%_))))
                                      (if (gx#stx-pair? _%$%tl5611256159%_)
                                          (let ((_%$%e5611356162%_
                                                 (gx#syntax-e
                                                  _%$%tl5611256159%_)))
                                            (let ((_%$%hd5611456166%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5611356162%_)))
                                                  (_%$%tl5611556169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5611356162%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5611556169%_)
                                                  (let ((_%$%e5611656172%_
                                                         (gx#syntax-e
                                                          _%$%tl5611556169%_)))
                                                    (let ((_%$%hd5611756176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5611656172%_)))
                                                          (_%$%tl5611856179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5611656172%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5611856179%_)
                                                          (let ((_%$%e5611956182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5611856179%_)))
                    (let ((_%$%hd5612056186%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5611956182%_)))
                          (_%$%tl5612156189%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5611956182%_))))
                      (if (gx#stx-pair? _%$%tl5612156189%_)
                          (let ((_%$%e5612256192%_
                                 (gx#syntax-e _%$%tl5612156189%_)))
                            (let ((_%$%hd5612356196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5612256192%_)))
                                  (_%$%tl5612456199%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5612256192%_))))
                              (if (gx#stx-pair? _%$%tl5612456199%_)
                                  (let ((_%$%e5612556202%_
                                         (gx#syntax-e _%$%tl5612456199%_)))
                                    (let ((_%$%hd5612656206%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5612556202%_)))
                                          (_%$%tl5612756209%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5612556202%_))))
                                      (if (gx#stx-pair? _%$%tl5612756209%_)
                                          (let ((_%$%e5612856212%_
                                                 (gx#syntax-e
                                                  _%$%tl5612756209%_)))
                                            (let ((_%$%hd5612956216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5612856212%_)))
                                                  (_%$%tl5613056219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5612856212%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5612956216%_)
                                                  (let ((_g102418_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5612956216%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g102419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102418_)
                           (##values-length _g102418_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102419_ 2)))
                    (error "Context expects 2 values" _g102419_)))
              (let ((_%$%target5613156222%_
                     (let () (declare (not safe)) (##values-ref _g102418_ 0)))
                    (_%$%tl5613356225%_
                     (let () (declare (not safe)) (##values-ref _g102418_ 1))))
                (if (gx#stx-null? _%$%tl5613356225%_)
                    (letrec ((_%$%loop5613456228%_
                              (lambda (_%$%hd5613256232%_ _%$%body5613856235%_)
                                (if (gx#stx-pair? _%$%hd5613256232%_)
                                    (let ((_%$%e5613556237%_
                                           (gx#syntax-e _%$%hd5613256232%_)))
                                      (let ((_%$%lp-hd5613656241%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5613556237%_)))
                                            (_%$%lp-tl5613756244%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5613556237%_))))
                                        (_%$%loop5613456228%_
                                         _%$%lp-tl5613756244%_
                                         (cons _%$%lp-hd5613656241%_
                                               _%$%body5613856235%_))))
                                    (let ((_%$%body5613956247%_
                                           (reverse _%$%body5613856235%_)))
                                      (if (gx#stx-null? _%$%tl5613056219%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5611756176%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5611456166%_ '()))
                                      (cons _%$%hd5611756176%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5611156156%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5611756176%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5612056186%_ '()))
                            (cons _%$%hd5612356196%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5612656206%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5629156294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5629256297%_)
                   (cons _%$%g5629156294%_ _%$%g5629256297%_))
                 '()
                 _%$%body5613956247%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5610156145%_
                                           _%$%g5610256149%_)))))))
                      (_%$%loop5613456228%_ _%$%target5613156222%_ '()))
                    (_%$%g5610156145%_ _%$%g5610256149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5610156145%_
                                                   _%$%g5610256149%_))))
                                          (_%$%g5610156145%_
                                           _%$%g5610256149%_))))
                                  (_%$%g5610156145%_ _%$%g5610256149%_))))
                          (_%$%g5610156145%_ _%$%g5610256149%_))))
                  (_%$%g5610156145%_ _%$%g5610256149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5610156145%_
                                                   _%$%g5610256149%_))))
                                          (_%$%g5610156145%_
                                           _%$%g5610256149%_))))
                                  (_%$%g5610156145%_ _%$%g5610256149%_)))))
                      (_%$%g5610056300%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj102219 _%klass56094%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102219
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102219
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj102219
                                    'type-descriptor)))
                             _%var56096%_
                             _%klass56094%_
                             _%checked?56099%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body56098%_)))))
                 (_%expand55198%_
                  (lambda (_%var55986%_
                           _%Type55988%_
                           _%body55989%_
                           _%checked?55990%_
                           _%checked-mutators?55991%_
                           _%maybe?55992%_)
                    (let* ((_%klass55994%_
                            (gx#syntax-local-value _%Type55988%_ false))
                           (_%expr-body56001%_
                            (_%expand-body55196%_
                             _%klass55994%_
                             _%var55986%_
                             _%Type55988%_
                             _%body55989%_
                             (let ((_%$e55997%_ _%checked?55990%_))
                               (if _%$e55997%_
                                   _%$e55997%_
                                   _%checked-mutators?55991%_)))))
                      (if _%checked?55990%_
                          (let* ((_%$%g5600656025%_
                                  (lambda (_%$%g5600756021%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g5600756021%_)))
                                 (_%$%g5600556087%_
                                  (lambda (_%$%g5600756029%_)
                                    (if (gx#stx-pair? _%$%g5600756029%_)
                                        (let ((_%$%e5601156032%_
                                               (gx#syntax-e
                                                _%$%g5600756029%_)))
                                          (let ((_%$%hd5601256036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5601156032%_)))
                                                (_%$%tl5601356039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5601156032%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl5601356039%_)
                                                (let ((_%$%e5601456042%_
                                                       (gx#syntax-e
                                                        _%$%tl5601356039%_)))
                                                  (let ((_%$%hd5601556046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5601456042%_)))
                                                        (_%$%tl5601656049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5601456042%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl5601656049%_)
                                                        (let ((_%$%e5601756052%_
                                                               (gx#syntax-e
                                                                _%$%tl5601656049%_)))
                                                          (let ((_%$%hd5601856056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5601756052%_)))
                        (_%$%tl5601956059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5601756052%_))))
                    (if (gx#stx-null? _%$%tl5601956059%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%$%hd5601556046%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%$%hd5601256036%_ '())))
                                    (cons _%$%hd5601856056%_ '())))
                        (_%$%g5600656025%_ _%$%g5600756029%_))))
                (_%$%g5600656025%_ _%$%g5600756029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5600656025%_
                                                 _%$%g5600756029%_))))
                                        (_%$%g5600656025%_
                                         _%$%g5600756029%_)))))
                            (_%$%g5600556087%_
                             (list (let ((_%instance?56091%_
                                          (let ((__obj102220 _%klass55994%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj102220
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj102220
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj102220
                                                 'predicate)))))
                                     (if _%maybe?55992%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?56091%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?56091%_))
                                   _%var55986%_
                                   _%expr-body56001%_)))
                          _%expr-body56001%_)))))
          (let* ((_%__stx9622196222%_ _%stx55193%_)
                 (_%$%g5520455347%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9622196222%_))))
            (let ((_%__kont9622496225%_
                   (lambda (_%$%g5520655914%_
                            _%$%g5520755916%_
                            _%$%g5520855917%_
                            _%$%g5520955918%_)
                     (let* ((_%$%g5594355951%_
                             (lambda (_%$%g5594455947%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5594455947%_)))
                            (_%$%g5594255978%_
                             (lambda (_%$%g5594455955%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g5520955918%_
                                                 (cons _%$%g5520855917%_
                                                       (cons _%$%g5594455955%_
                                                             '())))
                                           (foldr (lambda (_%$%g5596955972%_
                                                           _%$%g5597055975%_)
                                                    (cons _%$%g5596955972%_
                                                          _%$%g5597055975%_))
                                                  '()
                                                  _%$%g5520655914%_))))))
                       (_%$%g5594255978%_
                        (let ((__obj102221
                               (gx#syntax-local-value _%$%g5520755916%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102221
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102221
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj102221
                               'identifier)))))))
                  (_%__kont9622896229%_
                   (lambda (_%$%g5523455794%_
                            _%$%g5523555796%_
                            _%$%g5523655797%_)
                     (_%expand55198%_
                      _%$%g5523655797%_
                      _%$%g5523555796%_
                      (foldr (lambda (_%$%g5582055823%_ _%$%g5582155826%_)
                               (cons _%$%g5582055823%_ _%$%g5582155826%_))
                             '()
                             _%$%g5523455794%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9623296233%_
                   (lambda (_%$%g5526155674%_
                            _%$%g5526255676%_
                            _%$%g5526355677%_)
                     (_%expand55198%_
                      _%$%g5526355677%_
                      _%$%g5526255676%_
                      (foldr (lambda (_%$%g5570055703%_ _%$%g5570155706%_)
                               (cons _%$%g5570055703%_ _%$%g5570155706%_))
                             '()
                             _%$%g5526155674%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9623696237%_
                   (lambda (_%$%g5528855554%_
                            _%$%g5528955556%_
                            _%$%g5529055557%_)
                     (_%expand55198%_
                      _%$%g5529055557%_
                      _%$%g5528955556%_
                      (foldr (lambda (_%$%g5558055583%_ _%$%g5558155586%_)
                               (cons _%$%g5558055583%_ _%$%g5558155586%_))
                             '()
                             _%$%g5528855554%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9624096241%_
                   (lambda (_%$%g5531555432%_
                            _%$%g5531655434%_
                            _%$%g5531755435%_)
                     (_%expand55198%_
                      _%$%g5531755435%_
                      _%$%g5531655434%_
                      (foldr (lambda (_%$%g5546055463%_ _%$%g5546155466%_)
                               (cons _%$%g5546055463%_ _%$%g5546155466%_))
                             '()
                             _%$%g5531555432%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9646096461%_
                      (lambda (_%$%e5531855354%_
                               _%$%hd5531955358%_
                               _%$%tl5532055361%_
                               _%$%e5532155364%_
                               _%$%hd5532255368%_
                               _%$%tl5532355371%_
                               _%$%e5532455374%_
                               _%$%hd5532555378%_
                               _%$%tl5532655381%_
                               _%$%e5532755384%_
                               _%$%hd5532855388%_
                               _%$%tl5532955391%_
                               _%$%e5533055394%_
                               _%$%hd5533155398%_
                               _%$%tl5533255401%_
                               _%__splice9624296243%_
                               _%$%target5533355404%_
                               _%$%tl5533555407%_)
                        (letrec ((_%$%loop5533655410%_
                                  (lambda (_%$%hd5533455414%_
                                           _%$%body5534055417%_)
                                    (if (gx#stx-pair? _%$%hd5533455414%_)
                                        (let ((_%$%e5533755419%_
                                               (gx#syntax-e
                                                _%$%hd5533455414%_)))
                                          (let ((_%$%lp-tl5533955426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5533755419%_)))
                                                (_%$%lp-hd5533855423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5533755419%_))))
                                            (_%$%loop5533655410%_
                                             _%$%lp-tl5533955426%_
                                             (cons _%$%lp-hd5533855423%_
                                                   _%$%body5534055417%_))))
                                        (let ((_%$%body5534155429%_
                                               (reverse _%$%body5534055417%_)))
                                          (let ((_%$%g5531555432%_
                                                 _%$%body5534155429%_)
                                                (_%$%g5531655434%_
                                                 _%$%hd5533155398%_)
                                                (_%$%g5531755435%_
                                                 _%$%hd5532555378%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5531655434%_))
                                                (_%__kont9624096241%_
                                                 _%$%g5531555432%_
                                                 _%$%g5531655434%_
                                                 _%$%g5531755435%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))))))))
                          (_%$%loop5533655410%_ _%$%target5533355404%_ '()))))
                     (_%__match9641696417%_
                      (lambda (_%$%e5529155476%_
                               _%$%hd5529255480%_
                               _%$%tl5529355483%_
                               _%$%e5529455486%_
                               _%$%hd5529555490%_
                               _%$%tl5529655493%_
                               _%$%e5529755496%_
                               _%$%hd5529855500%_
                               _%$%tl5529955503%_
                               _%$%e5530055506%_
                               _%$%hd5530155510%_
                               _%$%tl5530255513%_
                               _%$%e5530355516%_
                               _%$%hd5530455520%_
                               _%$%tl5530555523%_
                               _%__splice9623896239%_
                               _%$%target5530655526%_
                               _%$%tl5530855529%_)
                        (letrec ((_%$%loop5530955532%_
                                  (lambda (_%$%hd5530755536%_
                                           _%$%body5531355539%_)
                                    (if (gx#stx-pair? _%$%hd5530755536%_)
                                        (let ((_%$%e5531055541%_
                                               (gx#syntax-e
                                                _%$%hd5530755536%_)))
                                          (let ((_%$%lp-tl5531255548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5531055541%_)))
                                                (_%$%lp-hd5531155545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5531055541%_))))
                                            (_%$%loop5530955532%_
                                             _%$%lp-tl5531255548%_
                                             (cons _%$%lp-hd5531155545%_
                                                   _%$%body5531355539%_))))
                                        (let ((_%$%body5531455551%_
                                               (reverse _%$%body5531355539%_)))
                                          (let ((_%$%g5528855554%_
                                                 _%$%body5531455551%_)
                                                (_%$%g5528955556%_
                                                 _%$%hd5530455520%_)
                                                (_%$%g5529055557%_
                                                 _%$%hd5529855500%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5528955556%_))
                                                (_%__kont9623696237%_
                                                 _%$%g5528855554%_
                                                 _%$%g5528955556%_
                                                 _%$%g5529055557%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))))))))
                          (_%$%loop5530955532%_ _%$%target5530655526%_ '()))))
                     (_%__match9637296373%_
                      (lambda (_%$%e5526455596%_
                               _%$%hd5526555600%_
                               _%$%tl5526655603%_
                               _%$%e5526755606%_
                               _%$%hd5526855610%_
                               _%$%tl5526955613%_
                               _%$%e5527055616%_
                               _%$%hd5527155620%_
                               _%$%tl5527255623%_
                               _%$%e5527355626%_
                               _%$%hd5527455630%_
                               _%$%tl5527555633%_
                               _%$%e5527655636%_
                               _%$%hd5527755640%_
                               _%$%tl5527855643%_
                               _%__splice9623496235%_
                               _%$%target5527955646%_
                               _%$%tl5528155649%_)
                        (letrec ((_%$%loop5528255652%_
                                  (lambda (_%$%hd5528055656%_
                                           _%$%body5528655659%_)
                                    (if (gx#stx-pair? _%$%hd5528055656%_)
                                        (let ((_%$%e5528355661%_
                                               (gx#syntax-e
                                                _%$%hd5528055656%_)))
                                          (let ((_%$%lp-tl5528555668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5528355661%_)))
                                                (_%$%lp-hd5528455665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5528355661%_))))
                                            (_%$%loop5528255652%_
                                             _%$%lp-tl5528555668%_
                                             (cons _%$%lp-hd5528455665%_
                                                   _%$%body5528655659%_))))
                                        (let ((_%$%body5528755671%_
                                               (reverse _%$%body5528655659%_)))
                                          (let ((_%$%g5526155674%_
                                                 _%$%body5528755671%_)
                                                (_%$%g5526255676%_
                                                 _%$%hd5527755640%_)
                                                (_%$%g5526355677%_
                                                 _%$%hd5527155620%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5526255676%_))
                                                (_%__kont9623296233%_
                                                 _%$%g5526155674%_
                                                 _%$%g5526255676%_
                                                 _%$%g5526355677%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))))))))
                          (_%$%loop5528255652%_ _%$%target5527955646%_ '()))))
                     (_%__match9632896329%_
                      (lambda (_%$%e5523755716%_
                               _%$%hd5523855720%_
                               _%$%tl5523955723%_
                               _%$%e5524055726%_
                               _%$%hd5524155730%_
                               _%$%tl5524255733%_
                               _%$%e5524355736%_
                               _%$%hd5524455740%_
                               _%$%tl5524555743%_
                               _%$%e5524655746%_
                               _%$%hd5524755750%_
                               _%$%tl5524855753%_
                               _%$%e5524955756%_
                               _%$%hd5525055760%_
                               _%$%tl5525155763%_
                               _%__splice9623096231%_
                               _%$%target5525255766%_
                               _%$%tl5525455769%_)
                        (letrec ((_%$%loop5525555772%_
                                  (lambda (_%$%hd5525355776%_
                                           _%$%body5525955779%_)
                                    (if (gx#stx-pair? _%$%hd5525355776%_)
                                        (let ((_%$%e5525655781%_
                                               (gx#syntax-e
                                                _%$%hd5525355776%_)))
                                          (let ((_%$%lp-tl5525855788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5525655781%_)))
                                                (_%$%lp-hd5525755785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5525655781%_))))
                                            (_%$%loop5525555772%_
                                             _%$%lp-tl5525855788%_
                                             (cons _%$%lp-hd5525755785%_
                                                   _%$%body5525955779%_))))
                                        (let ((_%$%body5526055791%_
                                               (reverse _%$%body5525955779%_)))
                                          (let ((_%$%g5523455794%_
                                                 _%$%body5526055791%_)
                                                (_%$%g5523555796%_
                                                 _%$%hd5525055760%_)
                                                (_%$%g5523655797%_
                                                 _%$%hd5524455740%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5523555796%_))
                                                (_%__kont9622896229%_
                                                 _%$%g5523455794%_
                                                 _%$%g5523555796%_
                                                 _%$%g5523655797%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))))))))
                          (_%$%loop5525555772%_ _%$%target5525255766%_ '()))))
                     (_%__match9630896309%_
                      (lambda (_%$%e5523755716%_
                               _%$%hd5523855720%_
                               _%$%tl5523955723%_
                               _%$%e5524055726%_
                               _%$%hd5524155730%_
                               _%$%tl5524255733%_
                               _%$%e5524355736%_
                               _%$%hd5524455740%_
                               _%$%tl5524555743%_
                               _%$%e5524655746%_
                               _%$%hd5524755750%_
                               _%$%tl5524855753%_)
                        (if (gx#identifier? _%$%hd5524755750%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g102420_|
                                 _%$%hd5524755750%_)
                                (if (gx#stx-pair? _%$%tl5524855753%_)
                                    (let ((_%$%e5524955756%_
                                           (gx#syntax-e _%$%tl5524855753%_)))
                                      (let ((_%$%tl5525155763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5524955756%_)))
                                            (_%$%hd5525055760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5524955756%_))))
                                        (if (gx#stx-null? _%$%tl5525155763%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5524255733%_)
                                                (let ((_%__splice9623096231%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5524255733%_
                                                        '0)))
                                                  (let ((_%$%tl5525455769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9623096231%_
                                                            '1)))
                                                        (_%$%target5525255766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9623096231%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5525455769%_)
                                                        (_%__match9632896329%_
                                                         _%$%e5523755716%_
                                                         _%$%hd5523855720%_
                                                         _%$%tl5523955723%_
                                                         _%$%e5524055726%_
                                                         _%$%hd5524155730%_
                                                         _%$%tl5524255733%_
                                                         _%$%e5524355736%_
                                                         _%$%hd5524455740%_
                                                         _%$%tl5524555743%_
                                                         _%$%e5524655746%_
                                                         _%$%hd5524755750%_
                                                         _%$%tl5524855753%_
                                                         _%$%e5524955756%_
                                                         _%$%hd5525055760%_
                                                         _%$%tl5525155763%_
                                                         _%__splice9623096231%_
                                                         _%$%target5525255766%_
                                                         _%$%tl5525455769%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5520455347%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520455347%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5520455347%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g102421_|
                                     _%$%hd5524755750%_)
                                    (if (gx#stx-pair? _%$%tl5524855753%_)
                                        (let ((_%$%e5527655636%_
                                               (gx#syntax-e
                                                _%$%tl5524855753%_)))
                                          (let ((_%$%tl5527855643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5527655636%_)))
                                                (_%$%hd5527755640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5527655636%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5527855643%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5524255733%_)
                                                    (let ((_%__splice9623496235%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5524255733%_
                                                            '0)))
                                                      (let ((_%$%tl5528155649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9623496235%_ '1)))
                    (_%$%target5527955646%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9623496235%_ '0))))
                (if (gx#stx-null? _%$%tl5528155649%_)
                    (_%__match9637296373%_
                     _%$%e5523755716%_
                     _%$%hd5523855720%_
                     _%$%tl5523955723%_
                     _%$%e5524055726%_
                     _%$%hd5524155730%_
                     _%$%tl5524255733%_
                     _%$%e5524355736%_
                     _%$%hd5524455740%_
                     _%$%tl5524555743%_
                     _%$%e5524655746%_
                     _%$%hd5524755750%_
                     _%$%tl5524855753%_
                     _%$%e5527655636%_
                     _%$%hd5527755640%_
                     _%$%tl5527855643%_
                     _%__splice9623496235%_
                     _%$%target5527955646%_
                     _%$%tl5528155649%_)
                    (let () (declare (not safe)) (_%$%g5520455347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5520455347%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5520455347%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g102422_|
                                         _%$%hd5524755750%_)
                                        (if (gx#stx-pair? _%$%tl5524855753%_)
                                            (let ((_%$%e5530355516%_
                                                   (gx#syntax-e
                                                    _%$%tl5524855753%_)))
                                              (let ((_%$%tl5530555523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5530355516%_)))
                                                    (_%$%hd5530455520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5530355516%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5530555523%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5524255733%_)
                                                        (let ((_%__splice9623896239%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5524255733%_
                                                                '0)))
                                                          (let ((_%$%tl5530855529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9623896239%_ '1)))
                        (_%$%target5530655526%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9623896239%_ '0))))
                    (if (gx#stx-null? _%$%tl5530855529%_)
                        (_%__match9641696417%_
                         _%$%e5523755716%_
                         _%$%hd5523855720%_
                         _%$%tl5523955723%_
                         _%$%e5524055726%_
                         _%$%hd5524155730%_
                         _%$%tl5524255733%_
                         _%$%e5524355736%_
                         _%$%hd5524455740%_
                         _%$%tl5524555743%_
                         _%$%e5524655746%_
                         _%$%hd5524755750%_
                         _%$%tl5524855753%_
                         _%$%e5530355516%_
                         _%$%hd5530455520%_
                         _%$%tl5530555523%_
                         _%__splice9623896239%_
                         _%$%target5530655526%_
                         _%$%tl5530855529%_)
                        (let () (declare (not safe)) (_%$%g5520455347%_)))))
                (let () (declare (not safe)) (_%$%g5520455347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5520455347%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520455347%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g102423_|
                                             _%$%hd5524755750%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5524855753%_)
                                                (let ((_%$%e5533055394%_
                                                       (gx#syntax-e
                                                        _%$%tl5524855753%_)))
                                                  (let ((_%$%tl5533255401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5533055394%_)))
                                                        (_%$%hd5533155398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5533055394%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5533255401%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5524255733%_)
                                                            (let ((_%__splice9624296243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5524255733%_
                            '0)))
                      (let ((_%$%tl5533555407%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9624296243%_ '1)))
                            (_%$%target5533355404%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9624296243%_ '0))))
                        (if (gx#stx-null? _%$%tl5533555407%_)
                            (_%__match9646096461%_
                             _%$%e5523755716%_
                             _%$%hd5523855720%_
                             _%$%tl5523955723%_
                             _%$%e5524055726%_
                             _%$%hd5524155730%_
                             _%$%tl5524255733%_
                             _%$%e5524355736%_
                             _%$%hd5524455740%_
                             _%$%tl5524555743%_
                             _%$%e5524655746%_
                             _%$%hd5524755750%_
                             _%$%tl5524855753%_
                             _%$%e5533055394%_
                             _%$%hd5533155398%_
                             _%$%tl5533255401%_
                             _%__splice9624296243%_
                             _%$%target5533355404%_
                             _%$%tl5533555407%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5520455347%_)))))
                    (let () (declare (not safe)) (_%$%g5520455347%_)))
                (let () (declare (not safe)) (_%$%g5520455347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520455347%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520455347%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5520455347%_)))))
                     (_%__match9628496285%_
                      (lambda (_%$%e5521055836%_
                               _%$%hd5521155840%_
                               _%$%tl5521255843%_
                               _%$%e5521355846%_
                               _%$%hd5521455850%_
                               _%$%tl5521555853%_
                               _%$%e5521655856%_
                               _%$%hd5521755860%_
                               _%$%tl5521855863%_
                               _%$%e5521955866%_
                               _%$%hd5522055870%_
                               _%$%tl5522155873%_
                               _%$%e5522255876%_
                               _%$%hd5522355880%_
                               _%$%tl5522455883%_
                               _%__splice9622696227%_
                               _%$%target5522555886%_
                               _%$%tl5522755889%_)
                        (letrec ((_%$%loop5522855892%_
                                  (lambda (_%$%hd5522655896%_
                                           _%$%body5523255899%_)
                                    (if (gx#stx-pair? _%$%hd5522655896%_)
                                        (let ((_%$%e5522955901%_
                                               (gx#syntax-e
                                                _%$%hd5522655896%_)))
                                          (let ((_%$%lp-tl5523155908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5522955901%_)))
                                                (_%$%lp-hd5523055905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5522955901%_))))
                                            (_%$%loop5522855892%_
                                             _%$%lp-tl5523155908%_
                                             (cons _%$%lp-hd5523055905%_
                                                   _%$%body5523255899%_))))
                                        (let ((_%$%body5523355911%_
                                               (reverse _%$%body5523255899%_)))
                                          (let ((_%$%g5520655914%_
                                                 _%$%body5523355911%_)
                                                (_%$%g5520755916%_
                                                 _%$%hd5522355880%_)
                                                (_%$%g5520855917%_
                                                 _%$%hd5522055870%_)
                                                (_%$%g5520955918%_
                                                 _%$%hd5521755860%_))
                                            (if (let ((__tmp102424
                                                       (gx#syntax-local-value
                                                        _%$%g5520755916%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp102424))
                                                (_%__kont9622496225%_
                                                 _%$%g5520655914%_
                                                 _%$%g5520755916%_
                                                 _%$%g5520855917%_
                                                 _%$%g5520955918%_)
                                                (_%__match9630896309%_
                                                 _%$%e5521055836%_
                                                 _%$%hd5521155840%_
                                                 _%$%tl5521255843%_
                                                 _%$%e5521355846%_
                                                 _%$%hd5521455850%_
                                                 _%$%tl5521555853%_
                                                 _%$%e5521655856%_
                                                 _%$%hd5521755860%_
                                                 _%$%tl5521855863%_
                                                 _%$%e5521955866%_
                                                 _%$%hd5522055870%_
                                                 _%$%tl5522155873%_))))))))
                          (_%$%loop5522855892%_ _%$%target5522555886%_ '())))))
                (if (gx#stx-pair? _%__stx9622196222%_)
                    (let ((_%$%e5521055836%_
                           (gx#syntax-e _%__stx9622196222%_)))
                      (let ((_%$%tl5521255843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5521055836%_)))
                            (_%$%hd5521155840%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5521055836%_))))
                        (if (gx#stx-pair? _%$%tl5521255843%_)
                            (let ((_%$%e5521355846%_
                                   (gx#syntax-e _%$%tl5521255843%_)))
                              (let ((_%$%tl5521555853%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5521355846%_)))
                                    (_%$%hd5521455850%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5521355846%_))))
                                (if (gx#stx-pair? _%$%hd5521455850%_)
                                    (let ((_%$%e5521655856%_
                                           (gx#syntax-e _%$%hd5521455850%_)))
                                      (let ((_%$%tl5521855863%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5521655856%_)))
                                            (_%$%hd5521755860%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5521655856%_))))
                                        (if (gx#stx-pair? _%$%tl5521855863%_)
                                            (let ((_%$%e5521955866%_
                                                   (gx#syntax-e
                                                    _%$%tl5521855863%_)))
                                              (let ((_%$%tl5522155873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5521955866%_)))
                                                    (_%$%hd5522055870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5521955866%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5522155873%_)
                                                    (let ((_%$%e5522255876%_
                                                           (gx#syntax-e
                                                            _%$%tl5522155873%_)))
                                                      (let ((_%$%tl5522455883%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5522255876%_)))
                    (_%$%hd5522355880%_
                     (let () (declare (not safe)) (##car _%$%e5522255876%_))))
                (if (gx#stx-null? _%$%tl5522455883%_)
                    (if (gx#stx-pair/null? _%$%tl5521555853%_)
                        (let ((_%__splice9622696227%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5521555853%_
                                '0)))
                          (let ((_%$%tl5522755889%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9622696227%_ '1)))
                                (_%$%target5522555886%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9622696227%_ '0))))
                            (if (gx#stx-null? _%$%tl5522755889%_)
                                (_%__match9628496285%_
                                 _%$%e5521055836%_
                                 _%$%hd5521155840%_
                                 _%$%tl5521255843%_
                                 _%$%e5521355846%_
                                 _%$%hd5521455850%_
                                 _%$%tl5521555853%_
                                 _%$%e5521655856%_
                                 _%$%hd5521755860%_
                                 _%$%tl5521855863%_
                                 _%$%e5521955866%_
                                 _%$%hd5522055870%_
                                 _%$%tl5522155873%_
                                 _%$%e5522255876%_
                                 _%$%hd5522355880%_
                                 _%$%tl5522455883%_
                                 _%__splice9622696227%_
                                 _%$%target5522555886%_
                                 _%$%tl5522755889%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5520455347%_)))))
                        (let () (declare (not safe)) (_%$%g5520455347%_)))
                    (let () (declare (not safe)) (_%$%g5520455347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5520455347%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520455347%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5520455347%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5520455347%_)))))
                    (let () (declare (not safe)) (_%$%g5520455347%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx56310%_)
        (letrec ((_%expand-body56313%_
                  (lambda (_%var57304%_
                           _%Interface57306%_
                           _%body57307%_
                           _%checked?57308%_)
                    (let* ((_%type57310%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx56310%_
                               _%Interface57306%_)))
                           (_%$%g5731357357%_
                            (lambda (_%$%g5731457353%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5731457353%_)))
                           (_%$%g5731257513%_
                            (lambda (_%$%g5731457361%_)
                              (if (gx#stx-pair? _%$%g5731457361%_)
                                  (let ((_%$%e5732257364%_
                                         (gx#syntax-e _%$%g5731457361%_)))
                                    (let ((_%$%hd5732357368%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5732257364%_)))
                                          (_%$%tl5732457371%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5732257364%_))))
                                      (if (gx#stx-pair? _%$%tl5732457371%_)
                                          (let ((_%$%e5732557374%_
                                                 (gx#syntax-e
                                                  _%$%tl5732457371%_)))
                                            (let ((_%$%hd5732657378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5732557374%_)))
                                                  (_%$%tl5732757381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5732557374%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5732757381%_)
                                                  (let ((_%$%e5732857384%_
                                                         (gx#syntax-e
                                                          _%$%tl5732757381%_)))
                                                    (let ((_%$%hd5732957388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5732857384%_)))
                                                          (_%$%tl5733057391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5732857384%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5733057391%_)
                                                          (let ((_%$%e5733157394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5733057391%_)))
                    (let ((_%$%hd5733257398%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5733157394%_)))
                          (_%$%tl5733357401%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5733157394%_))))
                      (if (gx#stx-pair? _%$%tl5733357401%_)
                          (let ((_%$%e5733457404%_
                                 (gx#syntax-e _%$%tl5733357401%_)))
                            (let ((_%$%hd5733557408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5733457404%_)))
                                  (_%$%tl5733657411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5733457404%_))))
                              (if (gx#stx-pair? _%$%tl5733657411%_)
                                  (let ((_%$%e5733757414%_
                                         (gx#syntax-e _%$%tl5733657411%_)))
                                    (let ((_%$%hd5733857418%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5733757414%_)))
                                          (_%$%tl5733957421%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5733757414%_))))
                                      (if (gx#stx-pair? _%$%tl5733957421%_)
                                          (let ((_%$%e5734057424%_
                                                 (gx#syntax-e
                                                  _%$%tl5733957421%_)))
                                            (let ((_%$%hd5734157428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5734057424%_)))
                                                  (_%$%tl5734257431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5734057424%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5734157428%_)
                                                  (let ((_g102425_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5734157428%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g102426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102425_)
                           (##values-length _g102425_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102426_ 2)))
                    (error "Context expects 2 values" _g102426_)))
              (let ((_%$%target5734357434%_
                     (let () (declare (not safe)) (##values-ref _g102425_ 0)))
                    (_%$%tl5734557437%_
                     (let () (declare (not safe)) (##values-ref _g102425_ 1))))
                (if (gx#stx-null? _%$%tl5734557437%_)
                    (letrec ((_%$%loop5734657440%_
                              (lambda (_%$%hd5734457444%_ _%$%body5735057447%_)
                                (if (gx#stx-pair? _%$%hd5734457444%_)
                                    (let ((_%$%e5734757449%_
                                           (gx#syntax-e _%$%hd5734457444%_)))
                                      (let ((_%$%lp-hd5734857453%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5734757449%_)))
                                            (_%$%lp-tl5734957456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5734757449%_))))
                                        (_%$%loop5734657440%_
                                         _%$%lp-tl5734957456%_
                                         (cons _%$%lp-hd5734857453%_
                                               _%$%body5735057447%_))))
                                    (let ((_%$%body5735157459%_
                                           (reverse _%$%body5735057447%_)))
                                      (if (gx#stx-null? _%$%tl5734257431%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5733257398%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5732957388%_ '()))
                                      (cons _%$%hd5733257398%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5732357368%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5733257398%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5732657378%_ '()))
                            (cons _%$%hd5733557408%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5733857418%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5750457507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5750557510%_)
                   (cons _%$%g5750457507%_ _%$%g5750557510%_))
                 '()
                 _%$%body5735157459%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5731357357%_
                                           _%$%g5731457361%_)))))))
                      (_%$%loop5734657440%_ _%$%target5734357434%_ '()))
                    (_%$%g5731357357%_ _%$%g5731457361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5731357357%_
                                                   _%$%g5731457361%_))))
                                          (_%$%g5731357357%_
                                           _%$%g5731457361%_))))
                                  (_%$%g5731357357%_ _%$%g5731457361%_))))
                          (_%$%g5731357357%_ _%$%g5731457361%_))))
                  (_%$%g5731357357%_ _%$%g5731457361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5731357357%_
                                                   _%$%g5731457361%_))))
                                          (_%$%g5731357357%_
                                           _%$%g5731457361%_))))
                                  (_%$%g5731357357%_ _%$%g5731457361%_)))))
                      (_%$%g5731257513%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type57310%_
                             (let ((__obj102222 _%type57310%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102222
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102222
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102222
                                    'type-descriptor)))
                             _%var57304%_
                             _%checked?57308%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body57307%_)))))
                 (_%expand56315%_
                  (lambda (_%var57103%_
                           _%Interface57105%_
                           _%body57106%_
                           _%checked?57107%_
                           _%checked-methods?57108%_
                           _%maybe?57109%_)
                    (let* ((_%$%g5711157119%_
                            (lambda (_%$%g5711257115%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5711257115%_)))
                           (_%$%g5711057296%_
                            (lambda (_%$%g5711257123%_)
                              (if _%checked?57107%_
                                  (if _%maybe?57109%_
                                      (let* ((_%$%g5713857153%_
                                              (lambda (_%$%g5713957149%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5713957149%_)))
                                             (_%$%g5713757199%_
                                              (lambda (_%$%g5713957157%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5713957157%_)
                                                    (let ((_%$%e5714257160%_
                                                           (gx#syntax-e
                                                            _%$%g5713957157%_)))
                                                      (let ((_%$%hd5714357164%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5714257160%_)))
                    (_%$%tl5714457167%_
                     (let () (declare (not safe)) (##cdr _%$%e5714257160%_))))
                (if (gx#stx-pair? _%$%tl5714457167%_)
                    (let ((_%$%e5714557170%_ (gx#syntax-e _%$%tl5714457167%_)))
                      (let ((_%$%hd5714657174%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5714557170%_)))
                            (_%$%tl5714757177%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5714557170%_))))
                        (if (gx#stx-null? _%$%tl5714757177%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5714357164%_
                                              (cons (cons _%$%hd5714657174%_
                                                          (cons _%$%hd5714357164%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%$%hd5714357164%_
                                                          (cons _%$%g5711257123%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%$%hd5714357164%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g5713857153%_ _%$%g5713957157%_))))
                    (_%$%g5713857153%_ _%$%g5713957157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5713857153%_
                                                     _%$%g5713957157%_)))))
                                        (_%$%g5713757199%_
                                         (list _%var57103%_
                                               _%Interface57105%_)))
                                      (let* ((_%$%g5720357218%_
                                              (lambda (_%$%g5720457214%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5720457214%_)))
                                             (_%$%g5720257262%_
                                              (lambda (_%$%g5720457222%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5720457222%_)
                                                    (let ((_%$%e5720757225%_
                                                           (gx#syntax-e
                                                            _%$%g5720457222%_)))
                                                      (let ((_%$%hd5720857229%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5720757225%_)))
                    (_%$%tl5720957232%_
                     (let () (declare (not safe)) (##cdr _%$%e5720757225%_))))
                (if (gx#stx-pair? _%$%tl5720957232%_)
                    (let ((_%$%e5721057235%_ (gx#syntax-e _%$%tl5720957232%_)))
                      (let ((_%$%hd5721157239%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5721057235%_)))
                            (_%$%tl5721257242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5721057235%_))))
                        (if (gx#stx-null? _%$%tl5721257242%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5720857229%_
                                              (cons (cons _%$%hd5721157239%_
                                                          (cons _%$%hd5720857229%_
                                                                '()))
                                                    '()))
                                        (cons _%$%g5711257123%_ '())))
                            (_%$%g5720357218%_ _%$%g5720457222%_))))
                    (_%$%g5720357218%_ _%$%g5720457222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5720357218%_
                                                     _%$%g5720457222%_)))))
                                        (_%$%g5720257262%_
                                         (list _%var57103%_
                                               _%Interface57105%_))))
                                  (if _%maybe?57109%_
                                      (let* ((_%$%g5726657274%_
                                              (lambda (_%$%g5726757270%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5726757270%_)))
                                             (_%$%g5726557292%_
                                              (lambda (_%$%g5726757278%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%$%g5726757278%_
                                                            (cons _%$%g5711257123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%$%g5726757278%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5726557292%_ _%var57103%_))
                                      _%$%g5711257123%_)))))
                      (_%$%g5711057296%_
                       (_%expand-body56313%_
                        _%var57103%_
                        _%Interface57105%_
                        _%body57106%_
                        (let ((_%$e57300%_ _%checked?57107%_))
                          (if _%$e57300%_
                              _%$e57300%_
                              _%checked-methods?57108%_))))))))
          (let* ((_%__stx9646396464%_ _%stx56310%_)
                 (_%$%g5632156464%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9646396464%_))))
            (let ((_%__kont9646696467%_
                   (lambda (_%$%g5632357031%_
                            _%$%g5632457033%_
                            _%$%g5632557034%_
                            _%$%g5632657035%_)
                     (let* ((_%$%g5706057068%_
                             (lambda (_%$%g5706157064%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5706157064%_)))
                            (_%$%g5705957095%_
                             (lambda (_%$%g5706157072%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%$%g5632657035%_
                                                 (cons _%$%g5632557034%_
                                                       (cons _%$%g5706157072%_
                                                             '())))
                                           (foldr (lambda (_%$%g5708657089%_
                                                           _%$%g5708757092%_)
                                                    (cons _%$%g5708657089%_
                                                          _%$%g5708757092%_))
                                                  '()
                                                  _%$%g5632357031%_))))))
                       (_%$%g5705957095%_
                        (let ((__obj102223
                               (gx#syntax-local-value _%$%g5632457033%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102223
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102223
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj102223
                               'identifier)))))))
                  (_%__kont9647096471%_
                   (lambda (_%$%g5635156911%_
                            _%$%g5635256913%_
                            _%$%g5635356914%_)
                     (_%expand56315%_
                      _%$%g5635356914%_
                      _%$%g5635256913%_
                      (foldr (lambda (_%$%g5693756940%_ _%$%g5693856943%_)
                               (cons _%$%g5693756940%_ _%$%g5693856943%_))
                             '()
                             _%$%g5635156911%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9647496475%_
                   (lambda (_%$%g5637856791%_
                            _%$%g5637956793%_
                            _%$%g5638056794%_)
                     (_%expand56315%_
                      _%$%g5638056794%_
                      _%$%g5637956793%_
                      (foldr (lambda (_%$%g5681756820%_ _%$%g5681856823%_)
                               (cons _%$%g5681756820%_ _%$%g5681856823%_))
                             '()
                             _%$%g5637856791%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9647896479%_
                   (lambda (_%$%g5640556671%_
                            _%$%g5640656673%_
                            _%$%g5640756674%_)
                     (_%expand56315%_
                      _%$%g5640756674%_
                      _%$%g5640656673%_
                      (foldr (lambda (_%$%g5669756700%_ _%$%g5669856703%_)
                               (cons _%$%g5669756700%_ _%$%g5669856703%_))
                             '()
                             _%$%g5640556671%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9648296483%_
                   (lambda (_%$%g5643256549%_
                            _%$%g5643356551%_
                            _%$%g5643456552%_)
                     (_%expand56315%_
                      _%$%g5643456552%_
                      _%$%g5643356551%_
                      (foldr (lambda (_%$%g5657756580%_ _%$%g5657856583%_)
                               (cons _%$%g5657756580%_ _%$%g5657856583%_))
                             '()
                             _%$%g5643256549%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9670296703%_
                      (lambda (_%$%e5643556471%_
                               _%$%hd5643656475%_
                               _%$%tl5643756478%_
                               _%$%e5643856481%_
                               _%$%hd5643956485%_
                               _%$%tl5644056488%_
                               _%$%e5644156491%_
                               _%$%hd5644256495%_
                               _%$%tl5644356498%_
                               _%$%e5644456501%_
                               _%$%hd5644556505%_
                               _%$%tl5644656508%_
                               _%$%e5644756511%_
                               _%$%hd5644856515%_
                               _%$%tl5644956518%_
                               _%__splice9648496485%_
                               _%$%target5645056521%_
                               _%$%tl5645256524%_)
                        (letrec ((_%$%loop5645356527%_
                                  (lambda (_%$%hd5645156531%_
                                           _%$%body5645756534%_)
                                    (if (gx#stx-pair? _%$%hd5645156531%_)
                                        (let ((_%$%e5645456536%_
                                               (gx#syntax-e
                                                _%$%hd5645156531%_)))
                                          (let ((_%$%lp-tl5645656543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5645456536%_)))
                                                (_%$%lp-hd5645556540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5645456536%_))))
                                            (_%$%loop5645356527%_
                                             _%$%lp-tl5645656543%_
                                             (cons _%$%lp-hd5645556540%_
                                                   _%$%body5645756534%_))))
                                        (let ((_%$%body5645856546%_
                                               (reverse _%$%body5645756534%_)))
                                          (let ((_%$%g5643256549%_
                                                 _%$%body5645856546%_)
                                                (_%$%g5643356551%_
                                                 _%$%hd5644856515%_)
                                                (_%$%g5643456552%_
                                                 _%$%hd5644256495%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5643456552%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5643356551%_)))
                                                (_%__kont9648296483%_
                                                 _%$%g5643256549%_
                                                 _%$%g5643356551%_
                                                 _%$%g5643456552%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))))))))
                          (_%$%loop5645356527%_ _%$%target5645056521%_ '()))))
                     (_%__match9665896659%_
                      (lambda (_%$%e5640856593%_
                               _%$%hd5640956597%_
                               _%$%tl5641056600%_
                               _%$%e5641156603%_
                               _%$%hd5641256607%_
                               _%$%tl5641356610%_
                               _%$%e5641456613%_
                               _%$%hd5641556617%_
                               _%$%tl5641656620%_
                               _%$%e5641756623%_
                               _%$%hd5641856627%_
                               _%$%tl5641956630%_
                               _%$%e5642056633%_
                               _%$%hd5642156637%_
                               _%$%tl5642256640%_
                               _%__splice9648096481%_
                               _%$%target5642356643%_
                               _%$%tl5642556646%_)
                        (letrec ((_%$%loop5642656649%_
                                  (lambda (_%$%hd5642456653%_
                                           _%$%body5643056656%_)
                                    (if (gx#stx-pair? _%$%hd5642456653%_)
                                        (let ((_%$%e5642756658%_
                                               (gx#syntax-e
                                                _%$%hd5642456653%_)))
                                          (let ((_%$%lp-tl5642956665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5642756658%_)))
                                                (_%$%lp-hd5642856662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5642756658%_))))
                                            (_%$%loop5642656649%_
                                             _%$%lp-tl5642956665%_
                                             (cons _%$%lp-hd5642856662%_
                                                   _%$%body5643056656%_))))
                                        (let ((_%$%body5643156668%_
                                               (reverse _%$%body5643056656%_)))
                                          (let ((_%$%g5640556671%_
                                                 _%$%body5643156668%_)
                                                (_%$%g5640656673%_
                                                 _%$%hd5642156637%_)
                                                (_%$%g5640756674%_
                                                 _%$%hd5641556617%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5640756674%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5640656673%_)))
                                                (_%__kont9647896479%_
                                                 _%$%g5640556671%_
                                                 _%$%g5640656673%_
                                                 _%$%g5640756674%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))))))))
                          (_%$%loop5642656649%_ _%$%target5642356643%_ '()))))
                     (_%__match9661496615%_
                      (lambda (_%$%e5638156713%_
                               _%$%hd5638256717%_
                               _%$%tl5638356720%_
                               _%$%e5638456723%_
                               _%$%hd5638556727%_
                               _%$%tl5638656730%_
                               _%$%e5638756733%_
                               _%$%hd5638856737%_
                               _%$%tl5638956740%_
                               _%$%e5639056743%_
                               _%$%hd5639156747%_
                               _%$%tl5639256750%_
                               _%$%e5639356753%_
                               _%$%hd5639456757%_
                               _%$%tl5639556760%_
                               _%__splice9647696477%_
                               _%$%target5639656763%_
                               _%$%tl5639856766%_)
                        (letrec ((_%$%loop5639956769%_
                                  (lambda (_%$%hd5639756773%_
                                           _%$%body5640356776%_)
                                    (if (gx#stx-pair? _%$%hd5639756773%_)
                                        (let ((_%$%e5640056778%_
                                               (gx#syntax-e
                                                _%$%hd5639756773%_)))
                                          (let ((_%$%lp-tl5640256785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5640056778%_)))
                                                (_%$%lp-hd5640156782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5640056778%_))))
                                            (_%$%loop5639956769%_
                                             _%$%lp-tl5640256785%_
                                             (cons _%$%lp-hd5640156782%_
                                                   _%$%body5640356776%_))))
                                        (let ((_%$%body5640456788%_
                                               (reverse _%$%body5640356776%_)))
                                          (let ((_%$%g5637856791%_
                                                 _%$%body5640456788%_)
                                                (_%$%g5637956793%_
                                                 _%$%hd5639456757%_)
                                                (_%$%g5638056794%_
                                                 _%$%hd5638856737%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5638056794%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5637956793%_)))
                                                (_%__kont9647496475%_
                                                 _%$%g5637856791%_
                                                 _%$%g5637956793%_
                                                 _%$%g5638056794%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))))))))
                          (_%$%loop5639956769%_ _%$%target5639656763%_ '()))))
                     (_%__match9657096571%_
                      (lambda (_%$%e5635456833%_
                               _%$%hd5635556837%_
                               _%$%tl5635656840%_
                               _%$%e5635756843%_
                               _%$%hd5635856847%_
                               _%$%tl5635956850%_
                               _%$%e5636056853%_
                               _%$%hd5636156857%_
                               _%$%tl5636256860%_
                               _%$%e5636356863%_
                               _%$%hd5636456867%_
                               _%$%tl5636556870%_
                               _%$%e5636656873%_
                               _%$%hd5636756877%_
                               _%$%tl5636856880%_
                               _%__splice9647296473%_
                               _%$%target5636956883%_
                               _%$%tl5637156886%_)
                        (letrec ((_%$%loop5637256889%_
                                  (lambda (_%$%hd5637056893%_
                                           _%$%body5637656896%_)
                                    (if (gx#stx-pair? _%$%hd5637056893%_)
                                        (let ((_%$%e5637356898%_
                                               (gx#syntax-e
                                                _%$%hd5637056893%_)))
                                          (let ((_%$%lp-tl5637556905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5637356898%_)))
                                                (_%$%lp-hd5637456902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5637356898%_))))
                                            (_%$%loop5637256889%_
                                             _%$%lp-tl5637556905%_
                                             (cons _%$%lp-hd5637456902%_
                                                   _%$%body5637656896%_))))
                                        (let ((_%$%body5637756908%_
                                               (reverse _%$%body5637656896%_)))
                                          (let ((_%$%g5635156911%_
                                                 _%$%body5637756908%_)
                                                (_%$%g5635256913%_
                                                 _%$%hd5636756877%_)
                                                (_%$%g5635356914%_
                                                 _%$%hd5636156857%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5635356914%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5635256913%_)))
                                                (_%__kont9647096471%_
                                                 _%$%g5635156911%_
                                                 _%$%g5635256913%_
                                                 _%$%g5635356914%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))))))))
                          (_%$%loop5637256889%_ _%$%target5636956883%_ '()))))
                     (_%__match9655096551%_
                      (lambda (_%$%e5635456833%_
                               _%$%hd5635556837%_
                               _%$%tl5635656840%_
                               _%$%e5635756843%_
                               _%$%hd5635856847%_
                               _%$%tl5635956850%_
                               _%$%e5636056853%_
                               _%$%hd5636156857%_
                               _%$%tl5636256860%_
                               _%$%e5636356863%_
                               _%$%hd5636456867%_
                               _%$%tl5636556870%_)
                        (if (gx#identifier? _%$%hd5636456867%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g102427_|
                                 _%$%hd5636456867%_)
                                (if (gx#stx-pair? _%$%tl5636556870%_)
                                    (let ((_%$%e5636656873%_
                                           (gx#syntax-e _%$%tl5636556870%_)))
                                      (let ((_%$%tl5636856880%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5636656873%_)))
                                            (_%$%hd5636756877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5636656873%_))))
                                        (if (gx#stx-null? _%$%tl5636856880%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5635956850%_)
                                                (let ((_%__splice9647296473%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5635956850%_
                                                        '0)))
                                                  (let ((_%$%tl5637156886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9647296473%_
                                                            '1)))
                                                        (_%$%target5636956883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9647296473%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5637156886%_)
                                                        (_%__match9657096571%_
                                                         _%$%e5635456833%_
                                                         _%$%hd5635556837%_
                                                         _%$%tl5635656840%_
                                                         _%$%e5635756843%_
                                                         _%$%hd5635856847%_
                                                         _%$%tl5635956850%_
                                                         _%$%e5636056853%_
                                                         _%$%hd5636156857%_
                                                         _%$%tl5636256860%_
                                                         _%$%e5636356863%_
                                                         _%$%hd5636456867%_
                                                         _%$%tl5636556870%_
                                                         _%$%e5636656873%_
                                                         _%$%hd5636756877%_
                                                         _%$%tl5636856880%_
                                                         _%__splice9647296473%_
                                                         _%$%target5636956883%_
                                                         _%$%tl5637156886%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5632156464%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5632156464%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5632156464%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g102428_|
                                     _%$%hd5636456867%_)
                                    (if (gx#stx-pair? _%$%tl5636556870%_)
                                        (let ((_%$%e5639356753%_
                                               (gx#syntax-e
                                                _%$%tl5636556870%_)))
                                          (let ((_%$%tl5639556760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5639356753%_)))
                                                (_%$%hd5639456757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5639356753%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5639556760%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5635956850%_)
                                                    (let ((_%__splice9647696477%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5635956850%_
                                                            '0)))
                                                      (let ((_%$%tl5639856766%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9647696477%_ '1)))
                    (_%$%target5639656763%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9647696477%_ '0))))
                (if (gx#stx-null? _%$%tl5639856766%_)
                    (_%__match9661496615%_
                     _%$%e5635456833%_
                     _%$%hd5635556837%_
                     _%$%tl5635656840%_
                     _%$%e5635756843%_
                     _%$%hd5635856847%_
                     _%$%tl5635956850%_
                     _%$%e5636056853%_
                     _%$%hd5636156857%_
                     _%$%tl5636256860%_
                     _%$%e5636356863%_
                     _%$%hd5636456867%_
                     _%$%tl5636556870%_
                     _%$%e5639356753%_
                     _%$%hd5639456757%_
                     _%$%tl5639556760%_
                     _%__splice9647696477%_
                     _%$%target5639656763%_
                     _%$%tl5639856766%_)
                    (let () (declare (not safe)) (_%$%g5632156464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5632156464%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5632156464%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g102429_|
                                         _%$%hd5636456867%_)
                                        (if (gx#stx-pair? _%$%tl5636556870%_)
                                            (let ((_%$%e5642056633%_
                                                   (gx#syntax-e
                                                    _%$%tl5636556870%_)))
                                              (let ((_%$%tl5642256640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5642056633%_)))
                                                    (_%$%hd5642156637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5642056633%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5642256640%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5635956850%_)
                                                        (let ((_%__splice9648096481%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5635956850%_
                                                                '0)))
                                                          (let ((_%$%tl5642556646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9648096481%_ '1)))
                        (_%$%target5642356643%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9648096481%_ '0))))
                    (if (gx#stx-null? _%$%tl5642556646%_)
                        (_%__match9665896659%_
                         _%$%e5635456833%_
                         _%$%hd5635556837%_
                         _%$%tl5635656840%_
                         _%$%e5635756843%_
                         _%$%hd5635856847%_
                         _%$%tl5635956850%_
                         _%$%e5636056853%_
                         _%$%hd5636156857%_
                         _%$%tl5636256860%_
                         _%$%e5636356863%_
                         _%$%hd5636456867%_
                         _%$%tl5636556870%_
                         _%$%e5642056633%_
                         _%$%hd5642156637%_
                         _%$%tl5642256640%_
                         _%__splice9648096481%_
                         _%$%target5642356643%_
                         _%$%tl5642556646%_)
                        (let () (declare (not safe)) (_%$%g5632156464%_)))))
                (let () (declare (not safe)) (_%$%g5632156464%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5632156464%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5632156464%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g102430_|
                                             _%$%hd5636456867%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5636556870%_)
                                                (let ((_%$%e5644756511%_
                                                       (gx#syntax-e
                                                        _%$%tl5636556870%_)))
                                                  (let ((_%$%tl5644956518%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5644756511%_)))
                                                        (_%$%hd5644856515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5644756511%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5644956518%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5635956850%_)
                                                            (let ((_%__splice9648496485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5635956850%_
                            '0)))
                      (let ((_%$%tl5645256524%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9648496485%_ '1)))
                            (_%$%target5645056521%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9648496485%_ '0))))
                        (if (gx#stx-null? _%$%tl5645256524%_)
                            (_%__match9670296703%_
                             _%$%e5635456833%_
                             _%$%hd5635556837%_
                             _%$%tl5635656840%_
                             _%$%e5635756843%_
                             _%$%hd5635856847%_
                             _%$%tl5635956850%_
                             _%$%e5636056853%_
                             _%$%hd5636156857%_
                             _%$%tl5636256860%_
                             _%$%e5636356863%_
                             _%$%hd5636456867%_
                             _%$%tl5636556870%_
                             _%$%e5644756511%_
                             _%$%hd5644856515%_
                             _%$%tl5644956518%_
                             _%__splice9648496485%_
                             _%$%target5645056521%_
                             _%$%tl5645256524%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5632156464%_)))))
                    (let () (declare (not safe)) (_%$%g5632156464%_)))
                (let () (declare (not safe)) (_%$%g5632156464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5632156464%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5632156464%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5632156464%_)))))
                     (_%__match9652696527%_
                      (lambda (_%$%e5632756953%_
                               _%$%hd5632856957%_
                               _%$%tl5632956960%_
                               _%$%e5633056963%_
                               _%$%hd5633156967%_
                               _%$%tl5633256970%_
                               _%$%e5633356973%_
                               _%$%hd5633456977%_
                               _%$%tl5633556980%_
                               _%$%e5633656983%_
                               _%$%hd5633756987%_
                               _%$%tl5633856990%_
                               _%$%e5633956993%_
                               _%$%hd5634056997%_
                               _%$%tl5634157000%_
                               _%__splice9646896469%_
                               _%$%target5634257003%_
                               _%$%tl5634457006%_)
                        (letrec ((_%$%loop5634557009%_
                                  (lambda (_%$%hd5634357013%_
                                           _%$%body5634957016%_)
                                    (if (gx#stx-pair? _%$%hd5634357013%_)
                                        (let ((_%$%e5634657018%_
                                               (gx#syntax-e
                                                _%$%hd5634357013%_)))
                                          (let ((_%$%lp-tl5634857025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5634657018%_)))
                                                (_%$%lp-hd5634757022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5634657018%_))))
                                            (_%$%loop5634557009%_
                                             _%$%lp-tl5634857025%_
                                             (cons _%$%lp-hd5634757022%_
                                                   _%$%body5634957016%_))))
                                        (let ((_%$%body5635057028%_
                                               (reverse _%$%body5634957016%_)))
                                          (let ((_%$%g5632357031%_
                                                 _%$%body5635057028%_)
                                                (_%$%g5632457033%_
                                                 _%$%hd5634056997%_)
                                                (_%$%g5632557034%_
                                                 _%$%hd5633756987%_)
                                                (_%$%g5632657035%_
                                                 _%$%hd5633456977%_))
                                            (if (let ((__tmp102431
                                                       (gx#syntax-local-value
                                                        _%$%g5632457033%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp102431))
                                                (_%__kont9646696467%_
                                                 _%$%g5632357031%_
                                                 _%$%g5632457033%_
                                                 _%$%g5632557034%_
                                                 _%$%g5632657035%_)
                                                (_%__match9655096551%_
                                                 _%$%e5632756953%_
                                                 _%$%hd5632856957%_
                                                 _%$%tl5632956960%_
                                                 _%$%e5633056963%_
                                                 _%$%hd5633156967%_
                                                 _%$%tl5633256970%_
                                                 _%$%e5633356973%_
                                                 _%$%hd5633456977%_
                                                 _%$%tl5633556980%_
                                                 _%$%e5633656983%_
                                                 _%$%hd5633756987%_
                                                 _%$%tl5633856990%_))))))))
                          (_%$%loop5634557009%_ _%$%target5634257003%_ '())))))
                (if (gx#stx-pair? _%__stx9646396464%_)
                    (let ((_%$%e5632756953%_
                           (gx#syntax-e _%__stx9646396464%_)))
                      (let ((_%$%tl5632956960%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5632756953%_)))
                            (_%$%hd5632856957%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5632756953%_))))
                        (if (gx#stx-pair? _%$%tl5632956960%_)
                            (let ((_%$%e5633056963%_
                                   (gx#syntax-e _%$%tl5632956960%_)))
                              (let ((_%$%tl5633256970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5633056963%_)))
                                    (_%$%hd5633156967%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5633056963%_))))
                                (if (gx#stx-pair? _%$%hd5633156967%_)
                                    (let ((_%$%e5633356973%_
                                           (gx#syntax-e _%$%hd5633156967%_)))
                                      (let ((_%$%tl5633556980%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5633356973%_)))
                                            (_%$%hd5633456977%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5633356973%_))))
                                        (if (gx#stx-pair? _%$%tl5633556980%_)
                                            (let ((_%$%e5633656983%_
                                                   (gx#syntax-e
                                                    _%$%tl5633556980%_)))
                                              (let ((_%$%tl5633856990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5633656983%_)))
                                                    (_%$%hd5633756987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5633656983%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5633856990%_)
                                                    (let ((_%$%e5633956993%_
                                                           (gx#syntax-e
                                                            _%$%tl5633856990%_)))
                                                      (let ((_%$%tl5634157000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5633956993%_)))
                    (_%$%hd5634056997%_
                     (let () (declare (not safe)) (##car _%$%e5633956993%_))))
                (if (gx#stx-null? _%$%tl5634157000%_)
                    (if (gx#stx-pair/null? _%$%tl5633256970%_)
                        (let ((_%__splice9646896469%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5633256970%_
                                '0)))
                          (let ((_%$%tl5634457006%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9646896469%_ '1)))
                                (_%$%target5634257003%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9646896469%_ '0))))
                            (if (gx#stx-null? _%$%tl5634457006%_)
                                (_%__match9652696527%_
                                 _%$%e5632756953%_
                                 _%$%hd5632856957%_
                                 _%$%tl5632956960%_
                                 _%$%e5633056963%_
                                 _%$%hd5633156967%_
                                 _%$%tl5633256970%_
                                 _%$%e5633356973%_
                                 _%$%hd5633456977%_
                                 _%$%tl5633556980%_
                                 _%$%e5633656983%_
                                 _%$%hd5633756987%_
                                 _%$%tl5633856990%_
                                 _%$%e5633956993%_
                                 _%$%hd5634056997%_
                                 _%$%tl5634157000%_
                                 _%__splice9646896469%_
                                 _%$%target5634257003%_
                                 _%$%tl5634457006%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5632156464%_)))))
                        (let () (declare (not safe)) (_%$%g5632156464%_)))
                    (let () (declare (not safe)) (_%$%g5632156464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5632156464%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5632156464%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5632156464%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5632156464%_)))))
                    (let () (declare (not safe)) (_%$%g5632156464%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx57523%_)
        (let* ((_%__stx9670596706%_ _%stx57523%_)
               (_%$%g5752857588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9670596706%_))))
          (let ((_%__kont9670896709%_
                 (lambda (_%$%g5753058144%_ _%$%g5753158146%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%$%g5753158146%_ '()))
                               (foldr (lambda (_%$%g5816258165%_
                                               _%$%g5816358168%_)
                                        (cons _%$%g5816258165%_
                                              _%$%g5816358168%_))
                                      '()
                                      _%$%g5753058144%_)))))
                (_%__kont9671296713%_
                 (lambda (_%$%g5754757732%_ _%$%g5754857734%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%$%g5754857734%_)
                       (let* ((_%$%g5775457761%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx57523%_
                                _%$%g5754857734%_))
                              (_%$%E5775657767%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%g5775457761%_
                                        '([var . parts]))
                                 (void)))
                              (_%$%K5775758065%_
                               (lambda (_%parts57771%_ _%var57773%_)
                                 (let ((_%$e57775%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var57773%_))))
                                   (if _%$e57775%_
                                       (let _%loop57782%_ ((_%parts57785%_
                                                            _%parts57771%_)
                                                           (_%type57787%_
                                                            (##direct-structure-ref
                                                             _%$e57775%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object57788%_
                                                            _%var57773%_)
                                                           (_%checked-method?57789%_
                                                            (##direct-structure-ref
                                                             _%$e57775%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?57790%_
                                                            '#f))
                                         (let* ((_%$%parts5779157799%_
                                                 _%parts57785%_)
                                                (_%$%else5779357860%_
                                                 (lambda ()
                                                   (let* ((_%$%g5781157819%_
                                                           (lambda (_%$%g5781257815%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5781257815%_)))
                                                          (_%$%g5781057856%_
                                                           (lambda (_%$%g5781257823%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%$%g5781257823%_
                                 (foldr (lambda (_%$%g5784757850%_
                                                 _%$%g5784857853%_)
                                          (cons _%$%g5784757850%_
                                                _%$%g5784857853%_))
                                        '()
                                        _%$%g5754757732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5781057856%_
                                                      _%object57788%_))))
                                                (_%$%K5779558039%_
                                                 (lambda (_%rest57864%_
                                                          _%part57866%_)
                                                   (if (and (not _%nil-check?57790%_)
                                                            (let ((__tmp102432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part57866%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp102432)))
               (let ((_%str57870%_ (symbol->string _%part57866%_)))
                 (_%loop57782%_
                  (cons (let ((__tmp102433
                               (substring
                                _%str57870%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str57870%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp102433))
                        _%rest57864%_)
                  _%type57787%_
                  _%object57788%_
                  _%checked-method?57789%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type57787%_))
                   (let* ((_%$%g5787557890%_
                           (lambda (_%$%g5787657886%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5787657886%_)))
                          (_%$%g5787457959%_
                           (lambda (_%$%g5787657894%_)
                             (if (gx#stx-pair? _%$%g5787657894%_)
                                 (let ((_%$%e5787957897%_
                                        (gx#syntax-e _%$%g5787657894%_)))
                                   (let ((_%$%hd5788057901%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5787957897%_)))
                                         (_%$%tl5788157904%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5787957897%_))))
                                     (if (gx#stx-pair? _%$%tl5788157904%_)
                                         (let ((_%$%e5788257907%_
                                                (gx#syntax-e
                                                 _%$%tl5788157904%_)))
                                           (let ((_%$%hd5788357911%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5788257907%_)))
                                                 (_%$%tl5788457914%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5788257907%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5788457914%_)
                                                 (if (null? _%rest57864%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%$%hd5788357911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%hd5788057901%_ '()))
                         (foldr (lambda (_%$%g5793857941%_ _%$%g5793957944%_)
                                  (cons _%$%g5793857941%_ _%$%g5793957944%_))
                                '()
                                _%$%g5754757732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e57947%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type57787%_
                                                             _%part57866%_)))
                                                       (if _%$e57947%_
                                                           (let ((_%slot-type57954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx57523%_
                             _%$e57947%_))))
                     (_%loop57782%_
                      _%rest57864%_
                      _%slot-type57954%_
                      (cons _%$%hd5788357911%_ (cons _%$%hd5788057901%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type57787%_
                       _%part57866%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference value; unknown type for slot"
                    _%stx57523%_
                    _%$%g5754857734%_
                    _%part57866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5787557890%_
                                                  _%$%g5787657894%_))))
                                         (_%$%g5787557890%_
                                          _%$%g5787657894%_))))
                                 (_%$%g5787557890%_ _%$%g5787657894%_)))))
                     (_%$%g5787457959%_
                      (list (if _%nil-check?57790%_
                                (cons 'check-nil! (cons _%object57788%_ '()))
                                _%object57788%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx57523%_
                             _%type57787%_
                             _%part57866%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type57787%_))
                       (if (null? _%rest57864%_)
                           (let* ((_%$%g5796557980%_
                                   (lambda (_%$%g5796657976%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g5796657976%_)))
                                  (_%$%g5796458033%_
                                   (lambda (_%$%g5796657984%_)
                                     (if (gx#stx-pair? _%$%g5796657984%_)
                                         (let ((_%$%e5796957987%_
                                                (gx#syntax-e
                                                 _%$%g5796657984%_)))
                                           (let ((_%$%hd5797057991%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5796957987%_)))
                                                 (_%$%tl5797157994%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5796957987%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl5797157994%_)
                                                 (let ((_%$%e5797257997%_
                                                        (gx#syntax-e
                                                         _%$%tl5797157994%_)))
                                                   (let ((_%$%hd5797358001%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e5797257997%_)))
                                                         (_%$%tl5797458004%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e5797257997%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5797458004%_)
                                                         (cons _%$%hd5797358001%_
                                                               (cons _%$%hd5797057991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g5802458027%_
                                             _%$%g5802558030%_)
                                      (cons _%$%g5802458027%_
                                            _%$%g5802558030%_))
                                    '()
                                    _%$%g5754757732%_)))
                 (_%$%g5796557980%_ _%$%g5796657984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5796557980%_
                                                  _%$%g5796657984%_))))
                                         (_%$%g5796557980%_
                                          _%$%g5796657984%_)))))
                             (_%$%g5796458033%_
                              (list (if _%nil-check?57790%_
                                        (cons 'check-nil!
                                              (cons _%object57788%_ '()))
                                        _%object57788%_)
                                    (gx#stx-identifier
                                     _%$%g5754857734%_
                                     (if _%checked-method?57789%_ '"" '"&")
                                     (let ((__obj102224 _%type57787%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj102224
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj102224
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj102224
                                            'name)))
                                     '"-"
                                     _%part57866%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx57523%_
                            _%$%g5754857734%_
                            _%part57866%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx57523%_
                        _%type57787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%parts5779157799%_)
                                               (let ((_%$%hd5779658043%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%parts5779157799%_)))
                                                     (_%$%tl5779758046%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%parts5779157799%_))))
                                                 (let* ((_%part58049%_
                                                         _%$%hd5779658043%_)
                                                        (_%rest58052%_
                                                         _%$%tl5779758046%_))
                                                   (_%$%K5779558039%_
                                                    _%rest58052%_
                                                    _%part58049%_)))
                                               (_%$%else5779357860%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%$%g5754857734%_
                                                   (foldr (lambda (_%$%g5805658059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g5805758062%_)
                    (cons _%$%g5805658059%_ _%$%g5805758062%_))
                  '()
                  _%$%g5754757732%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%$%g5775457761%_)
                             (let ((_%$%hd5775858069%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%g5775457761%_)))
                                   (_%$%tl5775958072%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%g5775457761%_))))
                               (let* ((_%var58075%_ _%$%hd5775858069%_)
                                      (_%parts58078%_ _%$%tl5775958072%_))
                                 (_%$%K5775758065%_
                                  _%parts58078%_
                                  _%var58075%_)))
                             (_%$%E5775657767%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%$%g5754857734%_
                                   (foldr (lambda (_%$%g5808058083%_
                                                   _%$%g5808158086%_)
                                            (cons _%$%g5808058083%_
                                                  _%$%g5808158086%_))
                                          '()
                                          _%$%g5754757732%_))))))
                (_%__kont9671696717%_
                 (lambda (_%$%g5757057633%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%$%g5764857651%_ _%$%g5764957654%_)
                                  (cons _%$%g5764857651%_ _%$%g5764957654%_))
                                '()
                                _%$%g5757057633%_)))))
            (let* ((_%__match9679296793%_
                    (lambda (_%$%e5757157595%_
                             _%$%hd5757257599%_
                             _%$%tl5757357602%_
                             _%__splice9671896719%_
                             _%$%target5757457605%_
                             _%$%tl5757657608%_)
                      (letrec ((_%$%loop5757757611%_
                                (lambda (_%$%hd5757557615%_
                                         _%$%arg5758157618%_)
                                  (if (gx#stx-pair? _%$%hd5757557615%_)
                                      (let ((_%$%e5757857620%_
                                             (gx#syntax-e _%$%hd5757557615%_)))
                                        (let ((_%$%lp-tl5758057627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5757857620%_)))
                                              (_%$%lp-hd5757957624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5757857620%_))))
                                          (_%$%loop5757757611%_
                                           _%$%lp-tl5758057627%_
                                           (cons _%$%lp-hd5757957624%_
                                                 _%$%arg5758157618%_))))
                                      (let ((_%$%arg5758257630%_
                                             (reverse _%$%arg5758157618%_)))
                                        (_%__kont9671696717%_
                                         _%$%arg5758257630%_))))))
                        (_%$%loop5757757611%_ _%$%target5757457605%_ '()))))
                   (_%__match9677896779%_
                    (lambda (_%$%e5754957664%_
                             _%$%hd5755057668%_
                             _%$%tl5755157671%_
                             _%$%e5755257674%_
                             _%$%hd5755357678%_
                             _%$%tl5755457681%_
                             _%$%e5755557684%_
                             _%$%hd5755657688%_
                             _%$%tl5755757691%_
                             _%$%e5755857694%_
                             _%$%hd5755957698%_
                             _%$%tl5756057701%_
                             _%__splice9671496715%_
                             _%$%target5756157704%_
                             _%$%tl5756357707%_)
                      (letrec ((_%$%loop5756457710%_
                                (lambda (_%$%hd5756257714%_
                                         _%$%rand5756857717%_)
                                  (if (gx#stx-pair? _%$%hd5756257714%_)
                                      (let ((_%$%e5756557719%_
                                             (gx#syntax-e _%$%hd5756257714%_)))
                                        (let ((_%$%lp-tl5756757726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5756557719%_)))
                                              (_%$%lp-hd5756657723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5756557719%_))))
                                          (_%$%loop5756457710%_
                                           _%$%lp-tl5756757726%_
                                           (cons _%$%lp-hd5756657723%_
                                                 _%$%rand5756857717%_))))
                                      (let ((_%$%rand5756957729%_
                                             (reverse _%$%rand5756857717%_)))
                                        (_%__kont9671296713%_
                                         _%$%rand5756957729%_
                                         _%$%hd5755957698%_))))))
                        (_%$%loop5756457710%_ _%$%target5756157704%_ '()))))
                   (_%__match9675296753%_
                    (lambda (_%$%e5754957664%_
                             _%$%hd5755057668%_
                             _%$%tl5755157671%_
                             _%$%e5755257674%_
                             _%$%hd5755357678%_
                             _%$%tl5755457681%_)
                      (if (gx#stx-pair? _%$%hd5755357678%_)
                          (let ((_%$%e5755557684%_
                                 (gx#syntax-e _%$%hd5755357678%_)))
                            (let ((_%$%tl5755757691%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5755557684%_)))
                                  (_%$%hd5755657688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5755557684%_))))
                              (if (gx#identifier? _%$%hd5755657688%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102434_|
                                       _%$%hd5755657688%_)
                                      (if (gx#stx-pair? _%$%tl5755757691%_)
                                          (let ((_%$%e5755857694%_
                                                 (gx#syntax-e
                                                  _%$%tl5755757691%_)))
                                            (let ((_%$%tl5756057701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5755857694%_)))
                                                  (_%$%hd5755957698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5755857694%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5756057701%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5755457681%_)
                                                      (let ((_%__splice9671496715%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5755457681%_
                                                              '0)))
                                                        (let ((_%$%tl5756357707%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9671496715%_ '1)))
                      (_%$%target5756157704%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9671496715%_ '0))))
                  (if (gx#stx-null? _%$%tl5756357707%_)
                      (_%__match9677896779%_
                       _%$%e5754957664%_
                       _%$%hd5755057668%_
                       _%$%tl5755157671%_
                       _%$%e5755257674%_
                       _%$%hd5755357678%_
                       _%$%tl5755457681%_
                       _%$%e5755557684%_
                       _%$%hd5755657688%_
                       _%$%tl5755757691%_
                       _%$%e5755857694%_
                       _%$%hd5755957698%_
                       _%$%tl5756057701%_
                       _%__splice9671496715%_
                       _%$%target5756157704%_
                       _%$%tl5756357707%_)
                      (if (gx#stx-pair/null? _%$%tl5755157671%_)
                          (let ((_%__splice9671896719%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5755157671%_
                                  '0)))
                            (let ((_%$%tl5757657608%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9671896719%_ '1)))
                                  (_%$%target5757457605%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9671896719%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5757657608%_)
                                  (_%__match9679296793%_
                                   _%$%e5754957664%_
                                   _%$%hd5755057668%_
                                   _%$%tl5755157671%_
                                   _%__splice9671896719%_
                                   _%$%target5757457605%_
                                   _%$%tl5757657608%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5752857588%_)))))
                          (let () (declare (not safe)) (_%$%g5752857588%_))))))
              (if (gx#stx-pair/null? _%$%tl5755157671%_)
                  (let ((_%__splice9671896719%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5755157671%_
                          '0)))
                    (let ((_%$%tl5757657608%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9671896719%_ '1)))
                          (_%$%target5757457605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9671896719%_ '0))))
                      (if (gx#stx-null? _%$%tl5757657608%_)
                          (_%__match9679296793%_
                           _%$%e5754957664%_
                           _%$%hd5755057668%_
                           _%$%tl5755157671%_
                           _%__splice9671896719%_
                           _%$%target5757457605%_
                           _%$%tl5757657608%_)
                          (let () (declare (not safe)) (_%$%g5752857588%_)))))
                  (let () (declare (not safe)) (_%$%g5752857588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5755157671%_)
                                                      (let ((_%__splice9671896719%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5755157671%_
                                                              '0)))
                                                        (let ((_%$%tl5757657608%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9671896719%_ '1)))
                      (_%$%target5757457605%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9671896719%_ '0))))
                  (if (gx#stx-null? _%$%tl5757657608%_)
                      (_%__match9679296793%_
                       _%$%e5754957664%_
                       _%$%hd5755057668%_
                       _%$%tl5755157671%_
                       _%__splice9671896719%_
                       _%$%target5757457605%_
                       _%$%tl5757657608%_)
                      (let () (declare (not safe)) (_%$%g5752857588%_)))))
              (let () (declare (not safe)) (_%$%g5752857588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5755157671%_)
                                              (let ((_%__splice9671896719%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5755157671%_
                                                      '0)))
                                                (let ((_%$%tl5757657608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9671896719%_
                                                          '1)))
                                                      (_%$%target5757457605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9671896719%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5757657608%_)
                                                      (_%__match9679296793%_
                                                       _%$%e5754957664%_
                                                       _%$%hd5755057668%_
                                                       _%$%tl5755157671%_
                                                       _%__splice9671896719%_
                                                       _%$%target5757457605%_
                                                       _%$%tl5757657608%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5752857588%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5752857588%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5755157671%_)
                                          (let ((_%__splice9671896719%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5755157671%_
                                                  '0)))
                                            (let ((_%$%tl5757657608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9671896719%_
                                                      '1)))
                                                  (_%$%target5757457605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9671896719%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5757657608%_)
                                                  (_%__match9679296793%_
                                                   _%$%e5754957664%_
                                                   _%$%hd5755057668%_
                                                   _%$%tl5755157671%_
                                                   _%__splice9671896719%_
                                                   _%$%target5757457605%_
                                                   _%$%tl5757657608%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752857588%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5752857588%_))))
                                  (if (gx#stx-pair/null? _%$%tl5755157671%_)
                                      (let ((_%__splice9671896719%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5755157671%_
                                              '0)))
                                        (let ((_%$%tl5757657608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9671896719%_
                                                  '1)))
                                              (_%$%target5757457605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9671896719%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5757657608%_)
                                              (_%__match9679296793%_
                                               _%$%e5754957664%_
                                               _%$%hd5755057668%_
                                               _%$%tl5755157671%_
                                               _%__splice9671896719%_
                                               _%$%target5757457605%_
                                               _%$%tl5757657608%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5752857588%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752857588%_))))))
                          (if (gx#stx-pair/null? _%$%tl5755157671%_)
                              (let ((_%__splice9671896719%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5755157671%_
                                      '0)))
                                (let ((_%$%tl5757657608%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9671896719%_
                                          '1)))
                                      (_%$%target5757457605%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9671896719%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5757657608%_)
                                      (_%__match9679296793%_
                                       _%$%e5754957664%_
                                       _%$%hd5755057668%_
                                       _%$%tl5755157671%_
                                       _%__splice9671896719%_
                                       _%$%target5757457605%_
                                       _%$%tl5757657608%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752857588%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5752857588%_))))))
                   (_%__match9674096741%_
                    (lambda (_%$%e5753258096%_
                             _%$%hd5753358100%_
                             _%$%tl5753458103%_
                             _%$%e5753558106%_
                             _%$%hd5753658110%_
                             _%$%tl5753758113%_
                             _%__splice9671096711%_
                             _%$%target5753858116%_
                             _%$%tl5754058119%_)
                      (letrec ((_%$%loop5754158122%_
                                (lambda (_%$%hd5753958126%_
                                         _%$%rand5754558129%_)
                                  (if (gx#stx-pair? _%$%hd5753958126%_)
                                      (let ((_%$%e5754258131%_
                                             (gx#syntax-e _%$%hd5753958126%_)))
                                        (let ((_%$%lp-tl5754458138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5754258131%_)))
                                              (_%$%lp-hd5754358135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5754258131%_))))
                                          (_%$%loop5754158122%_
                                           _%$%lp-tl5754458138%_
                                           (cons _%$%lp-hd5754358135%_
                                                 _%$%rand5754558129%_))))
                                      (let ((_%$%rand5754658141%_
                                             (reverse _%$%rand5754558129%_)))
                                        (let ((_%$%g5753058144%_
                                               _%$%rand5754658141%_)
                                              (_%$%g5753158146%_
                                               _%$%hd5753658110%_))
                                          (if (gx#identifier?
                                               _%$%g5753158146%_)
                                              (_%__kont9670896709%_
                                               _%$%g5753058144%_
                                               _%$%g5753158146%_)
                                              (_%__match9675296753%_
                                               _%$%e5753258096%_
                                               _%$%hd5753358100%_
                                               _%$%tl5753458103%_
                                               _%$%e5753558106%_
                                               _%$%hd5753658110%_
                                               _%$%tl5753758113%_))))))))
                        (_%$%loop5754158122%_ _%$%target5753858116%_ '())))))
              (if (gx#stx-pair? _%__stx9670596706%_)
                  (let ((_%$%e5753258096%_ (gx#syntax-e _%__stx9670596706%_)))
                    (let ((_%$%tl5753458103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5753258096%_)))
                          (_%$%hd5753358100%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5753258096%_))))
                      (if (gx#stx-pair? _%$%tl5753458103%_)
                          (let ((_%$%e5753558106%_
                                 (gx#syntax-e _%$%tl5753458103%_)))
                            (let ((_%$%tl5753758113%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5753558106%_)))
                                  (_%$%hd5753658110%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5753558106%_))))
                              (if (gx#stx-pair/null? _%$%tl5753758113%_)
                                  (let ((_%__splice9671096711%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5753758113%_
                                          '0)))
                                    (let ((_%$%tl5754058119%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9671096711%_
                                              '1)))
                                          (_%$%target5753858116%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9671096711%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5754058119%_)
                                          (_%__match9674096741%_
                                           _%$%e5753258096%_
                                           _%$%hd5753358100%_
                                           _%$%tl5753458103%_
                                           _%$%e5753558106%_
                                           _%$%hd5753658110%_
                                           _%$%tl5753758113%_
                                           _%__splice9671096711%_
                                           _%$%target5753858116%_
                                           _%$%tl5754058119%_)
                                          (if (gx#stx-pair? _%$%hd5753658110%_)
                                              (let ((_%$%e5755557684%_
                                                     (gx#syntax-e
                                                      _%$%hd5753658110%_)))
                                                (let ((_%$%tl5755757691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5755557684%_)))
                                                      (_%$%hd5755657688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5755557684%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5755657688%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102434_|
                                                           _%$%hd5755657688%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5755757691%_)
                                                              (let ((_%$%e5755857694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5755757691%_)))
                        (let ((_%$%tl5756057701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5755857694%_)))
                              (_%$%hd5755957698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5755857694%_))))
                          (if (gx#stx-pair/null? _%$%tl5753458103%_)
                              (let ((_%__splice9671896719%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5753458103%_
                                      '0)))
                                (let ((_%$%tl5757657608%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9671896719%_
                                          '1)))
                                      (_%$%target5757457605%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9671896719%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5757657608%_)
                                      (_%__match9679296793%_
                                       _%$%e5753258096%_
                                       _%$%hd5753358100%_
                                       _%$%tl5753458103%_
                                       _%__splice9671896719%_
                                       _%$%target5757457605%_
                                       _%$%tl5757657608%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752857588%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5752857588%_)))))
                      (if (gx#stx-pair/null? _%$%tl5753458103%_)
                          (let ((_%__splice9671896719%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5753458103%_
                                  '0)))
                            (let ((_%$%tl5757657608%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9671896719%_ '1)))
                                  (_%$%target5757457605%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9671896719%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5757657608%_)
                                  (_%__match9679296793%_
                                   _%$%e5753258096%_
                                   _%$%hd5753358100%_
                                   _%$%tl5753458103%_
                                   _%__splice9671896719%_
                                   _%$%target5757457605%_
                                   _%$%tl5757657608%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5752857588%_)))))
                          (let () (declare (not safe)) (_%$%g5752857588%_))))
                  (if (gx#stx-pair/null? _%$%tl5753458103%_)
                      (let ((_%__splice9671896719%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5753458103%_
                              '0)))
                        (let ((_%$%tl5757657608%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9671896719%_ '1)))
                              (_%$%target5757457605%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9671896719%_ '0))))
                          (if (gx#stx-null? _%$%tl5757657608%_)
                              (_%__match9679296793%_
                               _%$%e5753258096%_
                               _%$%hd5753358100%_
                               _%$%tl5753458103%_
                               _%__splice9671896719%_
                               _%$%target5757457605%_
                               _%$%tl5757657608%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5752857588%_)))))
                      (let () (declare (not safe)) (_%$%g5752857588%_))))
              (if (gx#stx-pair/null? _%$%tl5753458103%_)
                  (let ((_%__splice9671896719%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5753458103%_
                          '0)))
                    (let ((_%$%tl5757657608%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9671896719%_ '1)))
                          (_%$%target5757457605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9671896719%_ '0))))
                      (if (gx#stx-null? _%$%tl5757657608%_)
                          (_%__match9679296793%_
                           _%$%e5753258096%_
                           _%$%hd5753358100%_
                           _%$%tl5753458103%_
                           _%__splice9671896719%_
                           _%$%target5757457605%_
                           _%$%tl5757657608%_)
                          (let () (declare (not safe)) (_%$%g5752857588%_)))))
                  (let () (declare (not safe)) (_%$%g5752857588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5753458103%_)
                                                  (let ((_%__splice9671896719%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5753458103%_
                                                          '0)))
                                                    (let ((_%$%tl5757657608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9671896719%_
                                                              '1)))
                                                          (_%$%target5757457605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9671896719%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5757657608%_)
                                                          (_%__match9679296793%_
                                                           _%$%e5753258096%_
                                                           _%$%hd5753358100%_
                                                           _%$%tl5753458103%_
                                                           _%__splice9671896719%_
                                                           _%$%target5757457605%_
                                                           _%$%tl5757657608%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5752857588%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752857588%_)))))))
                                  (if (gx#stx-pair? _%$%hd5753658110%_)
                                      (let ((_%$%e5755557684%_
                                             (gx#syntax-e _%$%hd5753658110%_)))
                                        (let ((_%$%tl5755757691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5755557684%_)))
                                              (_%$%hd5755657688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5755557684%_))))
                                          (if (gx#identifier?
                                               _%$%hd5755657688%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g102434_|
                                                   _%$%hd5755657688%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5755757691%_)
                                                      (let ((_%$%e5755857694%_
                                                             (gx#syntax-e
                                                              _%$%tl5755757691%_)))
                                                        (let ((_%$%tl5756057701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5755857694%_)))
                      (_%$%hd5755957698%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5755857694%_))))
                  (if (gx#stx-pair/null? _%$%tl5753458103%_)
                      (let ((_%__splice9671896719%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5753458103%_
                              '0)))
                        (let ((_%$%tl5757657608%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9671896719%_ '1)))
                              (_%$%target5757457605%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9671896719%_ '0))))
                          (if (gx#stx-null? _%$%tl5757657608%_)
                              (_%__match9679296793%_
                               _%$%e5753258096%_
                               _%$%hd5753358100%_
                               _%$%tl5753458103%_
                               _%__splice9671896719%_
                               _%$%target5757457605%_
                               _%$%tl5757657608%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5752857588%_)))))
                      (let () (declare (not safe)) (_%$%g5752857588%_)))))
              (if (gx#stx-pair/null? _%$%tl5753458103%_)
                  (let ((_%__splice9671896719%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5753458103%_
                          '0)))
                    (let ((_%$%tl5757657608%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9671896719%_ '1)))
                          (_%$%target5757457605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9671896719%_ '0))))
                      (if (gx#stx-null? _%$%tl5757657608%_)
                          (_%__match9679296793%_
                           _%$%e5753258096%_
                           _%$%hd5753358100%_
                           _%$%tl5753458103%_
                           _%__splice9671896719%_
                           _%$%target5757457605%_
                           _%$%tl5757657608%_)
                          (let () (declare (not safe)) (_%$%g5752857588%_)))))
                  (let () (declare (not safe)) (_%$%g5752857588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5753458103%_)
                                                      (let ((_%__splice9671896719%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5753458103%_
                                                              '0)))
                                                        (let ((_%$%tl5757657608%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9671896719%_ '1)))
                      (_%$%target5757457605%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9671896719%_ '0))))
                  (if (gx#stx-null? _%$%tl5757657608%_)
                      (_%__match9679296793%_
                       _%$%e5753258096%_
                       _%$%hd5753358100%_
                       _%$%tl5753458103%_
                       _%__splice9671896719%_
                       _%$%target5757457605%_
                       _%$%tl5757657608%_)
                      (let () (declare (not safe)) (_%$%g5752857588%_)))))
              (let () (declare (not safe)) (_%$%g5752857588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5753458103%_)
                                                  (let ((_%__splice9671896719%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5753458103%_
                                                          '0)))
                                                    (let ((_%$%tl5757657608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9671896719%_
                                                              '1)))
                                                          (_%$%target5757457605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9671896719%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5757657608%_)
                                                          (_%__match9679296793%_
                                                           _%$%e5753258096%_
                                                           _%$%hd5753358100%_
                                                           _%$%tl5753458103%_
                                                           _%__splice9671896719%_
                                                           _%$%target5757457605%_
                                                           _%$%tl5757657608%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5752857588%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752857588%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5753458103%_)
                                          (let ((_%__splice9671896719%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5753458103%_
                                                  '0)))
                                            (let ((_%$%tl5757657608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9671896719%_
                                                      '1)))
                                                  (_%$%target5757457605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9671896719%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5757657608%_)
                                                  (_%__match9679296793%_
                                                   _%$%e5753258096%_
                                                   _%$%hd5753358100%_
                                                   _%$%tl5753458103%_
                                                   _%__splice9671896719%_
                                                   _%$%target5757457605%_
                                                   _%$%tl5757657608%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752857588%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5752857588%_)))))))
                          (if (gx#stx-pair/null? _%$%tl5753458103%_)
                              (let ((_%__splice9671896719%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5753458103%_
                                      '0)))
                                (let ((_%$%tl5757657608%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9671896719%_
                                          '1)))
                                      (_%$%target5757457605%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9671896719%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5757657608%_)
                                      (_%__match9679296793%_
                                       _%$%e5753258096%_
                                       _%$%hd5753358100%_
                                       _%$%tl5753458103%_
                                       _%__splice9671896719%_
                                       _%$%target5757457605%_
                                       _%$%tl5757657608%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752857588%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5752857588%_))))))
                  (let () (declare (not safe)) (_%$%g5752857588%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx58178%_)
        (let* ((_%__stx9679596796%_ _%stx58178%_)
               (_%$%g5818258203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9679596796%_))))
          (let ((_%__kont9679896799%_
                 (lambda (_%$%g5818458271%_)
                   (let* ((_%$%g5828358290%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx58178%_
                            _%$%g5818458271%_))
                          (_%$%E5828558296%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5828358290%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5828658512%_
                           (lambda (_%parts58300%_ _%var58302%_)
                             (let ((_%$e58304%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var58302%_))))
                               (if _%$e58304%_
                                   (let _%loop58311%_ ((_%parts58314%_
                                                        _%parts58300%_)
                                                       (_%type58316%_
                                                        (##direct-structure-ref
                                                         _%$e58304%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object58317%_
                                                        _%var58302%_)
                                                       (_%nil-check?58318%_
                                                        '#f))
                                     (let* ((_%$%parts5831958327%_
                                             _%parts58314%_)
                                            (_%$%else5832158339%_
                                             (lambda () _%object58317%_))
                                            (_%$%K5832358494%_
                                             (lambda (_%rest58343%_
                                                      _%part58345%_)
                                               (if (and (not _%nil-check?58318%_)
                                                        (let ((__tmp102435
                                                               (symbol->string
                                                                _%part58345%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp102435)))
                                                   (let ((_%str58349%_
                                                          (symbol->string
                                                           _%part58345%_)))
                                                     (_%loop58311%_
                                                      (cons (let ((__tmp102436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str58349%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str58349%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp102436))
                    _%rest58343%_)
              _%type58316%_
              _%object58317%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type58316%_))
                                                       (let* ((_%$%g5835458369%_
                                                               (lambda (_%$%g5835558365%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5835558365%_)))
                      (_%$%g5835358486%_
                       (lambda (_%$%g5835558373%_)
                         (if (gx#stx-pair? _%$%g5835558373%_)
                             (let ((_%$%e5835858376%_
                                    (gx#syntax-e _%$%g5835558373%_)))
                               (let ((_%$%hd5835958380%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5835858376%_)))
                                     (_%$%tl5836058383%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5835858376%_))))
                                 (if (gx#stx-pair? _%$%tl5836058383%_)
                                     (let ((_%$%e5836158386%_
                                            (gx#syntax-e _%$%tl5836058383%_)))
                                       (let ((_%$%hd5836258390%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5836158386%_)))
                                             (_%$%tl5836358393%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5836158386%_))))
                                         (if (gx#stx-null? _%$%tl5836358393%_)
                                             (if (null? _%rest58343%_)
                                                 (let ((_%$e58428%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type58316%_
                                                         _%part58345%_)))
                                                   (if _%$e58428%_
                                                       (let* ((_%$%g5843558443%_
                                                               (lambda (_%$%g5843658439%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5843658439%_)))
                      (_%$%g5843458466%_
                       (lambda (_%$%g5843658447%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%$%g5843658447%_ '()))
                                     (cons (cons _%$%hd5836258390%_
                                                 (cons _%$%hd5835958380%_ '()))
                                           '()))))))
                 (_%$%g5843458466%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx58178%_
                     _%$e58428%_))))
               (if _%nil-check?58318%_
                   (cons _%$%hd5836258390%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%$%hd5835958380%_ '()))
                               '()))
                   (cons _%$%hd5836258390%_ (cons _%$%hd5835958380%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e58474%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type58316%_
                                                         _%part58345%_)))
                                                   (if _%$e58474%_
                                                       (let ((_%type58481%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx58178%_
                         _%$e58474%_))))
                 (if _%nil-check?58318%_
                     (_%loop58311%_
                      _%rest58343%_
                      _%type58481%_
                      (cons _%$%hd5836258390%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%hd5835958380%_ '()))
                                  '()))
                      '#f)
                     (_%loop58311%_
                      _%rest58343%_
                      _%type58481%_
                      (cons _%$%hd5836258390%_ (cons _%$%hd5835958380%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx58178%_
                _%$%g5818458271%_
                _%part58345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g5835458369%_
                                              _%$%g5835558373%_))))
                                     (_%$%g5835458369%_ _%$%g5835558373%_))))
                             (_%$%g5835458369%_ _%$%g5835558373%_)))))
                 (_%$%g5835358486%_
                  (list (if _%nil-check?58318%_
                            (cons 'check-nil! (cons _%object58317%_ '()))
                            _%object58317%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx58178%_
                         _%type58316%_
                         _%part58345%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type58316%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots"
                    _%stx58178%_
                    _%$%g5818458271%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx58178%_
                    _%type58316%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5831958327%_)
                                           (let ((_%$%hd5832458498%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5831958327%_)))
                                                 (_%$%tl5832558501%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5831958327%_))))
                                             (let* ((_%part58504%_
                                                     _%$%hd5832458498%_)
                                                    (_%rest58507%_
                                                     _%$%tl5832558501%_))
                                               (_%$%K5832358494%_
                                                _%rest58507%_
                                                _%part58504%_)))
                                           (_%$%else5832158339%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%$%g5818458271%_ '())))))))
                     (if (pair? _%$%g5828358290%_)
                         (let ((_%$%hd5828758516%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5828358290%_)))
                               (_%$%tl5828858519%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5828358290%_))))
                           (let* ((_%var58522%_ _%$%hd5828758516%_)
                                  (_%parts58525%_ _%$%tl5828858519%_))
                             (_%$%K5828658512%_ _%parts58525%_ _%var58522%_)))
                         (_%$%E5828558296%_)))))
                (_%__kont9680096801%_
                 (lambda (_%$%g5819158230%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%$%g5819158230%_ '())))))
            (let ((_%__match9681696817%_
                   (lambda (_%$%e5818558251%_
                            _%$%hd5818658255%_
                            _%$%tl5818758258%_
                            _%$%e5818858261%_
                            _%$%hd5818958265%_
                            _%$%tl5819058268%_)
                     (let ((_%$%g5818458271%_ _%$%hd5818958265%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5818458271%_)
                           (_%__kont9679896799%_ _%$%g5818458271%_)
                           (_%__kont9680096801%_ _%$%hd5818958265%_))))))
              (if (gx#stx-pair? _%__stx9679596796%_)
                  (let ((_%$%e5818558251%_ (gx#syntax-e _%__stx9679596796%_)))
                    (let ((_%$%tl5818758258%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5818558251%_)))
                          (_%$%hd5818658255%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5818558251%_))))
                      (if (gx#stx-pair? _%$%tl5818758258%_)
                          (let ((_%$%e5818858261%_
                                 (gx#syntax-e _%$%tl5818758258%_)))
                            (let ((_%$%tl5819058268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5818858261%_)))
                                  (_%$%hd5818958265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5818858261%_))))
                              (if (gx#stx-null? _%$%tl5819058268%_)
                                  (_%__match9681696817%_
                                   _%$%e5818558251%_
                                   _%$%hd5818658255%_
                                   _%$%tl5818758258%_
                                   _%$%e5818858261%_
                                   _%$%hd5818958265%_
                                   _%$%tl5819058268%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5818258203%_)))))
                          (let () (declare (not safe)) (_%$%g5818258203%_)))))
                  (let () (declare (not safe)) (_%$%g5818258203%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx58532%_)
        (let* ((_%__stx9683396834%_ _%stx58532%_)
               (_%$%g5853658565%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9683396834%_))))
          (let ((_%__kont9683696837%_
                 (lambda (_%$%g5853858657%_ _%$%g5853958659%_)
                   (let* ((_%$%g5867358680%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx58532%_
                            _%$%g5853958659%_))
                          (_%$%E5867558686%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5867358680%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5867658916%_
                           (lambda (_%parts58690%_ _%var58692%_)
                             (let ((_%$e58694%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var58692%_))))
                               (if _%$e58694%_
                                   (let _%loop58701%_ ((_%parts58704%_
                                                        _%parts58690%_)
                                                       (_%type58706%_
                                                        (##direct-structure-ref
                                                         _%$e58694%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object58707%_
                                                        _%var58692%_)
                                                       (_%checked-mutator?58708%_
                                                        (##direct-structure-ref
                                                         _%$e58694%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?58709%_
                                                        '#f))
                                     (let* ((_%$%parts5871058717%_
                                             _%parts58704%_)
                                            (_%$%E5871258723%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%parts5871058717%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%$%K5871358898%_
                                             (lambda (_%rest58727%_
                                                      _%part58729%_)
                                               (if (and (not _%nil-check?58709%_)
                                                        (let ((__tmp102437
                                                               (symbol->string
                                                                _%part58729%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp102437)))
                                                   (let ((_%str58733%_
                                                          (symbol->string
                                                           _%part58729%_)))
                                                     (_%loop58701%_
                                                      (cons (let ((__tmp102438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str58733%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str58733%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp102438))
                    _%rest58727%_)
              _%type58706%_
              _%object58707%_
              _%checked-mutator?58708%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type58706%_))
                                                       (if (null? _%rest58727%_)
                                                           (let* ((_%$%g5874058755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g5874158751%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5874158751%_)))
                          (_%$%g5873958812%_
                           (lambda (_%$%g5874158759%_)
                             (if (gx#stx-pair? _%$%g5874158759%_)
                                 (let ((_%$%e5874458762%_
                                        (gx#syntax-e _%$%g5874158759%_)))
                                   (let ((_%$%hd5874558766%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5874458762%_)))
                                         (_%$%tl5874658769%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5874458762%_))))
                                     (if (gx#stx-pair? _%$%tl5874658769%_)
                                         (let ((_%$%e5874758772%_
                                                (gx#syntax-e
                                                 _%$%tl5874658769%_)))
                                           (let ((_%$%hd5874858776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5874758772%_)))
                                                 (_%$%tl5874958779%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5874758772%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5874958779%_)
                                                 (if _%nil-check?58709%_
                                                     (cons _%$%hd5874858776%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%hd5874558766%_ '()))
                         (cons _%$%g5853858657%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%hd5874858776%_
                                                           (cons _%$%hd5874558766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g5853858657%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5874058755%_
                                                  _%$%g5874158759%_))))
                                         (_%$%g5874058755%_
                                          _%$%g5874158759%_))))
                                 (_%$%g5874058755%_ _%$%g5874158759%_)))))
                     (_%$%g5873958812%_
                      (list _%object58707%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx58532%_
                             _%type58706%_
                             _%part58729%_
                             (if _%checked-mutator?58708%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type58706%_
                                  _%part58729%_)
                                 '#f)))))
                   (let ((_%$e58816%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type58706%_
                           _%part58729%_)))
                     (if _%$e58816%_
                         (let* ((_%next-type58823%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx58532%_
                                    _%$e58816%_)))
                                (_%$%g5882658841%_
                                 (lambda (_%$%g5882758837%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5882758837%_)))
                                (_%$%g5882558888%_
                                 (lambda (_%$%g5882758845%_)
                                   (if (gx#stx-pair? _%$%g5882758845%_)
                                       (let ((_%$%e5883058848%_
                                              (gx#syntax-e _%$%g5882758845%_)))
                                         (let ((_%$%hd5883158852%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5883058848%_)))
                                               (_%$%tl5883258855%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5883058848%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5883258855%_)
                                               (let ((_%$%e5883358858%_
                                                      (gx#syntax-e
                                                       _%$%tl5883258855%_)))
                                                 (let ((_%$%hd5883458862%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5883358858%_)))
                                                       (_%$%tl5883558865%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5883358858%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5883558865%_)
                                                       (_%loop58701%_
                                                        _%rest58727%_
                                                        _%next-type58823%_
                                                        (cons _%$%hd5883458862%_
                                                              (cons _%$%hd5883158852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type58706%_
                 _%part58729%_)
                '#f)
               (_%$%g5882658841%_ _%$%g5882758845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5882658841%_
                                                _%$%g5882758845%_))))
                                       (_%$%g5882658841%_
                                        _%$%g5882758845%_)))))
                           (_%$%g5882558888%_
                            (list (if _%nil-check?58709%_
                                      (cons 'check-nil!
                                            (cons _%object58707%_ '()))
                                      _%object58707%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx58532%_
                                   _%type58706%_
                                   _%part58729%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted setter; unknown type for slot"
                          _%stx58532%_
                          _%$%g5853958659%_
                          _%part58729%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type58706%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted setter; interface has no slots"
                    _%stx58532%_
                    _%$%g5853958659%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx58532%_
                    _%type58706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5871058717%_)
                                           (let ((_%$%hd5871458902%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5871058717%_)))
                                                 (_%$%tl5871558905%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5871058717%_))))
                                             (let* ((_%part58908%_
                                                     _%$%hd5871458902%_)
                                                    (_%rest58911%_
                                                     _%$%tl5871558905%_))
                                               (_%$%K5871358898%_
                                                _%rest58911%_
                                                _%part58908%_)))
                                           (_%$%E5871258723%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx58532%_)))))))
                     (if (pair? _%$%g5867358680%_)
                         (let ((_%$%hd5867758920%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5867358680%_)))
                               (_%$%tl5867858923%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5867358680%_))))
                           (let* ((_%var58926%_ _%$%hd5867758920%_)
                                  (_%parts58929%_ _%$%tl5867858923%_))
                             (_%$%K5867658916%_ _%parts58929%_ _%var58926%_)))
                         (_%$%E5867558686%_)))))
                (_%__kont9683896839%_
                 (lambda (_%$%g5854958602%_ _%$%g5855058604%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx58532%_)))))
            (let ((_%__match9686096861%_
                   (lambda (_%$%e5854058627%_
                            _%$%hd5854158631%_
                            _%$%tl5854258634%_
                            _%$%e5854358637%_
                            _%$%hd5854458641%_
                            _%$%tl5854558644%_
                            _%$%e5854658647%_
                            _%$%hd5854758651%_
                            _%$%tl5854858654%_)
                     (let ((_%$%g5853858657%_ _%$%hd5854758651%_)
                           (_%$%g5853958659%_ _%$%hd5854458641%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5853958659%_)
                           (_%__kont9683696837%_
                            _%$%g5853858657%_
                            _%$%g5853958659%_)
                           (_%__kont9683896839%_
                            _%$%hd5854758651%_
                            _%$%hd5854458641%_))))))
              (if (gx#stx-pair? _%__stx9683396834%_)
                  (let ((_%$%e5854058627%_ (gx#syntax-e _%__stx9683396834%_)))
                    (let ((_%$%tl5854258634%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5854058627%_)))
                          (_%$%hd5854158631%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5854058627%_))))
                      (if (gx#stx-pair? _%$%tl5854258634%_)
                          (let ((_%$%e5854358637%_
                                 (gx#syntax-e _%$%tl5854258634%_)))
                            (let ((_%$%tl5854558644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5854358637%_)))
                                  (_%$%hd5854458641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5854358637%_))))
                              (if (gx#stx-pair? _%$%tl5854558644%_)
                                  (let ((_%$%e5854658647%_
                                         (gx#syntax-e _%$%tl5854558644%_)))
                                    (let ((_%$%tl5854858654%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5854658647%_)))
                                          (_%$%hd5854758651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5854658647%_))))
                                      (if (gx#stx-null? _%$%tl5854858654%_)
                                          (_%__match9686096861%_
                                           _%$%e5854058627%_
                                           _%$%hd5854158631%_
                                           _%$%tl5854258634%_
                                           _%$%e5854358637%_
                                           _%$%hd5854458641%_
                                           _%$%tl5854558644%_
                                           _%$%e5854658647%_
                                           _%$%hd5854758651%_
                                           _%$%tl5854858654%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5853658565%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5853658565%_)))))
                          (let () (declare (not safe)) (_%$%g5853658565%_)))))
                  (let () (declare (not safe)) (_%$%g5853658565%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g97746_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97747_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97748_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97751_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97752_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97755_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97756_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97757_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97758_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97762_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97763_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97764_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97765_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97769_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51243%_)
        (let* ((_%__stx9146291463%_ _%stx51243%_)
               (_%g5125251461%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9146291463%_))))
          (let ((_%__kont9146591466%_
                 (lambda (_%g5125452353%_
                          _%g5125552355%_
                          _%g5125652356%_
                          _%g5125752357%_
                          _%g5125852358%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5125852358%_
                                     (cons _%g5125752357%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5125852358%_
                                                       (cons _%g5125652356%_
                                                             (cons _%g5125552355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5240152404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5240252407%_)
                  (cons _%g5240152404%_ _%g5240252407%_))
                '()
                _%g5125452353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9146991470%_
                 (lambda (_%g5128652199%_
                          _%g5128752201%_
                          _%g5128852202%_
                          _%g5128952203%_
                          _%g5129052204%_
                          _%g5129152205%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5129152205%_
                                     (cons _%g5129052204%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5129152205%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5128952203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5129152205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5128852202%_
                                       (cons _%g5128752201%_ '())))
                           (foldr (lambda (_%g5224952252%_ _%g5225052255%_)
                                    (cons _%g5224952252%_ _%g5225052255%_))
                                  '()
                                  _%g5128652199%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9147391474%_
                 (lambda (_%g5132552018%_
                          _%g5132652020%_
                          _%g5132752021%_
                          _%g5132852022%_)
                   (let ((_%meta52059%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51243%_
                             _%g5132652020%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52059%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5132852022%_
                                           (cons _%g5132752021%_
                                                 (cons _%g5132652020%_ '())))
                                     (foldr (lambda (_%g5206352066%_
                                                     _%g5206452069%_)
                                              (cons _%g5206352066%_
                                                    _%g5206452069%_))
                                            '()
                                            _%g5132552018%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52059%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5132852022%_
                                               (cons _%g5132752021%_
                                                     (cons _%g5132652020%_
                                                           '())))
                                         (foldr (lambda (_%g5207352076%_
                                                         _%g5207452079%_)
                                                  (cons _%g5207352076%_
                                                        _%g5207452079%_))
                                                '()
                                                _%g5132552018%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51243%_
                              _%g5132652020%_
                              _%meta52059%_))))))
                (_%__kont9147791478%_
                 (lambda (_%g5135351898%_ _%g5135451900%_ _%g5135551901%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5135551901%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5135451900%_ '())))
                               (foldr (lambda (_%g5192451927%_ _%g5192551930%_)
                                        (cons _%g5192451927%_ _%g5192551930%_))
                                      '()
                                      _%g5135351898%_)))))
                (_%__kont9148191482%_
                 (lambda (_%g5138051758%_
                          _%g5138151760%_
                          _%g5138251761%_
                          _%g5138351762%_
                          _%g5138451763%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5138451763%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5138351762%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5138451763%_
                                                       (cons _%g5138251761%_
                                                             (cons _%g5138151760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5180451807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5180551810%_)
                  (cons _%g5180451807%_ _%g5180551810%_))
                '()
                _%g5138051758%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9148591486%_
                 (lambda (_%g5141551618%_
                          _%g5141651620%_
                          _%g5141751621%_
                          _%g5141851622%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5141851622%_ _%g5141751621%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5141651620%_
                                                 (foldr (lambda (_%g5164451647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5164551650%_)
                  (cons _%g5164451647%_ _%g5164551650%_))
                '()
                _%g5141551618%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9148991490%_
                 (lambda (_%g5144051516%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5153451537%_ _%g5153551540%_)
                                        (cons _%g5153451537%_ _%g5153551540%_))
                                      '()
                                      _%g5144051516%_))))))
            (let* ((_%__match9179591796%_
                    (lambda (_%e5144151468%_
                             _%hd5144251472%_
                             _%tl5144351475%_
                             _%e5144451478%_
                             _%hd5144551482%_
                             _%tl5144651485%_
                             _%__splice9149191492%_
                             _%target5144751488%_
                             _%tl5144951491%_)
                      (letrec ((_%loop5145051494%_
                                (lambda (_%hd5144851498%_ _%body5145451501%_)
                                  (if (gx#stx-pair? _%hd5144851498%_)
                                      (let ((_%e5145151503%_
                                             (gx#syntax-e _%hd5144851498%_)))
                                        (let ((_%lp-tl5145351510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5145151503%_)))
                                              (_%lp-hd5145251507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5145151503%_))))
                                          (_%loop5145051494%_
                                           _%lp-tl5145351510%_
                                           (cons _%lp-hd5145251507%_
                                                 _%body5145451501%_))))
                                      (let ((_%body5145551513%_
                                             (reverse _%body5145451501%_)))
                                        (_%__kont9148991490%_
                                         _%body5145551513%_))))))
                        (_%loop5145051494%_ _%target5144751488%_ '()))))
                   (_%__match9177391774%_
                    (lambda (_%e5141951550%_
                             _%hd5142051554%_
                             _%tl5142151557%_
                             _%e5142251560%_
                             _%hd5142351564%_
                             _%tl5142451567%_
                             _%e5142551570%_
                             _%hd5142651574%_
                             _%tl5142751577%_
                             _%e5142851580%_
                             _%hd5142951584%_
                             _%tl5143051587%_
                             _%__splice9148791488%_
                             _%target5143151590%_
                             _%tl5143351593%_)
                      (letrec ((_%loop5143451596%_
                                (lambda (_%hd5143251600%_ _%body5143851603%_)
                                  (if (gx#stx-pair? _%hd5143251600%_)
                                      (let ((_%e5143551605%_
                                             (gx#syntax-e _%hd5143251600%_)))
                                        (let ((_%lp-tl5143751612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551605%_)))
                                              (_%lp-hd5143651609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551605%_))))
                                          (_%loop5143451596%_
                                           _%lp-tl5143751612%_
                                           (cons _%lp-hd5143651609%_
                                                 _%body5143851603%_))))
                                      (let ((_%body5143951615%_
                                             (reverse _%body5143851603%_)))
                                        (let ((_%g5141551618%_
                                               _%body5143951615%_)
                                              (_%g5141651620%_
                                               _%tl5142751577%_)
                                              (_%g5141751621%_
                                               _%tl5143051587%_)
                                              (_%g5141851622%_
                                               _%hd5142951584%_))
                                          (if (gx#identifier? _%g5141851622%_)
                                              (_%__kont9148591486%_
                                               _%g5141551618%_
                                               _%g5141651620%_
                                               _%g5141751621%_
                                               _%g5141851622%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_)))))))))
                        (_%loop5143451596%_ _%target5143151590%_ '()))))
                   (_%__match9175991760%_
                    (lambda (_%e5141951550%_
                             _%hd5142051554%_
                             _%tl5142151557%_
                             _%e5142251560%_
                             _%hd5142351564%_
                             _%tl5142451567%_
                             _%e5142551570%_
                             _%hd5142651574%_
                             _%tl5142751577%_)
                      (if (gx#stx-pair? _%hd5142651574%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5142651574%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (if (gx#stx-pair/null? _%tl5142451567%_)
                                  (let ((_%__splice9148791488%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5142451567%_
                                          '0)))
                                    (let ((_%tl5143351593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '1)))
                                          (_%target5143151590%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5143351593%_)
                                          (_%__match9177391774%_
                                           _%e5141951550%_
                                           _%hd5142051554%_
                                           _%tl5142151557%_
                                           _%e5142251560%_
                                           _%hd5142351564%_
                                           _%tl5142451567%_
                                           _%e5142551570%_
                                           _%hd5142651574%_
                                           _%tl5142751577%_
                                           _%e5142851580%_
                                           _%hd5142951584%_
                                           _%tl5143051587%_
                                           _%__splice9148791488%_
                                           _%target5143151590%_
                                           _%tl5143351593%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                   (_%__match9174191742%_
                    (lambda (_%e5138551660%_
                             _%hd5138651664%_
                             _%tl5138751667%_
                             _%e5138851670%_
                             _%hd5138951674%_
                             _%tl5139051677%_
                             _%e5139151680%_
                             _%hd5139251684%_
                             _%tl5139351687%_
                             _%e5139451690%_
                             _%hd5139551694%_
                             _%tl5139651697%_
                             _%e5139751700%_
                             _%hd5139851704%_
                             _%tl5139951707%_
                             _%e5140051710%_
                             _%hd5140151714%_
                             _%tl5140251717%_
                             _%e5140351720%_
                             _%hd5140451724%_
                             _%tl5140551727%_
                             _%__splice9148391484%_
                             _%target5140651730%_
                             _%tl5140851733%_)
                      (letrec ((_%loop5140951736%_
                                (lambda (_%hd5140751740%_ _%body5141351743%_)
                                  (if (gx#stx-pair? _%hd5140751740%_)
                                      (let ((_%e5141051745%_
                                             (gx#syntax-e _%hd5140751740%_)))
                                        (let ((_%lp-tl5141251752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5141051745%_)))
                                              (_%lp-hd5141151749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5141051745%_))))
                                          (_%loop5140951736%_
                                           _%lp-tl5141251752%_
                                           (cons _%lp-hd5141151749%_
                                                 _%body5141351743%_))))
                                      (let ((_%body5141451755%_
                                             (reverse _%body5141351743%_)))
                                        (let ((_%g5138051758%_
                                               _%body5141451755%_)
                                              (_%g5138151760%_
                                               _%hd5140451724%_)
                                              (_%g5138251761%_
                                               _%hd5140151714%_)
                                              (_%g5138351762%_
                                               _%hd5139851704%_)
                                              (_%g5138451763%_
                                               _%hd5139251684%_))
                                          (if (and (gx#identifier?
                                                    _%g5138451763%_)
                                                   (gx#identifier?
                                                    _%g5138151760%_)
                                                   (gx#identifier?
                                                    _%g5138251761%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5138251761%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5138251761%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5138251761%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5138251761%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9148191482%_
                                               _%g5138051758%_
                                               _%g5138151760%_
                                               _%g5138251761%_
                                               _%g5138351762%_
                                               _%g5138451763%_)
                                              (_%__match9175991760%_
                                               _%e5138551660%_
                                               _%hd5138651664%_
                                               _%tl5138751667%_
                                               _%e5138851670%_
                                               _%hd5138951674%_
                                               _%tl5139051677%_
                                               _%e5139151680%_
                                               _%hd5139251684%_
                                               _%tl5139351687%_))))))))
                        (_%loop5140951736%_ _%target5140651730%_ '()))))
                   (_%__match9168591686%_
                    (lambda (_%e5135651820%_
                             _%hd5135751824%_
                             _%tl5135851827%_
                             _%e5135951830%_
                             _%hd5136051834%_
                             _%tl5136151837%_
                             _%e5136251840%_
                             _%hd5136351844%_
                             _%tl5136451847%_
                             _%e5136551850%_
                             _%hd5136651854%_
                             _%tl5136751857%_
                             _%e5136851860%_
                             _%hd5136951864%_
                             _%tl5137051867%_
                             _%__splice9147991480%_
                             _%target5137151870%_
                             _%tl5137351873%_)
                      (letrec ((_%loop5137451876%_
                                (lambda (_%hd5137251880%_ _%body5137851883%_)
                                  (if (gx#stx-pair? _%hd5137251880%_)
                                      (let ((_%e5137551885%_
                                             (gx#syntax-e _%hd5137251880%_)))
                                        (let ((_%lp-tl5137751892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137551885%_)))
                                              (_%lp-hd5137651889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137551885%_))))
                                          (_%loop5137451876%_
                                           _%lp-tl5137751892%_
                                           (cons _%lp-hd5137651889%_
                                                 _%body5137851883%_))))
                                      (let ((_%body5137951895%_
                                             (reverse _%body5137851883%_)))
                                        (let ((_%g5135351898%_
                                               _%body5137951895%_)
                                              (_%g5135451900%_
                                               _%hd5136951864%_)
                                              (_%g5135551901%_
                                               _%hd5136351844%_))
                                          (if (gx#identifier? _%g5135551901%_)
                                              (_%__kont9147791478%_
                                               _%g5135351898%_
                                               _%g5135451900%_
                                               _%g5135551901%_)
                                              (_%__match9175991760%_
                                               _%e5135651820%_
                                               _%hd5135751824%_
                                               _%tl5135851827%_
                                               _%e5135951830%_
                                               _%hd5136051834%_
                                               _%tl5136151837%_
                                               _%e5136251840%_
                                               _%hd5136351844%_
                                               _%tl5136451847%_))))))))
                        (_%loop5137451876%_ _%target5137151870%_ '()))))
                   (_%__match9166591666%_
                    (lambda (_%e5135651820%_
                             _%hd5135751824%_
                             _%tl5135851827%_
                             _%e5135951830%_
                             _%hd5136051834%_
                             _%tl5136151837%_
                             _%e5136251840%_
                             _%hd5136351844%_
                             _%tl5136451847%_
                             _%e5136551850%_
                             _%hd5136651854%_
                             _%tl5136751857%_)
                      (if (gx#identifier? _%hd5136651854%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g97746_|
                               _%hd5136651854%_)
                              (if (gx#stx-pair? _%tl5136751857%_)
                                  (let ((_%e5136851860%_
                                         (gx#syntax-e _%tl5136751857%_)))
                                    (let ((_%tl5137051867%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5136851860%_)))
                                          (_%hd5136951864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5136851860%_))))
                                      (if (gx#stx-null? _%tl5137051867%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5136151837%_)
                                              (let ((_%__splice9147991480%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5136151837%_
                                                      '0)))
                                                (let ((_%tl5137351873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9147991480%_
                                                          '1)))
                                                      (_%target5137151870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9147991480%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5137351873%_)
                                                      (_%__match9168591686%_
                                                       _%e5135651820%_
                                                       _%hd5135751824%_
                                                       _%tl5135851827%_
                                                       _%e5135951830%_
                                                       _%hd5136051834%_
                                                       _%tl5136151837%_
                                                       _%e5136251840%_
                                                       _%hd5136351844%_
                                                       _%tl5136451847%_
                                                       _%e5136551850%_
                                                       _%hd5136651854%_
                                                       _%tl5136751857%_
                                                       _%e5136851860%_
                                                       _%hd5136951864%_
                                                       _%tl5137051867%_
                                                       _%__splice9147991480%_
                                                       _%target5137151870%_
                                                       _%tl5137351873%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5136351844%_)
                                                          (let ((_%e5142851580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5136351844%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (let () (declare (not safe)) (_%g5125251461%_))))
                  (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5136351844%_)
                                                  (let ((_%e5142851580%_
                                                         (gx#syntax-e
                                                          _%hd5136351844%_)))
                                                    (let ((_%tl5143051587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142851580%_)))
                                                          (_%hd5142951584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142851580%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125251461%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_))))
                                          (if (gx#stx-pair? _%tl5137051867%_)
                                              (let ((_%e5140051710%_
                                                     (gx#syntax-e
                                                      _%tl5137051867%_)))
                                                (let ((_%tl5140251717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5140051710%_)))
                                                      (_%hd5140151714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5140051710%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5140251717%_)
                                                      (let ((_%e5140351720%_
                                                             (gx#syntax-e
                                                              _%tl5140251717%_)))
                                                        (let ((_%tl5140551727%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5140351720%_)))
                      (_%hd5140451724%_
                       (let () (declare (not safe)) (##car _%e5140351720%_))))
                  (if (gx#stx-null? _%tl5140551727%_)
                      (if (gx#stx-pair/null? _%tl5136151837%_)
                          (let ((_%__splice9148391484%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5136151837%_
                                  '0)))
                            (let ((_%tl5140851733%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148391484%_ '1)))
                                  (_%target5140651730%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148391484%_
                                      '0))))
                              (if (gx#stx-null? _%tl5140851733%_)
                                  (_%__match9174191742%_
                                   _%e5135651820%_
                                   _%hd5135751824%_
                                   _%tl5135851827%_
                                   _%e5135951830%_
                                   _%hd5136051834%_
                                   _%tl5136151837%_
                                   _%e5136251840%_
                                   _%hd5136351844%_
                                   _%tl5136451847%_
                                   _%e5136551850%_
                                   _%hd5136651854%_
                                   _%tl5136751857%_
                                   _%e5136851860%_
                                   _%hd5136951864%_
                                   _%tl5137051867%_
                                   _%e5140051710%_
                                   _%hd5140151714%_
                                   _%tl5140251717%_
                                   _%e5140351720%_
                                   _%hd5140451724%_
                                   _%tl5140551727%_
                                   _%__splice9148391484%_
                                   _%target5140651730%_
                                   _%tl5140851733%_)
                                  (if (gx#stx-pair? _%hd5136351844%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5136351844%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))
                          (if (gx#stx-pair? _%hd5136351844%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5136351844%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                      (if (gx#stx-pair? _%hd5136351844%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5136351844%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (if (gx#stx-pair/null? _%tl5136151837%_)
                                  (let ((_%__splice9148791488%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5136151837%_
                                          '0)))
                                    (let ((_%tl5143351593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '1)))
                                          (_%target5143151590%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5143351593%_)
                                          (_%__match9177391774%_
                                           _%e5135651820%_
                                           _%hd5135751824%_
                                           _%tl5135851827%_
                                           _%e5135951830%_
                                           _%hd5136051834%_
                                           _%tl5136151837%_
                                           _%e5136251840%_
                                           _%hd5136351844%_
                                           _%tl5136451847%_
                                           _%e5142851580%_
                                           _%hd5142951584%_
                                           _%tl5143051587%_
                                           _%__splice9148791488%_
                                           _%target5143151590%_
                                           _%tl5143351593%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_))))))
              (if (gx#stx-pair? _%hd5136351844%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5136351844%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (if (gx#stx-pair/null? _%tl5136151837%_)
                          (let ((_%__splice9148791488%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5136151837%_
                                  '0)))
                            (let ((_%tl5143351593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148791488%_ '1)))
                                  (_%target5143151590%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148791488%_
                                      '0))))
                              (if (gx#stx-null? _%tl5143351593%_)
                                  (_%__match9177391774%_
                                   _%e5135651820%_
                                   _%hd5135751824%_
                                   _%tl5135851827%_
                                   _%e5135951830%_
                                   _%hd5136051834%_
                                   _%tl5136151837%_
                                   _%e5136251840%_
                                   _%hd5136351844%_
                                   _%tl5136451847%_
                                   _%e5142851580%_
                                   _%hd5142951584%_
                                   _%tl5143051587%_
                                   _%__splice9148791488%_
                                   _%target5143151590%_
                                   _%tl5143351593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5136351844%_)
                                                  (let ((_%e5142851580%_
                                                         (gx#syntax-e
                                                          _%hd5136351844%_)))
                                                    (let ((_%tl5143051587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142851580%_)))
                                                          (_%hd5142951584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142851580%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5136151837%_)
                                                          (let ((_%__splice9148791488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5136151837%_ '0)))
                    (let ((_%tl5143351593%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148791488%_ '1)))
                          (_%target5143151590%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148791488%_ '0))))
                      (if (gx#stx-null? _%tl5143351593%_)
                          (_%__match9177391774%_
                           _%e5135651820%_
                           _%hd5135751824%_
                           _%tl5135851827%_
                           _%e5135951830%_
                           _%hd5136051834%_
                           _%tl5136151837%_
                           _%e5136251840%_
                           _%hd5136351844%_
                           _%tl5136451847%_
                           _%e5142851580%_
                           _%hd5142951584%_
                           _%tl5143051587%_
                           _%__splice9148791488%_
                           _%target5143151590%_
                           _%tl5143351593%_)
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))))
                                  (if (gx#stx-pair? _%hd5136351844%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5136351844%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5136151837%_)
                                              (let ((_%__splice9148791488%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5136151837%_
                                                      '0)))
                                                (let ((_%tl5143351593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148791488%_
                                                          '1)))
                                                      (_%target5143151590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148791488%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5143351593%_)
                                                      (_%__match9177391774%_
                                                       _%e5135651820%_
                                                       _%hd5135751824%_
                                                       _%tl5135851827%_
                                                       _%e5135951830%_
                                                       _%hd5136051834%_
                                                       _%tl5136151837%_
                                                       _%e5136251840%_
                                                       _%hd5136351844%_
                                                       _%tl5136451847%_
                                                       _%e5142851580%_
                                                       _%hd5142951584%_
                                                       _%tl5143051587%_
                                                       _%__splice9148791488%_
                                                       _%target5143151590%_
                                                       _%tl5143351593%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125251461%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))
                              (if (gx#stx-pair? _%hd5136351844%_)
                                  (let ((_%e5142851580%_
                                         (gx#syntax-e _%hd5136351844%_)))
                                    (let ((_%tl5143051587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142851580%_)))
                                          (_%hd5142951584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142851580%_))))
                                      (if (gx#stx-pair/null? _%tl5136151837%_)
                                          (let ((_%__splice9148791488%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5136151837%_
                                                  '0)))
                                            (let ((_%tl5143351593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9148791488%_
                                                      '1)))
                                                  (_%target5143151590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9148791488%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5143351593%_)
                                                  (_%__match9177391774%_
                                                   _%e5135651820%_
                                                   _%hd5135751824%_
                                                   _%tl5135851827%_
                                                   _%e5135951830%_
                                                   _%hd5136051834%_
                                                   _%tl5136151837%_
                                                   _%e5136251840%_
                                                   _%hd5136351844%_
                                                   _%tl5136451847%_
                                                   _%e5142851580%_
                                                   _%hd5142951584%_
                                                   _%tl5143051587%_
                                                   _%__splice9148791488%_
                                                   _%target5143151590%_
                                                   _%tl5143351593%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                          (if (gx#stx-pair? _%hd5136351844%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5136351844%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (if (gx#stx-pair/null? _%tl5136151837%_)
                                      (let ((_%__splice9148791488%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5136151837%_
                                              '0)))
                                        (let ((_%tl5143351593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9148791488%_
                                                  '1)))
                                              (_%target5143151590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9148791488%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5143351593%_)
                                              (_%__match9177391774%_
                                               _%e5135651820%_
                                               _%hd5135751824%_
                                               _%tl5135851827%_
                                               _%e5135951830%_
                                               _%hd5136051834%_
                                               _%tl5136151837%_
                                               _%e5136251840%_
                                               _%hd5136351844%_
                                               _%tl5136451847%_
                                               _%e5142851580%_
                                               _%hd5142951584%_
                                               _%tl5143051587%_
                                               _%__splice9148791488%_
                                               _%target5143151590%_
                                               _%tl5143351593%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_))))))
                   (_%__match9164191642%_
                    (lambda (_%e5132951940%_
                             _%hd5133051944%_
                             _%tl5133151947%_
                             _%e5133251950%_
                             _%hd5133351954%_
                             _%tl5133451957%_
                             _%e5133551960%_
                             _%hd5133651964%_
                             _%tl5133751967%_
                             _%e5133851970%_
                             _%hd5133951974%_
                             _%tl5134051977%_
                             _%e5134151980%_
                             _%hd5134251984%_
                             _%tl5134351987%_
                             _%__splice9147591476%_
                             _%target5134451990%_
                             _%tl5134651993%_)
                      (letrec ((_%loop5134751996%_
                                (lambda (_%hd5134552000%_ _%body5135152003%_)
                                  (if (gx#stx-pair? _%hd5134552000%_)
                                      (let ((_%e5134852005%_
                                             (gx#syntax-e _%hd5134552000%_)))
                                        (let ((_%lp-tl5135052012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5134852005%_)))
                                              (_%lp-hd5134952009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5134852005%_))))
                                          (_%loop5134751996%_
                                           _%lp-tl5135052012%_
                                           (cons _%lp-hd5134952009%_
                                                 _%body5135152003%_))))
                                      (let ((_%body5135252015%_
                                             (reverse _%body5135152003%_)))
                                        (let ((_%g5132552018%_
                                               _%body5135252015%_)
                                              (_%g5132652020%_
                                               _%hd5134251984%_)
                                              (_%g5132752021%_
                                               _%hd5133951974%_)
                                              (_%g5132852022%_
                                               _%hd5133651964%_))
                                          (if (and (gx#identifier?
                                                    _%g5132852022%_)
                                                   (gx#identifier?
                                                    _%g5132652020%_)
                                                   (gx#identifier?
                                                    _%g5132752021%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5132752021%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5132752021%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5132752021%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5132752021%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9147391474%_
                                               _%g5132552018%_
                                               _%g5132652020%_
                                               _%g5132752021%_
                                               _%g5132852022%_)
                                              (_%__match9166591666%_
                                               _%e5132951940%_
                                               _%hd5133051944%_
                                               _%tl5133151947%_
                                               _%e5133251950%_
                                               _%hd5133351954%_
                                               _%tl5133451957%_
                                               _%e5133551960%_
                                               _%hd5133651964%_
                                               _%tl5133751967%_
                                               _%e5133851970%_
                                               _%hd5133951974%_
                                               _%tl5134051977%_))))))))
                        (_%loop5134751996%_ _%target5134451990%_ '()))))
                   (_%__match9160191602%_
                    (lambda (_%e5129252091%_
                             _%hd5129352095%_
                             _%tl5129452098%_
                             _%e5129552101%_
                             _%hd5129652105%_
                             _%tl5129752108%_
                             _%e5129852111%_
                             _%hd5129952115%_
                             _%tl5130052118%_
                             _%e5130152121%_
                             _%hd5130252125%_
                             _%tl5130352128%_
                             _%e5130452131%_
                             _%hd5130552135%_
                             _%tl5130652138%_
                             _%e5130752141%_
                             _%hd5130852145%_
                             _%tl5130952148%_
                             _%e5131052151%_
                             _%hd5131152155%_
                             _%tl5131252158%_
                             _%e5131352161%_
                             _%hd5131452165%_
                             _%tl5131552168%_
                             _%__splice9147191472%_
                             _%target5131652171%_
                             _%tl5131852174%_)
                      (letrec ((_%loop5131952177%_
                                (lambda (_%hd5131752181%_ _%body5132352184%_)
                                  (if (gx#stx-pair? _%hd5131752181%_)
                                      (let ((_%e5132052186%_
                                             (gx#syntax-e _%hd5131752181%_)))
                                        (let ((_%lp-tl5132252193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5132052186%_)))
                                              (_%lp-hd5132152190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5132052186%_))))
                                          (_%loop5131952177%_
                                           _%lp-tl5132252193%_
                                           (cons _%lp-hd5132152190%_
                                                 _%body5132352184%_))))
                                      (let ((_%body5132452196%_
                                             (reverse _%body5132352184%_)))
                                        (let ((_%g5128652199%_
                                               _%body5132452196%_)
                                              (_%g5128752201%_
                                               _%hd5131452165%_)
                                              (_%g5128852202%_
                                               _%hd5131152155%_)
                                              (_%g5128952203%_
                                               _%hd5130852145%_)
                                              (_%g5129052204%_
                                               _%hd5130252125%_)
                                              (_%g5129152205%_
                                               _%hd5129952115%_))
                                          (if (and (gx#identifier?
                                                    _%g5129152205%_)
                                                   (gx#identifier?
                                                    _%g5128752201%_)
                                                   (gx#identifier?
                                                    _%g5128852202%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5128852202%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5128852202%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5128852202%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5128852202%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9146991470%_
                                               _%g5128652199%_
                                               _%g5128752201%_
                                               _%g5128852202%_
                                               _%g5128952203%_
                                               _%g5129052204%_
                                               _%g5129152205%_)
                                              (_%__match9166591666%_
                                               _%e5129252091%_
                                               _%hd5129352095%_
                                               _%tl5129452098%_
                                               _%e5129552101%_
                                               _%hd5129652105%_
                                               _%tl5129752108%_
                                               _%e5129852111%_
                                               _%hd5129952115%_
                                               _%tl5130052118%_
                                               _%e5130152121%_
                                               _%hd5130252125%_
                                               _%tl5130352128%_))))))))
                        (_%loop5131952177%_ _%target5131652171%_ '()))))
                   (_%__match9156991570%_
                    (lambda (_%e5129252091%_
                             _%hd5129352095%_
                             _%tl5129452098%_
                             _%e5129552101%_
                             _%hd5129652105%_
                             _%tl5129752108%_
                             _%e5129852111%_
                             _%hd5129952115%_
                             _%tl5130052118%_
                             _%e5130152121%_
                             _%hd5130252125%_
                             _%tl5130352128%_
                             _%e5130452131%_
                             _%hd5130552135%_
                             _%tl5130652138%_)
                      (if (gx#identifier? _%hd5130552135%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g97747_|
                               _%hd5130552135%_)
                              (if (gx#stx-pair? _%tl5130652138%_)
                                  (let ((_%e5130752141%_
                                         (gx#syntax-e _%tl5130652138%_)))
                                    (let ((_%tl5130952148%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5130752141%_)))
                                          (_%hd5130852145%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5130752141%_))))
                                      (if (gx#stx-pair? _%tl5130952148%_)
                                          (let ((_%e5131052151%_
                                                 (gx#syntax-e
                                                  _%tl5130952148%_)))
                                            (let ((_%tl5131252158%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5131052151%_)))
                                                  (_%hd5131152155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5131052151%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5131252158%_)
                                                  (let ((_%e5131352161%_
                                                         (gx#syntax-e
                                                          _%tl5131252158%_)))
                                                    (let ((_%tl5131552168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5131352161%_)))
                                                          (_%hd5131452165%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5131352161%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5131552168%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5129752108%_)
                                                              (let ((_%__splice9147191472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5129752108%_
                              '0)))
                        (let ((_%tl5131852174%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9147191472%_ '1)))
                              (_%target5131652171%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9147191472%_ '0))))
                          (if (gx#stx-null? _%tl5131852174%_)
                              (_%__match9160191602%_
                               _%e5129252091%_
                               _%hd5129352095%_
                               _%tl5129452098%_
                               _%e5129552101%_
                               _%hd5129652105%_
                               _%tl5129752108%_
                               _%e5129852111%_
                               _%hd5129952115%_
                               _%tl5130052118%_
                               _%e5130152121%_
                               _%hd5130252125%_
                               _%tl5130352128%_
                               _%e5130452131%_
                               _%hd5130552135%_
                               _%tl5130652138%_
                               _%e5130752141%_
                               _%hd5130852145%_
                               _%tl5130952148%_
                               _%e5131052151%_
                               _%hd5131152155%_
                               _%tl5131252158%_
                               _%e5131352161%_
                               _%hd5131452165%_
                               _%tl5131552168%_
                               _%__splice9147191472%_
                               _%target5131652171%_
                               _%tl5131852174%_)
                              (if (gx#stx-pair? _%hd5129952115%_)
                                  (let ((_%e5142851580%_
                                         (gx#syntax-e _%hd5129952115%_)))
                                    (let ((_%tl5143051587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142851580%_)))
                                          (_%hd5142951584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142851580%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))))
                      (if (gx#stx-pair? _%hd5129952115%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5129952115%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                          (let () (declare (not safe)) (_%g5125251461%_))))
                  (if (gx#stx-pair? _%hd5129952115%_)
                      (let ((_%e5142851580%_ (gx#syntax-e _%hd5129952115%_)))
                        (let ((_%tl5143051587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142851580%_)))
                              (_%hd5142951584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142851580%_))))
                          (if (gx#stx-pair/null? _%tl5129752108%_)
                              (let ((_%__splice9148791488%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5129752108%_
                                      '0)))
                                (let ((_%tl5143351593%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '1)))
                                      (_%target5143151590%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5143351593%_)
                                      (_%__match9177391774%_
                                       _%e5129252091%_
                                       _%hd5129352095%_
                                       _%tl5129452098%_
                                       _%e5129552101%_
                                       _%hd5129652105%_
                                       _%tl5129752108%_
                                       _%e5129852111%_
                                       _%hd5129952115%_
                                       _%tl5130052118%_
                                       _%e5142851580%_
                                       _%hd5142951584%_
                                       _%tl5143051587%_
                                       _%__splice9148791488%_
                                       _%target5143151590%_
                                       _%tl5143351593%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5130252125%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97746_|
                                                           _%hd5130252125%_)
                                                          (if (gx#stx-null?
                                                               _%tl5131252158%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5129752108%_)
                          (let ((_%__splice9148391484%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129752108%_
                                  '0)))
                            (let ((_%tl5140851733%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148391484%_ '1)))
                                  (_%target5140651730%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148391484%_
                                      '0))))
                              (if (gx#stx-null? _%tl5140851733%_)
                                  (_%__match9174191742%_
                                   _%e5129252091%_
                                   _%hd5129352095%_
                                   _%tl5129452098%_
                                   _%e5129552101%_
                                   _%hd5129652105%_
                                   _%tl5129752108%_
                                   _%e5129852111%_
                                   _%hd5129952115%_
                                   _%tl5130052118%_
                                   _%e5130152121%_
                                   _%hd5130252125%_
                                   _%tl5130352128%_
                                   _%e5130452131%_
                                   _%hd5130552135%_
                                   _%tl5130652138%_
                                   _%e5130752141%_
                                   _%hd5130852145%_
                                   _%tl5130952148%_
                                   _%e5131052151%_
                                   _%hd5131152155%_
                                   _%tl5131252158%_
                                   _%__splice9148391484%_
                                   _%target5140651730%_
                                   _%tl5140851733%_)
                                  (if (gx#stx-pair? _%hd5129952115%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5129952115%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))
                          (if (gx#stx-pair? _%hd5129952115%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5129952115%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                      (if (gx#stx-pair? _%hd5129952115%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5129952115%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (if (gx#stx-pair/null? _%tl5129752108%_)
                                  (let ((_%__splice9148791488%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5129752108%_
                                          '0)))
                                    (let ((_%tl5143351593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '1)))
                                          (_%target5143151590%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5143351593%_)
                                          (_%__match9177391774%_
                                           _%e5129252091%_
                                           _%hd5129352095%_
                                           _%tl5129452098%_
                                           _%e5129552101%_
                                           _%hd5129652105%_
                                           _%tl5129752108%_
                                           _%e5129852111%_
                                           _%hd5129952115%_
                                           _%tl5130052118%_
                                           _%e5142851580%_
                                           _%hd5142951584%_
                                           _%tl5143051587%_
                                           _%__splice9148791488%_
                                           _%target5143151590%_
                                           _%tl5143351593%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_))))
                  (if (gx#stx-pair? _%hd5129952115%_)
                      (let ((_%e5142851580%_ (gx#syntax-e _%hd5129952115%_)))
                        (let ((_%tl5143051587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142851580%_)))
                              (_%hd5142951584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142851580%_))))
                          (if (gx#stx-pair/null? _%tl5129752108%_)
                              (let ((_%__splice9148791488%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5129752108%_
                                      '0)))
                                (let ((_%tl5143351593%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '1)))
                                      (_%target5143151590%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5143351593%_)
                                      (_%__match9177391774%_
                                       _%e5129252091%_
                                       _%hd5129352095%_
                                       _%tl5129452098%_
                                       _%e5129552101%_
                                       _%hd5129652105%_
                                       _%tl5129752108%_
                                       _%e5129852111%_
                                       _%hd5129952115%_
                                       _%tl5130052118%_
                                       _%e5142851580%_
                                       _%hd5142951584%_
                                       _%tl5143051587%_
                                       _%__splice9148791488%_
                                       _%target5143151590%_
                                       _%tl5143351593%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_))))
              (if (gx#stx-pair? _%hd5129952115%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5129952115%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (if (gx#stx-pair/null? _%tl5129752108%_)
                          (let ((_%__splice9148791488%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129752108%_
                                  '0)))
                            (let ((_%tl5143351593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148791488%_ '1)))
                                  (_%target5143151590%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148791488%_
                                      '0))))
                              (if (gx#stx-null? _%tl5143351593%_)
                                  (_%__match9177391774%_
                                   _%e5129252091%_
                                   _%hd5129352095%_
                                   _%tl5129452098%_
                                   _%e5129552101%_
                                   _%hd5129652105%_
                                   _%tl5129752108%_
                                   _%e5129852111%_
                                   _%hd5129952115%_
                                   _%tl5130052118%_
                                   _%e5142851580%_
                                   _%hd5142951584%_
                                   _%tl5143051587%_
                                   _%__splice9148791488%_
                                   _%target5143151590%_
                                   _%tl5143351593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5129952115%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5129952115%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5129752108%_)
                                                      (let ((_%__splice9148791488%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5129752108%_
                                                              '0)))
                                                        (let ((_%tl5143351593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '1)))
                      (_%target5143151590%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '0))))
                  (if (gx#stx-null? _%tl5143351593%_)
                      (_%__match9177391774%_
                       _%e5129252091%_
                       _%hd5129352095%_
                       _%tl5129452098%_
                       _%e5129552101%_
                       _%hd5129652105%_
                       _%tl5129752108%_
                       _%e5129852111%_
                       _%hd5129952115%_
                       _%tl5130052118%_
                       _%e5142851580%_
                       _%hd5142951584%_
                       _%tl5143051587%_
                       _%__splice9148791488%_
                       _%target5143151590%_
                       _%tl5143351593%_)
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))))
                                  (if (gx#stx-null? _%tl5130652138%_)
                                      (if (gx#stx-pair/null? _%tl5129752108%_)
                                          (let ((_%__splice9147591476%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5129752108%_
                                                  '0)))
                                            (let ((_%tl5134651993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9147591476%_
                                                      '1)))
                                                  (_%target5134451990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9147591476%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5134651993%_)
                                                  (_%__match9164191642%_
                                                   _%e5129252091%_
                                                   _%hd5129352095%_
                                                   _%tl5129452098%_
                                                   _%e5129552101%_
                                                   _%hd5129652105%_
                                                   _%tl5129752108%_
                                                   _%e5129852111%_
                                                   _%hd5129952115%_
                                                   _%tl5130052118%_
                                                   _%e5130152121%_
                                                   _%hd5130252125%_
                                                   _%tl5130352128%_
                                                   _%e5130452131%_
                                                   _%hd5130552135%_
                                                   _%tl5130652138%_
                                                   _%__splice9147591476%_
                                                   _%target5134451990%_
                                                   _%tl5134651993%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5129952115%_)
                                                      (let ((_%e5142851580%_
                                                             (gx#syntax-e
                                                              _%hd5129952115%_)))
                                                        (let ((_%tl5143051587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142851580%_)))
                      (_%hd5142951584%_
                       (let () (declare (not safe)) (##car _%e5142851580%_))))
                  (let () (declare (not safe)) (_%g5125251461%_))))
              (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5129952115%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5129952115%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                      (if (gx#stx-pair? _%hd5129952115%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5129952115%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5129752108%_)
                                                  (let ((_%__splice9148791488%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5129752108%_
                                                          '0)))
                                                    (let ((_%tl5143351593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '1)))
                                                          (_%target5143151590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5143351593%_)
                                                          (_%__match9177391774%_
                                                           _%e5129252091%_
                                                           _%hd5129352095%_
                                                           _%tl5129452098%_
                                                           _%e5129552101%_
                                                           _%hd5129652105%_
                                                           _%tl5129752108%_
                                                           _%e5129852111%_
                                                           _%hd5129952115%_
                                                           _%tl5130052118%_
                                                           _%e5142851580%_
                                                           _%hd5142951584%_
                                                           _%tl5143051587%_
                                                           _%__splice9148791488%_
                                                           _%target5143151590%_
                                                           _%tl5143351593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125251461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                              (if (gx#stx-null? _%tl5130652138%_)
                                  (if (gx#stx-pair/null? _%tl5129752108%_)
                                      (let ((_%__splice9147591476%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5129752108%_
                                              '0)))
                                        (let ((_%tl5134651993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9147591476%_
                                                  '1)))
                                              (_%target5134451990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9147591476%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5134651993%_)
                                              (_%__match9164191642%_
                                               _%e5129252091%_
                                               _%hd5129352095%_
                                               _%tl5129452098%_
                                               _%e5129552101%_
                                               _%hd5129652105%_
                                               _%tl5129752108%_
                                               _%e5129852111%_
                                               _%hd5129952115%_
                                               _%tl5130052118%_
                                               _%e5130152121%_
                                               _%hd5130252125%_
                                               _%tl5130352128%_
                                               _%e5130452131%_
                                               _%hd5130552135%_
                                               _%tl5130652138%_
                                               _%__splice9147591476%_
                                               _%target5134451990%_
                                               _%tl5134651993%_)
                                              (if (gx#stx-pair?
                                                   _%hd5129952115%_)
                                                  (let ((_%e5142851580%_
                                                         (gx#syntax-e
                                                          _%hd5129952115%_)))
                                                    (let ((_%tl5143051587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142851580%_)))
                                                          (_%hd5142951584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142851580%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125251461%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_))))))
                                      (if (gx#stx-pair? _%hd5129952115%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5129952115%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                  (if (gx#identifier? _%hd5130252125%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97746_|
                                           _%hd5130252125%_)
                                          (if (gx#stx-pair? _%tl5130652138%_)
                                              (let ((_%e5140051710%_
                                                     (gx#syntax-e
                                                      _%tl5130652138%_)))
                                                (let ((_%tl5140251717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5140051710%_)))
                                                      (_%hd5140151714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5140051710%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5140251717%_)
                                                      (let ((_%e5140351720%_
                                                             (gx#syntax-e
                                                              _%tl5140251717%_)))
                                                        (let ((_%tl5140551727%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5140351720%_)))
                      (_%hd5140451724%_
                       (let () (declare (not safe)) (##car _%e5140351720%_))))
                  (if (gx#stx-null? _%tl5140551727%_)
                      (if (gx#stx-pair/null? _%tl5129752108%_)
                          (let ((_%__splice9148391484%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129752108%_
                                  '0)))
                            (let ((_%tl5140851733%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148391484%_ '1)))
                                  (_%target5140651730%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148391484%_
                                      '0))))
                              (if (gx#stx-null? _%tl5140851733%_)
                                  (_%__match9174191742%_
                                   _%e5129252091%_
                                   _%hd5129352095%_
                                   _%tl5129452098%_
                                   _%e5129552101%_
                                   _%hd5129652105%_
                                   _%tl5129752108%_
                                   _%e5129852111%_
                                   _%hd5129952115%_
                                   _%tl5130052118%_
                                   _%e5130152121%_
                                   _%hd5130252125%_
                                   _%tl5130352128%_
                                   _%e5130452131%_
                                   _%hd5130552135%_
                                   _%tl5130652138%_
                                   _%e5140051710%_
                                   _%hd5140151714%_
                                   _%tl5140251717%_
                                   _%e5140351720%_
                                   _%hd5140451724%_
                                   _%tl5140551727%_
                                   _%__splice9148391484%_
                                   _%target5140651730%_
                                   _%tl5140851733%_)
                                  (if (gx#stx-pair? _%hd5129952115%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5129952115%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))
                          (if (gx#stx-pair? _%hd5129952115%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5129952115%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                      (if (gx#stx-pair? _%hd5129952115%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5129952115%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (if (gx#stx-pair/null? _%tl5129752108%_)
                                  (let ((_%__splice9148791488%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5129752108%_
                                          '0)))
                                    (let ((_%tl5143351593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '1)))
                                          (_%target5143151590%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5143351593%_)
                                          (_%__match9177391774%_
                                           _%e5129252091%_
                                           _%hd5129352095%_
                                           _%tl5129452098%_
                                           _%e5129552101%_
                                           _%hd5129652105%_
                                           _%tl5129752108%_
                                           _%e5129852111%_
                                           _%hd5129952115%_
                                           _%tl5130052118%_
                                           _%e5142851580%_
                                           _%hd5142951584%_
                                           _%tl5143051587%_
                                           _%__splice9148791488%_
                                           _%target5143151590%_
                                           _%tl5143351593%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_))))))
              (if (gx#stx-pair? _%hd5129952115%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5129952115%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (if (gx#stx-pair/null? _%tl5129752108%_)
                          (let ((_%__splice9148791488%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129752108%_
                                  '0)))
                            (let ((_%tl5143351593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148791488%_ '1)))
                                  (_%target5143151590%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148791488%_
                                      '0))))
                              (if (gx#stx-null? _%tl5143351593%_)
                                  (_%__match9177391774%_
                                   _%e5129252091%_
                                   _%hd5129352095%_
                                   _%tl5129452098%_
                                   _%e5129552101%_
                                   _%hd5129652105%_
                                   _%tl5129752108%_
                                   _%e5129852111%_
                                   _%hd5129952115%_
                                   _%tl5130052118%_
                                   _%e5142851580%_
                                   _%hd5142951584%_
                                   _%tl5143051587%_
                                   _%__splice9148791488%_
                                   _%target5143151590%_
                                   _%tl5143351593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5129952115%_)
                                                  (let ((_%e5142851580%_
                                                         (gx#syntax-e
                                                          _%hd5129952115%_)))
                                                    (let ((_%tl5143051587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142851580%_)))
                                                          (_%hd5142951584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142851580%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5129752108%_)
                                                          (let ((_%__splice9148791488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5129752108%_ '0)))
                    (let ((_%tl5143351593%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148791488%_ '1)))
                          (_%target5143151590%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148791488%_ '0))))
                      (if (gx#stx-null? _%tl5143351593%_)
                          (_%__match9177391774%_
                           _%e5129252091%_
                           _%hd5129352095%_
                           _%tl5129452098%_
                           _%e5129552101%_
                           _%hd5129652105%_
                           _%tl5129752108%_
                           _%e5129852111%_
                           _%hd5129952115%_
                           _%tl5130052118%_
                           _%e5142851580%_
                           _%hd5142951584%_
                           _%tl5143051587%_
                           _%__splice9148791488%_
                           _%target5143151590%_
                           _%tl5143351593%_)
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_))))
                                          (if (gx#stx-pair? _%hd5129952115%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5129952115%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5129752108%_)
                                                      (let ((_%__splice9148791488%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5129752108%_
                                                              '0)))
                                                        (let ((_%tl5143351593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '1)))
                      (_%target5143151590%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '0))))
                  (if (gx#stx-null? _%tl5143351593%_)
                      (_%__match9177391774%_
                       _%e5129252091%_
                       _%hd5129352095%_
                       _%tl5129452098%_
                       _%e5129552101%_
                       _%hd5129652105%_
                       _%tl5129752108%_
                       _%e5129852111%_
                       _%hd5129952115%_
                       _%tl5130052118%_
                       _%e5142851580%_
                       _%hd5142951584%_
                       _%tl5143051587%_
                       _%__splice9148791488%_
                       _%target5143151590%_
                       _%tl5143351593%_)
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                      (if (gx#stx-pair? _%hd5129952115%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5129952115%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5129752108%_)
                                                  (let ((_%__splice9148791488%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5129752108%_
                                                          '0)))
                                                    (let ((_%tl5143351593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '1)))
                                                          (_%target5143151590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5143351593%_)
                                                          (_%__match9177391774%_
                                                           _%e5129252091%_
                                                           _%hd5129352095%_
                                                           _%tl5129452098%_
                                                           _%e5129552101%_
                                                           _%hd5129652105%_
                                                           _%tl5129752108%_
                                                           _%e5129852111%_
                                                           _%hd5129952115%_
                                                           _%tl5130052118%_
                                                           _%e5142851580%_
                                                           _%hd5142951584%_
                                                           _%tl5143051587%_
                                                           _%__splice9148791488%_
                                                           _%target5143151590%_
                                                           _%tl5143351593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125251461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))))
                          (if (gx#stx-null? _%tl5130652138%_)
                              (if (gx#stx-pair/null? _%tl5129752108%_)
                                  (let ((_%__splice9147591476%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5129752108%_
                                          '0)))
                                    (let ((_%tl5134651993%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9147591476%_
                                              '1)))
                                          (_%target5134451990%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9147591476%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5134651993%_)
                                          (_%__match9164191642%_
                                           _%e5129252091%_
                                           _%hd5129352095%_
                                           _%tl5129452098%_
                                           _%e5129552101%_
                                           _%hd5129652105%_
                                           _%tl5129752108%_
                                           _%e5129852111%_
                                           _%hd5129952115%_
                                           _%tl5130052118%_
                                           _%e5130152121%_
                                           _%hd5130252125%_
                                           _%tl5130352128%_
                                           _%e5130452131%_
                                           _%hd5130552135%_
                                           _%tl5130652138%_
                                           _%__splice9147591476%_
                                           _%target5134451990%_
                                           _%tl5134651993%_)
                                          (if (gx#stx-pair? _%hd5129952115%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5129952115%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))))
                                  (if (gx#stx-pair? _%hd5129952115%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5129952115%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))
                              (if (gx#identifier? _%hd5130252125%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97746_|
                                       _%hd5130252125%_)
                                      (if (gx#stx-pair? _%tl5130652138%_)
                                          (let ((_%e5140051710%_
                                                 (gx#syntax-e
                                                  _%tl5130652138%_)))
                                            (let ((_%tl5140251717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5140051710%_)))
                                                  (_%hd5140151714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5140051710%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5140251717%_)
                                                  (let ((_%e5140351720%_
                                                         (gx#syntax-e
                                                          _%tl5140251717%_)))
                                                    (let ((_%tl5140551727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5140351720%_)))
                                                          (_%hd5140451724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5140351720%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5140551727%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5129752108%_)
                                                              (let ((_%__splice9148391484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5129752108%_
                              '0)))
                        (let ((_%tl5140851733%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148391484%_ '1)))
                              (_%target5140651730%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148391484%_ '0))))
                          (if (gx#stx-null? _%tl5140851733%_)
                              (_%__match9174191742%_
                               _%e5129252091%_
                               _%hd5129352095%_
                               _%tl5129452098%_
                               _%e5129552101%_
                               _%hd5129652105%_
                               _%tl5129752108%_
                               _%e5129852111%_
                               _%hd5129952115%_
                               _%tl5130052118%_
                               _%e5130152121%_
                               _%hd5130252125%_
                               _%tl5130352128%_
                               _%e5130452131%_
                               _%hd5130552135%_
                               _%tl5130652138%_
                               _%e5140051710%_
                               _%hd5140151714%_
                               _%tl5140251717%_
                               _%e5140351720%_
                               _%hd5140451724%_
                               _%tl5140551727%_
                               _%__splice9148391484%_
                               _%target5140651730%_
                               _%tl5140851733%_)
                              (if (gx#stx-pair? _%hd5129952115%_)
                                  (let ((_%e5142851580%_
                                         (gx#syntax-e _%hd5129952115%_)))
                                    (let ((_%tl5143051587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142851580%_)))
                                          (_%hd5142951584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142851580%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))))
                      (if (gx#stx-pair? _%hd5129952115%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5129952115%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                          (let () (declare (not safe)) (_%g5125251461%_))))
                  (if (gx#stx-pair? _%hd5129952115%_)
                      (let ((_%e5142851580%_ (gx#syntax-e _%hd5129952115%_)))
                        (let ((_%tl5143051587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142851580%_)))
                              (_%hd5142951584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142851580%_))))
                          (if (gx#stx-pair/null? _%tl5129752108%_)
                              (let ((_%__splice9148791488%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5129752108%_
                                      '0)))
                                (let ((_%tl5143351593%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '1)))
                                      (_%target5143151590%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5143351593%_)
                                      (_%__match9177391774%_
                                       _%e5129252091%_
                                       _%hd5129352095%_
                                       _%tl5129452098%_
                                       _%e5129552101%_
                                       _%hd5129652105%_
                                       _%tl5129752108%_
                                       _%e5129852111%_
                                       _%hd5129952115%_
                                       _%tl5130052118%_
                                       _%e5142851580%_
                                       _%hd5142951584%_
                                       _%tl5143051587%_
                                       _%__splice9148791488%_
                                       _%target5143151590%_
                                       _%tl5143351593%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5129952115%_)
                                                      (let ((_%e5142851580%_
                                                             (gx#syntax-e
                                                              _%hd5129952115%_)))
                                                        (let ((_%tl5143051587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142851580%_)))
                      (_%hd5142951584%_
                       (let () (declare (not safe)) (##car _%e5142851580%_))))
                  (if (gx#stx-pair/null? _%tl5129752108%_)
                      (let ((_%__splice9148791488%_
                             (gx#syntax-split-splice->vector
                              _%tl5129752108%_
                              '0)))
                        (let ((_%tl5143351593%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '1)))
                              (_%target5143151590%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '0))))
                          (if (gx#stx-null? _%tl5143351593%_)
                              (_%__match9177391774%_
                               _%e5129252091%_
                               _%hd5129352095%_
                               _%tl5129452098%_
                               _%e5129552101%_
                               _%hd5129652105%_
                               _%tl5129752108%_
                               _%e5129852111%_
                               _%hd5129952115%_
                               _%tl5130052118%_
                               _%e5142851580%_
                               _%hd5142951584%_
                               _%tl5143051587%_
                               _%__splice9148791488%_
                               _%target5143151590%_
                               _%tl5143351593%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5129952115%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5129952115%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5129752108%_)
                                                      (let ((_%__splice9148791488%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5129752108%_
                                                              '0)))
                                                        (let ((_%tl5143351593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '1)))
                      (_%target5143151590%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '0))))
                  (if (gx#stx-null? _%tl5143351593%_)
                      (_%__match9177391774%_
                       _%e5129252091%_
                       _%hd5129352095%_
                       _%tl5129452098%_
                       _%e5129552101%_
                       _%hd5129652105%_
                       _%tl5129752108%_
                       _%e5129852111%_
                       _%hd5129952115%_
                       _%tl5130052118%_
                       _%e5142851580%_
                       _%hd5142951584%_
                       _%tl5143051587%_
                       _%__splice9148791488%_
                       _%target5143151590%_
                       _%tl5143351593%_)
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                      (if (gx#stx-pair? _%hd5129952115%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5129952115%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5129752108%_)
                                                  (let ((_%__splice9148791488%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5129752108%_
                                                          '0)))
                                                    (let ((_%tl5143351593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '1)))
                                                          (_%target5143151590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5143351593%_)
                                                          (_%__match9177391774%_
                                                           _%e5129252091%_
                                                           _%hd5129352095%_
                                                           _%tl5129452098%_
                                                           _%e5129552101%_
                                                           _%hd5129652105%_
                                                           _%tl5129752108%_
                                                           _%e5129852111%_
                                                           _%hd5129952115%_
                                                           _%tl5130052118%_
                                                           _%e5142851580%_
                                                           _%hd5142951584%_
                                                           _%tl5143051587%_
                                                           _%__splice9148791488%_
                                                           _%target5143151590%_
                                                           _%tl5143351593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125251461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                  (if (gx#stx-pair? _%hd5129952115%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5129952115%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5129752108%_)
                                              (let ((_%__splice9148791488%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5129752108%_
                                                      '0)))
                                                (let ((_%tl5143351593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148791488%_
                                                          '1)))
                                                      (_%target5143151590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148791488%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5143351593%_)
                                                      (_%__match9177391774%_
                                                       _%e5129252091%_
                                                       _%hd5129352095%_
                                                       _%tl5129452098%_
                                                       _%e5129552101%_
                                                       _%hd5129652105%_
                                                       _%tl5129752108%_
                                                       _%e5129852111%_
                                                       _%hd5129952115%_
                                                       _%tl5130052118%_
                                                       _%e5142851580%_
                                                       _%hd5142951584%_
                                                       _%tl5143051587%_
                                                       _%__splice9148791488%_
                                                       _%target5143151590%_
                                                       _%tl5143351593%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125251461%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))))
                   (_%__match9153991540%_
                    (lambda (_%e5125952265%_
                             _%hd5126052269%_
                             _%tl5126152272%_
                             _%e5126252275%_
                             _%hd5126352279%_
                             _%tl5126452282%_
                             _%e5126552285%_
                             _%hd5126652289%_
                             _%tl5126752292%_
                             _%e5126852295%_
                             _%hd5126952299%_
                             _%tl5127052302%_
                             _%e5127152305%_
                             _%hd5127252309%_
                             _%tl5127352312%_
                             _%e5127452315%_
                             _%hd5127552319%_
                             _%tl5127652322%_
                             _%__splice9146791468%_
                             _%target5127752325%_
                             _%tl5127952328%_)
                      (letrec ((_%loop5128052331%_
                                (lambda (_%hd5127852335%_ _%body5128452338%_)
                                  (if (gx#stx-pair? _%hd5127852335%_)
                                      (let ((_%e5128152340%_
                                             (gx#syntax-e _%hd5127852335%_)))
                                        (let ((_%lp-tl5128352347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5128152340%_)))
                                              (_%lp-hd5128252344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5128152340%_))))
                                          (_%loop5128052331%_
                                           _%lp-tl5128352347%_
                                           (cons _%lp-hd5128252344%_
                                                 _%body5128452338%_))))
                                      (let ((_%body5128552350%_
                                             (reverse _%body5128452338%_)))
                                        (let ((_%g5125452353%_
                                               _%body5128552350%_)
                                              (_%g5125552355%_
                                               _%hd5127552319%_)
                                              (_%g5125652356%_
                                               _%hd5127252309%_)
                                              (_%g5125752357%_
                                               _%hd5126952299%_)
                                              (_%g5125852358%_
                                               _%hd5126652289%_))
                                          (if (and (gx#identifier?
                                                    _%g5125852358%_)
                                                   (gx#identifier?
                                                    _%g5125652356%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5125652356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5125652356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5125652356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5125652356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5125652356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9146591466%_
                                               _%g5125452353%_
                                               _%g5125552355%_
                                               _%g5125652356%_
                                               _%g5125752357%_
                                               _%g5125852358%_)
                                              (_%__match9156991570%_
                                               _%e5125952265%_
                                               _%hd5126052269%_
                                               _%tl5126152272%_
                                               _%e5126252275%_
                                               _%hd5126352279%_
                                               _%tl5126452282%_
                                               _%e5126552285%_
                                               _%hd5126652289%_
                                               _%tl5126752292%_
                                               _%e5126852295%_
                                               _%hd5126952299%_
                                               _%tl5127052302%_
                                               _%e5127152305%_
                                               _%hd5127252309%_
                                               _%tl5127352312%_))))))))
                        (_%loop5128052331%_ _%target5127752325%_ '())))))
              (if (gx#stx-pair? _%__stx9146291463%_)
                  (let ((_%e5125952265%_ (gx#syntax-e _%__stx9146291463%_)))
                    (let ((_%tl5126152272%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5125952265%_)))
                          (_%hd5126052269%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5125952265%_))))
                      (if (gx#stx-pair? _%tl5126152272%_)
                          (let ((_%e5126252275%_
                                 (gx#syntax-e _%tl5126152272%_)))
                            (let ((_%tl5126452282%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5126252275%_)))
                                  (_%hd5126352279%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5126252275%_))))
                              (if (gx#stx-pair? _%hd5126352279%_)
                                  (let ((_%e5126552285%_
                                         (gx#syntax-e _%hd5126352279%_)))
                                    (let ((_%tl5126752292%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5126552285%_)))
                                          (_%hd5126652289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5126552285%_))))
                                      (if (gx#stx-pair? _%tl5126752292%_)
                                          (let ((_%e5126852295%_
                                                 (gx#syntax-e
                                                  _%tl5126752292%_)))
                                            (let ((_%tl5127052302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5126852295%_)))
                                                  (_%hd5126952299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5126852295%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5127052302%_)
                                                  (let ((_%e5127152305%_
                                                         (gx#syntax-e
                                                          _%tl5127052302%_)))
                                                    (let ((_%tl5127352312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5127152305%_)))
                                                          (_%hd5127252309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5127152305%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5127352312%_)
                                                          (let ((_%e5127452315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5127352312%_)))
                    (let ((_%tl5127652322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5127452315%_)))
                          (_%hd5127552319%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5127452315%_))))
                      (if (gx#stx-null? _%tl5127652322%_)
                          (if (gx#stx-pair/null? _%tl5126452282%_)
                              (let ((_%__splice9146791468%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5126452282%_
                                      '0)))
                                (let ((_%tl5127952328%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9146791468%_
                                          '1)))
                                      (_%target5127752325%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9146791468%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5127952328%_)
                                      (_%__match9153991540%_
                                       _%e5125952265%_
                                       _%hd5126052269%_
                                       _%tl5126152272%_
                                       _%e5126252275%_
                                       _%hd5126352279%_
                                       _%tl5126452282%_
                                       _%e5126552285%_
                                       _%hd5126652289%_
                                       _%tl5126752292%_
                                       _%e5126852295%_
                                       _%hd5126952299%_
                                       _%tl5127052302%_
                                       _%e5127152305%_
                                       _%hd5127252309%_
                                       _%tl5127352312%_
                                       _%e5127452315%_
                                       _%hd5127552319%_
                                       _%tl5127652322%_
                                       _%__splice9146791468%_
                                       _%target5127752325%_
                                       _%tl5127952328%_)
                                      (if (gx#stx-pair? _%hd5126652289%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5126652289%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))))
                              (if (gx#stx-pair? _%hd5126652289%_)
                                  (let ((_%e5142851580%_
                                         (gx#syntax-e _%hd5126652289%_)))
                                    (let ((_%tl5143051587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142851580%_)))
                                          (_%hd5142951584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142851580%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                          (if (gx#identifier? _%hd5127252309%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g97747_|
                                   _%hd5127252309%_)
                                  (if (gx#stx-pair? _%tl5127652322%_)
                                      (let ((_%e5131052151%_
                                             (gx#syntax-e _%tl5127652322%_)))
                                        (let ((_%tl5131252158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5131052151%_)))
                                              (_%hd5131152155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5131052151%_))))
                                          (if (gx#stx-pair? _%tl5131252158%_)
                                              (let ((_%e5131352161%_
                                                     (gx#syntax-e
                                                      _%tl5131252158%_)))
                                                (let ((_%tl5131552168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5131352161%_)))
                                                      (_%hd5131452165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5131352161%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5131552168%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5126452282%_)
                                                          (let ((_%__splice9147191472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5126452282%_ '0)))
                    (let ((_%tl5131852174%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9147191472%_ '1)))
                          (_%target5131652171%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9147191472%_ '0))))
                      (if (gx#stx-null? _%tl5131852174%_)
                          (_%__match9160191602%_
                           _%e5125952265%_
                           _%hd5126052269%_
                           _%tl5126152272%_
                           _%e5126252275%_
                           _%hd5126352279%_
                           _%tl5126452282%_
                           _%e5126552285%_
                           _%hd5126652289%_
                           _%tl5126752292%_
                           _%e5126852295%_
                           _%hd5126952299%_
                           _%tl5127052302%_
                           _%e5127152305%_
                           _%hd5127252309%_
                           _%tl5127352312%_
                           _%e5127452315%_
                           _%hd5127552319%_
                           _%tl5127652322%_
                           _%e5131052151%_
                           _%hd5131152155%_
                           _%tl5131252158%_
                           _%e5131352161%_
                           _%hd5131452165%_
                           _%tl5131552168%_
                           _%__splice9147191472%_
                           _%target5131652171%_
                           _%tl5131852174%_)
                          (if (gx#stx-pair? _%hd5126652289%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5126652289%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_))))))
                  (if (gx#stx-pair? _%hd5126652289%_)
                      (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                        (let ((_%tl5143051587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142851580%_)))
                              (_%hd5142951584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142851580%_))))
                          (let () (declare (not safe)) (_%g5125251461%_))))
                      (let () (declare (not safe)) (_%g5125251461%_))))
              (if (gx#stx-pair? _%hd5126652289%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (if (gx#stx-pair/null? _%tl5126452282%_)
                          (let ((_%__splice9148791488%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5126452282%_
                                  '0)))
                            (let ((_%tl5143351593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148791488%_ '1)))
                                  (_%target5143151590%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148791488%_
                                      '0))))
                              (if (gx#stx-null? _%tl5143351593%_)
                                  (_%__match9177391774%_
                                   _%e5125952265%_
                                   _%hd5126052269%_
                                   _%tl5126152272%_
                                   _%e5126252275%_
                                   _%hd5126352279%_
                                   _%tl5126452282%_
                                   _%e5126552285%_
                                   _%hd5126652289%_
                                   _%tl5126752292%_
                                   _%e5142851580%_
                                   _%hd5142951584%_
                                   _%tl5143051587%_
                                   _%__splice9148791488%_
                                   _%target5143151590%_
                                   _%tl5143351593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5126952299%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g97746_|
                                                       _%hd5126952299%_)
                                                      (if (gx#stx-null?
                                                           _%tl5131252158%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5126452282%_)
                                                              (let ((_%__splice9148391484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5126452282%_
                              '0)))
                        (let ((_%tl5140851733%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148391484%_ '1)))
                              (_%target5140651730%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148391484%_ '0))))
                          (if (gx#stx-null? _%tl5140851733%_)
                              (_%__match9174191742%_
                               _%e5125952265%_
                               _%hd5126052269%_
                               _%tl5126152272%_
                               _%e5126252275%_
                               _%hd5126352279%_
                               _%tl5126452282%_
                               _%e5126552285%_
                               _%hd5126652289%_
                               _%tl5126752292%_
                               _%e5126852295%_
                               _%hd5126952299%_
                               _%tl5127052302%_
                               _%e5127152305%_
                               _%hd5127252309%_
                               _%tl5127352312%_
                               _%e5127452315%_
                               _%hd5127552319%_
                               _%tl5127652322%_
                               _%e5131052151%_
                               _%hd5131152155%_
                               _%tl5131252158%_
                               _%__splice9148391484%_
                               _%target5140651730%_
                               _%tl5140851733%_)
                              (if (gx#stx-pair? _%hd5126652289%_)
                                  (let ((_%e5142851580%_
                                         (gx#syntax-e _%hd5126652289%_)))
                                    (let ((_%tl5143051587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142851580%_)))
                                          (_%hd5142951584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142851580%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))))
                      (if (gx#stx-pair? _%hd5126652289%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5126652289%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                          (let () (declare (not safe)) (_%g5125251461%_))))
                  (if (gx#stx-pair? _%hd5126652289%_)
                      (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                        (let ((_%tl5143051587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142851580%_)))
                              (_%hd5142951584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142851580%_))))
                          (if (gx#stx-pair/null? _%tl5126452282%_)
                              (let ((_%__splice9148791488%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5126452282%_
                                      '0)))
                                (let ((_%tl5143351593%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '1)))
                                      (_%target5143151590%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148791488%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5143351593%_)
                                      (_%__match9177391774%_
                                       _%e5125952265%_
                                       _%hd5126052269%_
                                       _%tl5126152272%_
                                       _%e5126252275%_
                                       _%hd5126352279%_
                                       _%tl5126452282%_
                                       _%e5126552285%_
                                       _%hd5126652289%_
                                       _%tl5126752292%_
                                       _%e5142851580%_
                                       _%hd5142951584%_
                                       _%tl5143051587%_
                                       _%__splice9148791488%_
                                       _%target5143151590%_
                                       _%tl5143351593%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_))))
              (if (gx#stx-pair? _%hd5126652289%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (if (gx#stx-pair/null? _%tl5126452282%_)
                          (let ((_%__splice9148791488%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5126452282%_
                                  '0)))
                            (let ((_%tl5143351593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148791488%_ '1)))
                                  (_%target5143151590%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148791488%_
                                      '0))))
                              (if (gx#stx-null? _%tl5143351593%_)
                                  (_%__match9177391774%_
                                   _%e5125952265%_
                                   _%hd5126052269%_
                                   _%tl5126152272%_
                                   _%e5126252275%_
                                   _%hd5126352279%_
                                   _%tl5126452282%_
                                   _%e5126552285%_
                                   _%hd5126652289%_
                                   _%tl5126752292%_
                                   _%e5142851580%_
                                   _%hd5142951584%_
                                   _%tl5143051587%_
                                   _%__splice9148791488%_
                                   _%target5143151590%_
                                   _%tl5143351593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5126652289%_)
                                                      (let ((_%e5142851580%_
                                                             (gx#syntax-e
                                                              _%hd5126652289%_)))
                                                        (let ((_%tl5143051587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142851580%_)))
                      (_%hd5142951584%_
                       (let () (declare (not safe)) (##car _%e5142851580%_))))
                  (if (gx#stx-pair/null? _%tl5126452282%_)
                      (let ((_%__splice9148791488%_
                             (gx#syntax-split-splice->vector
                              _%tl5126452282%_
                              '0)))
                        (let ((_%tl5143351593%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '1)))
                              (_%target5143151590%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '0))))
                          (if (gx#stx-null? _%tl5143351593%_)
                              (_%__match9177391774%_
                               _%e5125952265%_
                               _%hd5126052269%_
                               _%tl5126152272%_
                               _%e5126252275%_
                               _%hd5126352279%_
                               _%tl5126452282%_
                               _%e5126552285%_
                               _%hd5126652289%_
                               _%tl5126752292%_
                               _%e5142851580%_
                               _%hd5142951584%_
                               _%tl5143051587%_
                               _%__splice9148791488%_
                               _%target5143151590%_
                               _%tl5143351593%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5126652289%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5126652289%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5126452282%_)
                                                  (let ((_%__splice9148791488%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5126452282%_
                                                          '0)))
                                                    (let ((_%tl5143351593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '1)))
                                                          (_%target5143151590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5143351593%_)
                                                          (_%__match9177391774%_
                                                           _%e5125952265%_
                                                           _%hd5126052269%_
                                                           _%tl5126152272%_
                                                           _%e5126252275%_
                                                           _%hd5126352279%_
                                                           _%tl5126452282%_
                                                           _%e5126552285%_
                                                           _%hd5126652289%_
                                                           _%tl5126752292%_
                                                           _%e5142851580%_
                                                           _%hd5142951584%_
                                                           _%tl5143051587%_
                                                           _%__splice9148791488%_
                                                           _%target5143151590%_
                                                           _%tl5143351593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125251461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                  (if (gx#identifier? _%hd5126952299%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97746_|
                                           _%hd5126952299%_)
                                          (if (gx#stx-pair? _%tl5127652322%_)
                                              (let ((_%e5140351720%_
                                                     (gx#syntax-e
                                                      _%tl5127652322%_)))
                                                (let ((_%tl5140551727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5140351720%_)))
                                                      (_%hd5140451724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5140351720%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5140551727%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5126452282%_)
                                                          (let ((_%__splice9148391484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5126452282%_ '0)))
                    (let ((_%tl5140851733%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148391484%_ '1)))
                          (_%target5140651730%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148391484%_ '0))))
                      (if (gx#stx-null? _%tl5140851733%_)
                          (_%__match9174191742%_
                           _%e5125952265%_
                           _%hd5126052269%_
                           _%tl5126152272%_
                           _%e5126252275%_
                           _%hd5126352279%_
                           _%tl5126452282%_
                           _%e5126552285%_
                           _%hd5126652289%_
                           _%tl5126752292%_
                           _%e5126852295%_
                           _%hd5126952299%_
                           _%tl5127052302%_
                           _%e5127152305%_
                           _%hd5127252309%_
                           _%tl5127352312%_
                           _%e5127452315%_
                           _%hd5127552319%_
                           _%tl5127652322%_
                           _%e5140351720%_
                           _%hd5140451724%_
                           _%tl5140551727%_
                           _%__splice9148391484%_
                           _%target5140651730%_
                           _%tl5140851733%_)
                          (if (gx#stx-pair? _%hd5126652289%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5126652289%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_))))))
                  (if (gx#stx-pair? _%hd5126652289%_)
                      (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                        (let ((_%tl5143051587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142851580%_)))
                              (_%hd5142951584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142851580%_))))
                          (let () (declare (not safe)) (_%g5125251461%_))))
                      (let () (declare (not safe)) (_%g5125251461%_))))
              (if (gx#stx-pair? _%hd5126652289%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (if (gx#stx-pair/null? _%tl5126452282%_)
                          (let ((_%__splice9148791488%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5126452282%_
                                  '0)))
                            (let ((_%tl5143351593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148791488%_ '1)))
                                  (_%target5143151590%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148791488%_
                                      '0))))
                              (if (gx#stx-null? _%tl5143351593%_)
                                  (_%__match9177391774%_
                                   _%e5125952265%_
                                   _%hd5126052269%_
                                   _%tl5126152272%_
                                   _%e5126252275%_
                                   _%hd5126352279%_
                                   _%tl5126452282%_
                                   _%e5126552285%_
                                   _%hd5126652289%_
                                   _%tl5126752292%_
                                   _%e5142851580%_
                                   _%hd5142951584%_
                                   _%tl5143051587%_
                                   _%__splice9148791488%_
                                   _%target5143151590%_
                                   _%tl5143351593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5126652289%_)
                                                  (let ((_%e5142851580%_
                                                         (gx#syntax-e
                                                          _%hd5126652289%_)))
                                                    (let ((_%tl5143051587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142851580%_)))
                                                          (_%hd5142951584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142851580%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5126452282%_)
                                                          (let ((_%__splice9148791488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5126452282%_ '0)))
                    (let ((_%tl5143351593%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148791488%_ '1)))
                          (_%target5143151590%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148791488%_ '0))))
                      (if (gx#stx-null? _%tl5143351593%_)
                          (_%__match9177391774%_
                           _%e5125952265%_
                           _%hd5126052269%_
                           _%tl5126152272%_
                           _%e5126252275%_
                           _%hd5126352279%_
                           _%tl5126452282%_
                           _%e5126552285%_
                           _%hd5126652289%_
                           _%tl5126752292%_
                           _%e5142851580%_
                           _%hd5142951584%_
                           _%tl5143051587%_
                           _%__splice9148791488%_
                           _%target5143151590%_
                           _%tl5143351593%_)
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_))))
                                          (if (gx#stx-pair? _%hd5126652289%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5126652289%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5126452282%_)
                                                      (let ((_%__splice9148791488%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5126452282%_
                                                              '0)))
                                                        (let ((_%tl5143351593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '1)))
                      (_%target5143151590%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '0))))
                  (if (gx#stx-null? _%tl5143351593%_)
                      (_%__match9177391774%_
                       _%e5125952265%_
                       _%hd5126052269%_
                       _%tl5126152272%_
                       _%e5126252275%_
                       _%hd5126352279%_
                       _%tl5126452282%_
                       _%e5126552285%_
                       _%hd5126652289%_
                       _%tl5126752292%_
                       _%e5142851580%_
                       _%hd5142951584%_
                       _%tl5143051587%_
                       _%__splice9148791488%_
                       _%target5143151590%_
                       _%tl5143351593%_)
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                      (if (gx#stx-pair? _%hd5126652289%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5126652289%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5126452282%_)
                                                  (let ((_%__splice9148791488%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5126452282%_
                                                          '0)))
                                                    (let ((_%tl5143351593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '1)))
                                                          (_%target5143151590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5143351593%_)
                                                          (_%__match9177391774%_
                                                           _%e5125952265%_
                                                           _%hd5126052269%_
                                                           _%tl5126152272%_
                                                           _%e5126252275%_
                                                           _%hd5126352279%_
                                                           _%tl5126452282%_
                                                           _%e5126552285%_
                                                           _%hd5126652289%_
                                                           _%tl5126752292%_
                                                           _%e5142851580%_
                                                           _%hd5142951584%_
                                                           _%tl5143051587%_
                                                           _%__splice9148791488%_
                                                           _%target5143151590%_
                                                           _%tl5143351593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125251461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                              (if (gx#identifier? _%hd5126952299%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97746_|
                                       _%hd5126952299%_)
                                      (if (gx#stx-pair? _%tl5127652322%_)
                                          (let ((_%e5140351720%_
                                                 (gx#syntax-e
                                                  _%tl5127652322%_)))
                                            (let ((_%tl5140551727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5140351720%_)))
                                                  (_%hd5140451724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5140351720%_))))
                                              (if (gx#stx-null?
                                                   _%tl5140551727%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5126452282%_)
                                                      (let ((_%__splice9148391484%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5126452282%_
                                                              '0)))
                                                        (let ((_%tl5140851733%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148391484%_ '1)))
                      (_%target5140651730%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148391484%_ '0))))
                  (if (gx#stx-null? _%tl5140851733%_)
                      (_%__match9174191742%_
                       _%e5125952265%_
                       _%hd5126052269%_
                       _%tl5126152272%_
                       _%e5126252275%_
                       _%hd5126352279%_
                       _%tl5126452282%_
                       _%e5126552285%_
                       _%hd5126652289%_
                       _%tl5126752292%_
                       _%e5126852295%_
                       _%hd5126952299%_
                       _%tl5127052302%_
                       _%e5127152305%_
                       _%hd5127252309%_
                       _%tl5127352312%_
                       _%e5127452315%_
                       _%hd5127552319%_
                       _%tl5127652322%_
                       _%e5140351720%_
                       _%hd5140451724%_
                       _%tl5140551727%_
                       _%__splice9148391484%_
                       _%target5140651730%_
                       _%tl5140851733%_)
                      (if (gx#stx-pair? _%hd5126652289%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5126652289%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                          (let () (declare (not safe)) (_%g5125251461%_))))))
              (if (gx#stx-pair? _%hd5126652289%_)
                  (let ((_%e5142851580%_ (gx#syntax-e _%hd5126652289%_)))
                    (let ((_%tl5143051587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142851580%_)))
                          (_%hd5142951584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142851580%_))))
                      (let () (declare (not safe)) (_%g5125251461%_))))
                  (let () (declare (not safe)) (_%g5125251461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5126652289%_)
                                                      (let ((_%e5142851580%_
                                                             (gx#syntax-e
                                                              _%hd5126652289%_)))
                                                        (let ((_%tl5143051587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142851580%_)))
                      (_%hd5142951584%_
                       (let () (declare (not safe)) (##car _%e5142851580%_))))
                  (if (gx#stx-pair/null? _%tl5126452282%_)
                      (let ((_%__splice9148791488%_
                             (gx#syntax-split-splice->vector
                              _%tl5126452282%_
                              '0)))
                        (let ((_%tl5143351593%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '1)))
                              (_%target5143151590%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '0))))
                          (if (gx#stx-null? _%tl5143351593%_)
                              (_%__match9177391774%_
                               _%e5125952265%_
                               _%hd5126052269%_
                               _%tl5126152272%_
                               _%e5126252275%_
                               _%hd5126352279%_
                               _%tl5126452282%_
                               _%e5126552285%_
                               _%hd5126652289%_
                               _%tl5126752292%_
                               _%e5142851580%_
                               _%hd5142951584%_
                               _%tl5143051587%_
                               _%__splice9148791488%_
                               _%target5143151590%_
                               _%tl5143351593%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5126652289%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5126652289%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5126452282%_)
                                                      (let ((_%__splice9148791488%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5126452282%_
                                                              '0)))
                                                        (let ((_%tl5143351593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '1)))
                      (_%target5143151590%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '0))))
                  (if (gx#stx-null? _%tl5143351593%_)
                      (_%__match9177391774%_
                       _%e5125952265%_
                       _%hd5126052269%_
                       _%tl5126152272%_
                       _%e5126252275%_
                       _%hd5126352279%_
                       _%tl5126452282%_
                       _%e5126552285%_
                       _%hd5126652289%_
                       _%tl5126752292%_
                       _%e5142851580%_
                       _%hd5142951584%_
                       _%tl5143051587%_
                       _%__splice9148791488%_
                       _%target5143151590%_
                       _%tl5143351593%_)
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))
                                      (if (gx#stx-pair? _%hd5126652289%_)
                                          (let ((_%e5142851580%_
                                                 (gx#syntax-e
                                                  _%hd5126652289%_)))
                                            (let ((_%tl5143051587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142851580%_)))
                                                  (_%hd5142951584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142851580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5126452282%_)
                                                  (let ((_%__splice9148791488%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5126452282%_
                                                          '0)))
                                                    (let ((_%tl5143351593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '1)))
                                                          (_%target5143151590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148791488%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5143351593%_)
                                                          (_%__match9177391774%_
                                                           _%e5125952265%_
                                                           _%hd5126052269%_
                                                           _%tl5126152272%_
                                                           _%e5126252275%_
                                                           _%hd5126352279%_
                                                           _%tl5126452282%_
                                                           _%e5126552285%_
                                                           _%hd5126652289%_
                                                           _%tl5126752292%_
                                                           _%e5142851580%_
                                                           _%hd5142951584%_
                                                           _%tl5143051587%_
                                                           _%__splice9148791488%_
                                                           _%target5143151590%_
                                                           _%tl5143351593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125251461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                  (if (gx#stx-pair? _%hd5126652289%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5126652289%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5126452282%_)
                                              (let ((_%__splice9148791488%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5126452282%_
                                                      '0)))
                                                (let ((_%tl5143351593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148791488%_
                                                          '1)))
                                                      (_%target5143151590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148791488%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5143351593%_)
                                                      (_%__match9177391774%_
                                                       _%e5125952265%_
                                                       _%hd5126052269%_
                                                       _%tl5126152272%_
                                                       _%e5126252275%_
                                                       _%hd5126352279%_
                                                       _%tl5126452282%_
                                                       _%e5126552285%_
                                                       _%hd5126652289%_
                                                       _%tl5126752292%_
                                                       _%e5142851580%_
                                                       _%hd5142951584%_
                                                       _%tl5143051587%_
                                                       _%__splice9148791488%_
                                                       _%target5143151590%_
                                                       _%tl5143351593%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125251461%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))))
                  (if (gx#stx-null? _%tl5127352312%_)
                      (if (gx#stx-pair/null? _%tl5126452282%_)
                          (let ((_%__splice9147591476%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5126452282%_
                                  '0)))
                            (let ((_%tl5134651993%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9147591476%_ '1)))
                                  (_%target5134451990%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9147591476%_
                                      '0))))
                              (if (gx#stx-null? _%tl5134651993%_)
                                  (_%__match9164191642%_
                                   _%e5125952265%_
                                   _%hd5126052269%_
                                   _%tl5126152272%_
                                   _%e5126252275%_
                                   _%hd5126352279%_
                                   _%tl5126452282%_
                                   _%e5126552285%_
                                   _%hd5126652289%_
                                   _%tl5126752292%_
                                   _%e5126852295%_
                                   _%hd5126952299%_
                                   _%tl5127052302%_
                                   _%e5127152305%_
                                   _%hd5127252309%_
                                   _%tl5127352312%_
                                   _%__splice9147591476%_
                                   _%target5134451990%_
                                   _%tl5134651993%_)
                                  (if (gx#stx-pair? _%hd5126652289%_)
                                      (let ((_%e5142851580%_
                                             (gx#syntax-e _%hd5126652289%_)))
                                        (let ((_%tl5143051587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142851580%_)))
                                              (_%hd5142951584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142851580%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))
                          (if (gx#stx-pair? _%hd5126652289%_)
                              (let ((_%e5142851580%_
                                     (gx#syntax-e _%hd5126652289%_)))
                                (let ((_%tl5143051587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142851580%_)))
                                      (_%hd5142951584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142851580%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_))))
                              (let () (declare (not safe)) (_%g5125251461%_))))
                      (if (gx#stx-pair? _%hd5126652289%_)
                          (let ((_%e5142851580%_
                                 (gx#syntax-e _%hd5126652289%_)))
                            (let ((_%tl5143051587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142851580%_)))
                                  (_%hd5142951584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142851580%_))))
                              (if (gx#stx-pair/null? _%tl5126452282%_)
                                  (let ((_%__splice9148791488%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5126452282%_
                                          '0)))
                                    (let ((_%tl5143351593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '1)))
                                          (_%target5143151590%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148791488%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5143351593%_)
                                          (_%__match9177391774%_
                                           _%e5125952265%_
                                           _%hd5126052269%_
                                           _%tl5126152272%_
                                           _%e5126252275%_
                                           _%hd5126352279%_
                                           _%tl5126452282%_
                                           _%e5126552285%_
                                           _%hd5126652289%_
                                           _%tl5126752292%_
                                           _%e5142851580%_
                                           _%hd5142951584%_
                                           _%tl5143051587%_
                                           _%__splice9148791488%_
                                           _%target5143151590%_
                                           _%tl5143351593%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125251461%_)))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5126652289%_)
                                                      (let ((_%e5142851580%_
                                                             (gx#syntax-e
                                                              _%hd5126652289%_)))
                                                        (let ((_%tl5143051587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142851580%_)))
                      (_%hd5142951584%_
                       (let () (declare (not safe)) (##car _%e5142851580%_))))
                  (if (gx#stx-pair/null? _%tl5126452282%_)
                      (let ((_%__splice9148791488%_
                             (gx#syntax-split-splice->vector
                              _%tl5126452282%_
                              '0)))
                        (let ((_%tl5143351593%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '1)))
                              (_%target5143151590%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148791488%_ '0))))
                          (if (gx#stx-null? _%tl5143351593%_)
                              (_%__match9177391774%_
                               _%e5125952265%_
                               _%hd5126052269%_
                               _%tl5126152272%_
                               _%e5126252275%_
                               _%hd5126352279%_
                               _%tl5126452282%_
                               _%e5126552285%_
                               _%hd5126652289%_
                               _%tl5126752292%_
                               _%e5142851580%_
                               _%hd5142951584%_
                               _%tl5143051587%_
                               _%__splice9148791488%_
                               _%target5143151590%_
                               _%tl5143351593%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125251461%_)))))
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5126652289%_)
                                              (let ((_%e5142851580%_
                                                     (gx#syntax-e
                                                      _%hd5126652289%_)))
                                                (let ((_%tl5143051587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142851580%_)))
                                                      (_%hd5142951584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142851580%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5126452282%_)
                                                      (let ((_%__splice9148791488%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5126452282%_
                                                              '0)))
                                                        (let ((_%tl5143351593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '1)))
                      (_%target5143151590%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148791488%_ '0))))
                  (if (gx#stx-null? _%tl5143351593%_)
                      (_%__match9177391774%_
                       _%e5125952265%_
                       _%hd5126052269%_
                       _%tl5126152272%_
                       _%e5126252275%_
                       _%hd5126352279%_
                       _%tl5126452282%_
                       _%e5126552285%_
                       _%hd5126652289%_
                       _%tl5126752292%_
                       _%e5142851580%_
                       _%hd5142951584%_
                       _%tl5143051587%_
                       _%__splice9148791488%_
                       _%target5143151590%_
                       _%tl5143351593%_)
                      (let () (declare (not safe)) (_%g5125251461%_)))))
              (let () (declare (not safe)) (_%g5125251461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125251461%_))))))
                                  (if (gx#stx-null? _%hd5126352279%_)
                                      (if (gx#stx-pair/null? _%tl5126452282%_)
                                          (let ((_%__splice9149191492%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5126452282%_
                                                  '0)))
                                            (let ((_%tl5144951491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9149191492%_
                                                      '1)))
                                                  (_%target5144751488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9149191492%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5144951491%_)
                                                  (_%__match9179591796%_
                                                   _%e5125952265%_
                                                   _%hd5126052269%_
                                                   _%tl5126152272%_
                                                   _%e5126252275%_
                                                   _%hd5126352279%_
                                                   _%tl5126452282%_
                                                   _%__splice9149191492%_
                                                   _%target5144751488%_
                                                   _%tl5144951491%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125251461%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125251461%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125251461%_))))))
                          (let () (declare (not safe)) (_%g5125251461%_)))))
                  (let () (declare (not safe)) (_%g5125251461%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52421%_)
        (let* ((_%g5242552459%_
                (lambda (_%g5242652455%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5242652455%_)))
               (_%g5242452580%_
                (lambda (_%g5242652463%_)
                  (if (gx#stx-pair? _%g5242652463%_)
                      (let ((_%e5243052466%_ (gx#syntax-e _%g5242652463%_)))
                        (let ((_%hd5243152470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5243052466%_)))
                              (_%tl5243252473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5243052466%_))))
                          (if (gx#stx-pair? _%tl5243252473%_)
                              (let ((_%e5243352476%_
                                     (gx#syntax-e _%tl5243252473%_)))
                                (let ((_%hd5243452480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5243352476%_)))
                                      (_%tl5243552483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5243352476%_))))
                                  (if (gx#stx-pair? _%hd5243452480%_)
                                      (let ((_%e5243652486%_
                                             (gx#syntax-e _%hd5243452480%_)))
                                        (let ((_%hd5243752490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5243652486%_)))
                                              (_%tl5243852493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5243652486%_))))
                                          (if (gx#stx-pair? _%tl5243852493%_)
                                              (let ((_%e5243952496%_
                                                     (gx#syntax-e
                                                      _%tl5243852493%_)))
                                                (let ((_%hd5244052500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5243952496%_)))
                                                      (_%tl5244152503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5243952496%_))))
                                                  (if (gx#identifier?
                                                       _%hd5244052500%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97748_|
                                                           _%hd5244052500%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5244152503%_)
                                                              (let ((_%e5244252506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5244152503%_)))
                        (let ((_%hd5244352510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5244252506%_)))
                              (_%tl5244452513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5244252506%_))))
                          (if (gx#stx-null? _%tl5244452513%_)
                              (if (gx#stx-pair/null? _%tl5243552483%_)
                                  (let ((_g97749_
                                         (gx#syntax-split-splice
                                          _%tl5243552483%_
                                          '0)))
                                    (begin
                                      (let ((_g97750_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g97749_)
                                                   (##values-length _g97749_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g97750_ 2)))
                                            (error "Context expects 2 values"
                                                   _g97750_)))
                                      (let ((_%target5244552516%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g97749_ 0)))
                                            (_%tl5244752519%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g97749_ 1))))
                                        (if (gx#stx-null? _%tl5244752519%_)
                                            (letrec ((_%loop5244852522%_
                                                      (lambda (_%hd5244652526%_
                                                               _%body5245252529%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5244652526%_)
                                                            (let ((_%e5244952531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5244652526%_)))
                      (let ((_%lp-hd5245052535%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5244952531%_)))
                            (_%lp-tl5245152538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5244952531%_))))
                        (_%loop5244852522%_
                         _%lp-tl5245152538%_
                         (cons _%lp-hd5245052535%_ _%body5245252529%_))))
                    (let ((_%body5245352541%_ (reverse _%body5245252529%_)))
                      ((lambda (_%g5242752544%_
                                _%g5242852546%_
                                _%g5242952547%_)
                         (if (gx#identifier? _%g5242952547%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5242852546%_
                                               (cons _%g5242952547%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5257152574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5257252577%_)
                            (cons _%g5257152574%_ _%g5257252577%_))
                          '()
                          _%g5242752544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5242952547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5242852546%_ (cons _%g5242952547%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5242552459%_ _%g5242652463%_)))
                       _%body5245352541%_
                       _%hd5244352510%_
                       _%hd5243752490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5244852522%_
                                               _%target5244552516%_
                                               '()))
                                            (_%g5242552459%_
                                             _%g5242652463%_)))))
                                  (_%g5242552459%_ _%g5242652463%_))
                              (_%g5242552459%_ _%g5242652463%_))))
                      (_%g5242552459%_ _%g5242652463%_))
                  (_%g5242552459%_ _%g5242652463%_))
              (_%g5242552459%_ _%g5242652463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5242552459%_
                                               _%g5242652463%_))))
                                      (_%g5242552459%_ _%g5242652463%_))))
                              (_%g5242552459%_ _%g5242652463%_))))
                      (_%g5242552459%_ _%g5242652463%_)))))
          (_%g5242452580%_ _%$stx52421%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53144%_ _%slot53146%_)
        (let ((_%$e53148%_
               (let ((__obj97552 _%klass53144%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97552
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97552 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97552
                      'slot-types)))))
          (if _%$e53148%_
              ((lambda (_%slot-types53152%_)
                 (agetq _%slot53146%_ _%slot-types53152%_))
               _%$e53148%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53125%_ _%slot53127%_)
        (let ((_%$e53129%_
               (let ((__obj97553 _%klass53125%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97553
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97553 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97553
                      'slot-defaults)))))
          (if _%$e53129%_
              ((lambda (_%slot-defaults53133%_)
                 (let ((_%$e53136%_
                        (agetq _%slot53127%_ _%slot-defaults53133%_)))
                   (if _%$e53136%_
                       (gx#syntax-local-introduce _%$e53136%_)
                       '#f)))
               _%$e53129%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53106%_ _%slot53108%_)
        (let ((_%$e53110%_
               (let ((__obj97554 _%klass53106%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97554
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97554 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97554
                      'slot-defaults)))))
          (if _%$e53110%_
              ((lambda (_%slot-defaults53114%_)
                 (let ((_%$e53117%_
                        (agetq _%slot53108%_ _%slot-defaults53114%_)))
                   (if _%$e53117%_
                       (gx#syntax-local-introduce _%$e53117%_)
                       '#f)))
               _%$e53110%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52875%_ _%slot52877%_)
        (let ((_%contract5287852880%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52875%_
                _%slot52877%_)))
          (if _%contract5287852880%_
              (let* ((_%contract52883%_ _%contract5287852880%_)
                     (_%__stx9179891799%_ _%contract52883%_)
                     (_%g5288852925%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9179891799%_))))
                (let ((_%__kont9180191802%_
                       (lambda (_%g5289053075%_ _%g5289153077%_)
                         (not (gx#free-identifier=?
                               _%g5289153077%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9180391804%_
                       (lambda (_%g5289853015%_
                                _%g5289953017%_
                                _%g5290053018%_)
                         (not (gx#free-identifier=?
                               _%g5289953017%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9180591806%_ (lambda (_%g5291352952%_) '#f)))
                  (let* ((_%__match9185191852%_
                          (lambda (_%e5290152975%_
                                   _%hd5290252979%_
                                   _%tl5290352982%_
                                   _%e5290452985%_
                                   _%hd5290552989%_
                                   _%tl5290652992%_
                                   _%e5290752995%_
                                   _%hd5290852999%_
                                   _%tl5290953002%_
                                   _%e5291053005%_
                                   _%hd5291153009%_
                                   _%tl5291253012%_)
                            (let ((_%g5289853015%_ _%hd5291153009%_)
                                  (_%g5289953017%_ _%hd5290852999%_)
                                  (_%g5290053018%_ _%hd5290552989%_))
                              (if (and (gx#identifier? _%g5289953017%_)
                                       (or (gx#free-identifier=?
                                            _%g5289953017%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5289953017%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5289953017%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5289953017%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9180391804%_
                                   _%g5289853015%_
                                   _%g5289953017%_
                                   _%g5290053018%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5288852925%_))))))
                         (_%__match9182191822%_
                          (lambda (_%e5289253055%_
                                   _%hd5289353059%_
                                   _%tl5289453062%_
                                   _%e5289553065%_
                                   _%hd5289653069%_
                                   _%tl5289753072%_)
                            (let ((_%g5289053075%_ _%hd5289653069%_)
                                  (_%g5289153077%_ _%hd5289353059%_))
                              (if (and (gx#identifier? _%g5289153077%_)
                                       (or (gx#free-identifier=?
                                            _%g5289153077%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5289153077%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5289153077%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5289153077%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9180191802%_
                                   _%g5289053075%_
                                   _%g5289153077%_)
                                  (if (gx#identifier? _%hd5289353059%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97751_|
                                           _%hd5289353059%_)
                                          (_%__kont9180591806%_
                                           _%hd5289653069%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5288852925%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5288852925%_))))))))
                    (if (gx#stx-pair? _%__stx9179891799%_)
                        (let ((_%e5289253055%_
                               (gx#syntax-e _%__stx9179891799%_)))
                          (let ((_%tl5289453062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5289253055%_)))
                                (_%hd5289353059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5289253055%_))))
                            (if (gx#stx-pair? _%tl5289453062%_)
                                (let ((_%e5289553065%_
                                       (gx#syntax-e _%tl5289453062%_)))
                                  (let ((_%tl5289753072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5289553065%_)))
                                        (_%hd5289653069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5289553065%_))))
                                    (if (gx#stx-null? _%tl5289753072%_)
                                        (_%__match9182191822%_
                                         _%e5289253055%_
                                         _%hd5289353059%_
                                         _%tl5289453062%_
                                         _%e5289553065%_
                                         _%hd5289653069%_
                                         _%tl5289753072%_)
                                        (if (gx#identifier? _%hd5289353059%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g97751_|
                                                 _%hd5289353059%_)
                                                (if (gx#stx-pair?
                                                     _%tl5289753072%_)
                                                    (let ((_%e5290752995%_
                                                           (gx#syntax-e
                                                            _%tl5289753072%_)))
                                                      (let ((_%tl5290953002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5290752995%_)))
                    (_%hd5290852999%_
                     (let () (declare (not safe)) (##car _%e5290752995%_))))
                (if (gx#stx-pair? _%tl5290953002%_)
                    (let ((_%e5291053005%_ (gx#syntax-e _%tl5290953002%_)))
                      (let ((_%tl5291253012%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5291053005%_)))
                            (_%hd5291153009%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5291053005%_))))
                        (if (gx#stx-null? _%tl5291253012%_)
                            (_%__match9185191852%_
                             _%e5289253055%_
                             _%hd5289353059%_
                             _%tl5289453062%_
                             _%e5289553065%_
                             _%hd5289653069%_
                             _%tl5289753072%_
                             _%e5290752995%_
                             _%hd5290852999%_
                             _%tl5290953002%_
                             _%e5291053005%_
                             _%hd5291153009%_
                             _%tl5291253012%_)
                            (let () (declare (not safe)) (_%g5288852925%_)))))
                    (let () (declare (not safe)) (_%g5288852925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5288852925%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288852925%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5288852925%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5288852925%_)))))
                        (let () (declare (not safe)) (_%g5288852925%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52644%_ _%slot52646%_)
        (let ((_%contract5264752649%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52644%_
                _%slot52646%_)))
          (if _%contract5264752649%_
              (let* ((_%contract52652%_ _%contract5264752649%_)
                     (_%__stx9187291873%_ _%contract52652%_)
                     (_%g5265752694%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9187291873%_))))
                (let ((_%__kont9187591876%_
                       (lambda (_%g5265952844%_ _%g5266052846%_)
                         (not (gx#free-identifier=?
                               _%g5266052846%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9187791878%_
                       (lambda (_%g5266752784%_
                                _%g5266852786%_
                                _%g5266952787%_)
                         '#t))
                      (_%__kont9187991880%_ (lambda (_%g5268252721%_) '#t)))
                  (let* ((_%__match9192591926%_
                          (lambda (_%e5267052744%_
                                   _%hd5267152748%_
                                   _%tl5267252751%_
                                   _%e5267352754%_
                                   _%hd5267452758%_
                                   _%tl5267552761%_
                                   _%e5267652764%_
                                   _%hd5267752768%_
                                   _%tl5267852771%_
                                   _%e5267952774%_
                                   _%hd5268052778%_
                                   _%tl5268152781%_)
                            (let ((_%g5266752784%_ _%hd5268052778%_)
                                  (_%g5266852786%_ _%hd5267752768%_)
                                  (_%g5266952787%_ _%hd5267452758%_))
                              (if (and (gx#identifier? _%g5266852786%_)
                                       (or (gx#free-identifier=?
                                            _%g5266852786%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5266852786%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5266852786%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5266852786%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9187791878%_
                                   _%g5266752784%_
                                   _%g5266852786%_
                                   _%g5266952787%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5265752694%_))))))
                         (_%__match9189591896%_
                          (lambda (_%e5266152824%_
                                   _%hd5266252828%_
                                   _%tl5266352831%_
                                   _%e5266452834%_
                                   _%hd5266552838%_
                                   _%tl5266652841%_)
                            (let ((_%g5265952844%_ _%hd5266552838%_)
                                  (_%g5266052846%_ _%hd5266252828%_))
                              (if (and (gx#identifier? _%g5266052846%_)
                                       (or (gx#free-identifier=?
                                            _%g5266052846%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5266052846%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5266052846%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5266052846%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9187591876%_
                                   _%g5265952844%_
                                   _%g5266052846%_)
                                  (if (gx#identifier? _%hd5266252828%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97752_|
                                           _%hd5266252828%_)
                                          (_%__kont9187991880%_
                                           _%hd5266552838%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5265752694%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5265752694%_))))))))
                    (if (gx#stx-pair? _%__stx9187291873%_)
                        (let ((_%e5266152824%_
                               (gx#syntax-e _%__stx9187291873%_)))
                          (let ((_%tl5266352831%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5266152824%_)))
                                (_%hd5266252828%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5266152824%_))))
                            (if (gx#stx-pair? _%tl5266352831%_)
                                (let ((_%e5266452834%_
                                       (gx#syntax-e _%tl5266352831%_)))
                                  (let ((_%tl5266652841%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5266452834%_)))
                                        (_%hd5266552838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5266452834%_))))
                                    (if (gx#stx-null? _%tl5266652841%_)
                                        (_%__match9189591896%_
                                         _%e5266152824%_
                                         _%hd5266252828%_
                                         _%tl5266352831%_
                                         _%e5266452834%_
                                         _%hd5266552838%_
                                         _%tl5266652841%_)
                                        (if (gx#identifier? _%hd5266252828%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g97752_|
                                                 _%hd5266252828%_)
                                                (if (gx#stx-pair?
                                                     _%tl5266652841%_)
                                                    (let ((_%e5267652764%_
                                                           (gx#syntax-e
                                                            _%tl5266652841%_)))
                                                      (let ((_%tl5267852771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5267652764%_)))
                    (_%hd5267752768%_
                     (let () (declare (not safe)) (##car _%e5267652764%_))))
                (if (gx#stx-pair? _%tl5267852771%_)
                    (let ((_%e5267952774%_ (gx#syntax-e _%tl5267852771%_)))
                      (let ((_%tl5268152781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5267952774%_)))
                            (_%hd5268052778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5267952774%_))))
                        (if (gx#stx-null? _%tl5268152781%_)
                            (_%__match9192591926%_
                             _%e5266152824%_
                             _%hd5266252828%_
                             _%tl5266352831%_
                             _%e5266452834%_
                             _%hd5266552838%_
                             _%tl5266652841%_
                             _%e5267652764%_
                             _%hd5267752768%_
                             _%tl5267852771%_
                             _%e5267952774%_
                             _%hd5268052778%_
                             _%tl5268152781%_)
                            (let () (declare (not safe)) (_%g5265752694%_)))))
                    (let () (declare (not safe)) (_%g5265752694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5265752694%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5265752694%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5265752694%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5265752694%_)))))
                        (let () (declare (not safe)) (_%g5265752694%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52631%_)
        (if (gx#identifier? _%id52631%_)
            (let* ((_%str52634%_ (symbol->string (gx#stx-e _%id52631%_)))
                   (_%index5263652638%_ (string-index _%str52634%_ '#\.)))
              (if _%index5263652638%_
                  (let ((_%index52641%_ _%index5263652638%_))
                    (if (let () (declare (not safe)) (##fx> _%index52641%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52634%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52624%_ _%id52626%_)
        (let ((_%parts52628%_
               (string-split (symbol->string (gx#stx-e _%id52626%_)) '#\.)))
          (if (find string-empty? _%parts52628%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52624%_
               _%id52626%_)
              (cons (gx#stx-identifier _%id52626%_ (car _%parts52628%_))
                    (map string->symbol (cdr _%parts52628%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52605%_ _%klass-or-id52607%_ _%slot52608%_)
        (let* ((_%klass52610%_
                (if (gx#identifier? _%klass-or-id52607%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52605%_
                       _%klass-or-id52607%_))
                    _%klass-or-id52607%_))
               (_%accessors52613%_
                (let ((__obj97555 _%klass52610%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97555
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97555 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj97555
                       'unchecked-accessors))))
               (_%$e52618%_ (agetq _%slot52608%_ _%accessors52613%_)))
          (if _%$e52618%_
              _%$e52618%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52605%_
               _%klass52610%_
               _%slot52608%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52585%_
               _%klass-or-id52587%_
               _%slot52588%_
               _%checked?52589%_)
        (let* ((_%klass52591%_
                (if (gx#identifier? _%klass-or-id52587%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52585%_
                       _%klass-or-id52587%_))
                    _%klass-or-id52587%_))
               (_%mutators52594%_
                (if _%checked?52589%_
                    (let ((__obj97556 _%klass52591%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97556
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97556 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97556
                           'mutators)))
                    (let ((__obj97557 _%klass52591%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97557
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97557 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97557
                           'unchecked-mutators)))))
               (_%$e52599%_ (agetq _%slot52588%_ _%mutators52594%_)))
          (if _%$e52599%_
              _%$e52599%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52585%_
               _%klass52591%_
               _%slot52588%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53157%_)
        (letrec ((_%expand-body53160%_
                  (lambda (_%klass54058%_
                           _%var54060%_
                           _%Type54061%_
                           _%body54062%_
                           _%checked?54063%_)
                    (let* ((_%g5406554109%_
                            (lambda (_%g5406654105%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5406654105%_)))
                           (_%g5406454264%_
                            (lambda (_%g5406654113%_)
                              (if (gx#stx-pair? _%g5406654113%_)
                                  (let ((_%e5407454116%_
                                         (gx#syntax-e _%g5406654113%_)))
                                    (let ((_%hd5407554120%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5407454116%_)))
                                          (_%tl5407654123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5407454116%_))))
                                      (if (gx#stx-pair? _%tl5407654123%_)
                                          (let ((_%e5407754126%_
                                                 (gx#syntax-e
                                                  _%tl5407654123%_)))
                                            (let ((_%hd5407854130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5407754126%_)))
                                                  (_%tl5407954133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5407754126%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5407954133%_)
                                                  (let ((_%e5408054136%_
                                                         (gx#syntax-e
                                                          _%tl5407954133%_)))
                                                    (let ((_%hd5408154140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5408054136%_)))
                                                          (_%tl5408254143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5408054136%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5408254143%_)
                                                          (let ((_%e5408354146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5408254143%_)))
                    (let ((_%hd5408454150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5408354146%_)))
                          (_%tl5408554153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5408354146%_))))
                      (if (gx#stx-pair? _%tl5408554153%_)
                          (let ((_%e5408654156%_
                                 (gx#syntax-e _%tl5408554153%_)))
                            (let ((_%hd5408754160%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5408654156%_)))
                                  (_%tl5408854163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5408654156%_))))
                              (if (gx#stx-pair? _%tl5408854163%_)
                                  (let ((_%e5408954166%_
                                         (gx#syntax-e _%tl5408854163%_)))
                                    (let ((_%hd5409054170%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5408954166%_)))
                                          (_%tl5409154173%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5408954166%_))))
                                      (if (gx#stx-pair? _%tl5409154173%_)
                                          (let ((_%e5409254176%_
                                                 (gx#syntax-e
                                                  _%tl5409154173%_)))
                                            (let ((_%hd5409354180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5409254176%_)))
                                                  (_%tl5409454183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5409254176%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5409354180%_)
                                                  (let ((_g97753_
                                                         (gx#syntax-split-splice
                                                          _%hd5409354180%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g97754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g97753_)
                           (##values-length _g97753_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97754_ 2)))
                    (error "Context expects 2 values" _g97754_)))
              (let ((_%target5409554186%_
                     (let () (declare (not safe)) (##values-ref _g97753_ 0)))
                    (_%tl5409754189%_
                     (let () (declare (not safe)) (##values-ref _g97753_ 1))))
                (if (gx#stx-null? _%tl5409754189%_)
                    (letrec ((_%loop5409854192%_
                              (lambda (_%hd5409654196%_ _%body5410254199%_)
                                (if (gx#stx-pair? _%hd5409654196%_)
                                    (let ((_%e5409954201%_
                                           (gx#syntax-e _%hd5409654196%_)))
                                      (let ((_%lp-hd5410054205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5409954201%_)))
                                            (_%lp-tl5410154208%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5409954201%_))))
                                        (_%loop5409854192%_
                                         _%lp-tl5410154208%_
                                         (cons _%lp-hd5410054205%_
                                               _%body5410254199%_))))
                                    (let ((_%body5410354211%_
                                           (reverse _%body5410254199%_)))
                                      (if (gx#stx-null? _%tl5409454183%_)
                                          ((lambda (_%g5406754214%_
                                                    _%g5406854216%_
                                                    _%g5406954217%_
                                                    _%g5407054218%_
                                                    _%g5407154219%_
                                                    _%g5407254220%_
                                                    _%g5407354221%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5407154219%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5407254220%_ '()))
                                         (cons _%g5407154219%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5407354221%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5407154219%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5407054218%_ '()))
                               (cons _%g5406954217%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5406854216%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5425554258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5425654261%_)
                      (cons _%g5425554258%_ _%g5425654261%_))
                    '()
                    _%g5406754214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5410354211%_
                                           _%hd5409054170%_
                                           _%hd5408754160%_
                                           _%hd5408454150%_
                                           _%hd5408154140%_
                                           _%hd5407854130%_
                                           _%hd5407554120%_)
                                          (_%g5406554109%_
                                           _%g5406654113%_)))))))
                      (_%loop5409854192%_ _%target5409554186%_ '()))
                    (_%g5406554109%_ _%g5406654113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5406554109%_
                                                   _%g5406654113%_))))
                                          (_%g5406554109%_ _%g5406654113%_))))
                                  (_%g5406554109%_ _%g5406654113%_))))
                          (_%g5406554109%_ _%g5406654113%_))))
                  (_%g5406554109%_ _%g5406654113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5406554109%_
                                                   _%g5406654113%_))))
                                          (_%g5406554109%_ _%g5406654113%_))))
                                  (_%g5406554109%_ _%g5406654113%_)))))
                      (_%g5406454264%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj97558 _%klass54058%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj97558
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj97558
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj97558
                                    'type-descriptor)))
                             _%var54060%_
                             _%klass54058%_
                             _%checked?54063%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54062%_)))))
                 (_%expand53162%_
                  (lambda (_%var53950%_
                           _%Type53952%_
                           _%body53953%_
                           _%checked?53954%_
                           _%checked-mutators?53955%_
                           _%maybe?53956%_)
                    (let* ((_%klass53958%_
                            (gx#syntax-local-value _%Type53952%_ false))
                           (_%expr-body53965%_
                            (_%expand-body53160%_
                             _%klass53958%_
                             _%var53950%_
                             _%Type53952%_
                             _%body53953%_
                             (let ((_%$e53961%_ _%checked?53954%_))
                               (if _%$e53961%_
                                   _%$e53961%_
                                   _%checked-mutators?53955%_)))))
                      (if _%checked?53954%_
                          (let* ((_%g5397053989%_
                                  (lambda (_%g5397153985%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5397153985%_)))
                                 (_%g5396954051%_
                                  (lambda (_%g5397153993%_)
                                    (if (gx#stx-pair? _%g5397153993%_)
                                        (let ((_%e5397553996%_
                                               (gx#syntax-e _%g5397153993%_)))
                                          (let ((_%hd5397654000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5397553996%_)))
                                                (_%tl5397754003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5397553996%_))))
                                            (if (gx#stx-pair? _%tl5397754003%_)
                                                (let ((_%e5397854006%_
                                                       (gx#syntax-e
                                                        _%tl5397754003%_)))
                                                  (let ((_%hd5397954010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5397854006%_)))
                                                        (_%tl5398054013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5397854006%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5398054013%_)
                                                        (let ((_%e5398154016%_
                                                               (gx#syntax-e
                                                                _%tl5398054013%_)))
                                                          (let ((_%hd5398254020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5398154016%_)))
                        (_%tl5398354023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5398154016%_))))
                    (if (gx#stx-null? _%tl5398354023%_)
                        ((lambda (_%g5397254026%_
                                  _%g5397354028%_
                                  _%g5397454029%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5397354028%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5397454029%_ '())))
                                       (cons _%g5397254026%_ '()))))
                         _%hd5398254020%_
                         _%hd5397954010%_
                         _%hd5397654000%_)
                        (_%g5397053989%_ _%g5397153993%_))))
                (_%g5397053989%_ _%g5397153993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5397053989%_
                                                 _%g5397153993%_))))
                                        (_%g5397053989%_ _%g5397153993%_)))))
                            (_%g5396954051%_
                             (list (let ((_%instance?54055%_
                                          (let ((__obj97559 _%klass53958%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj97559
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj97559
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj97559
                                                 'predicate)))))
                                     (if _%maybe?53956%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54055%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54055%_))
                                   _%var53950%_
                                   _%expr-body53965%_)))
                          _%expr-body53965%_)))))
          (let* ((_%__stx9194691947%_ _%stx53157%_)
                 (_%g5316853311%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9194691947%_))))
            (let ((_%__kont9194991950%_
                   (lambda (_%g5317053878%_
                            _%g5317153880%_
                            _%g5317253881%_
                            _%g5317353882%_)
                     (let* ((_%g5390753915%_
                             (lambda (_%g5390853911%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5390853911%_)))
                            (_%g5390653942%_
                             (lambda (_%g5390853919%_)
                               ((lambda (_%g5390953922%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5317353882%_
                                                    (cons _%g5317253881%_
                                                          (cons _%g5390953922%_
                                                                '())))
                                              (foldr (lambda (_%g5393353936%_
                                                              _%g5393453939%_)
                                                       (cons _%g5393353936%_
                                                             _%g5393453939%_))
                                                     '()
                                                     _%g5317053878%_))))
                                _%g5390853919%_))))
                       (_%g5390653942%_
                        (let ((__obj97560
                               (gx#syntax-local-value _%g5317153880%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj97560
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj97560
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj97560
                               'identifier)))))))
                  (_%__kont9195391954%_
                   (lambda (_%g5319853758%_ _%g5319953760%_ _%g5320053761%_)
                     (_%expand53162%_
                      _%g5320053761%_
                      _%g5319953760%_
                      (foldr (lambda (_%g5378453787%_ _%g5378553790%_)
                               (cons _%g5378453787%_ _%g5378553790%_))
                             '()
                             _%g5319853758%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9195791958%_
                   (lambda (_%g5322553638%_ _%g5322653640%_ _%g5322753641%_)
                     (_%expand53162%_
                      _%g5322753641%_
                      _%g5322653640%_
                      (foldr (lambda (_%g5366453667%_ _%g5366553670%_)
                               (cons _%g5366453667%_ _%g5366553670%_))
                             '()
                             _%g5322553638%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9196191962%_
                   (lambda (_%g5325253518%_ _%g5325353520%_ _%g5325453521%_)
                     (_%expand53162%_
                      _%g5325453521%_
                      _%g5325353520%_
                      (foldr (lambda (_%g5354453547%_ _%g5354553550%_)
                               (cons _%g5354453547%_ _%g5354553550%_))
                             '()
                             _%g5325253518%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9196591966%_
                   (lambda (_%g5327953396%_ _%g5328053398%_ _%g5328153399%_)
                     (_%expand53162%_
                      _%g5328153399%_
                      _%g5328053398%_
                      (foldr (lambda (_%g5342453427%_ _%g5342553430%_)
                               (cons _%g5342453427%_ _%g5342553430%_))
                             '()
                             _%g5327953396%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9218592186%_
                      (lambda (_%e5328253318%_
                               _%hd5328353322%_
                               _%tl5328453325%_
                               _%e5328553328%_
                               _%hd5328653332%_
                               _%tl5328753335%_
                               _%e5328853338%_
                               _%hd5328953342%_
                               _%tl5329053345%_
                               _%e5329153348%_
                               _%hd5329253352%_
                               _%tl5329353355%_
                               _%e5329453358%_
                               _%hd5329553362%_
                               _%tl5329653365%_
                               _%__splice9196791968%_
                               _%target5329753368%_
                               _%tl5329953371%_)
                        (letrec ((_%loop5330053374%_
                                  (lambda (_%hd5329853378%_ _%body5330453381%_)
                                    (if (gx#stx-pair? _%hd5329853378%_)
                                        (let ((_%e5330153383%_
                                               (gx#syntax-e _%hd5329853378%_)))
                                          (let ((_%lp-tl5330353390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5330153383%_)))
                                                (_%lp-hd5330253387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5330153383%_))))
                                            (_%loop5330053374%_
                                             _%lp-tl5330353390%_
                                             (cons _%lp-hd5330253387%_
                                                   _%body5330453381%_))))
                                        (let ((_%body5330553393%_
                                               (reverse _%body5330453381%_)))
                                          (let ((_%g5327953396%_
                                                 _%body5330553393%_)
                                                (_%g5328053398%_
                                                 _%hd5329553362%_)
                                                (_%g5328153399%_
                                                 _%hd5328953342%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5328053398%_))
                                                (_%__kont9196591966%_
                                                 _%g5327953396%_
                                                 _%g5328053398%_
                                                 _%g5328153399%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))))))))
                          (_%loop5330053374%_ _%target5329753368%_ '()))))
                     (_%__match9214192142%_
                      (lambda (_%e5325553440%_
                               _%hd5325653444%_
                               _%tl5325753447%_
                               _%e5325853450%_
                               _%hd5325953454%_
                               _%tl5326053457%_
                               _%e5326153460%_
                               _%hd5326253464%_
                               _%tl5326353467%_
                               _%e5326453470%_
                               _%hd5326553474%_
                               _%tl5326653477%_
                               _%e5326753480%_
                               _%hd5326853484%_
                               _%tl5326953487%_
                               _%__splice9196391964%_
                               _%target5327053490%_
                               _%tl5327253493%_)
                        (letrec ((_%loop5327353496%_
                                  (lambda (_%hd5327153500%_ _%body5327753503%_)
                                    (if (gx#stx-pair? _%hd5327153500%_)
                                        (let ((_%e5327453505%_
                                               (gx#syntax-e _%hd5327153500%_)))
                                          (let ((_%lp-tl5327653512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5327453505%_)))
                                                (_%lp-hd5327553509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5327453505%_))))
                                            (_%loop5327353496%_
                                             _%lp-tl5327653512%_
                                             (cons _%lp-hd5327553509%_
                                                   _%body5327753503%_))))
                                        (let ((_%body5327853515%_
                                               (reverse _%body5327753503%_)))
                                          (let ((_%g5325253518%_
                                                 _%body5327853515%_)
                                                (_%g5325353520%_
                                                 _%hd5326853484%_)
                                                (_%g5325453521%_
                                                 _%hd5326253464%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5325353520%_))
                                                (_%__kont9196191962%_
                                                 _%g5325253518%_
                                                 _%g5325353520%_
                                                 _%g5325453521%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))))))))
                          (_%loop5327353496%_ _%target5327053490%_ '()))))
                     (_%__match9209792098%_
                      (lambda (_%e5322853560%_
                               _%hd5322953564%_
                               _%tl5323053567%_
                               _%e5323153570%_
                               _%hd5323253574%_
                               _%tl5323353577%_
                               _%e5323453580%_
                               _%hd5323553584%_
                               _%tl5323653587%_
                               _%e5323753590%_
                               _%hd5323853594%_
                               _%tl5323953597%_
                               _%e5324053600%_
                               _%hd5324153604%_
                               _%tl5324253607%_
                               _%__splice9195991960%_
                               _%target5324353610%_
                               _%tl5324553613%_)
                        (letrec ((_%loop5324653616%_
                                  (lambda (_%hd5324453620%_ _%body5325053623%_)
                                    (if (gx#stx-pair? _%hd5324453620%_)
                                        (let ((_%e5324753625%_
                                               (gx#syntax-e _%hd5324453620%_)))
                                          (let ((_%lp-tl5324953632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5324753625%_)))
                                                (_%lp-hd5324853629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5324753625%_))))
                                            (_%loop5324653616%_
                                             _%lp-tl5324953632%_
                                             (cons _%lp-hd5324853629%_
                                                   _%body5325053623%_))))
                                        (let ((_%body5325153635%_
                                               (reverse _%body5325053623%_)))
                                          (let ((_%g5322553638%_
                                                 _%body5325153635%_)
                                                (_%g5322653640%_
                                                 _%hd5324153604%_)
                                                (_%g5322753641%_
                                                 _%hd5323553584%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5322653640%_))
                                                (_%__kont9195791958%_
                                                 _%g5322553638%_
                                                 _%g5322653640%_
                                                 _%g5322753641%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))))))))
                          (_%loop5324653616%_ _%target5324353610%_ '()))))
                     (_%__match9205392054%_
                      (lambda (_%e5320153680%_
                               _%hd5320253684%_
                               _%tl5320353687%_
                               _%e5320453690%_
                               _%hd5320553694%_
                               _%tl5320653697%_
                               _%e5320753700%_
                               _%hd5320853704%_
                               _%tl5320953707%_
                               _%e5321053710%_
                               _%hd5321153714%_
                               _%tl5321253717%_
                               _%e5321353720%_
                               _%hd5321453724%_
                               _%tl5321553727%_
                               _%__splice9195591956%_
                               _%target5321653730%_
                               _%tl5321853733%_)
                        (letrec ((_%loop5321953736%_
                                  (lambda (_%hd5321753740%_ _%body5322353743%_)
                                    (if (gx#stx-pair? _%hd5321753740%_)
                                        (let ((_%e5322053745%_
                                               (gx#syntax-e _%hd5321753740%_)))
                                          (let ((_%lp-tl5322253752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5322053745%_)))
                                                (_%lp-hd5322153749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5322053745%_))))
                                            (_%loop5321953736%_
                                             _%lp-tl5322253752%_
                                             (cons _%lp-hd5322153749%_
                                                   _%body5322353743%_))))
                                        (let ((_%body5322453755%_
                                               (reverse _%body5322353743%_)))
                                          (let ((_%g5319853758%_
                                                 _%body5322453755%_)
                                                (_%g5319953760%_
                                                 _%hd5321453724%_)
                                                (_%g5320053761%_
                                                 _%hd5320853704%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5319953760%_))
                                                (_%__kont9195391954%_
                                                 _%g5319853758%_
                                                 _%g5319953760%_
                                                 _%g5320053761%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))))))))
                          (_%loop5321953736%_ _%target5321653730%_ '()))))
                     (_%__match9203392034%_
                      (lambda (_%e5320153680%_
                               _%hd5320253684%_
                               _%tl5320353687%_
                               _%e5320453690%_
                               _%hd5320553694%_
                               _%tl5320653697%_
                               _%e5320753700%_
                               _%hd5320853704%_
                               _%tl5320953707%_
                               _%e5321053710%_
                               _%hd5321153714%_
                               _%tl5321253717%_)
                        (if (gx#identifier? _%hd5321153714%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g97755_|
                                 _%hd5321153714%_)
                                (if (gx#stx-pair? _%tl5321253717%_)
                                    (let ((_%e5321353720%_
                                           (gx#syntax-e _%tl5321253717%_)))
                                      (let ((_%tl5321553727%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5321353720%_)))
                                            (_%hd5321453724%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5321353720%_))))
                                        (if (gx#stx-null? _%tl5321553727%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5320653697%_)
                                                (let ((_%__splice9195591956%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5320653697%_
                                                        '0)))
                                                  (let ((_%tl5321853733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9195591956%_
                                                            '1)))
                                                        (_%target5321653730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9195591956%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5321853733%_)
                                                        (_%__match9205392054%_
                                                         _%e5320153680%_
                                                         _%hd5320253684%_
                                                         _%tl5320353687%_
                                                         _%e5320453690%_
                                                         _%hd5320553694%_
                                                         _%tl5320653697%_
                                                         _%e5320753700%_
                                                         _%hd5320853704%_
                                                         _%tl5320953707%_
                                                         _%e5321053710%_
                                                         _%hd5321153714%_
                                                         _%tl5321253717%_
                                                         _%e5321353720%_
                                                         _%hd5321453724%_
                                                         _%tl5321553727%_
                                                         _%__splice9195591956%_
                                                         _%target5321653730%_
                                                         _%tl5321853733%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5316853311%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316853311%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5316853311%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g97756_|
                                     _%hd5321153714%_)
                                    (if (gx#stx-pair? _%tl5321253717%_)
                                        (let ((_%e5324053600%_
                                               (gx#syntax-e _%tl5321253717%_)))
                                          (let ((_%tl5324253607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5324053600%_)))
                                                (_%hd5324153604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5324053600%_))))
                                            (if (gx#stx-null? _%tl5324253607%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5320653697%_)
                                                    (let ((_%__splice9195991960%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5320653697%_
                                                            '0)))
                                                      (let ((_%tl5324553613%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9195991960%_ '1)))
                    (_%target5324353610%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9195991960%_ '0))))
                (if (gx#stx-null? _%tl5324553613%_)
                    (_%__match9209792098%_
                     _%e5320153680%_
                     _%hd5320253684%_
                     _%tl5320353687%_
                     _%e5320453690%_
                     _%hd5320553694%_
                     _%tl5320653697%_
                     _%e5320753700%_
                     _%hd5320853704%_
                     _%tl5320953707%_
                     _%e5321053710%_
                     _%hd5321153714%_
                     _%tl5321253717%_
                     _%e5324053600%_
                     _%hd5324153604%_
                     _%tl5324253607%_
                     _%__splice9195991960%_
                     _%target5324353610%_
                     _%tl5324553613%_)
                    (let () (declare (not safe)) (_%g5316853311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5316853311%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5316853311%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g97757_|
                                         _%hd5321153714%_)
                                        (if (gx#stx-pair? _%tl5321253717%_)
                                            (let ((_%e5326753480%_
                                                   (gx#syntax-e
                                                    _%tl5321253717%_)))
                                              (let ((_%tl5326953487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5326753480%_)))
                                                    (_%hd5326853484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5326753480%_))))
                                                (if (gx#stx-null?
                                                     _%tl5326953487%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5320653697%_)
                                                        (let ((_%__splice9196391964%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5320653697%_
                                                                '0)))
                                                          (let ((_%tl5327253493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9196391964%_ '1)))
                        (_%target5327053490%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9196391964%_ '0))))
                    (if (gx#stx-null? _%tl5327253493%_)
                        (_%__match9214192142%_
                         _%e5320153680%_
                         _%hd5320253684%_
                         _%tl5320353687%_
                         _%e5320453690%_
                         _%hd5320553694%_
                         _%tl5320653697%_
                         _%e5320753700%_
                         _%hd5320853704%_
                         _%tl5320953707%_
                         _%e5321053710%_
                         _%hd5321153714%_
                         _%tl5321253717%_
                         _%e5326753480%_
                         _%hd5326853484%_
                         _%tl5326953487%_
                         _%__splice9196391964%_
                         _%target5327053490%_
                         _%tl5327253493%_)
                        (let () (declare (not safe)) (_%g5316853311%_)))))
                (let () (declare (not safe)) (_%g5316853311%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5316853311%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316853311%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g97758_|
                                             _%hd5321153714%_)
                                            (if (gx#stx-pair? _%tl5321253717%_)
                                                (let ((_%e5329453358%_
                                                       (gx#syntax-e
                                                        _%tl5321253717%_)))
                                                  (let ((_%tl5329653365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5329453358%_)))
                                                        (_%hd5329553362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5329453358%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5329653365%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5320653697%_)
                                                            (let ((_%__splice9196791968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5320653697%_
                            '0)))
                      (let ((_%tl5329953371%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9196791968%_ '1)))
                            (_%target5329753368%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9196791968%_ '0))))
                        (if (gx#stx-null? _%tl5329953371%_)
                            (_%__match9218592186%_
                             _%e5320153680%_
                             _%hd5320253684%_
                             _%tl5320353687%_
                             _%e5320453690%_
                             _%hd5320553694%_
                             _%tl5320653697%_
                             _%e5320753700%_
                             _%hd5320853704%_
                             _%tl5320953707%_
                             _%e5321053710%_
                             _%hd5321153714%_
                             _%tl5321253717%_
                             _%e5329453358%_
                             _%hd5329553362%_
                             _%tl5329653365%_
                             _%__splice9196791968%_
                             _%target5329753368%_
                             _%tl5329953371%_)
                            (let () (declare (not safe)) (_%g5316853311%_)))))
                    (let () (declare (not safe)) (_%g5316853311%_)))
                (let () (declare (not safe)) (_%g5316853311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316853311%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316853311%_))))))
                            (let () (declare (not safe)) (_%g5316853311%_)))))
                     (_%__match9200992010%_
                      (lambda (_%e5317453800%_
                               _%hd5317553804%_
                               _%tl5317653807%_
                               _%e5317753810%_
                               _%hd5317853814%_
                               _%tl5317953817%_
                               _%e5318053820%_
                               _%hd5318153824%_
                               _%tl5318253827%_
                               _%e5318353830%_
                               _%hd5318453834%_
                               _%tl5318553837%_
                               _%e5318653840%_
                               _%hd5318753844%_
                               _%tl5318853847%_
                               _%__splice9195191952%_
                               _%target5318953850%_
                               _%tl5319153853%_)
                        (letrec ((_%loop5319253856%_
                                  (lambda (_%hd5319053860%_ _%body5319653863%_)
                                    (if (gx#stx-pair? _%hd5319053860%_)
                                        (let ((_%e5319353865%_
                                               (gx#syntax-e _%hd5319053860%_)))
                                          (let ((_%lp-tl5319553872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5319353865%_)))
                                                (_%lp-hd5319453869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5319353865%_))))
                                            (_%loop5319253856%_
                                             _%lp-tl5319553872%_
                                             (cons _%lp-hd5319453869%_
                                                   _%body5319653863%_))))
                                        (let ((_%body5319753875%_
                                               (reverse _%body5319653863%_)))
                                          (let ((_%g5317053878%_
                                                 _%body5319753875%_)
                                                (_%g5317153880%_
                                                 _%hd5318753844%_)
                                                (_%g5317253881%_
                                                 _%hd5318453834%_)
                                                (_%g5317353882%_
                                                 _%hd5318153824%_))
                                            (if (let ((__tmp97759
                                                       (gx#syntax-local-value
                                                        _%g5317153880%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp97759))
                                                (_%__kont9194991950%_
                                                 _%g5317053878%_
                                                 _%g5317153880%_
                                                 _%g5317253881%_
                                                 _%g5317353882%_)
                                                (_%__match9203392034%_
                                                 _%e5317453800%_
                                                 _%hd5317553804%_
                                                 _%tl5317653807%_
                                                 _%e5317753810%_
                                                 _%hd5317853814%_
                                                 _%tl5317953817%_
                                                 _%e5318053820%_
                                                 _%hd5318153824%_
                                                 _%tl5318253827%_
                                                 _%e5318353830%_
                                                 _%hd5318453834%_
                                                 _%tl5318553837%_))))))))
                          (_%loop5319253856%_ _%target5318953850%_ '())))))
                (if (gx#stx-pair? _%__stx9194691947%_)
                    (let ((_%e5317453800%_ (gx#syntax-e _%__stx9194691947%_)))
                      (let ((_%tl5317653807%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5317453800%_)))
                            (_%hd5317553804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5317453800%_))))
                        (if (gx#stx-pair? _%tl5317653807%_)
                            (let ((_%e5317753810%_
                                   (gx#syntax-e _%tl5317653807%_)))
                              (let ((_%tl5317953817%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5317753810%_)))
                                    (_%hd5317853814%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5317753810%_))))
                                (if (gx#stx-pair? _%hd5317853814%_)
                                    (let ((_%e5318053820%_
                                           (gx#syntax-e _%hd5317853814%_)))
                                      (let ((_%tl5318253827%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5318053820%_)))
                                            (_%hd5318153824%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5318053820%_))))
                                        (if (gx#stx-pair? _%tl5318253827%_)
                                            (let ((_%e5318353830%_
                                                   (gx#syntax-e
                                                    _%tl5318253827%_)))
                                              (let ((_%tl5318553837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5318353830%_)))
                                                    (_%hd5318453834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5318353830%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5318553837%_)
                                                    (let ((_%e5318653840%_
                                                           (gx#syntax-e
                                                            _%tl5318553837%_)))
                                                      (let ((_%tl5318853847%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5318653840%_)))
                    (_%hd5318753844%_
                     (let () (declare (not safe)) (##car _%e5318653840%_))))
                (if (gx#stx-null? _%tl5318853847%_)
                    (if (gx#stx-pair/null? _%tl5317953817%_)
                        (let ((_%__splice9195191952%_
                               (gx#syntax-split-splice->vector
                                _%tl5317953817%_
                                '0)))
                          (let ((_%tl5319153853%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9195191952%_ '1)))
                                (_%target5318953850%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9195191952%_ '0))))
                            (if (gx#stx-null? _%tl5319153853%_)
                                (_%__match9200992010%_
                                 _%e5317453800%_
                                 _%hd5317553804%_
                                 _%tl5317653807%_
                                 _%e5317753810%_
                                 _%hd5317853814%_
                                 _%tl5317953817%_
                                 _%e5318053820%_
                                 _%hd5318153824%_
                                 _%tl5318253827%_
                                 _%e5318353830%_
                                 _%hd5318453834%_
                                 _%tl5318553837%_
                                 _%e5318653840%_
                                 _%hd5318753844%_
                                 _%tl5318853847%_
                                 _%__splice9195191952%_
                                 _%target5318953850%_
                                 _%tl5319153853%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5316853311%_)))))
                        (let () (declare (not safe)) (_%g5316853311%_)))
                    (let () (declare (not safe)) (_%g5316853311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5316853311%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316853311%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5316853311%_)))))
                            (let () (declare (not safe)) (_%g5316853311%_)))))
                    (let () (declare (not safe)) (_%g5316853311%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54274%_)
        (letrec ((_%expand-body54277%_
                  (lambda (_%var55268%_
                           _%Interface55270%_
                           _%body55271%_
                           _%checked?55272%_)
                    (let* ((_%type55274%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54274%_
                               _%Interface55270%_)))
                           (_%g5527755321%_
                            (lambda (_%g5527855317%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5527855317%_)))
                           (_%g5527655477%_
                            (lambda (_%g5527855325%_)
                              (if (gx#stx-pair? _%g5527855325%_)
                                  (let ((_%e5528655328%_
                                         (gx#syntax-e _%g5527855325%_)))
                                    (let ((_%hd5528755332%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5528655328%_)))
                                          (_%tl5528855335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5528655328%_))))
                                      (if (gx#stx-pair? _%tl5528855335%_)
                                          (let ((_%e5528955338%_
                                                 (gx#syntax-e
                                                  _%tl5528855335%_)))
                                            (let ((_%hd5529055342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5528955338%_)))
                                                  (_%tl5529155345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5528955338%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5529155345%_)
                                                  (let ((_%e5529255348%_
                                                         (gx#syntax-e
                                                          _%tl5529155345%_)))
                                                    (let ((_%hd5529355352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5529255348%_)))
                                                          (_%tl5529455355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5529255348%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5529455355%_)
                                                          (let ((_%e5529555358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5529455355%_)))
                    (let ((_%hd5529655362%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5529555358%_)))
                          (_%tl5529755365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5529555358%_))))
                      (if (gx#stx-pair? _%tl5529755365%_)
                          (let ((_%e5529855368%_
                                 (gx#syntax-e _%tl5529755365%_)))
                            (let ((_%hd5529955372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5529855368%_)))
                                  (_%tl5530055375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5529855368%_))))
                              (if (gx#stx-pair? _%tl5530055375%_)
                                  (let ((_%e5530155378%_
                                         (gx#syntax-e _%tl5530055375%_)))
                                    (let ((_%hd5530255382%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5530155378%_)))
                                          (_%tl5530355385%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5530155378%_))))
                                      (if (gx#stx-pair? _%tl5530355385%_)
                                          (let ((_%e5530455388%_
                                                 (gx#syntax-e
                                                  _%tl5530355385%_)))
                                            (let ((_%hd5530555392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5530455388%_)))
                                                  (_%tl5530655395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5530455388%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5530555392%_)
                                                  (let ((_g97760_
                                                         (gx#syntax-split-splice
                                                          _%hd5530555392%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g97761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g97760_)
                           (##values-length _g97760_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97761_ 2)))
                    (error "Context expects 2 values" _g97761_)))
              (let ((_%target5530755398%_
                     (let () (declare (not safe)) (##values-ref _g97760_ 0)))
                    (_%tl5530955401%_
                     (let () (declare (not safe)) (##values-ref _g97760_ 1))))
                (if (gx#stx-null? _%tl5530955401%_)
                    (letrec ((_%loop5531055404%_
                              (lambda (_%hd5530855408%_ _%body5531455411%_)
                                (if (gx#stx-pair? _%hd5530855408%_)
                                    (let ((_%e5531155413%_
                                           (gx#syntax-e _%hd5530855408%_)))
                                      (let ((_%lp-hd5531255417%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5531155413%_)))
                                            (_%lp-tl5531355420%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5531155413%_))))
                                        (_%loop5531055404%_
                                         _%lp-tl5531355420%_
                                         (cons _%lp-hd5531255417%_
                                               _%body5531455411%_))))
                                    (let ((_%body5531555423%_
                                           (reverse _%body5531455411%_)))
                                      (if (gx#stx-null? _%tl5530655395%_)
                                          ((lambda (_%g5527955426%_
                                                    _%g5528055428%_
                                                    _%g5528155429%_
                                                    _%g5528255430%_
                                                    _%g5528355431%_
                                                    _%g5528455432%_
                                                    _%g5528555433%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5528255430%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5528355431%_ '()))
                                         (cons _%g5528255430%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5528555433%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5528255430%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5528455432%_ '()))
                               (cons _%g5528155429%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5528055428%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5546855471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5546955474%_)
                      (cons _%g5546855471%_ _%g5546955474%_))
                    '()
                    _%g5527955426%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5531555423%_
                                           _%hd5530255382%_
                                           _%hd5529955372%_
                                           _%hd5529655362%_
                                           _%hd5529355352%_
                                           _%hd5529055342%_
                                           _%hd5528755332%_)
                                          (_%g5527755321%_
                                           _%g5527855325%_)))))))
                      (_%loop5531055404%_ _%target5530755398%_ '()))
                    (_%g5527755321%_ _%g5527855325%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5527755321%_
                                                   _%g5527855325%_))))
                                          (_%g5527755321%_ _%g5527855325%_))))
                                  (_%g5527755321%_ _%g5527855325%_))))
                          (_%g5527755321%_ _%g5527855325%_))))
                  (_%g5527755321%_ _%g5527855325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5527755321%_
                                                   _%g5527855325%_))))
                                          (_%g5527755321%_ _%g5527855325%_))))
                                  (_%g5527755321%_ _%g5527855325%_)))))
                      (_%g5527655477%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55274%_
                             (let ((__obj97561 _%type55274%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj97561
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj97561
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj97561
                                    'type-descriptor)))
                             _%var55268%_
                             _%checked?55272%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55271%_)))))
                 (_%expand54279%_
                  (lambda (_%var55067%_
                           _%Interface55069%_
                           _%body55070%_
                           _%checked?55071%_
                           _%checked-methods?55072%_
                           _%maybe?55073%_)
                    (let* ((_%g5507555083%_
                            (lambda (_%g5507655079%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5507655079%_)))
                           (_%g5507455260%_
                            (lambda (_%g5507655087%_)
                              ((lambda (_%g5507755090%_)
                                 (if _%checked?55071%_
                                     (if _%maybe?55073%_
                                         (let* ((_%g5510255117%_
                                                 (lambda (_%g5510355113%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5510355113%_)))
                                                (_%g5510155163%_
                                                 (lambda (_%g5510355121%_)
                                                   (if (gx#stx-pair?
                                                        _%g5510355121%_)
                                                       (let ((_%e5510655124%_
                                                              (gx#syntax-e
                                                               _%g5510355121%_)))
                                                         (let ((_%hd5510755128%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5510655124%_)))
                       (_%tl5510855131%_
                        (let () (declare (not safe)) (##cdr _%e5510655124%_))))
                   (if (gx#stx-pair? _%tl5510855131%_)
                       (let ((_%e5510955134%_ (gx#syntax-e _%tl5510855131%_)))
                         (let ((_%hd5511055138%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5510955134%_)))
                               (_%tl5511155141%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5510955134%_))))
                           (if (gx#stx-null? _%tl5511155141%_)
                               ((lambda (_%g5510455144%_ _%g5510555146%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5510555146%_
                                                    (cons (cons _%g5510455144%_
                                                                (cons _%g5510555146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5510555146%_
                                                                (cons _%g5507755090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5510555146%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5511055138%_
                                _%hd5510755128%_)
                               (_%g5510255117%_ _%g5510355121%_))))
                       (_%g5510255117%_ _%g5510355121%_))))
               (_%g5510255117%_ _%g5510355121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5510155163%_
                                            (list _%var55067%_
                                                  _%Interface55069%_)))
                                         (let* ((_%g5516755182%_
                                                 (lambda (_%g5516855178%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5516855178%_)))
                                                (_%g5516655226%_
                                                 (lambda (_%g5516855186%_)
                                                   (if (gx#stx-pair?
                                                        _%g5516855186%_)
                                                       (let ((_%e5517155189%_
                                                              (gx#syntax-e
                                                               _%g5516855186%_)))
                                                         (let ((_%hd5517255193%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5517155189%_)))
                       (_%tl5517355196%_
                        (let () (declare (not safe)) (##cdr _%e5517155189%_))))
                   (if (gx#stx-pair? _%tl5517355196%_)
                       (let ((_%e5517455199%_ (gx#syntax-e _%tl5517355196%_)))
                         (let ((_%hd5517555203%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5517455199%_)))
                               (_%tl5517655206%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5517455199%_))))
                           (if (gx#stx-null? _%tl5517655206%_)
                               ((lambda (_%g5516955209%_ _%g5517055211%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5517055211%_
                                                    (cons (cons _%g5516955209%_
                                                                (cons _%g5517055211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5507755090%_ '()))))
                                _%hd5517555203%_
                                _%hd5517255193%_)
                               (_%g5516755182%_ _%g5516855186%_))))
                       (_%g5516755182%_ _%g5516855186%_))))
               (_%g5516755182%_ _%g5516855186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5516655226%_
                                            (list _%var55067%_
                                                  _%Interface55069%_))))
                                     (if _%maybe?55073%_
                                         (let* ((_%g5523055238%_
                                                 (lambda (_%g5523155234%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5523155234%_)))
                                                (_%g5522955256%_
                                                 (lambda (_%g5523155242%_)
                                                   ((lambda (_%g5523255245%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5523255245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5507755090%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5523255245%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5523155242%_))))
                                           (_%g5522955256%_ _%var55067%_))
                                         _%g5507755090%_)))
                               _%g5507655087%_))))
                      (_%g5507455260%_
                       (_%expand-body54277%_
                        _%var55067%_
                        _%Interface55069%_
                        _%body55070%_
                        (let ((_%$e55264%_ _%checked?55071%_))
                          (if _%$e55264%_
                              _%$e55264%_
                              _%checked-methods?55072%_))))))))
          (let* ((_%__stx9218892189%_ _%stx54274%_)
                 (_%g5428554428%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9218892189%_))))
            (let ((_%__kont9219192192%_
                   (lambda (_%g5428754995%_
                            _%g5428854997%_
                            _%g5428954998%_
                            _%g5429054999%_)
                     (let* ((_%g5502455032%_
                             (lambda (_%g5502555028%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5502555028%_)))
                            (_%g5502355059%_
                             (lambda (_%g5502555036%_)
                               ((lambda (_%g5502655039%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5429054999%_
                                                    (cons _%g5428954998%_
                                                          (cons _%g5502655039%_
                                                                '())))
                                              (foldr (lambda (_%g5505055053%_
                                                              _%g5505155056%_)
                                                       (cons _%g5505055053%_
                                                             _%g5505155056%_))
                                                     '()
                                                     _%g5428754995%_))))
                                _%g5502555036%_))))
                       (_%g5502355059%_
                        (let ((__obj97562
                               (gx#syntax-local-value _%g5428854997%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj97562
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj97562
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj97562
                               'identifier)))))))
                  (_%__kont9219592196%_
                   (lambda (_%g5431554875%_ _%g5431654877%_ _%g5431754878%_)
                     (_%expand54279%_
                      _%g5431754878%_
                      _%g5431654877%_
                      (foldr (lambda (_%g5490154904%_ _%g5490254907%_)
                               (cons _%g5490154904%_ _%g5490254907%_))
                             '()
                             _%g5431554875%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9219992200%_
                   (lambda (_%g5434254755%_ _%g5434354757%_ _%g5434454758%_)
                     (_%expand54279%_
                      _%g5434454758%_
                      _%g5434354757%_
                      (foldr (lambda (_%g5478154784%_ _%g5478254787%_)
                               (cons _%g5478154784%_ _%g5478254787%_))
                             '()
                             _%g5434254755%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9220392204%_
                   (lambda (_%g5436954635%_ _%g5437054637%_ _%g5437154638%_)
                     (_%expand54279%_
                      _%g5437154638%_
                      _%g5437054637%_
                      (foldr (lambda (_%g5466154664%_ _%g5466254667%_)
                               (cons _%g5466154664%_ _%g5466254667%_))
                             '()
                             _%g5436954635%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9220792208%_
                   (lambda (_%g5439654513%_ _%g5439754515%_ _%g5439854516%_)
                     (_%expand54279%_
                      _%g5439854516%_
                      _%g5439754515%_
                      (foldr (lambda (_%g5454154544%_ _%g5454254547%_)
                               (cons _%g5454154544%_ _%g5454254547%_))
                             '()
                             _%g5439654513%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9242792428%_
                      (lambda (_%e5439954435%_
                               _%hd5440054439%_
                               _%tl5440154442%_
                               _%e5440254445%_
                               _%hd5440354449%_
                               _%tl5440454452%_
                               _%e5440554455%_
                               _%hd5440654459%_
                               _%tl5440754462%_
                               _%e5440854465%_
                               _%hd5440954469%_
                               _%tl5441054472%_
                               _%e5441154475%_
                               _%hd5441254479%_
                               _%tl5441354482%_
                               _%__splice9220992210%_
                               _%target5441454485%_
                               _%tl5441654488%_)
                        (letrec ((_%loop5441754491%_
                                  (lambda (_%hd5441554495%_ _%body5442154498%_)
                                    (if (gx#stx-pair? _%hd5441554495%_)
                                        (let ((_%e5441854500%_
                                               (gx#syntax-e _%hd5441554495%_)))
                                          (let ((_%lp-tl5442054507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5441854500%_)))
                                                (_%lp-hd5441954504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5441854500%_))))
                                            (_%loop5441754491%_
                                             _%lp-tl5442054507%_
                                             (cons _%lp-hd5441954504%_
                                                   _%body5442154498%_))))
                                        (let ((_%body5442254510%_
                                               (reverse _%body5442154498%_)))
                                          (let ((_%g5439654513%_
                                                 _%body5442254510%_)
                                                (_%g5439754515%_
                                                 _%hd5441254479%_)
                                                (_%g5439854516%_
                                                 _%hd5440654459%_))
                                            (if (and (gx#identifier?
                                                      _%g5439854516%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5439754515%_)))
                                                (_%__kont9220792208%_
                                                 _%g5439654513%_
                                                 _%g5439754515%_
                                                 _%g5439854516%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))))))))
                          (_%loop5441754491%_ _%target5441454485%_ '()))))
                     (_%__match9238392384%_
                      (lambda (_%e5437254557%_
                               _%hd5437354561%_
                               _%tl5437454564%_
                               _%e5437554567%_
                               _%hd5437654571%_
                               _%tl5437754574%_
                               _%e5437854577%_
                               _%hd5437954581%_
                               _%tl5438054584%_
                               _%e5438154587%_
                               _%hd5438254591%_
                               _%tl5438354594%_
                               _%e5438454597%_
                               _%hd5438554601%_
                               _%tl5438654604%_
                               _%__splice9220592206%_
                               _%target5438754607%_
                               _%tl5438954610%_)
                        (letrec ((_%loop5439054613%_
                                  (lambda (_%hd5438854617%_ _%body5439454620%_)
                                    (if (gx#stx-pair? _%hd5438854617%_)
                                        (let ((_%e5439154622%_
                                               (gx#syntax-e _%hd5438854617%_)))
                                          (let ((_%lp-tl5439354629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5439154622%_)))
                                                (_%lp-hd5439254626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5439154622%_))))
                                            (_%loop5439054613%_
                                             _%lp-tl5439354629%_
                                             (cons _%lp-hd5439254626%_
                                                   _%body5439454620%_))))
                                        (let ((_%body5439554632%_
                                               (reverse _%body5439454620%_)))
                                          (let ((_%g5436954635%_
                                                 _%body5439554632%_)
                                                (_%g5437054637%_
                                                 _%hd5438554601%_)
                                                (_%g5437154638%_
                                                 _%hd5437954581%_))
                                            (if (and (gx#identifier?
                                                      _%g5437154638%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5437054637%_)))
                                                (_%__kont9220392204%_
                                                 _%g5436954635%_
                                                 _%g5437054637%_
                                                 _%g5437154638%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))))))))
                          (_%loop5439054613%_ _%target5438754607%_ '()))))
                     (_%__match9233992340%_
                      (lambda (_%e5434554677%_
                               _%hd5434654681%_
                               _%tl5434754684%_
                               _%e5434854687%_
                               _%hd5434954691%_
                               _%tl5435054694%_
                               _%e5435154697%_
                               _%hd5435254701%_
                               _%tl5435354704%_
                               _%e5435454707%_
                               _%hd5435554711%_
                               _%tl5435654714%_
                               _%e5435754717%_
                               _%hd5435854721%_
                               _%tl5435954724%_
                               _%__splice9220192202%_
                               _%target5436054727%_
                               _%tl5436254730%_)
                        (letrec ((_%loop5436354733%_
                                  (lambda (_%hd5436154737%_ _%body5436754740%_)
                                    (if (gx#stx-pair? _%hd5436154737%_)
                                        (let ((_%e5436454742%_
                                               (gx#syntax-e _%hd5436154737%_)))
                                          (let ((_%lp-tl5436654749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5436454742%_)))
                                                (_%lp-hd5436554746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5436454742%_))))
                                            (_%loop5436354733%_
                                             _%lp-tl5436654749%_
                                             (cons _%lp-hd5436554746%_
                                                   _%body5436754740%_))))
                                        (let ((_%body5436854752%_
                                               (reverse _%body5436754740%_)))
                                          (let ((_%g5434254755%_
                                                 _%body5436854752%_)
                                                (_%g5434354757%_
                                                 _%hd5435854721%_)
                                                (_%g5434454758%_
                                                 _%hd5435254701%_))
                                            (if (and (gx#identifier?
                                                      _%g5434454758%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5434354757%_)))
                                                (_%__kont9219992200%_
                                                 _%g5434254755%_
                                                 _%g5434354757%_
                                                 _%g5434454758%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))))))))
                          (_%loop5436354733%_ _%target5436054727%_ '()))))
                     (_%__match9229592296%_
                      (lambda (_%e5431854797%_
                               _%hd5431954801%_
                               _%tl5432054804%_
                               _%e5432154807%_
                               _%hd5432254811%_
                               _%tl5432354814%_
                               _%e5432454817%_
                               _%hd5432554821%_
                               _%tl5432654824%_
                               _%e5432754827%_
                               _%hd5432854831%_
                               _%tl5432954834%_
                               _%e5433054837%_
                               _%hd5433154841%_
                               _%tl5433254844%_
                               _%__splice9219792198%_
                               _%target5433354847%_
                               _%tl5433554850%_)
                        (letrec ((_%loop5433654853%_
                                  (lambda (_%hd5433454857%_ _%body5434054860%_)
                                    (if (gx#stx-pair? _%hd5433454857%_)
                                        (let ((_%e5433754862%_
                                               (gx#syntax-e _%hd5433454857%_)))
                                          (let ((_%lp-tl5433954869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5433754862%_)))
                                                (_%lp-hd5433854866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5433754862%_))))
                                            (_%loop5433654853%_
                                             _%lp-tl5433954869%_
                                             (cons _%lp-hd5433854866%_
                                                   _%body5434054860%_))))
                                        (let ((_%body5434154872%_
                                               (reverse _%body5434054860%_)))
                                          (let ((_%g5431554875%_
                                                 _%body5434154872%_)
                                                (_%g5431654877%_
                                                 _%hd5433154841%_)
                                                (_%g5431754878%_
                                                 _%hd5432554821%_))
                                            (if (and (gx#identifier?
                                                      _%g5431754878%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5431654877%_)))
                                                (_%__kont9219592196%_
                                                 _%g5431554875%_
                                                 _%g5431654877%_
                                                 _%g5431754878%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))))))))
                          (_%loop5433654853%_ _%target5433354847%_ '()))))
                     (_%__match9227592276%_
                      (lambda (_%e5431854797%_
                               _%hd5431954801%_
                               _%tl5432054804%_
                               _%e5432154807%_
                               _%hd5432254811%_
                               _%tl5432354814%_
                               _%e5432454817%_
                               _%hd5432554821%_
                               _%tl5432654824%_
                               _%e5432754827%_
                               _%hd5432854831%_
                               _%tl5432954834%_)
                        (if (gx#identifier? _%hd5432854831%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g97762_|
                                 _%hd5432854831%_)
                                (if (gx#stx-pair? _%tl5432954834%_)
                                    (let ((_%e5433054837%_
                                           (gx#syntax-e _%tl5432954834%_)))
                                      (let ((_%tl5433254844%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5433054837%_)))
                                            (_%hd5433154841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5433054837%_))))
                                        (if (gx#stx-null? _%tl5433254844%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5432354814%_)
                                                (let ((_%__splice9219792198%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5432354814%_
                                                        '0)))
                                                  (let ((_%tl5433554850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9219792198%_
                                                            '1)))
                                                        (_%target5433354847%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9219792198%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5433554850%_)
                                                        (_%__match9229592296%_
                                                         _%e5431854797%_
                                                         _%hd5431954801%_
                                                         _%tl5432054804%_
                                                         _%e5432154807%_
                                                         _%hd5432254811%_
                                                         _%tl5432354814%_
                                                         _%e5432454817%_
                                                         _%hd5432554821%_
                                                         _%tl5432654824%_
                                                         _%e5432754827%_
                                                         _%hd5432854831%_
                                                         _%tl5432954834%_
                                                         _%e5433054837%_
                                                         _%hd5433154841%_
                                                         _%tl5433254844%_
                                                         _%__splice9219792198%_
                                                         _%target5433354847%_
                                                         _%tl5433554850%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5428554428%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5428554428%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5428554428%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g97763_|
                                     _%hd5432854831%_)
                                    (if (gx#stx-pair? _%tl5432954834%_)
                                        (let ((_%e5435754717%_
                                               (gx#syntax-e _%tl5432954834%_)))
                                          (let ((_%tl5435954724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5435754717%_)))
                                                (_%hd5435854721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5435754717%_))))
                                            (if (gx#stx-null? _%tl5435954724%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5432354814%_)
                                                    (let ((_%__splice9220192202%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5432354814%_
                                                            '0)))
                                                      (let ((_%tl5436254730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9220192202%_ '1)))
                    (_%target5436054727%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9220192202%_ '0))))
                (if (gx#stx-null? _%tl5436254730%_)
                    (_%__match9233992340%_
                     _%e5431854797%_
                     _%hd5431954801%_
                     _%tl5432054804%_
                     _%e5432154807%_
                     _%hd5432254811%_
                     _%tl5432354814%_
                     _%e5432454817%_
                     _%hd5432554821%_
                     _%tl5432654824%_
                     _%e5432754827%_
                     _%hd5432854831%_
                     _%tl5432954834%_
                     _%e5435754717%_
                     _%hd5435854721%_
                     _%tl5435954724%_
                     _%__splice9220192202%_
                     _%target5436054727%_
                     _%tl5436254730%_)
                    (let () (declare (not safe)) (_%g5428554428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5428554428%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5428554428%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g97764_|
                                         _%hd5432854831%_)
                                        (if (gx#stx-pair? _%tl5432954834%_)
                                            (let ((_%e5438454597%_
                                                   (gx#syntax-e
                                                    _%tl5432954834%_)))
                                              (let ((_%tl5438654604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5438454597%_)))
                                                    (_%hd5438554601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5438454597%_))))
                                                (if (gx#stx-null?
                                                     _%tl5438654604%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5432354814%_)
                                                        (let ((_%__splice9220592206%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5432354814%_
                                                                '0)))
                                                          (let ((_%tl5438954610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9220592206%_ '1)))
                        (_%target5438754607%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9220592206%_ '0))))
                    (if (gx#stx-null? _%tl5438954610%_)
                        (_%__match9238392384%_
                         _%e5431854797%_
                         _%hd5431954801%_
                         _%tl5432054804%_
                         _%e5432154807%_
                         _%hd5432254811%_
                         _%tl5432354814%_
                         _%e5432454817%_
                         _%hd5432554821%_
                         _%tl5432654824%_
                         _%e5432754827%_
                         _%hd5432854831%_
                         _%tl5432954834%_
                         _%e5438454597%_
                         _%hd5438554601%_
                         _%tl5438654604%_
                         _%__splice9220592206%_
                         _%target5438754607%_
                         _%tl5438954610%_)
                        (let () (declare (not safe)) (_%g5428554428%_)))))
                (let () (declare (not safe)) (_%g5428554428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5428554428%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5428554428%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g97765_|
                                             _%hd5432854831%_)
                                            (if (gx#stx-pair? _%tl5432954834%_)
                                                (let ((_%e5441154475%_
                                                       (gx#syntax-e
                                                        _%tl5432954834%_)))
                                                  (let ((_%tl5441354482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5441154475%_)))
                                                        (_%hd5441254479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5441154475%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5441354482%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5432354814%_)
                                                            (let ((_%__splice9220992210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5432354814%_
                            '0)))
                      (let ((_%tl5441654488%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9220992210%_ '1)))
                            (_%target5441454485%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9220992210%_ '0))))
                        (if (gx#stx-null? _%tl5441654488%_)
                            (_%__match9242792428%_
                             _%e5431854797%_
                             _%hd5431954801%_
                             _%tl5432054804%_
                             _%e5432154807%_
                             _%hd5432254811%_
                             _%tl5432354814%_
                             _%e5432454817%_
                             _%hd5432554821%_
                             _%tl5432654824%_
                             _%e5432754827%_
                             _%hd5432854831%_
                             _%tl5432954834%_
                             _%e5441154475%_
                             _%hd5441254479%_
                             _%tl5441354482%_
                             _%__splice9220992210%_
                             _%target5441454485%_
                             _%tl5441654488%_)
                            (let () (declare (not safe)) (_%g5428554428%_)))))
                    (let () (declare (not safe)) (_%g5428554428%_)))
                (let () (declare (not safe)) (_%g5428554428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5428554428%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5428554428%_))))))
                            (let () (declare (not safe)) (_%g5428554428%_)))))
                     (_%__match9225192252%_
                      (lambda (_%e5429154917%_
                               _%hd5429254921%_
                               _%tl5429354924%_
                               _%e5429454927%_
                               _%hd5429554931%_
                               _%tl5429654934%_
                               _%e5429754937%_
                               _%hd5429854941%_
                               _%tl5429954944%_
                               _%e5430054947%_
                               _%hd5430154951%_
                               _%tl5430254954%_
                               _%e5430354957%_
                               _%hd5430454961%_
                               _%tl5430554964%_
                               _%__splice9219392194%_
                               _%target5430654967%_
                               _%tl5430854970%_)
                        (letrec ((_%loop5430954973%_
                                  (lambda (_%hd5430754977%_ _%body5431354980%_)
                                    (if (gx#stx-pair? _%hd5430754977%_)
                                        (let ((_%e5431054982%_
                                               (gx#syntax-e _%hd5430754977%_)))
                                          (let ((_%lp-tl5431254989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5431054982%_)))
                                                (_%lp-hd5431154986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5431054982%_))))
                                            (_%loop5430954973%_
                                             _%lp-tl5431254989%_
                                             (cons _%lp-hd5431154986%_
                                                   _%body5431354980%_))))
                                        (let ((_%body5431454992%_
                                               (reverse _%body5431354980%_)))
                                          (let ((_%g5428754995%_
                                                 _%body5431454992%_)
                                                (_%g5428854997%_
                                                 _%hd5430454961%_)
                                                (_%g5428954998%_
                                                 _%hd5430154951%_)
                                                (_%g5429054999%_
                                                 _%hd5429854941%_))
                                            (if (let ((__tmp97766
                                                       (gx#syntax-local-value
                                                        _%g5428854997%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp97766))
                                                (_%__kont9219192192%_
                                                 _%g5428754995%_
                                                 _%g5428854997%_
                                                 _%g5428954998%_
                                                 _%g5429054999%_)
                                                (_%__match9227592276%_
                                                 _%e5429154917%_
                                                 _%hd5429254921%_
                                                 _%tl5429354924%_
                                                 _%e5429454927%_
                                                 _%hd5429554931%_
                                                 _%tl5429654934%_
                                                 _%e5429754937%_
                                                 _%hd5429854941%_
                                                 _%tl5429954944%_
                                                 _%e5430054947%_
                                                 _%hd5430154951%_
                                                 _%tl5430254954%_))))))))
                          (_%loop5430954973%_ _%target5430654967%_ '())))))
                (if (gx#stx-pair? _%__stx9218892189%_)
                    (let ((_%e5429154917%_ (gx#syntax-e _%__stx9218892189%_)))
                      (let ((_%tl5429354924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5429154917%_)))
                            (_%hd5429254921%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5429154917%_))))
                        (if (gx#stx-pair? _%tl5429354924%_)
                            (let ((_%e5429454927%_
                                   (gx#syntax-e _%tl5429354924%_)))
                              (let ((_%tl5429654934%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5429454927%_)))
                                    (_%hd5429554931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5429454927%_))))
                                (if (gx#stx-pair? _%hd5429554931%_)
                                    (let ((_%e5429754937%_
                                           (gx#syntax-e _%hd5429554931%_)))
                                      (let ((_%tl5429954944%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5429754937%_)))
                                            (_%hd5429854941%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5429754937%_))))
                                        (if (gx#stx-pair? _%tl5429954944%_)
                                            (let ((_%e5430054947%_
                                                   (gx#syntax-e
                                                    _%tl5429954944%_)))
                                              (let ((_%tl5430254954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5430054947%_)))
                                                    (_%hd5430154951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5430054947%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5430254954%_)
                                                    (let ((_%e5430354957%_
                                                           (gx#syntax-e
                                                            _%tl5430254954%_)))
                                                      (let ((_%tl5430554964%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5430354957%_)))
                    (_%hd5430454961%_
                     (let () (declare (not safe)) (##car _%e5430354957%_))))
                (if (gx#stx-null? _%tl5430554964%_)
                    (if (gx#stx-pair/null? _%tl5429654934%_)
                        (let ((_%__splice9219392194%_
                               (gx#syntax-split-splice->vector
                                _%tl5429654934%_
                                '0)))
                          (let ((_%tl5430854970%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9219392194%_ '1)))
                                (_%target5430654967%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9219392194%_ '0))))
                            (if (gx#stx-null? _%tl5430854970%_)
                                (_%__match9225192252%_
                                 _%e5429154917%_
                                 _%hd5429254921%_
                                 _%tl5429354924%_
                                 _%e5429454927%_
                                 _%hd5429554931%_
                                 _%tl5429654934%_
                                 _%e5429754937%_
                                 _%hd5429854941%_
                                 _%tl5429954944%_
                                 _%e5430054947%_
                                 _%hd5430154951%_
                                 _%tl5430254954%_
                                 _%e5430354957%_
                                 _%hd5430454961%_
                                 _%tl5430554964%_
                                 _%__splice9219392194%_
                                 _%target5430654967%_
                                 _%tl5430854970%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5428554428%_)))))
                        (let () (declare (not safe)) (_%g5428554428%_)))
                    (let () (declare (not safe)) (_%g5428554428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5428554428%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5428554428%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5428554428%_)))))
                            (let () (declare (not safe)) (_%g5428554428%_)))))
                    (let () (declare (not safe)) (_%g5428554428%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55487%_)
        (let* ((_%__stx9243092431%_ _%stx55487%_)
               (_%g5549255552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9243092431%_))))
          (let ((_%__kont9243392434%_
                 (lambda (_%g5549456108%_ _%g5549556110%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5549556110%_ '()))
                               (foldr (lambda (_%g5612656129%_ _%g5612756132%_)
                                        (cons _%g5612656129%_ _%g5612756132%_))
                                      '()
                                      _%g5549456108%_)))))
                (_%__kont9243792438%_
                 (lambda (_%g5551155696%_ _%g5551255698%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5551255698%_)
                       (let* ((_%g5571855725%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55487%_
                                _%g5551255698%_))
                              (_%E5572055731%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5571855725%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5572156029%_
                               (lambda (_%parts55735%_ _%var55737%_)
                                 (let ((_%$e55739%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55737%_))))
                                   (if _%$e55739%_
                                       ((lambda (_%te55743%_)
                                          (let _%loop55746%_ ((_%parts55749%_
                                                               _%parts55735%_)
                                                              (_%type55751%_
                                                               (##direct-structure-ref
                                                                _%te55743%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55752%_
                                                               _%var55737%_)
                                                              (_%checked-method?55753%_
                                                               (##direct-structure-ref
                                                                _%te55743%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55754%_
                                                               '#f))
                                            (let* ((_%parts5575555763%_
                                                    _%parts55749%_)
                                                   (_%else5575755824%_
                                                    (lambda ()
                                                      (let* ((_%g5577555783%_
                                                              (lambda (_%g5577655779%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5577655779%_)))
                     (_%g5577455820%_
                      (lambda (_%g5577655787%_)
                        ((lambda (_%g5577755790%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5577755790%_
                                       (foldr (lambda (_%g5581155814%_
                                                       _%g5581255817%_)
                                                (cons _%g5581155814%_
                                                      _%g5581255817%_))
                                              '()
                                              _%g5551155696%_))))
                         _%g5577655787%_))))
                (_%g5577455820%_ _%object55752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5575956003%_
                                                    (lambda (_%rest55828%_
                                                             _%part55830%_)
                                                      (if (and (not _%nil-check?55754%_)
                                                               (let ((__tmp97767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55830%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp97767)))
                  (let ((_%str55834%_ (symbol->string _%part55830%_)))
                    (_%loop55746%_
                     (cons (let ((__tmp97768
                                  (substring
                                   _%str55834%_
                                   '1
                                   (string-length _%str55834%_))))
                             (declare (not safe))
                             (##string->symbol __tmp97768))
                           _%rest55828%_)
                     _%type55751%_
                     _%object55752%_
                     _%checked-method?55753%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55751%_))
                      (let* ((_%g5583955854%_
                              (lambda (_%g5584055850%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5584055850%_)))
                             (_%g5583855923%_
                              (lambda (_%g5584055858%_)
                                (if (gx#stx-pair? _%g5584055858%_)
                                    (let ((_%e5584355861%_
                                           (gx#syntax-e _%g5584055858%_)))
                                      (let ((_%hd5584455865%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5584355861%_)))
                                            (_%tl5584555868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5584355861%_))))
                                        (if (gx#stx-pair? _%tl5584555868%_)
                                            (let ((_%e5584655871%_
                                                   (gx#syntax-e
                                                    _%tl5584555868%_)))
                                              (let ((_%hd5584755875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5584655871%_)))
                                                    (_%tl5584855878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5584655871%_))))
                                                (if (gx#stx-null?
                                                     _%tl5584855878%_)
                                                    ((lambda (_%g5584155881%_
                                                              _%g5584255883%_)
                                                       (if (null? _%rest55828%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5584155881%_
                                     (cons _%g5584255883%_ '()))
                               (foldr (lambda (_%g5590255905%_ _%g5590355908%_)
                                        (cons _%g5590255905%_ _%g5590355908%_))
                                      '()
                                      _%g5551155696%_)))
                   (let ((_%$e55911%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55751%_
                           _%part55830%_)))
                     (if _%$e55911%_
                         ((lambda (_%slot-type55915%_)
                            (let ((_%slot-type55918%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55487%_
                                      _%slot-type55915%_))))
                              (_%loop55746%_
                               _%rest55828%_
                               _%slot-type55918%_
                               (cons _%g5584155881%_
                                     (cons _%g5584255883%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55751%_
                                _%part55830%_)
                               '#f)))
                          _%$e55911%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55487%_
                          _%g5551255698%_
                          _%part55830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5584755875%_
                                                     _%hd5584455865%_)
                                                    (_%g5583955854%_
                                                     _%g5584055858%_))))
                                            (_%g5583955854%_
                                             _%g5584055858%_))))
                                    (_%g5583955854%_ _%g5584055858%_)))))
                        (_%g5583855923%_
                         (list (if _%nil-check?55754%_
                                   (cons 'check-nil!
                                         (cons _%object55752%_ '()))
                                   _%object55752%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55487%_
                                _%type55751%_
                                _%part55830%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55751%_))
                          (if (null? _%rest55828%_)
                              (let* ((_%g5592955944%_
                                      (lambda (_%g5593055940%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5593055940%_)))
                                     (_%g5592855997%_
                                      (lambda (_%g5593055948%_)
                                        (if (gx#stx-pair? _%g5593055948%_)
                                            (let ((_%e5593355951%_
                                                   (gx#syntax-e
                                                    _%g5593055948%_)))
                                              (let ((_%hd5593455955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5593355951%_)))
                                                    (_%tl5593555958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5593355951%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5593555958%_)
                                                    (let ((_%e5593655961%_
                                                           (gx#syntax-e
                                                            _%tl5593555958%_)))
                                                      (let ((_%hd5593755965%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5593655961%_)))
                    (_%tl5593855968%_
                     (let () (declare (not safe)) (##cdr _%e5593655961%_))))
                (if (gx#stx-null? _%tl5593855968%_)
                    ((lambda (_%g5593155971%_ _%g5593255973%_)
                       (cons _%g5593155971%_
                             (cons _%g5593255973%_
                                   (foldr (lambda (_%g5598855991%_
                                                   _%g5598955994%_)
                                            (cons _%g5598855991%_
                                                  _%g5598955994%_))
                                          '()
                                          _%g5551155696%_))))
                     _%hd5593755965%_
                     _%hd5593455955%_)
                    (_%g5592955944%_ _%g5593055948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5592955944%_
                                                     _%g5593055948%_))))
                                            (_%g5592955944%_
                                             _%g5593055948%_)))))
                                (_%g5592855997%_
                                 (list (if _%nil-check?55754%_
                                           (cons 'check-nil!
                                                 (cons _%object55752%_ '()))
                                           _%object55752%_)
                                       (gx#stx-identifier
                                        _%g5551255698%_
                                        (if _%checked-method?55753%_ '"" '"&")
                                        (let ((__obj97563 _%type55751%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj97563
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj97563
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj97563
                                               'name)))
                                        '"-"
                                        _%part55830%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55487%_
                               _%g5551255698%_
                               _%part55830%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55487%_
                           _%type55751%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5575555763%_)
                                                  (let ((_%hd5576056007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5575555763%_)))
                                                        (_%tl5576156010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5575555763%_))))
                                                    (let* ((_%part56013%_
                                                            _%hd5576056007%_)
                                                           (_%rest56016%_
                                                            _%tl5576156010%_))
                                                      (_%K5575956003%_
                                                       _%rest56016%_
                                                       _%part56013%_)))
                                                  (_%else5575755824%_)))))
                                        _%$e55739%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5551255698%_
                                                   (foldr (lambda (_%g5602056023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5602156026%_)
                    (cons _%g5602056023%_ _%g5602156026%_))
                  '()
                  _%g5551155696%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5571855725%_)
                             (let ((_%hd5572256033%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5571855725%_)))
                                   (_%tl5572356036%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5571855725%_))))
                               (let* ((_%var56039%_ _%hd5572256033%_)
                                      (_%parts56042%_ _%tl5572356036%_))
                                 (_%K5572156029%_
                                  _%parts56042%_
                                  _%var56039%_)))
                             (_%E5572055731%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5551255698%_
                                   (foldr (lambda (_%g5604456047%_
                                                   _%g5604556050%_)
                                            (cons _%g5604456047%_
                                                  _%g5604556050%_))
                                          '()
                                          _%g5551155696%_))))))
                (_%__kont9244192442%_
                 (lambda (_%g5553455597%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5561255615%_ _%g5561355618%_)
                                  (cons _%g5561255615%_ _%g5561355618%_))
                                '()
                                _%g5553455597%_)))))
            (let* ((_%__match9251792518%_
                    (lambda (_%e5553555559%_
                             _%hd5553655563%_
                             _%tl5553755566%_
                             _%__splice9244392444%_
                             _%target5553855569%_
                             _%tl5554055572%_)
                      (letrec ((_%loop5554155575%_
                                (lambda (_%hd5553955579%_ _%arg5554555582%_)
                                  (if (gx#stx-pair? _%hd5553955579%_)
                                      (let ((_%e5554255584%_
                                             (gx#syntax-e _%hd5553955579%_)))
                                        (let ((_%lp-tl5554455591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5554255584%_)))
                                              (_%lp-hd5554355588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5554255584%_))))
                                          (_%loop5554155575%_
                                           _%lp-tl5554455591%_
                                           (cons _%lp-hd5554355588%_
                                                 _%arg5554555582%_))))
                                      (let ((_%arg5554655594%_
                                             (reverse _%arg5554555582%_)))
                                        (_%__kont9244192442%_
                                         _%arg5554655594%_))))))
                        (_%loop5554155575%_ _%target5553855569%_ '()))))
                   (_%__match9250392504%_
                    (lambda (_%e5551355628%_
                             _%hd5551455632%_
                             _%tl5551555635%_
                             _%e5551655638%_
                             _%hd5551755642%_
                             _%tl5551855645%_
                             _%e5551955648%_
                             _%hd5552055652%_
                             _%tl5552155655%_
                             _%e5552255658%_
                             _%hd5552355662%_
                             _%tl5552455665%_
                             _%__splice9243992440%_
                             _%target5552555668%_
                             _%tl5552755671%_)
                      (letrec ((_%loop5552855674%_
                                (lambda (_%hd5552655678%_ _%rand5553255681%_)
                                  (if (gx#stx-pair? _%hd5552655678%_)
                                      (let ((_%e5552955683%_
                                             (gx#syntax-e _%hd5552655678%_)))
                                        (let ((_%lp-tl5553155690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5552955683%_)))
                                              (_%lp-hd5553055687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5552955683%_))))
                                          (_%loop5552855674%_
                                           _%lp-tl5553155690%_
                                           (cons _%lp-hd5553055687%_
                                                 _%rand5553255681%_))))
                                      (let ((_%rand5553355693%_
                                             (reverse _%rand5553255681%_)))
                                        (_%__kont9243792438%_
                                         _%rand5553355693%_
                                         _%hd5552355662%_))))))
                        (_%loop5552855674%_ _%target5552555668%_ '()))))
                   (_%__match9247792478%_
                    (lambda (_%e5551355628%_
                             _%hd5551455632%_
                             _%tl5551555635%_
                             _%e5551655638%_
                             _%hd5551755642%_
                             _%tl5551855645%_)
                      (if (gx#stx-pair? _%hd5551755642%_)
                          (let ((_%e5551955648%_
                                 (gx#syntax-e _%hd5551755642%_)))
                            (let ((_%tl5552155655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5551955648%_)))
                                  (_%hd5552055652%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5551955648%_))))
                              (if (gx#identifier? _%hd5552055652%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97769_|
                                       _%hd5552055652%_)
                                      (if (gx#stx-pair? _%tl5552155655%_)
                                          (let ((_%e5552255658%_
                                                 (gx#syntax-e
                                                  _%tl5552155655%_)))
                                            (let ((_%tl5552455665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5552255658%_)))
                                                  (_%hd5552355662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5552255658%_))))
                                              (if (gx#stx-null?
                                                   _%tl5552455665%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5551855645%_)
                                                      (let ((_%__splice9243992440%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5551855645%_
                                                              '0)))
                                                        (let ((_%tl5552755671%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9243992440%_ '1)))
                      (_%target5552555668%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9243992440%_ '0))))
                  (if (gx#stx-null? _%tl5552755671%_)
                      (_%__match9250392504%_
                       _%e5551355628%_
                       _%hd5551455632%_
                       _%tl5551555635%_
                       _%e5551655638%_
                       _%hd5551755642%_
                       _%tl5551855645%_
                       _%e5551955648%_
                       _%hd5552055652%_
                       _%tl5552155655%_
                       _%e5552255658%_
                       _%hd5552355662%_
                       _%tl5552455665%_
                       _%__splice9243992440%_
                       _%target5552555668%_
                       _%tl5552755671%_)
                      (if (gx#stx-pair/null? _%tl5551555635%_)
                          (let ((_%__splice9244392444%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5551555635%_
                                  '0)))
                            (let ((_%tl5554055572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9244392444%_ '1)))
                                  (_%target5553855569%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9244392444%_
                                      '0))))
                              (if (gx#stx-null? _%tl5554055572%_)
                                  (_%__match9251792518%_
                                   _%e5551355628%_
                                   _%hd5551455632%_
                                   _%tl5551555635%_
                                   _%__splice9244392444%_
                                   _%target5553855569%_
                                   _%tl5554055572%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5549255552%_)))))
                          (let () (declare (not safe)) (_%g5549255552%_))))))
              (if (gx#stx-pair/null? _%tl5551555635%_)
                  (let ((_%__splice9244392444%_
                         (gx#syntax-split-splice->vector _%tl5551555635%_ '0)))
                    (let ((_%tl5554055572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9244392444%_ '1)))
                          (_%target5553855569%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9244392444%_ '0))))
                      (if (gx#stx-null? _%tl5554055572%_)
                          (_%__match9251792518%_
                           _%e5551355628%_
                           _%hd5551455632%_
                           _%tl5551555635%_
                           _%__splice9244392444%_
                           _%target5553855569%_
                           _%tl5554055572%_)
                          (let () (declare (not safe)) (_%g5549255552%_)))))
                  (let () (declare (not safe)) (_%g5549255552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5551555635%_)
                                                      (let ((_%__splice9244392444%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5551555635%_
                                                              '0)))
                                                        (let ((_%tl5554055572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9244392444%_ '1)))
                      (_%target5553855569%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9244392444%_ '0))))
                  (if (gx#stx-null? _%tl5554055572%_)
                      (_%__match9251792518%_
                       _%e5551355628%_
                       _%hd5551455632%_
                       _%tl5551555635%_
                       _%__splice9244392444%_
                       _%target5553855569%_
                       _%tl5554055572%_)
                      (let () (declare (not safe)) (_%g5549255552%_)))))
              (let () (declare (not safe)) (_%g5549255552%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5551555635%_)
                                              (let ((_%__splice9244392444%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5551555635%_
                                                      '0)))
                                                (let ((_%tl5554055572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9244392444%_
                                                          '1)))
                                                      (_%target5553855569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9244392444%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5554055572%_)
                                                      (_%__match9251792518%_
                                                       _%e5551355628%_
                                                       _%hd5551455632%_
                                                       _%tl5551555635%_
                                                       _%__splice9244392444%_
                                                       _%target5553855569%_
                                                       _%tl5554055572%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5549255552%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5549255552%_))))
                                      (if (gx#stx-pair/null? _%tl5551555635%_)
                                          (let ((_%__splice9244392444%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5551555635%_
                                                  '0)))
                                            (let ((_%tl5554055572%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9244392444%_
                                                      '1)))
                                                  (_%target5553855569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9244392444%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5554055572%_)
                                                  (_%__match9251792518%_
                                                   _%e5551355628%_
                                                   _%hd5551455632%_
                                                   _%tl5551555635%_
                                                   _%__splice9244392444%_
                                                   _%target5553855569%_
                                                   _%tl5554055572%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549255552%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5549255552%_))))
                                  (if (gx#stx-pair/null? _%tl5551555635%_)
                                      (let ((_%__splice9244392444%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5551555635%_
                                              '0)))
                                        (let ((_%tl5554055572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9244392444%_
                                                  '1)))
                                              (_%target5553855569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9244392444%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5554055572%_)
                                              (_%__match9251792518%_
                                               _%e5551355628%_
                                               _%hd5551455632%_
                                               _%tl5551555635%_
                                               _%__splice9244392444%_
                                               _%target5553855569%_
                                               _%tl5554055572%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5549255552%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549255552%_))))))
                          (if (gx#stx-pair/null? _%tl5551555635%_)
                              (let ((_%__splice9244392444%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5551555635%_
                                      '0)))
                                (let ((_%tl5554055572%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9244392444%_
                                          '1)))
                                      (_%target5553855569%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9244392444%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5554055572%_)
                                      (_%__match9251792518%_
                                       _%e5551355628%_
                                       _%hd5551455632%_
                                       _%tl5551555635%_
                                       _%__splice9244392444%_
                                       _%target5553855569%_
                                       _%tl5554055572%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549255552%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5549255552%_))))))
                   (_%__match9246592466%_
                    (lambda (_%e5549656060%_
                             _%hd5549756064%_
                             _%tl5549856067%_
                             _%e5549956070%_
                             _%hd5550056074%_
                             _%tl5550156077%_
                             _%__splice9243592436%_
                             _%target5550256080%_
                             _%tl5550456083%_)
                      (letrec ((_%loop5550556086%_
                                (lambda (_%hd5550356090%_ _%rand5550956093%_)
                                  (if (gx#stx-pair? _%hd5550356090%_)
                                      (let ((_%e5550656095%_
                                             (gx#syntax-e _%hd5550356090%_)))
                                        (let ((_%lp-tl5550856102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5550656095%_)))
                                              (_%lp-hd5550756099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5550656095%_))))
                                          (_%loop5550556086%_
                                           _%lp-tl5550856102%_
                                           (cons _%lp-hd5550756099%_
                                                 _%rand5550956093%_))))
                                      (let ((_%rand5551056105%_
                                             (reverse _%rand5550956093%_)))
                                        (let ((_%g5549456108%_
                                               _%rand5551056105%_)
                                              (_%g5549556110%_
                                               _%hd5550056074%_))
                                          (if (gx#identifier? _%g5549556110%_)
                                              (_%__kont9243392434%_
                                               _%g5549456108%_
                                               _%g5549556110%_)
                                              (_%__match9247792478%_
                                               _%e5549656060%_
                                               _%hd5549756064%_
                                               _%tl5549856067%_
                                               _%e5549956070%_
                                               _%hd5550056074%_
                                               _%tl5550156077%_))))))))
                        (_%loop5550556086%_ _%target5550256080%_ '())))))
              (if (gx#stx-pair? _%__stx9243092431%_)
                  (let ((_%e5549656060%_ (gx#syntax-e _%__stx9243092431%_)))
                    (let ((_%tl5549856067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5549656060%_)))
                          (_%hd5549756064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5549656060%_))))
                      (if (gx#stx-pair? _%tl5549856067%_)
                          (let ((_%e5549956070%_
                                 (gx#syntax-e _%tl5549856067%_)))
                            (let ((_%tl5550156077%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5549956070%_)))
                                  (_%hd5550056074%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5549956070%_))))
                              (if (gx#stx-pair/null? _%tl5550156077%_)
                                  (let ((_%__splice9243592436%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5550156077%_
                                          '0)))
                                    (let ((_%tl5550456083%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9243592436%_
                                              '1)))
                                          (_%target5550256080%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9243592436%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5550456083%_)
                                          (_%__match9246592466%_
                                           _%e5549656060%_
                                           _%hd5549756064%_
                                           _%tl5549856067%_
                                           _%e5549956070%_
                                           _%hd5550056074%_
                                           _%tl5550156077%_
                                           _%__splice9243592436%_
                                           _%target5550256080%_
                                           _%tl5550456083%_)
                                          (if (gx#stx-pair? _%hd5550056074%_)
                                              (let ((_%e5551955648%_
                                                     (gx#syntax-e
                                                      _%hd5550056074%_)))
                                                (let ((_%tl5552155655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5551955648%_)))
                                                      (_%hd5552055652%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5551955648%_))))
                                                  (if (gx#identifier?
                                                       _%hd5552055652%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97769_|
                                                           _%hd5552055652%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5552155655%_)
                                                              (let ((_%e5552255658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5552155655%_)))
                        (let ((_%tl5552455665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5552255658%_)))
                              (_%hd5552355662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5552255658%_))))
                          (if (gx#stx-pair/null? _%tl5549856067%_)
                              (let ((_%__splice9244392444%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5549856067%_
                                      '0)))
                                (let ((_%tl5554055572%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9244392444%_
                                          '1)))
                                      (_%target5553855569%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9244392444%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5554055572%_)
                                      (_%__match9251792518%_
                                       _%e5549656060%_
                                       _%hd5549756064%_
                                       _%tl5549856067%_
                                       _%__splice9244392444%_
                                       _%target5553855569%_
                                       _%tl5554055572%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549255552%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5549255552%_)))))
                      (if (gx#stx-pair/null? _%tl5549856067%_)
                          (let ((_%__splice9244392444%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5549856067%_
                                  '0)))
                            (let ((_%tl5554055572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9244392444%_ '1)))
                                  (_%target5553855569%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9244392444%_
                                      '0))))
                              (if (gx#stx-null? _%tl5554055572%_)
                                  (_%__match9251792518%_
                                   _%e5549656060%_
                                   _%hd5549756064%_
                                   _%tl5549856067%_
                                   _%__splice9244392444%_
                                   _%target5553855569%_
                                   _%tl5554055572%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5549255552%_)))))
                          (let () (declare (not safe)) (_%g5549255552%_))))
                  (if (gx#stx-pair/null? _%tl5549856067%_)
                      (let ((_%__splice9244392444%_
                             (gx#syntax-split-splice->vector
                              _%tl5549856067%_
                              '0)))
                        (let ((_%tl5554055572%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9244392444%_ '1)))
                              (_%target5553855569%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9244392444%_ '0))))
                          (if (gx#stx-null? _%tl5554055572%_)
                              (_%__match9251792518%_
                               _%e5549656060%_
                               _%hd5549756064%_
                               _%tl5549856067%_
                               _%__splice9244392444%_
                               _%target5553855569%_
                               _%tl5554055572%_)
                              (let ()
                                (declare (not safe))
                                (_%g5549255552%_)))))
                      (let () (declare (not safe)) (_%g5549255552%_))))
              (if (gx#stx-pair/null? _%tl5549856067%_)
                  (let ((_%__splice9244392444%_
                         (gx#syntax-split-splice->vector _%tl5549856067%_ '0)))
                    (let ((_%tl5554055572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9244392444%_ '1)))
                          (_%target5553855569%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9244392444%_ '0))))
                      (if (gx#stx-null? _%tl5554055572%_)
                          (_%__match9251792518%_
                           _%e5549656060%_
                           _%hd5549756064%_
                           _%tl5549856067%_
                           _%__splice9244392444%_
                           _%target5553855569%_
                           _%tl5554055572%_)
                          (let () (declare (not safe)) (_%g5549255552%_)))))
                  (let () (declare (not safe)) (_%g5549255552%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5549856067%_)
                                                  (let ((_%__splice9244392444%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5549856067%_
                                                          '0)))
                                                    (let ((_%tl5554055572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9244392444%_
                                                              '1)))
                                                          (_%target5553855569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9244392444%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5554055572%_)
                                                          (_%__match9251792518%_
                                                           _%e5549656060%_
                                                           _%hd5549756064%_
                                                           _%tl5549856067%_
                                                           _%__splice9244392444%_
                                                           _%target5553855569%_
                                                           _%tl5554055572%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5549255552%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549255552%_)))))))
                                  (if (gx#stx-pair? _%hd5550056074%_)
                                      (let ((_%e5551955648%_
                                             (gx#syntax-e _%hd5550056074%_)))
                                        (let ((_%tl5552155655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5551955648%_)))
                                              (_%hd5552055652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5551955648%_))))
                                          (if (gx#identifier? _%hd5552055652%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g97769_|
                                                   _%hd5552055652%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5552155655%_)
                                                      (let ((_%e5552255658%_
                                                             (gx#syntax-e
                                                              _%tl5552155655%_)))
                                                        (let ((_%tl5552455665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5552255658%_)))
                      (_%hd5552355662%_
                       (let () (declare (not safe)) (##car _%e5552255658%_))))
                  (if (gx#stx-pair/null? _%tl5549856067%_)
                      (let ((_%__splice9244392444%_
                             (gx#syntax-split-splice->vector
                              _%tl5549856067%_
                              '0)))
                        (let ((_%tl5554055572%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9244392444%_ '1)))
                              (_%target5553855569%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9244392444%_ '0))))
                          (if (gx#stx-null? _%tl5554055572%_)
                              (_%__match9251792518%_
                               _%e5549656060%_
                               _%hd5549756064%_
                               _%tl5549856067%_
                               _%__splice9244392444%_
                               _%target5553855569%_
                               _%tl5554055572%_)
                              (let ()
                                (declare (not safe))
                                (_%g5549255552%_)))))
                      (let () (declare (not safe)) (_%g5549255552%_)))))
              (if (gx#stx-pair/null? _%tl5549856067%_)
                  (let ((_%__splice9244392444%_
                         (gx#syntax-split-splice->vector _%tl5549856067%_ '0)))
                    (let ((_%tl5554055572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9244392444%_ '1)))
                          (_%target5553855569%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9244392444%_ '0))))
                      (if (gx#stx-null? _%tl5554055572%_)
                          (_%__match9251792518%_
                           _%e5549656060%_
                           _%hd5549756064%_
                           _%tl5549856067%_
                           _%__splice9244392444%_
                           _%target5553855569%_
                           _%tl5554055572%_)
                          (let () (declare (not safe)) (_%g5549255552%_)))))
                  (let () (declare (not safe)) (_%g5549255552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5549856067%_)
                                                      (let ((_%__splice9244392444%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5549856067%_
                                                              '0)))
                                                        (let ((_%tl5554055572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9244392444%_ '1)))
                      (_%target5553855569%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9244392444%_ '0))))
                  (if (gx#stx-null? _%tl5554055572%_)
                      (_%__match9251792518%_
                       _%e5549656060%_
                       _%hd5549756064%_
                       _%tl5549856067%_
                       _%__splice9244392444%_
                       _%target5553855569%_
                       _%tl5554055572%_)
                      (let () (declare (not safe)) (_%g5549255552%_)))))
              (let () (declare (not safe)) (_%g5549255552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5549856067%_)
                                                  (let ((_%__splice9244392444%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5549856067%_
                                                          '0)))
                                                    (let ((_%tl5554055572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9244392444%_
                                                              '1)))
                                                          (_%target5553855569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9244392444%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5554055572%_)
                                                          (_%__match9251792518%_
                                                           _%e5549656060%_
                                                           _%hd5549756064%_
                                                           _%tl5549856067%_
                                                           _%__splice9244392444%_
                                                           _%target5553855569%_
                                                           _%tl5554055572%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5549255552%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549255552%_))))))
                                      (if (gx#stx-pair/null? _%tl5549856067%_)
                                          (let ((_%__splice9244392444%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5549856067%_
                                                  '0)))
                                            (let ((_%tl5554055572%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9244392444%_
                                                      '1)))
                                                  (_%target5553855569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9244392444%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5554055572%_)
                                                  (_%__match9251792518%_
                                                   _%e5549656060%_
                                                   _%hd5549756064%_
                                                   _%tl5549856067%_
                                                   _%__splice9244392444%_
                                                   _%target5553855569%_
                                                   _%tl5554055572%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549255552%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5549255552%_)))))))
                          (if (gx#stx-pair/null? _%tl5549856067%_)
                              (let ((_%__splice9244392444%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5549856067%_
                                      '0)))
                                (let ((_%tl5554055572%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9244392444%_
                                          '1)))
                                      (_%target5553855569%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9244392444%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5554055572%_)
                                      (_%__match9251792518%_
                                       _%e5549656060%_
                                       _%hd5549756064%_
                                       _%tl5549856067%_
                                       _%__splice9244392444%_
                                       _%target5553855569%_
                                       _%tl5554055572%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549255552%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5549255552%_))))))
                  (let () (declare (not safe)) (_%g5549255552%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56142%_)
        (let* ((_%__stx9252092521%_ _%stx56142%_)
               (_%g5614656167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9252092521%_))))
          (let ((_%__kont9252392524%_
                 (lambda (_%g5614856235%_)
                   (let* ((_%g5624756254%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56142%_
                            _%g5614856235%_))
                          (_%E5624956260%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5624756254%_
                                    '([var . parts]))
                             (void)))
                          (_%K5625056476%_
                           (lambda (_%parts56264%_ _%var56266%_)
                             (let ((_%$e56268%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56266%_))))
                               (if _%$e56268%_
                                   ((lambda (_%te56272%_)
                                      (let _%loop56275%_ ((_%parts56278%_
                                                           _%parts56264%_)
                                                          (_%type56280%_
                                                           (##direct-structure-ref
                                                            _%te56272%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56281%_
                                                           _%var56266%_)
                                                          (_%nil-check?56282%_
                                                           '#f))
                                        (let* ((_%parts5628356291%_
                                                _%parts56278%_)
                                               (_%else5628556303%_
                                                (lambda () _%object56281%_))
                                               (_%K5628756458%_
                                                (lambda (_%rest56307%_
                                                         _%part56309%_)
                                                  (if (and (not _%nil-check?56282%_)
                                                           (let ((__tmp97770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56309%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp97770)))
              (let ((_%str56313%_ (symbol->string _%part56309%_)))
                (_%loop56275%_
                 (cons (let ((__tmp97771
                              (substring
                               _%str56313%_
                               '1
                               (string-length _%str56313%_))))
                         (declare (not safe))
                         (##string->symbol __tmp97771))
                       _%rest56307%_)
                 _%type56280%_
                 _%object56281%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56280%_))
                  (let* ((_%g5631856333%_
                          (lambda (_%g5631956329%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5631956329%_)))
                         (_%g5631756450%_
                          (lambda (_%g5631956337%_)
                            (if (gx#stx-pair? _%g5631956337%_)
                                (let ((_%e5632256340%_
                                       (gx#syntax-e _%g5631956337%_)))
                                  (let ((_%hd5632356344%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5632256340%_)))
                                        (_%tl5632456347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5632256340%_))))
                                    (if (gx#stx-pair? _%tl5632456347%_)
                                        (let ((_%e5632556350%_
                                               (gx#syntax-e _%tl5632456347%_)))
                                          (let ((_%hd5632656354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5632556350%_)))
                                                (_%tl5632756357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5632556350%_))))
                                            (if (gx#stx-null? _%tl5632756357%_)
                                                ((lambda (_%g5632056360%_
                                                          _%g5632156362%_)
                                                   (if (null? _%rest56307%_)
                                                       (let ((_%$e56392%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56280%_
                                                               _%part56309%_)))
                                                         (if _%$e56392%_
                                                             ((lambda (_%slot-type56396%_)
                                                                (let* ((_%g5639956407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5640056403%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5640056403%_)))
                               (_%g5639856430%_
                                (lambda (_%g5640056411%_)
                                  ((lambda (_%g5640156414%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5640156414%_
                                                             '()))
                                                 (cons (cons _%g5632056360%_
                                                             (cons _%g5632156362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5640056411%_))))
                          (_%g5639856430%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56142%_
                              _%slot-type56396%_)))))
                      _%$e56392%_)
                     (if _%nil-check?56282%_
                         (cons _%g5632056360%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5632156362%_ '()))
                                     '()))
                         (cons _%g5632056360%_ (cons _%g5632156362%_ '())))))
               (let ((_%$e56438%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56280%_
                       _%part56309%_)))
                 (if _%$e56438%_
                     ((lambda (_%type56442%_)
                        (let ((_%type56445%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56142%_
                                  _%type56442%_))))
                          (if _%nil-check?56282%_
                              (_%loop56275%_
                               _%rest56307%_
                               _%type56445%_
                               (cons _%g5632056360%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5632156362%_ '()))
                                           '()))
                               '#f)
                              (_%loop56275%_
                               _%rest56307%_
                               _%type56445%_
                               (cons _%g5632056360%_
                                     (cons _%g5632156362%_ '()))
                               '#f))))
                      _%$e56438%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56142%_
                      _%g5614856235%_
                      _%part56309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5632656354%_
                                                 _%hd5632356344%_)
                                                (_%g5631856333%_
                                                 _%g5631956337%_))))
                                        (_%g5631856333%_ _%g5631956337%_))))
                                (_%g5631856333%_ _%g5631956337%_)))))
                    (_%g5631756450%_
                     (list (if _%nil-check?56282%_
                               (cons 'check-nil! (cons _%object56281%_ '()))
                               _%object56281%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56142%_
                            _%type56280%_
                            _%part56309%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56280%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56142%_
                       _%type56280%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5628356291%_)
                                              (let ((_%hd5628856462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5628356291%_)))
                                                    (_%tl5628956465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5628356291%_))))
                                                (let* ((_%part56468%_
                                                        _%hd5628856462%_)
                                                       (_%rest56471%_
                                                        _%tl5628956465%_))
                                                  (_%K5628756458%_
                                                   _%rest56471%_
                                                   _%part56468%_)))
                                              (_%else5628556303%_)))))
                                    _%$e56268%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5614856235%_ '())))))))
                     (if (pair? _%g5624756254%_)
                         (let ((_%hd5625156480%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5624756254%_)))
                               (_%tl5625256483%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5624756254%_))))
                           (let* ((_%var56486%_ _%hd5625156480%_)
                                  (_%parts56489%_ _%tl5625256483%_))
                             (_%K5625056476%_ _%parts56489%_ _%var56486%_)))
                         (_%E5624956260%_)))))
                (_%__kont9252592526%_
                 (lambda (_%g5615556194%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5615556194%_ '())))))
            (let ((_%__match9254192542%_
                   (lambda (_%e5614956215%_
                            _%hd5615056219%_
                            _%tl5615156222%_
                            _%e5615256225%_
                            _%hd5615356229%_
                            _%tl5615456232%_)
                     (let ((_%g5614856235%_ _%hd5615356229%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5614856235%_)
                           (_%__kont9252392524%_ _%g5614856235%_)
                           (_%__kont9252592526%_ _%hd5615356229%_))))))
              (if (gx#stx-pair? _%__stx9252092521%_)
                  (let ((_%e5614956215%_ (gx#syntax-e _%__stx9252092521%_)))
                    (let ((_%tl5615156222%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5614956215%_)))
                          (_%hd5615056219%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5614956215%_))))
                      (if (gx#stx-pair? _%tl5615156222%_)
                          (let ((_%e5615256225%_
                                 (gx#syntax-e _%tl5615156222%_)))
                            (let ((_%tl5615456232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5615256225%_)))
                                  (_%hd5615356229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5615256225%_))))
                              (if (gx#stx-null? _%tl5615456232%_)
                                  (_%__match9254192542%_
                                   _%e5614956215%_
                                   _%hd5615056219%_
                                   _%tl5615156222%_
                                   _%e5615256225%_
                                   _%hd5615356229%_
                                   _%tl5615456232%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5614656167%_)))))
                          (let () (declare (not safe)) (_%g5614656167%_)))))
                  (let () (declare (not safe)) (_%g5614656167%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56496%_)
        (let* ((_%__stx9255892559%_ _%stx56496%_)
               (_%g5650056529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9255892559%_))))
          (let ((_%__kont9256192562%_
                 (lambda (_%g5650256621%_ _%g5650356623%_)
                   (let* ((_%g5663756644%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56496%_
                            _%g5650356623%_))
                          (_%E5663956650%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5663756644%_
                                    '([var . parts]))
                             (void)))
                          (_%K5664056880%_
                           (lambda (_%parts56654%_ _%var56656%_)
                             (let ((_%$e56658%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56656%_))))
                               (if _%$e56658%_
                                   ((lambda (_%te56662%_)
                                      (let _%loop56665%_ ((_%parts56668%_
                                                           _%parts56654%_)
                                                          (_%type56670%_
                                                           (##direct-structure-ref
                                                            _%te56662%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56671%_
                                                           _%var56656%_)
                                                          (_%checked-mutator?56672%_
                                                           (##direct-structure-ref
                                                            _%te56662%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56673%_
                                                           '#f))
                                        (let* ((_%parts5667456681%_
                                                _%parts56668%_)
                                               (_%E5667656687%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5667456681%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5667756862%_
                                                (lambda (_%rest56691%_
                                                         _%part56693%_)
                                                  (if (and (not _%nil-check?56673%_)
                                                           (let ((__tmp97772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56693%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp97772)))
              (let ((_%str56697%_ (symbol->string _%part56693%_)))
                (_%loop56665%_
                 (cons (let ((__tmp97773
                              (substring
                               _%str56697%_
                               '1
                               (string-length _%str56697%_))))
                         (declare (not safe))
                         (##string->symbol __tmp97773))
                       _%rest56691%_)
                 _%type56670%_
                 _%object56671%_
                 _%checked-mutator?56672%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56670%_))
                  (if (null? _%rest56691%_)
                      (let* ((_%g5670456719%_
                              (lambda (_%g5670556715%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5670556715%_)))
                             (_%g5670356776%_
                              (lambda (_%g5670556723%_)
                                (if (gx#stx-pair? _%g5670556723%_)
                                    (let ((_%e5670856726%_
                                           (gx#syntax-e _%g5670556723%_)))
                                      (let ((_%hd5670956730%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5670856726%_)))
                                            (_%tl5671056733%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5670856726%_))))
                                        (if (gx#stx-pair? _%tl5671056733%_)
                                            (let ((_%e5671156736%_
                                                   (gx#syntax-e
                                                    _%tl5671056733%_)))
                                              (let ((_%hd5671256740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5671156736%_)))
                                                    (_%tl5671356743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5671156736%_))))
                                                (if (gx#stx-null?
                                                     _%tl5671356743%_)
                                                    ((lambda (_%g5670656746%_
                                                              _%g5670756748%_)
                                                       (if _%nil-check?56673%_
                                                           (cons _%g5670656746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5670756748%_ '()))
                               (cons _%g5650256621%_ '())))
                   (cons _%g5670656746%_
                         (cons _%g5670756748%_ (cons _%g5650256621%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5671256740%_
                                                     _%hd5670956730%_)
                                                    (_%g5670456719%_
                                                     _%g5670556723%_))))
                                            (_%g5670456719%_
                                             _%g5670556723%_))))
                                    (_%g5670456719%_ _%g5670556723%_)))))
                        (_%g5670356776%_
                         (list _%object56671%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56496%_
                                _%type56670%_
                                _%part56693%_
                                (if _%checked-mutator?56672%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56670%_
                                     _%part56693%_)
                                    '#f)))))
                      (let ((_%$e56780%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56670%_
                              _%part56693%_)))
                        (if _%$e56780%_
                            ((lambda (_%type56784%_)
                               (let* ((_%type56787%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56496%_
                                          _%type56784%_)))
                                      (_%g5679056805%_
                                       (lambda (_%g5679156801%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5679156801%_)))
                                      (_%g5678956852%_
                                       (lambda (_%g5679156809%_)
                                         (if (gx#stx-pair? _%g5679156809%_)
                                             (let ((_%e5679456812%_
                                                    (gx#syntax-e
                                                     _%g5679156809%_)))
                                               (let ((_%hd5679556816%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5679456812%_)))
                                                     (_%tl5679656819%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5679456812%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5679656819%_)
                                                     (let ((_%e5679756822%_
                                                            (gx#syntax-e
                                                             _%tl5679656819%_)))
                                                       (let ((_%hd5679856826%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5679756822%_)))
                     (_%tl5679956829%_
                      (let () (declare (not safe)) (##cdr _%e5679756822%_))))
                 (if (gx#stx-null? _%tl5679956829%_)
                     ((lambda (_%g5679256832%_ _%g5679356834%_)
                        (_%loop56665%_
                         _%rest56691%_
                         _%type56787%_
                         (cons _%g5679256832%_ (cons _%g5679356834%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56787%_
                          _%part56693%_)
                         '#f))
                      _%hd5679856826%_
                      _%hd5679556816%_)
                     (_%g5679056805%_ _%g5679156809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5679056805%_
                                                      _%g5679156809%_))))
                                             (_%g5679056805%_
                                              _%g5679156809%_)))))
                                 (_%g5678956852%_
                                  (list (if _%nil-check?56673%_
                                            (cons 'check-nil!
                                                  (cons _%object56671%_ '()))
                                            _%object56671%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56496%_
                                         _%type56787%_
                                         _%part56693%_)))))
                             _%$e56780%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56496%_
                             _%g5650356623%_
                             _%part56693%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56670%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56496%_
                       _%type56670%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5667456681%_)
                                              (let ((_%hd5667856866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5667456681%_)))
                                                    (_%tl5667956869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5667456681%_))))
                                                (let* ((_%part56872%_
                                                        _%hd5667856866%_)
                                                       (_%rest56875%_
                                                        _%tl5667956869%_))
                                                  (_%K5667756862%_
                                                   _%rest56875%_
                                                   _%part56872%_)))
                                              (_%E5667656687%_)))))
                                    _%$e56658%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56496%_)))))))
                     (if (pair? _%g5663756644%_)
                         (let ((_%hd5664156884%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5663756644%_)))
                               (_%tl5664256887%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5663756644%_))))
                           (let* ((_%var56890%_ _%hd5664156884%_)
                                  (_%parts56893%_ _%tl5664256887%_))
                             (_%K5664056880%_ _%parts56893%_ _%var56890%_)))
                         (_%E5663956650%_)))))
                (_%__kont9256392564%_
                 (lambda (_%g5651356566%_ _%g5651456568%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56496%_)))))
            (let ((_%__match9258592586%_
                   (lambda (_%e5650456591%_
                            _%hd5650556595%_
                            _%tl5650656598%_
                            _%e5650756601%_
                            _%hd5650856605%_
                            _%tl5650956608%_
                            _%e5651056611%_
                            _%hd5651156615%_
                            _%tl5651256618%_)
                     (let ((_%g5650256621%_ _%hd5651156615%_)
                           (_%g5650356623%_ _%hd5650856605%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5650356623%_)
                           (_%__kont9256192562%_
                            _%g5650256621%_
                            _%g5650356623%_)
                           (_%__kont9256392564%_
                            _%hd5651156615%_
                            _%hd5650856605%_))))))
              (if (gx#stx-pair? _%__stx9255892559%_)
                  (let ((_%e5650456591%_ (gx#syntax-e _%__stx9255892559%_)))
                    (let ((_%tl5650656598%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5650456591%_)))
                          (_%hd5650556595%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5650456591%_))))
                      (if (gx#stx-pair? _%tl5650656598%_)
                          (let ((_%e5650756601%_
                                 (gx#syntax-e _%tl5650656598%_)))
                            (let ((_%tl5650956608%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5650756601%_)))
                                  (_%hd5650856605%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5650756601%_))))
                              (if (gx#stx-pair? _%tl5650956608%_)
                                  (let ((_%e5651056611%_
                                         (gx#syntax-e _%tl5650956608%_)))
                                    (let ((_%tl5651256618%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5651056611%_)))
                                          (_%hd5651156615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5651056611%_))))
                                      (if (gx#stx-null? _%tl5651256618%_)
                                          (_%__match9258592586%_
                                           _%e5650456591%_
                                           _%hd5650556595%_
                                           _%tl5650656598%_
                                           _%e5650756601%_
                                           _%hd5650856605%_
                                           _%tl5650956608%_
                                           _%e5651056611%_
                                           _%hd5651156615%_
                                           _%tl5651256618%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5650056529%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5650056529%_)))))
                          (let () (declare (not safe)) (_%g5650056529%_)))))
                  (let () (declare (not safe)) (_%g5650056529%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g97740_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97741_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97742_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97745_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97746_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97749_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97750_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97751_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97752_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97756_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97757_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97758_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97759_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97763_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51237%_)
        (let* ((_%__stx9145691457%_ _%stx51237%_)
               (_%g5124651455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9145691457%_))))
          (let ((_%__kont9145991460%_
                 (lambda (_%g5124852347%_
                          _%g5124952349%_
                          _%g5125052350%_
                          _%g5125152351%_
                          _%g5125252352%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5125252352%_
                                     (cons _%g5125152351%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5125252352%_
                                                       (cons _%g5125052350%_
                                                             (cons _%g5124952349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5239552398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5239652401%_)
                  (cons _%g5239552398%_ _%g5239652401%_))
                '()
                _%g5124852347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9146391464%_
                 (lambda (_%g5128052193%_
                          _%g5128152195%_
                          _%g5128252196%_
                          _%g5128352197%_
                          _%g5128452198%_
                          _%g5128552199%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5128552199%_
                                     (cons _%g5128452198%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5128552199%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5128352197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5128552199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5128252196%_
                                       (cons _%g5128152195%_ '())))
                           (foldr (lambda (_%g5224352246%_ _%g5224452249%_)
                                    (cons _%g5224352246%_ _%g5224452249%_))
                                  '()
                                  _%g5128052193%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9146791468%_
                 (lambda (_%g5131952012%_
                          _%g5132052014%_
                          _%g5132152015%_
                          _%g5132252016%_)
                   (let ((_%meta52053%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51237%_
                             _%g5132052014%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52053%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5132252016%_
                                           (cons _%g5132152015%_
                                                 (cons _%g5132052014%_ '())))
                                     (foldr (lambda (_%g5205752060%_
                                                     _%g5205852063%_)
                                              (cons _%g5205752060%_
                                                    _%g5205852063%_))
                                            '()
                                            _%g5131952012%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52053%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5132252016%_
                                               (cons _%g5132152015%_
                                                     (cons _%g5132052014%_
                                                           '())))
                                         (foldr (lambda (_%g5206752070%_
                                                         _%g5206852073%_)
                                                  (cons _%g5206752070%_
                                                        _%g5206852073%_))
                                                '()
                                                _%g5131952012%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51237%_
                              _%g5132052014%_
                              _%meta52053%_))))))
                (_%__kont9147191472%_
                 (lambda (_%g5134751892%_ _%g5134851894%_ _%g5134951895%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5134951895%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5134851894%_ '())))
                               (foldr (lambda (_%g5191851921%_ _%g5191951924%_)
                                        (cons _%g5191851921%_ _%g5191951924%_))
                                      '()
                                      _%g5134751892%_)))))
                (_%__kont9147591476%_
                 (lambda (_%g5137451752%_
                          _%g5137551754%_
                          _%g5137651755%_
                          _%g5137751756%_
                          _%g5137851757%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5137851757%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5137751756%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5137851757%_
                                                       (cons _%g5137651755%_
                                                             (cons _%g5137551754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5179851801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5179951804%_)
                  (cons _%g5179851801%_ _%g5179951804%_))
                '()
                _%g5137451752%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9147991480%_
                 (lambda (_%g5140951612%_
                          _%g5141051614%_
                          _%g5141151615%_
                          _%g5141251616%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5141251616%_ _%g5141151615%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5141051614%_
                                                 (foldr (lambda (_%g5163851641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5163951644%_)
                  (cons _%g5163851641%_ _%g5163951644%_))
                '()
                _%g5140951612%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9148391484%_
                 (lambda (_%g5143451510%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5152851531%_ _%g5152951534%_)
                                        (cons _%g5152851531%_ _%g5152951534%_))
                                      '()
                                      _%g5143451510%_))))))
            (let* ((_%__match9178991790%_
                    (lambda (_%e5143551462%_
                             _%hd5143651466%_
                             _%tl5143751469%_
                             _%e5143851472%_
                             _%hd5143951476%_
                             _%tl5144051479%_
                             _%__splice9148591486%_
                             _%target5144151482%_
                             _%tl5144351485%_)
                      (letrec ((_%loop5144451488%_
                                (lambda (_%hd5144251492%_ _%body5144851495%_)
                                  (if (gx#stx-pair? _%hd5144251492%_)
                                      (let ((_%e5144551497%_
                                             (gx#syntax-e _%hd5144251492%_)))
                                        (let ((_%lp-tl5144751504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5144551497%_)))
                                              (_%lp-hd5144651501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5144551497%_))))
                                          (_%loop5144451488%_
                                           _%lp-tl5144751504%_
                                           (cons _%lp-hd5144651501%_
                                                 _%body5144851495%_))))
                                      (let ((_%body5144951507%_
                                             (reverse _%body5144851495%_)))
                                        (_%__kont9148391484%_
                                         _%body5144951507%_))))))
                        (_%loop5144451488%_ _%target5144151482%_ '()))))
                   (_%__match9176791768%_
                    (lambda (_%e5141351544%_
                             _%hd5141451548%_
                             _%tl5141551551%_
                             _%e5141651554%_
                             _%hd5141751558%_
                             _%tl5141851561%_
                             _%e5141951564%_
                             _%hd5142051568%_
                             _%tl5142151571%_
                             _%e5142251574%_
                             _%hd5142351578%_
                             _%tl5142451581%_
                             _%__splice9148191482%_
                             _%target5142551584%_
                             _%tl5142751587%_)
                      (letrec ((_%loop5142851590%_
                                (lambda (_%hd5142651594%_ _%body5143251597%_)
                                  (if (gx#stx-pair? _%hd5142651594%_)
                                      (let ((_%e5142951599%_
                                             (gx#syntax-e _%hd5142651594%_)))
                                        (let ((_%lp-tl5143151606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142951599%_)))
                                              (_%lp-hd5143051603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142951599%_))))
                                          (_%loop5142851590%_
                                           _%lp-tl5143151606%_
                                           (cons _%lp-hd5143051603%_
                                                 _%body5143251597%_))))
                                      (let ((_%body5143351609%_
                                             (reverse _%body5143251597%_)))
                                        (let ((_%g5140951612%_
                                               _%body5143351609%_)
                                              (_%g5141051614%_
                                               _%tl5142151571%_)
                                              (_%g5141151615%_
                                               _%tl5142451581%_)
                                              (_%g5141251616%_
                                               _%hd5142351578%_))
                                          (if (gx#identifier? _%g5141251616%_)
                                              (_%__kont9147991480%_
                                               _%g5140951612%_
                                               _%g5141051614%_
                                               _%g5141151615%_
                                               _%g5141251616%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_)))))))))
                        (_%loop5142851590%_ _%target5142551584%_ '()))))
                   (_%__match9175391754%_
                    (lambda (_%e5141351544%_
                             _%hd5141451548%_
                             _%tl5141551551%_
                             _%e5141651554%_
                             _%hd5141751558%_
                             _%tl5141851561%_
                             _%e5141951564%_
                             _%hd5142051568%_
                             _%tl5142151571%_)
                      (if (gx#stx-pair? _%hd5142051568%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5142051568%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (if (gx#stx-pair/null? _%tl5141851561%_)
                                  (let ((_%__splice9148191482%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5141851561%_
                                          '0)))
                                    (let ((_%tl5142751587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '1)))
                                          (_%target5142551584%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5142751587%_)
                                          (_%__match9176791768%_
                                           _%e5141351544%_
                                           _%hd5141451548%_
                                           _%tl5141551551%_
                                           _%e5141651554%_
                                           _%hd5141751558%_
                                           _%tl5141851561%_
                                           _%e5141951564%_
                                           _%hd5142051568%_
                                           _%tl5142151571%_
                                           _%e5142251574%_
                                           _%hd5142351578%_
                                           _%tl5142451581%_
                                           _%__splice9148191482%_
                                           _%target5142551584%_
                                           _%tl5142751587%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                   (_%__match9173591736%_
                    (lambda (_%e5137951654%_
                             _%hd5138051658%_
                             _%tl5138151661%_
                             _%e5138251664%_
                             _%hd5138351668%_
                             _%tl5138451671%_
                             _%e5138551674%_
                             _%hd5138651678%_
                             _%tl5138751681%_
                             _%e5138851684%_
                             _%hd5138951688%_
                             _%tl5139051691%_
                             _%e5139151694%_
                             _%hd5139251698%_
                             _%tl5139351701%_
                             _%e5139451704%_
                             _%hd5139551708%_
                             _%tl5139651711%_
                             _%e5139751714%_
                             _%hd5139851718%_
                             _%tl5139951721%_
                             _%__splice9147791478%_
                             _%target5140051724%_
                             _%tl5140251727%_)
                      (letrec ((_%loop5140351730%_
                                (lambda (_%hd5140151734%_ _%body5140751737%_)
                                  (if (gx#stx-pair? _%hd5140151734%_)
                                      (let ((_%e5140451739%_
                                             (gx#syntax-e _%hd5140151734%_)))
                                        (let ((_%lp-tl5140651746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5140451739%_)))
                                              (_%lp-hd5140551743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5140451739%_))))
                                          (_%loop5140351730%_
                                           _%lp-tl5140651746%_
                                           (cons _%lp-hd5140551743%_
                                                 _%body5140751737%_))))
                                      (let ((_%body5140851749%_
                                             (reverse _%body5140751737%_)))
                                        (let ((_%g5137451752%_
                                               _%body5140851749%_)
                                              (_%g5137551754%_
                                               _%hd5139851718%_)
                                              (_%g5137651755%_
                                               _%hd5139551708%_)
                                              (_%g5137751756%_
                                               _%hd5139251698%_)
                                              (_%g5137851757%_
                                               _%hd5138651678%_))
                                          (if (and (gx#identifier?
                                                    _%g5137851757%_)
                                                   (gx#identifier?
                                                    _%g5137551754%_)
                                                   (gx#identifier?
                                                    _%g5137651755%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5137651755%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5137651755%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5137651755%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5137651755%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9147591476%_
                                               _%g5137451752%_
                                               _%g5137551754%_
                                               _%g5137651755%_
                                               _%g5137751756%_
                                               _%g5137851757%_)
                                              (_%__match9175391754%_
                                               _%e5137951654%_
                                               _%hd5138051658%_
                                               _%tl5138151661%_
                                               _%e5138251664%_
                                               _%hd5138351668%_
                                               _%tl5138451671%_
                                               _%e5138551674%_
                                               _%hd5138651678%_
                                               _%tl5138751681%_))))))))
                        (_%loop5140351730%_ _%target5140051724%_ '()))))
                   (_%__match9167991680%_
                    (lambda (_%e5135051814%_
                             _%hd5135151818%_
                             _%tl5135251821%_
                             _%e5135351824%_
                             _%hd5135451828%_
                             _%tl5135551831%_
                             _%e5135651834%_
                             _%hd5135751838%_
                             _%tl5135851841%_
                             _%e5135951844%_
                             _%hd5136051848%_
                             _%tl5136151851%_
                             _%e5136251854%_
                             _%hd5136351858%_
                             _%tl5136451861%_
                             _%__splice9147391474%_
                             _%target5136551864%_
                             _%tl5136751867%_)
                      (letrec ((_%loop5136851870%_
                                (lambda (_%hd5136651874%_ _%body5137251877%_)
                                  (if (gx#stx-pair? _%hd5136651874%_)
                                      (let ((_%e5136951879%_
                                             (gx#syntax-e _%hd5136651874%_)))
                                        (let ((_%lp-tl5137151886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5136951879%_)))
                                              (_%lp-hd5137051883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5136951879%_))))
                                          (_%loop5136851870%_
                                           _%lp-tl5137151886%_
                                           (cons _%lp-hd5137051883%_
                                                 _%body5137251877%_))))
                                      (let ((_%body5137351889%_
                                             (reverse _%body5137251877%_)))
                                        (let ((_%g5134751892%_
                                               _%body5137351889%_)
                                              (_%g5134851894%_
                                               _%hd5136351858%_)
                                              (_%g5134951895%_
                                               _%hd5135751838%_))
                                          (if (gx#identifier? _%g5134951895%_)
                                              (_%__kont9147191472%_
                                               _%g5134751892%_
                                               _%g5134851894%_
                                               _%g5134951895%_)
                                              (_%__match9175391754%_
                                               _%e5135051814%_
                                               _%hd5135151818%_
                                               _%tl5135251821%_
                                               _%e5135351824%_
                                               _%hd5135451828%_
                                               _%tl5135551831%_
                                               _%e5135651834%_
                                               _%hd5135751838%_
                                               _%tl5135851841%_))))))))
                        (_%loop5136851870%_ _%target5136551864%_ '()))))
                   (_%__match9165991660%_
                    (lambda (_%e5135051814%_
                             _%hd5135151818%_
                             _%tl5135251821%_
                             _%e5135351824%_
                             _%hd5135451828%_
                             _%tl5135551831%_
                             _%e5135651834%_
                             _%hd5135751838%_
                             _%tl5135851841%_
                             _%e5135951844%_
                             _%hd5136051848%_
                             _%tl5136151851%_)
                      (if (gx#identifier? _%hd5136051848%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g97740_|
                               _%hd5136051848%_)
                              (if (gx#stx-pair? _%tl5136151851%_)
                                  (let ((_%e5136251854%_
                                         (gx#syntax-e _%tl5136151851%_)))
                                    (let ((_%tl5136451861%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5136251854%_)))
                                          (_%hd5136351858%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5136251854%_))))
                                      (if (gx#stx-null? _%tl5136451861%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5135551831%_)
                                              (let ((_%__splice9147391474%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5135551831%_
                                                      '0)))
                                                (let ((_%tl5136751867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9147391474%_
                                                          '1)))
                                                      (_%target5136551864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9147391474%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5136751867%_)
                                                      (_%__match9167991680%_
                                                       _%e5135051814%_
                                                       _%hd5135151818%_
                                                       _%tl5135251821%_
                                                       _%e5135351824%_
                                                       _%hd5135451828%_
                                                       _%tl5135551831%_
                                                       _%e5135651834%_
                                                       _%hd5135751838%_
                                                       _%tl5135851841%_
                                                       _%e5135951844%_
                                                       _%hd5136051848%_
                                                       _%tl5136151851%_
                                                       _%e5136251854%_
                                                       _%hd5136351858%_
                                                       _%tl5136451861%_
                                                       _%__splice9147391474%_
                                                       _%target5136551864%_
                                                       _%tl5136751867%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5135751838%_)
                                                          (let ((_%e5142251574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5135751838%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (let () (declare (not safe)) (_%g5124651455%_))))
                  (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5135751838%_)
                                                  (let ((_%e5142251574%_
                                                         (gx#syntax-e
                                                          _%hd5135751838%_)))
                                                    (let ((_%tl5142451581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142251574%_)))
                                                          (_%hd5142351578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142251574%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5124651455%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_))))
                                          (if (gx#stx-pair? _%tl5136451861%_)
                                              (let ((_%e5139451704%_
                                                     (gx#syntax-e
                                                      _%tl5136451861%_)))
                                                (let ((_%tl5139651711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5139451704%_)))
                                                      (_%hd5139551708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5139451704%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5139651711%_)
                                                      (let ((_%e5139751714%_
                                                             (gx#syntax-e
                                                              _%tl5139651711%_)))
                                                        (let ((_%tl5139951721%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5139751714%_)))
                      (_%hd5139851718%_
                       (let () (declare (not safe)) (##car _%e5139751714%_))))
                  (if (gx#stx-null? _%tl5139951721%_)
                      (if (gx#stx-pair/null? _%tl5135551831%_)
                          (let ((_%__splice9147791478%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5135551831%_
                                  '0)))
                            (let ((_%tl5140251727%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9147791478%_ '1)))
                                  (_%target5140051724%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9147791478%_
                                      '0))))
                              (if (gx#stx-null? _%tl5140251727%_)
                                  (_%__match9173591736%_
                                   _%e5135051814%_
                                   _%hd5135151818%_
                                   _%tl5135251821%_
                                   _%e5135351824%_
                                   _%hd5135451828%_
                                   _%tl5135551831%_
                                   _%e5135651834%_
                                   _%hd5135751838%_
                                   _%tl5135851841%_
                                   _%e5135951844%_
                                   _%hd5136051848%_
                                   _%tl5136151851%_
                                   _%e5136251854%_
                                   _%hd5136351858%_
                                   _%tl5136451861%_
                                   _%e5139451704%_
                                   _%hd5139551708%_
                                   _%tl5139651711%_
                                   _%e5139751714%_
                                   _%hd5139851718%_
                                   _%tl5139951721%_
                                   _%__splice9147791478%_
                                   _%target5140051724%_
                                   _%tl5140251727%_)
                                  (if (gx#stx-pair? _%hd5135751838%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5135751838%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))
                          (if (gx#stx-pair? _%hd5135751838%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5135751838%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                      (if (gx#stx-pair? _%hd5135751838%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5135751838%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (if (gx#stx-pair/null? _%tl5135551831%_)
                                  (let ((_%__splice9148191482%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5135551831%_
                                          '0)))
                                    (let ((_%tl5142751587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '1)))
                                          (_%target5142551584%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5142751587%_)
                                          (_%__match9176791768%_
                                           _%e5135051814%_
                                           _%hd5135151818%_
                                           _%tl5135251821%_
                                           _%e5135351824%_
                                           _%hd5135451828%_
                                           _%tl5135551831%_
                                           _%e5135651834%_
                                           _%hd5135751838%_
                                           _%tl5135851841%_
                                           _%e5142251574%_
                                           _%hd5142351578%_
                                           _%tl5142451581%_
                                           _%__splice9148191482%_
                                           _%target5142551584%_
                                           _%tl5142751587%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_))))))
              (if (gx#stx-pair? _%hd5135751838%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5135751838%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (if (gx#stx-pair/null? _%tl5135551831%_)
                          (let ((_%__splice9148191482%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5135551831%_
                                  '0)))
                            (let ((_%tl5142751587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148191482%_ '1)))
                                  (_%target5142551584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148191482%_
                                      '0))))
                              (if (gx#stx-null? _%tl5142751587%_)
                                  (_%__match9176791768%_
                                   _%e5135051814%_
                                   _%hd5135151818%_
                                   _%tl5135251821%_
                                   _%e5135351824%_
                                   _%hd5135451828%_
                                   _%tl5135551831%_
                                   _%e5135651834%_
                                   _%hd5135751838%_
                                   _%tl5135851841%_
                                   _%e5142251574%_
                                   _%hd5142351578%_
                                   _%tl5142451581%_
                                   _%__splice9148191482%_
                                   _%target5142551584%_
                                   _%tl5142751587%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5135751838%_)
                                                  (let ((_%e5142251574%_
                                                         (gx#syntax-e
                                                          _%hd5135751838%_)))
                                                    (let ((_%tl5142451581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142251574%_)))
                                                          (_%hd5142351578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142251574%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5135551831%_)
                                                          (let ((_%__splice9148191482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5135551831%_ '0)))
                    (let ((_%tl5142751587%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148191482%_ '1)))
                          (_%target5142551584%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148191482%_ '0))))
                      (if (gx#stx-null? _%tl5142751587%_)
                          (_%__match9176791768%_
                           _%e5135051814%_
                           _%hd5135151818%_
                           _%tl5135251821%_
                           _%e5135351824%_
                           _%hd5135451828%_
                           _%tl5135551831%_
                           _%e5135651834%_
                           _%hd5135751838%_
                           _%tl5135851841%_
                           _%e5142251574%_
                           _%hd5142351578%_
                           _%tl5142451581%_
                           _%__splice9148191482%_
                           _%target5142551584%_
                           _%tl5142751587%_)
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))))
                                  (if (gx#stx-pair? _%hd5135751838%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5135751838%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5135551831%_)
                                              (let ((_%__splice9148191482%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5135551831%_
                                                      '0)))
                                                (let ((_%tl5142751587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148191482%_
                                                          '1)))
                                                      (_%target5142551584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148191482%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5142751587%_)
                                                      (_%__match9176791768%_
                                                       _%e5135051814%_
                                                       _%hd5135151818%_
                                                       _%tl5135251821%_
                                                       _%e5135351824%_
                                                       _%hd5135451828%_
                                                       _%tl5135551831%_
                                                       _%e5135651834%_
                                                       _%hd5135751838%_
                                                       _%tl5135851841%_
                                                       _%e5142251574%_
                                                       _%hd5142351578%_
                                                       _%tl5142451581%_
                                                       _%__splice9148191482%_
                                                       _%target5142551584%_
                                                       _%tl5142751587%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5124651455%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))
                              (if (gx#stx-pair? _%hd5135751838%_)
                                  (let ((_%e5142251574%_
                                         (gx#syntax-e _%hd5135751838%_)))
                                    (let ((_%tl5142451581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142251574%_)))
                                          (_%hd5142351578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142251574%_))))
                                      (if (gx#stx-pair/null? _%tl5135551831%_)
                                          (let ((_%__splice9148191482%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5135551831%_
                                                  '0)))
                                            (let ((_%tl5142751587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9148191482%_
                                                      '1)))
                                                  (_%target5142551584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9148191482%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5142751587%_)
                                                  (_%__match9176791768%_
                                                   _%e5135051814%_
                                                   _%hd5135151818%_
                                                   _%tl5135251821%_
                                                   _%e5135351824%_
                                                   _%hd5135451828%_
                                                   _%tl5135551831%_
                                                   _%e5135651834%_
                                                   _%hd5135751838%_
                                                   _%tl5135851841%_
                                                   _%e5142251574%_
                                                   _%hd5142351578%_
                                                   _%tl5142451581%_
                                                   _%__splice9148191482%_
                                                   _%target5142551584%_
                                                   _%tl5142751587%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                          (if (gx#stx-pair? _%hd5135751838%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5135751838%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (if (gx#stx-pair/null? _%tl5135551831%_)
                                      (let ((_%__splice9148191482%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5135551831%_
                                              '0)))
                                        (let ((_%tl5142751587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9148191482%_
                                                  '1)))
                                              (_%target5142551584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9148191482%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5142751587%_)
                                              (_%__match9176791768%_
                                               _%e5135051814%_
                                               _%hd5135151818%_
                                               _%tl5135251821%_
                                               _%e5135351824%_
                                               _%hd5135451828%_
                                               _%tl5135551831%_
                                               _%e5135651834%_
                                               _%hd5135751838%_
                                               _%tl5135851841%_
                                               _%e5142251574%_
                                               _%hd5142351578%_
                                               _%tl5142451581%_
                                               _%__splice9148191482%_
                                               _%target5142551584%_
                                               _%tl5142751587%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_))))))
                   (_%__match9163591636%_
                    (lambda (_%e5132351934%_
                             _%hd5132451938%_
                             _%tl5132551941%_
                             _%e5132651944%_
                             _%hd5132751948%_
                             _%tl5132851951%_
                             _%e5132951954%_
                             _%hd5133051958%_
                             _%tl5133151961%_
                             _%e5133251964%_
                             _%hd5133351968%_
                             _%tl5133451971%_
                             _%e5133551974%_
                             _%hd5133651978%_
                             _%tl5133751981%_
                             _%__splice9146991470%_
                             _%target5133851984%_
                             _%tl5134051987%_)
                      (letrec ((_%loop5134151990%_
                                (lambda (_%hd5133951994%_ _%body5134551997%_)
                                  (if (gx#stx-pair? _%hd5133951994%_)
                                      (let ((_%e5134251999%_
                                             (gx#syntax-e _%hd5133951994%_)))
                                        (let ((_%lp-tl5134452006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5134251999%_)))
                                              (_%lp-hd5134352003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5134251999%_))))
                                          (_%loop5134151990%_
                                           _%lp-tl5134452006%_
                                           (cons _%lp-hd5134352003%_
                                                 _%body5134551997%_))))
                                      (let ((_%body5134652009%_
                                             (reverse _%body5134551997%_)))
                                        (let ((_%g5131952012%_
                                               _%body5134652009%_)
                                              (_%g5132052014%_
                                               _%hd5133651978%_)
                                              (_%g5132152015%_
                                               _%hd5133351968%_)
                                              (_%g5132252016%_
                                               _%hd5133051958%_))
                                          (if (and (gx#identifier?
                                                    _%g5132252016%_)
                                                   (gx#identifier?
                                                    _%g5132052014%_)
                                                   (gx#identifier?
                                                    _%g5132152015%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5132152015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5132152015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5132152015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5132152015%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9146791468%_
                                               _%g5131952012%_
                                               _%g5132052014%_
                                               _%g5132152015%_
                                               _%g5132252016%_)
                                              (_%__match9165991660%_
                                               _%e5132351934%_
                                               _%hd5132451938%_
                                               _%tl5132551941%_
                                               _%e5132651944%_
                                               _%hd5132751948%_
                                               _%tl5132851951%_
                                               _%e5132951954%_
                                               _%hd5133051958%_
                                               _%tl5133151961%_
                                               _%e5133251964%_
                                               _%hd5133351968%_
                                               _%tl5133451971%_))))))))
                        (_%loop5134151990%_ _%target5133851984%_ '()))))
                   (_%__match9159591596%_
                    (lambda (_%e5128652085%_
                             _%hd5128752089%_
                             _%tl5128852092%_
                             _%e5128952095%_
                             _%hd5129052099%_
                             _%tl5129152102%_
                             _%e5129252105%_
                             _%hd5129352109%_
                             _%tl5129452112%_
                             _%e5129552115%_
                             _%hd5129652119%_
                             _%tl5129752122%_
                             _%e5129852125%_
                             _%hd5129952129%_
                             _%tl5130052132%_
                             _%e5130152135%_
                             _%hd5130252139%_
                             _%tl5130352142%_
                             _%e5130452145%_
                             _%hd5130552149%_
                             _%tl5130652152%_
                             _%e5130752155%_
                             _%hd5130852159%_
                             _%tl5130952162%_
                             _%__splice9146591466%_
                             _%target5131052165%_
                             _%tl5131252168%_)
                      (letrec ((_%loop5131352171%_
                                (lambda (_%hd5131152175%_ _%body5131752178%_)
                                  (if (gx#stx-pair? _%hd5131152175%_)
                                      (let ((_%e5131452180%_
                                             (gx#syntax-e _%hd5131152175%_)))
                                        (let ((_%lp-tl5131652187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5131452180%_)))
                                              (_%lp-hd5131552184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5131452180%_))))
                                          (_%loop5131352171%_
                                           _%lp-tl5131652187%_
                                           (cons _%lp-hd5131552184%_
                                                 _%body5131752178%_))))
                                      (let ((_%body5131852190%_
                                             (reverse _%body5131752178%_)))
                                        (let ((_%g5128052193%_
                                               _%body5131852190%_)
                                              (_%g5128152195%_
                                               _%hd5130852159%_)
                                              (_%g5128252196%_
                                               _%hd5130552149%_)
                                              (_%g5128352197%_
                                               _%hd5130252139%_)
                                              (_%g5128452198%_
                                               _%hd5129652119%_)
                                              (_%g5128552199%_
                                               _%hd5129352109%_))
                                          (if (and (gx#identifier?
                                                    _%g5128552199%_)
                                                   (gx#identifier?
                                                    _%g5128152195%_)
                                                   (gx#identifier?
                                                    _%g5128252196%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5128252196%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5128252196%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5128252196%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5128252196%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9146391464%_
                                               _%g5128052193%_
                                               _%g5128152195%_
                                               _%g5128252196%_
                                               _%g5128352197%_
                                               _%g5128452198%_
                                               _%g5128552199%_)
                                              (_%__match9165991660%_
                                               _%e5128652085%_
                                               _%hd5128752089%_
                                               _%tl5128852092%_
                                               _%e5128952095%_
                                               _%hd5129052099%_
                                               _%tl5129152102%_
                                               _%e5129252105%_
                                               _%hd5129352109%_
                                               _%tl5129452112%_
                                               _%e5129552115%_
                                               _%hd5129652119%_
                                               _%tl5129752122%_))))))))
                        (_%loop5131352171%_ _%target5131052165%_ '()))))
                   (_%__match9156391564%_
                    (lambda (_%e5128652085%_
                             _%hd5128752089%_
                             _%tl5128852092%_
                             _%e5128952095%_
                             _%hd5129052099%_
                             _%tl5129152102%_
                             _%e5129252105%_
                             _%hd5129352109%_
                             _%tl5129452112%_
                             _%e5129552115%_
                             _%hd5129652119%_
                             _%tl5129752122%_
                             _%e5129852125%_
                             _%hd5129952129%_
                             _%tl5130052132%_)
                      (if (gx#identifier? _%hd5129952129%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g97741_|
                               _%hd5129952129%_)
                              (if (gx#stx-pair? _%tl5130052132%_)
                                  (let ((_%e5130152135%_
                                         (gx#syntax-e _%tl5130052132%_)))
                                    (let ((_%tl5130352142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5130152135%_)))
                                          (_%hd5130252139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5130152135%_))))
                                      (if (gx#stx-pair? _%tl5130352142%_)
                                          (let ((_%e5130452145%_
                                                 (gx#syntax-e
                                                  _%tl5130352142%_)))
                                            (let ((_%tl5130652152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5130452145%_)))
                                                  (_%hd5130552149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5130452145%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5130652152%_)
                                                  (let ((_%e5130752155%_
                                                         (gx#syntax-e
                                                          _%tl5130652152%_)))
                                                    (let ((_%tl5130952162%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5130752155%_)))
                                                          (_%hd5130852159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5130752155%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5130952162%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5129152102%_)
                                                              (let ((_%__splice9146591466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5129152102%_
                              '0)))
                        (let ((_%tl5131252168%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9146591466%_ '1)))
                              (_%target5131052165%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9146591466%_ '0))))
                          (if (gx#stx-null? _%tl5131252168%_)
                              (_%__match9159591596%_
                               _%e5128652085%_
                               _%hd5128752089%_
                               _%tl5128852092%_
                               _%e5128952095%_
                               _%hd5129052099%_
                               _%tl5129152102%_
                               _%e5129252105%_
                               _%hd5129352109%_
                               _%tl5129452112%_
                               _%e5129552115%_
                               _%hd5129652119%_
                               _%tl5129752122%_
                               _%e5129852125%_
                               _%hd5129952129%_
                               _%tl5130052132%_
                               _%e5130152135%_
                               _%hd5130252139%_
                               _%tl5130352142%_
                               _%e5130452145%_
                               _%hd5130552149%_
                               _%tl5130652152%_
                               _%e5130752155%_
                               _%hd5130852159%_
                               _%tl5130952162%_
                               _%__splice9146591466%_
                               _%target5131052165%_
                               _%tl5131252168%_)
                              (if (gx#stx-pair? _%hd5129352109%_)
                                  (let ((_%e5142251574%_
                                         (gx#syntax-e _%hd5129352109%_)))
                                    (let ((_%tl5142451581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142251574%_)))
                                          (_%hd5142351578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142251574%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))))
                      (if (gx#stx-pair? _%hd5129352109%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5129352109%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                          (let () (declare (not safe)) (_%g5124651455%_))))
                  (if (gx#stx-pair? _%hd5129352109%_)
                      (let ((_%e5142251574%_ (gx#syntax-e _%hd5129352109%_)))
                        (let ((_%tl5142451581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142251574%_)))
                              (_%hd5142351578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142251574%_))))
                          (if (gx#stx-pair/null? _%tl5129152102%_)
                              (let ((_%__splice9148191482%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5129152102%_
                                      '0)))
                                (let ((_%tl5142751587%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '1)))
                                      (_%target5142551584%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5142751587%_)
                                      (_%__match9176791768%_
                                       _%e5128652085%_
                                       _%hd5128752089%_
                                       _%tl5128852092%_
                                       _%e5128952095%_
                                       _%hd5129052099%_
                                       _%tl5129152102%_
                                       _%e5129252105%_
                                       _%hd5129352109%_
                                       _%tl5129452112%_
                                       _%e5142251574%_
                                       _%hd5142351578%_
                                       _%tl5142451581%_
                                       _%__splice9148191482%_
                                       _%target5142551584%_
                                       _%tl5142751587%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5129652119%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97740_|
                                                           _%hd5129652119%_)
                                                          (if (gx#stx-null?
                                                               _%tl5130652152%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5129152102%_)
                          (let ((_%__splice9147791478%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129152102%_
                                  '0)))
                            (let ((_%tl5140251727%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9147791478%_ '1)))
                                  (_%target5140051724%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9147791478%_
                                      '0))))
                              (if (gx#stx-null? _%tl5140251727%_)
                                  (_%__match9173591736%_
                                   _%e5128652085%_
                                   _%hd5128752089%_
                                   _%tl5128852092%_
                                   _%e5128952095%_
                                   _%hd5129052099%_
                                   _%tl5129152102%_
                                   _%e5129252105%_
                                   _%hd5129352109%_
                                   _%tl5129452112%_
                                   _%e5129552115%_
                                   _%hd5129652119%_
                                   _%tl5129752122%_
                                   _%e5129852125%_
                                   _%hd5129952129%_
                                   _%tl5130052132%_
                                   _%e5130152135%_
                                   _%hd5130252139%_
                                   _%tl5130352142%_
                                   _%e5130452145%_
                                   _%hd5130552149%_
                                   _%tl5130652152%_
                                   _%__splice9147791478%_
                                   _%target5140051724%_
                                   _%tl5140251727%_)
                                  (if (gx#stx-pair? _%hd5129352109%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5129352109%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))
                          (if (gx#stx-pair? _%hd5129352109%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5129352109%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                      (if (gx#stx-pair? _%hd5129352109%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5129352109%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (if (gx#stx-pair/null? _%tl5129152102%_)
                                  (let ((_%__splice9148191482%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5129152102%_
                                          '0)))
                                    (let ((_%tl5142751587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '1)))
                                          (_%target5142551584%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5142751587%_)
                                          (_%__match9176791768%_
                                           _%e5128652085%_
                                           _%hd5128752089%_
                                           _%tl5128852092%_
                                           _%e5128952095%_
                                           _%hd5129052099%_
                                           _%tl5129152102%_
                                           _%e5129252105%_
                                           _%hd5129352109%_
                                           _%tl5129452112%_
                                           _%e5142251574%_
                                           _%hd5142351578%_
                                           _%tl5142451581%_
                                           _%__splice9148191482%_
                                           _%target5142551584%_
                                           _%tl5142751587%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_))))
                  (if (gx#stx-pair? _%hd5129352109%_)
                      (let ((_%e5142251574%_ (gx#syntax-e _%hd5129352109%_)))
                        (let ((_%tl5142451581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142251574%_)))
                              (_%hd5142351578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142251574%_))))
                          (if (gx#stx-pair/null? _%tl5129152102%_)
                              (let ((_%__splice9148191482%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5129152102%_
                                      '0)))
                                (let ((_%tl5142751587%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '1)))
                                      (_%target5142551584%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5142751587%_)
                                      (_%__match9176791768%_
                                       _%e5128652085%_
                                       _%hd5128752089%_
                                       _%tl5128852092%_
                                       _%e5128952095%_
                                       _%hd5129052099%_
                                       _%tl5129152102%_
                                       _%e5129252105%_
                                       _%hd5129352109%_
                                       _%tl5129452112%_
                                       _%e5142251574%_
                                       _%hd5142351578%_
                                       _%tl5142451581%_
                                       _%__splice9148191482%_
                                       _%target5142551584%_
                                       _%tl5142751587%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_))))
              (if (gx#stx-pair? _%hd5129352109%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5129352109%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (if (gx#stx-pair/null? _%tl5129152102%_)
                          (let ((_%__splice9148191482%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129152102%_
                                  '0)))
                            (let ((_%tl5142751587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148191482%_ '1)))
                                  (_%target5142551584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148191482%_
                                      '0))))
                              (if (gx#stx-null? _%tl5142751587%_)
                                  (_%__match9176791768%_
                                   _%e5128652085%_
                                   _%hd5128752089%_
                                   _%tl5128852092%_
                                   _%e5128952095%_
                                   _%hd5129052099%_
                                   _%tl5129152102%_
                                   _%e5129252105%_
                                   _%hd5129352109%_
                                   _%tl5129452112%_
                                   _%e5142251574%_
                                   _%hd5142351578%_
                                   _%tl5142451581%_
                                   _%__splice9148191482%_
                                   _%target5142551584%_
                                   _%tl5142751587%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5129352109%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5129352109%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5129152102%_)
                                                      (let ((_%__splice9148191482%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5129152102%_
                                                              '0)))
                                                        (let ((_%tl5142751587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '1)))
                      (_%target5142551584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '0))))
                  (if (gx#stx-null? _%tl5142751587%_)
                      (_%__match9176791768%_
                       _%e5128652085%_
                       _%hd5128752089%_
                       _%tl5128852092%_
                       _%e5128952095%_
                       _%hd5129052099%_
                       _%tl5129152102%_
                       _%e5129252105%_
                       _%hd5129352109%_
                       _%tl5129452112%_
                       _%e5142251574%_
                       _%hd5142351578%_
                       _%tl5142451581%_
                       _%__splice9148191482%_
                       _%target5142551584%_
                       _%tl5142751587%_)
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))))
                                  (if (gx#stx-null? _%tl5130052132%_)
                                      (if (gx#stx-pair/null? _%tl5129152102%_)
                                          (let ((_%__splice9146991470%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5129152102%_
                                                  '0)))
                                            (let ((_%tl5134051987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9146991470%_
                                                      '1)))
                                                  (_%target5133851984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9146991470%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5134051987%_)
                                                  (_%__match9163591636%_
                                                   _%e5128652085%_
                                                   _%hd5128752089%_
                                                   _%tl5128852092%_
                                                   _%e5128952095%_
                                                   _%hd5129052099%_
                                                   _%tl5129152102%_
                                                   _%e5129252105%_
                                                   _%hd5129352109%_
                                                   _%tl5129452112%_
                                                   _%e5129552115%_
                                                   _%hd5129652119%_
                                                   _%tl5129752122%_
                                                   _%e5129852125%_
                                                   _%hd5129952129%_
                                                   _%tl5130052132%_
                                                   _%__splice9146991470%_
                                                   _%target5133851984%_
                                                   _%tl5134051987%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5129352109%_)
                                                      (let ((_%e5142251574%_
                                                             (gx#syntax-e
                                                              _%hd5129352109%_)))
                                                        (let ((_%tl5142451581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142251574%_)))
                      (_%hd5142351578%_
                       (let () (declare (not safe)) (##car _%e5142251574%_))))
                  (let () (declare (not safe)) (_%g5124651455%_))))
              (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5129352109%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5129352109%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                      (if (gx#stx-pair? _%hd5129352109%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5129352109%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5129152102%_)
                                                  (let ((_%__splice9148191482%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5129152102%_
                                                          '0)))
                                                    (let ((_%tl5142751587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '1)))
                                                          (_%target5142551584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5142751587%_)
                                                          (_%__match9176791768%_
                                                           _%e5128652085%_
                                                           _%hd5128752089%_
                                                           _%tl5128852092%_
                                                           _%e5128952095%_
                                                           _%hd5129052099%_
                                                           _%tl5129152102%_
                                                           _%e5129252105%_
                                                           _%hd5129352109%_
                                                           _%tl5129452112%_
                                                           _%e5142251574%_
                                                           _%hd5142351578%_
                                                           _%tl5142451581%_
                                                           _%__splice9148191482%_
                                                           _%target5142551584%_
                                                           _%tl5142751587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5124651455%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                              (if (gx#stx-null? _%tl5130052132%_)
                                  (if (gx#stx-pair/null? _%tl5129152102%_)
                                      (let ((_%__splice9146991470%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5129152102%_
                                              '0)))
                                        (let ((_%tl5134051987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9146991470%_
                                                  '1)))
                                              (_%target5133851984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9146991470%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5134051987%_)
                                              (_%__match9163591636%_
                                               _%e5128652085%_
                                               _%hd5128752089%_
                                               _%tl5128852092%_
                                               _%e5128952095%_
                                               _%hd5129052099%_
                                               _%tl5129152102%_
                                               _%e5129252105%_
                                               _%hd5129352109%_
                                               _%tl5129452112%_
                                               _%e5129552115%_
                                               _%hd5129652119%_
                                               _%tl5129752122%_
                                               _%e5129852125%_
                                               _%hd5129952129%_
                                               _%tl5130052132%_
                                               _%__splice9146991470%_
                                               _%target5133851984%_
                                               _%tl5134051987%_)
                                              (if (gx#stx-pair?
                                                   _%hd5129352109%_)
                                                  (let ((_%e5142251574%_
                                                         (gx#syntax-e
                                                          _%hd5129352109%_)))
                                                    (let ((_%tl5142451581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142251574%_)))
                                                          (_%hd5142351578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142251574%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5124651455%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_))))))
                                      (if (gx#stx-pair? _%hd5129352109%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5129352109%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                  (if (gx#identifier? _%hd5129652119%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97740_|
                                           _%hd5129652119%_)
                                          (if (gx#stx-pair? _%tl5130052132%_)
                                              (let ((_%e5139451704%_
                                                     (gx#syntax-e
                                                      _%tl5130052132%_)))
                                                (let ((_%tl5139651711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5139451704%_)))
                                                      (_%hd5139551708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5139451704%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5139651711%_)
                                                      (let ((_%e5139751714%_
                                                             (gx#syntax-e
                                                              _%tl5139651711%_)))
                                                        (let ((_%tl5139951721%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5139751714%_)))
                      (_%hd5139851718%_
                       (let () (declare (not safe)) (##car _%e5139751714%_))))
                  (if (gx#stx-null? _%tl5139951721%_)
                      (if (gx#stx-pair/null? _%tl5129152102%_)
                          (let ((_%__splice9147791478%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129152102%_
                                  '0)))
                            (let ((_%tl5140251727%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9147791478%_ '1)))
                                  (_%target5140051724%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9147791478%_
                                      '0))))
                              (if (gx#stx-null? _%tl5140251727%_)
                                  (_%__match9173591736%_
                                   _%e5128652085%_
                                   _%hd5128752089%_
                                   _%tl5128852092%_
                                   _%e5128952095%_
                                   _%hd5129052099%_
                                   _%tl5129152102%_
                                   _%e5129252105%_
                                   _%hd5129352109%_
                                   _%tl5129452112%_
                                   _%e5129552115%_
                                   _%hd5129652119%_
                                   _%tl5129752122%_
                                   _%e5129852125%_
                                   _%hd5129952129%_
                                   _%tl5130052132%_
                                   _%e5139451704%_
                                   _%hd5139551708%_
                                   _%tl5139651711%_
                                   _%e5139751714%_
                                   _%hd5139851718%_
                                   _%tl5139951721%_
                                   _%__splice9147791478%_
                                   _%target5140051724%_
                                   _%tl5140251727%_)
                                  (if (gx#stx-pair? _%hd5129352109%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5129352109%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))
                          (if (gx#stx-pair? _%hd5129352109%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5129352109%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                      (if (gx#stx-pair? _%hd5129352109%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5129352109%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (if (gx#stx-pair/null? _%tl5129152102%_)
                                  (let ((_%__splice9148191482%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5129152102%_
                                          '0)))
                                    (let ((_%tl5142751587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '1)))
                                          (_%target5142551584%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5142751587%_)
                                          (_%__match9176791768%_
                                           _%e5128652085%_
                                           _%hd5128752089%_
                                           _%tl5128852092%_
                                           _%e5128952095%_
                                           _%hd5129052099%_
                                           _%tl5129152102%_
                                           _%e5129252105%_
                                           _%hd5129352109%_
                                           _%tl5129452112%_
                                           _%e5142251574%_
                                           _%hd5142351578%_
                                           _%tl5142451581%_
                                           _%__splice9148191482%_
                                           _%target5142551584%_
                                           _%tl5142751587%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_))))))
              (if (gx#stx-pair? _%hd5129352109%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5129352109%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (if (gx#stx-pair/null? _%tl5129152102%_)
                          (let ((_%__splice9148191482%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5129152102%_
                                  '0)))
                            (let ((_%tl5142751587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148191482%_ '1)))
                                  (_%target5142551584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148191482%_
                                      '0))))
                              (if (gx#stx-null? _%tl5142751587%_)
                                  (_%__match9176791768%_
                                   _%e5128652085%_
                                   _%hd5128752089%_
                                   _%tl5128852092%_
                                   _%e5128952095%_
                                   _%hd5129052099%_
                                   _%tl5129152102%_
                                   _%e5129252105%_
                                   _%hd5129352109%_
                                   _%tl5129452112%_
                                   _%e5142251574%_
                                   _%hd5142351578%_
                                   _%tl5142451581%_
                                   _%__splice9148191482%_
                                   _%target5142551584%_
                                   _%tl5142751587%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5129352109%_)
                                                  (let ((_%e5142251574%_
                                                         (gx#syntax-e
                                                          _%hd5129352109%_)))
                                                    (let ((_%tl5142451581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142251574%_)))
                                                          (_%hd5142351578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142251574%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5129152102%_)
                                                          (let ((_%__splice9148191482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5129152102%_ '0)))
                    (let ((_%tl5142751587%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148191482%_ '1)))
                          (_%target5142551584%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148191482%_ '0))))
                      (if (gx#stx-null? _%tl5142751587%_)
                          (_%__match9176791768%_
                           _%e5128652085%_
                           _%hd5128752089%_
                           _%tl5128852092%_
                           _%e5128952095%_
                           _%hd5129052099%_
                           _%tl5129152102%_
                           _%e5129252105%_
                           _%hd5129352109%_
                           _%tl5129452112%_
                           _%e5142251574%_
                           _%hd5142351578%_
                           _%tl5142451581%_
                           _%__splice9148191482%_
                           _%target5142551584%_
                           _%tl5142751587%_)
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_))))
                                          (if (gx#stx-pair? _%hd5129352109%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5129352109%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5129152102%_)
                                                      (let ((_%__splice9148191482%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5129152102%_
                                                              '0)))
                                                        (let ((_%tl5142751587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '1)))
                      (_%target5142551584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '0))))
                  (if (gx#stx-null? _%tl5142751587%_)
                      (_%__match9176791768%_
                       _%e5128652085%_
                       _%hd5128752089%_
                       _%tl5128852092%_
                       _%e5128952095%_
                       _%hd5129052099%_
                       _%tl5129152102%_
                       _%e5129252105%_
                       _%hd5129352109%_
                       _%tl5129452112%_
                       _%e5142251574%_
                       _%hd5142351578%_
                       _%tl5142451581%_
                       _%__splice9148191482%_
                       _%target5142551584%_
                       _%tl5142751587%_)
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                      (if (gx#stx-pair? _%hd5129352109%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5129352109%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5129152102%_)
                                                  (let ((_%__splice9148191482%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5129152102%_
                                                          '0)))
                                                    (let ((_%tl5142751587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '1)))
                                                          (_%target5142551584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5142751587%_)
                                                          (_%__match9176791768%_
                                                           _%e5128652085%_
                                                           _%hd5128752089%_
                                                           _%tl5128852092%_
                                                           _%e5128952095%_
                                                           _%hd5129052099%_
                                                           _%tl5129152102%_
                                                           _%e5129252105%_
                                                           _%hd5129352109%_
                                                           _%tl5129452112%_
                                                           _%e5142251574%_
                                                           _%hd5142351578%_
                                                           _%tl5142451581%_
                                                           _%__splice9148191482%_
                                                           _%target5142551584%_
                                                           _%tl5142751587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5124651455%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))))
                          (if (gx#stx-null? _%tl5130052132%_)
                              (if (gx#stx-pair/null? _%tl5129152102%_)
                                  (let ((_%__splice9146991470%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5129152102%_
                                          '0)))
                                    (let ((_%tl5134051987%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9146991470%_
                                              '1)))
                                          (_%target5133851984%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9146991470%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5134051987%_)
                                          (_%__match9163591636%_
                                           _%e5128652085%_
                                           _%hd5128752089%_
                                           _%tl5128852092%_
                                           _%e5128952095%_
                                           _%hd5129052099%_
                                           _%tl5129152102%_
                                           _%e5129252105%_
                                           _%hd5129352109%_
                                           _%tl5129452112%_
                                           _%e5129552115%_
                                           _%hd5129652119%_
                                           _%tl5129752122%_
                                           _%e5129852125%_
                                           _%hd5129952129%_
                                           _%tl5130052132%_
                                           _%__splice9146991470%_
                                           _%target5133851984%_
                                           _%tl5134051987%_)
                                          (if (gx#stx-pair? _%hd5129352109%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5129352109%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))))
                                  (if (gx#stx-pair? _%hd5129352109%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5129352109%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))
                              (if (gx#identifier? _%hd5129652119%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97740_|
                                       _%hd5129652119%_)
                                      (if (gx#stx-pair? _%tl5130052132%_)
                                          (let ((_%e5139451704%_
                                                 (gx#syntax-e
                                                  _%tl5130052132%_)))
                                            (let ((_%tl5139651711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5139451704%_)))
                                                  (_%hd5139551708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5139451704%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5139651711%_)
                                                  (let ((_%e5139751714%_
                                                         (gx#syntax-e
                                                          _%tl5139651711%_)))
                                                    (let ((_%tl5139951721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5139751714%_)))
                                                          (_%hd5139851718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5139751714%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5139951721%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5129152102%_)
                                                              (let ((_%__splice9147791478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5129152102%_
                              '0)))
                        (let ((_%tl5140251727%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9147791478%_ '1)))
                              (_%target5140051724%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9147791478%_ '0))))
                          (if (gx#stx-null? _%tl5140251727%_)
                              (_%__match9173591736%_
                               _%e5128652085%_
                               _%hd5128752089%_
                               _%tl5128852092%_
                               _%e5128952095%_
                               _%hd5129052099%_
                               _%tl5129152102%_
                               _%e5129252105%_
                               _%hd5129352109%_
                               _%tl5129452112%_
                               _%e5129552115%_
                               _%hd5129652119%_
                               _%tl5129752122%_
                               _%e5129852125%_
                               _%hd5129952129%_
                               _%tl5130052132%_
                               _%e5139451704%_
                               _%hd5139551708%_
                               _%tl5139651711%_
                               _%e5139751714%_
                               _%hd5139851718%_
                               _%tl5139951721%_
                               _%__splice9147791478%_
                               _%target5140051724%_
                               _%tl5140251727%_)
                              (if (gx#stx-pair? _%hd5129352109%_)
                                  (let ((_%e5142251574%_
                                         (gx#syntax-e _%hd5129352109%_)))
                                    (let ((_%tl5142451581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142251574%_)))
                                          (_%hd5142351578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142251574%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))))
                      (if (gx#stx-pair? _%hd5129352109%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5129352109%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                          (let () (declare (not safe)) (_%g5124651455%_))))
                  (if (gx#stx-pair? _%hd5129352109%_)
                      (let ((_%e5142251574%_ (gx#syntax-e _%hd5129352109%_)))
                        (let ((_%tl5142451581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142251574%_)))
                              (_%hd5142351578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142251574%_))))
                          (if (gx#stx-pair/null? _%tl5129152102%_)
                              (let ((_%__splice9148191482%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5129152102%_
                                      '0)))
                                (let ((_%tl5142751587%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '1)))
                                      (_%target5142551584%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5142751587%_)
                                      (_%__match9176791768%_
                                       _%e5128652085%_
                                       _%hd5128752089%_
                                       _%tl5128852092%_
                                       _%e5128952095%_
                                       _%hd5129052099%_
                                       _%tl5129152102%_
                                       _%e5129252105%_
                                       _%hd5129352109%_
                                       _%tl5129452112%_
                                       _%e5142251574%_
                                       _%hd5142351578%_
                                       _%tl5142451581%_
                                       _%__splice9148191482%_
                                       _%target5142551584%_
                                       _%tl5142751587%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5129352109%_)
                                                      (let ((_%e5142251574%_
                                                             (gx#syntax-e
                                                              _%hd5129352109%_)))
                                                        (let ((_%tl5142451581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142251574%_)))
                      (_%hd5142351578%_
                       (let () (declare (not safe)) (##car _%e5142251574%_))))
                  (if (gx#stx-pair/null? _%tl5129152102%_)
                      (let ((_%__splice9148191482%_
                             (gx#syntax-split-splice->vector
                              _%tl5129152102%_
                              '0)))
                        (let ((_%tl5142751587%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '1)))
                              (_%target5142551584%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '0))))
                          (if (gx#stx-null? _%tl5142751587%_)
                              (_%__match9176791768%_
                               _%e5128652085%_
                               _%hd5128752089%_
                               _%tl5128852092%_
                               _%e5128952095%_
                               _%hd5129052099%_
                               _%tl5129152102%_
                               _%e5129252105%_
                               _%hd5129352109%_
                               _%tl5129452112%_
                               _%e5142251574%_
                               _%hd5142351578%_
                               _%tl5142451581%_
                               _%__splice9148191482%_
                               _%target5142551584%_
                               _%tl5142751587%_)
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5129352109%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5129352109%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5129152102%_)
                                                      (let ((_%__splice9148191482%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5129152102%_
                                                              '0)))
                                                        (let ((_%tl5142751587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '1)))
                      (_%target5142551584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '0))))
                  (if (gx#stx-null? _%tl5142751587%_)
                      (_%__match9176791768%_
                       _%e5128652085%_
                       _%hd5128752089%_
                       _%tl5128852092%_
                       _%e5128952095%_
                       _%hd5129052099%_
                       _%tl5129152102%_
                       _%e5129252105%_
                       _%hd5129352109%_
                       _%tl5129452112%_
                       _%e5142251574%_
                       _%hd5142351578%_
                       _%tl5142451581%_
                       _%__splice9148191482%_
                       _%target5142551584%_
                       _%tl5142751587%_)
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                      (if (gx#stx-pair? _%hd5129352109%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5129352109%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5129152102%_)
                                                  (let ((_%__splice9148191482%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5129152102%_
                                                          '0)))
                                                    (let ((_%tl5142751587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '1)))
                                                          (_%target5142551584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5142751587%_)
                                                          (_%__match9176791768%_
                                                           _%e5128652085%_
                                                           _%hd5128752089%_
                                                           _%tl5128852092%_
                                                           _%e5128952095%_
                                                           _%hd5129052099%_
                                                           _%tl5129152102%_
                                                           _%e5129252105%_
                                                           _%hd5129352109%_
                                                           _%tl5129452112%_
                                                           _%e5142251574%_
                                                           _%hd5142351578%_
                                                           _%tl5142451581%_
                                                           _%__splice9148191482%_
                                                           _%target5142551584%_
                                                           _%tl5142751587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5124651455%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                  (if (gx#stx-pair? _%hd5129352109%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5129352109%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5129152102%_)
                                              (let ((_%__splice9148191482%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5129152102%_
                                                      '0)))
                                                (let ((_%tl5142751587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148191482%_
                                                          '1)))
                                                      (_%target5142551584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148191482%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5142751587%_)
                                                      (_%__match9176791768%_
                                                       _%e5128652085%_
                                                       _%hd5128752089%_
                                                       _%tl5128852092%_
                                                       _%e5128952095%_
                                                       _%hd5129052099%_
                                                       _%tl5129152102%_
                                                       _%e5129252105%_
                                                       _%hd5129352109%_
                                                       _%tl5129452112%_
                                                       _%e5142251574%_
                                                       _%hd5142351578%_
                                                       _%tl5142451581%_
                                                       _%__splice9148191482%_
                                                       _%target5142551584%_
                                                       _%tl5142751587%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5124651455%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))))
                   (_%__match9153391534%_
                    (lambda (_%e5125352259%_
                             _%hd5125452263%_
                             _%tl5125552266%_
                             _%e5125652269%_
                             _%hd5125752273%_
                             _%tl5125852276%_
                             _%e5125952279%_
                             _%hd5126052283%_
                             _%tl5126152286%_
                             _%e5126252289%_
                             _%hd5126352293%_
                             _%tl5126452296%_
                             _%e5126552299%_
                             _%hd5126652303%_
                             _%tl5126752306%_
                             _%e5126852309%_
                             _%hd5126952313%_
                             _%tl5127052316%_
                             _%__splice9146191462%_
                             _%target5127152319%_
                             _%tl5127352322%_)
                      (letrec ((_%loop5127452325%_
                                (lambda (_%hd5127252329%_ _%body5127852332%_)
                                  (if (gx#stx-pair? _%hd5127252329%_)
                                      (let ((_%e5127552334%_
                                             (gx#syntax-e _%hd5127252329%_)))
                                        (let ((_%lp-tl5127752341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5127552334%_)))
                                              (_%lp-hd5127652338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5127552334%_))))
                                          (_%loop5127452325%_
                                           _%lp-tl5127752341%_
                                           (cons _%lp-hd5127652338%_
                                                 _%body5127852332%_))))
                                      (let ((_%body5127952344%_
                                             (reverse _%body5127852332%_)))
                                        (let ((_%g5124852347%_
                                               _%body5127952344%_)
                                              (_%g5124952349%_
                                               _%hd5126952313%_)
                                              (_%g5125052350%_
                                               _%hd5126652303%_)
                                              (_%g5125152351%_
                                               _%hd5126352293%_)
                                              (_%g5125252352%_
                                               _%hd5126052283%_))
                                          (if (and (gx#identifier?
                                                    _%g5125252352%_)
                                                   (gx#identifier?
                                                    _%g5125052350%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5125052350%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5125052350%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5125052350%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5125052350%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5125052350%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9145991460%_
                                               _%g5124852347%_
                                               _%g5124952349%_
                                               _%g5125052350%_
                                               _%g5125152351%_
                                               _%g5125252352%_)
                                              (_%__match9156391564%_
                                               _%e5125352259%_
                                               _%hd5125452263%_
                                               _%tl5125552266%_
                                               _%e5125652269%_
                                               _%hd5125752273%_
                                               _%tl5125852276%_
                                               _%e5125952279%_
                                               _%hd5126052283%_
                                               _%tl5126152286%_
                                               _%e5126252289%_
                                               _%hd5126352293%_
                                               _%tl5126452296%_
                                               _%e5126552299%_
                                               _%hd5126652303%_
                                               _%tl5126752306%_))))))))
                        (_%loop5127452325%_ _%target5127152319%_ '())))))
              (if (gx#stx-pair? _%__stx9145691457%_)
                  (let ((_%e5125352259%_ (gx#syntax-e _%__stx9145691457%_)))
                    (let ((_%tl5125552266%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5125352259%_)))
                          (_%hd5125452263%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5125352259%_))))
                      (if (gx#stx-pair? _%tl5125552266%_)
                          (let ((_%e5125652269%_
                                 (gx#syntax-e _%tl5125552266%_)))
                            (let ((_%tl5125852276%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5125652269%_)))
                                  (_%hd5125752273%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5125652269%_))))
                              (if (gx#stx-pair? _%hd5125752273%_)
                                  (let ((_%e5125952279%_
                                         (gx#syntax-e _%hd5125752273%_)))
                                    (let ((_%tl5126152286%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5125952279%_)))
                                          (_%hd5126052283%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5125952279%_))))
                                      (if (gx#stx-pair? _%tl5126152286%_)
                                          (let ((_%e5126252289%_
                                                 (gx#syntax-e
                                                  _%tl5126152286%_)))
                                            (let ((_%tl5126452296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5126252289%_)))
                                                  (_%hd5126352293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5126252289%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5126452296%_)
                                                  (let ((_%e5126552299%_
                                                         (gx#syntax-e
                                                          _%tl5126452296%_)))
                                                    (let ((_%tl5126752306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5126552299%_)))
                                                          (_%hd5126652303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5126552299%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5126752306%_)
                                                          (let ((_%e5126852309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5126752306%_)))
                    (let ((_%tl5127052316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5126852309%_)))
                          (_%hd5126952313%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5126852309%_))))
                      (if (gx#stx-null? _%tl5127052316%_)
                          (if (gx#stx-pair/null? _%tl5125852276%_)
                              (let ((_%__splice9146191462%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5125852276%_
                                      '0)))
                                (let ((_%tl5127352322%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9146191462%_
                                          '1)))
                                      (_%target5127152319%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9146191462%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5127352322%_)
                                      (_%__match9153391534%_
                                       _%e5125352259%_
                                       _%hd5125452263%_
                                       _%tl5125552266%_
                                       _%e5125652269%_
                                       _%hd5125752273%_
                                       _%tl5125852276%_
                                       _%e5125952279%_
                                       _%hd5126052283%_
                                       _%tl5126152286%_
                                       _%e5126252289%_
                                       _%hd5126352293%_
                                       _%tl5126452296%_
                                       _%e5126552299%_
                                       _%hd5126652303%_
                                       _%tl5126752306%_
                                       _%e5126852309%_
                                       _%hd5126952313%_
                                       _%tl5127052316%_
                                       _%__splice9146191462%_
                                       _%target5127152319%_
                                       _%tl5127352322%_)
                                      (if (gx#stx-pair? _%hd5126052283%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5126052283%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))))
                              (if (gx#stx-pair? _%hd5126052283%_)
                                  (let ((_%e5142251574%_
                                         (gx#syntax-e _%hd5126052283%_)))
                                    (let ((_%tl5142451581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142251574%_)))
                                          (_%hd5142351578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142251574%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                          (if (gx#identifier? _%hd5126652303%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g97741_|
                                   _%hd5126652303%_)
                                  (if (gx#stx-pair? _%tl5127052316%_)
                                      (let ((_%e5130452145%_
                                             (gx#syntax-e _%tl5127052316%_)))
                                        (let ((_%tl5130652152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5130452145%_)))
                                              (_%hd5130552149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5130452145%_))))
                                          (if (gx#stx-pair? _%tl5130652152%_)
                                              (let ((_%e5130752155%_
                                                     (gx#syntax-e
                                                      _%tl5130652152%_)))
                                                (let ((_%tl5130952162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5130752155%_)))
                                                      (_%hd5130852159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5130752155%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5130952162%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5125852276%_)
                                                          (let ((_%__splice9146591466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5125852276%_ '0)))
                    (let ((_%tl5131252168%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9146591466%_ '1)))
                          (_%target5131052165%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9146591466%_ '0))))
                      (if (gx#stx-null? _%tl5131252168%_)
                          (_%__match9159591596%_
                           _%e5125352259%_
                           _%hd5125452263%_
                           _%tl5125552266%_
                           _%e5125652269%_
                           _%hd5125752273%_
                           _%tl5125852276%_
                           _%e5125952279%_
                           _%hd5126052283%_
                           _%tl5126152286%_
                           _%e5126252289%_
                           _%hd5126352293%_
                           _%tl5126452296%_
                           _%e5126552299%_
                           _%hd5126652303%_
                           _%tl5126752306%_
                           _%e5126852309%_
                           _%hd5126952313%_
                           _%tl5127052316%_
                           _%e5130452145%_
                           _%hd5130552149%_
                           _%tl5130652152%_
                           _%e5130752155%_
                           _%hd5130852159%_
                           _%tl5130952162%_
                           _%__splice9146591466%_
                           _%target5131052165%_
                           _%tl5131252168%_)
                          (if (gx#stx-pair? _%hd5126052283%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5126052283%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_))))))
                  (if (gx#stx-pair? _%hd5126052283%_)
                      (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                        (let ((_%tl5142451581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142251574%_)))
                              (_%hd5142351578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142251574%_))))
                          (let () (declare (not safe)) (_%g5124651455%_))))
                      (let () (declare (not safe)) (_%g5124651455%_))))
              (if (gx#stx-pair? _%hd5126052283%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (if (gx#stx-pair/null? _%tl5125852276%_)
                          (let ((_%__splice9148191482%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5125852276%_
                                  '0)))
                            (let ((_%tl5142751587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148191482%_ '1)))
                                  (_%target5142551584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148191482%_
                                      '0))))
                              (if (gx#stx-null? _%tl5142751587%_)
                                  (_%__match9176791768%_
                                   _%e5125352259%_
                                   _%hd5125452263%_
                                   _%tl5125552266%_
                                   _%e5125652269%_
                                   _%hd5125752273%_
                                   _%tl5125852276%_
                                   _%e5125952279%_
                                   _%hd5126052283%_
                                   _%tl5126152286%_
                                   _%e5142251574%_
                                   _%hd5142351578%_
                                   _%tl5142451581%_
                                   _%__splice9148191482%_
                                   _%target5142551584%_
                                   _%tl5142751587%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5126352293%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g97740_|
                                                       _%hd5126352293%_)
                                                      (if (gx#stx-null?
                                                           _%tl5130652152%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5125852276%_)
                                                              (let ((_%__splice9147791478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5125852276%_
                              '0)))
                        (let ((_%tl5140251727%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9147791478%_ '1)))
                              (_%target5140051724%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9147791478%_ '0))))
                          (if (gx#stx-null? _%tl5140251727%_)
                              (_%__match9173591736%_
                               _%e5125352259%_
                               _%hd5125452263%_
                               _%tl5125552266%_
                               _%e5125652269%_
                               _%hd5125752273%_
                               _%tl5125852276%_
                               _%e5125952279%_
                               _%hd5126052283%_
                               _%tl5126152286%_
                               _%e5126252289%_
                               _%hd5126352293%_
                               _%tl5126452296%_
                               _%e5126552299%_
                               _%hd5126652303%_
                               _%tl5126752306%_
                               _%e5126852309%_
                               _%hd5126952313%_
                               _%tl5127052316%_
                               _%e5130452145%_
                               _%hd5130552149%_
                               _%tl5130652152%_
                               _%__splice9147791478%_
                               _%target5140051724%_
                               _%tl5140251727%_)
                              (if (gx#stx-pair? _%hd5126052283%_)
                                  (let ((_%e5142251574%_
                                         (gx#syntax-e _%hd5126052283%_)))
                                    (let ((_%tl5142451581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5142251574%_)))
                                          (_%hd5142351578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5142251574%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))))
                      (if (gx#stx-pair? _%hd5126052283%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5126052283%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                          (let () (declare (not safe)) (_%g5124651455%_))))
                  (if (gx#stx-pair? _%hd5126052283%_)
                      (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                        (let ((_%tl5142451581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142251574%_)))
                              (_%hd5142351578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142251574%_))))
                          (if (gx#stx-pair/null? _%tl5125852276%_)
                              (let ((_%__splice9148191482%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5125852276%_
                                      '0)))
                                (let ((_%tl5142751587%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '1)))
                                      (_%target5142551584%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9148191482%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5142751587%_)
                                      (_%__match9176791768%_
                                       _%e5125352259%_
                                       _%hd5125452263%_
                                       _%tl5125552266%_
                                       _%e5125652269%_
                                       _%hd5125752273%_
                                       _%tl5125852276%_
                                       _%e5125952279%_
                                       _%hd5126052283%_
                                       _%tl5126152286%_
                                       _%e5142251574%_
                                       _%hd5142351578%_
                                       _%tl5142451581%_
                                       _%__splice9148191482%_
                                       _%target5142551584%_
                                       _%tl5142751587%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_))))
              (if (gx#stx-pair? _%hd5126052283%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (if (gx#stx-pair/null? _%tl5125852276%_)
                          (let ((_%__splice9148191482%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5125852276%_
                                  '0)))
                            (let ((_%tl5142751587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148191482%_ '1)))
                                  (_%target5142551584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148191482%_
                                      '0))))
                              (if (gx#stx-null? _%tl5142751587%_)
                                  (_%__match9176791768%_
                                   _%e5125352259%_
                                   _%hd5125452263%_
                                   _%tl5125552266%_
                                   _%e5125652269%_
                                   _%hd5125752273%_
                                   _%tl5125852276%_
                                   _%e5125952279%_
                                   _%hd5126052283%_
                                   _%tl5126152286%_
                                   _%e5142251574%_
                                   _%hd5142351578%_
                                   _%tl5142451581%_
                                   _%__splice9148191482%_
                                   _%target5142551584%_
                                   _%tl5142751587%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5126052283%_)
                                                      (let ((_%e5142251574%_
                                                             (gx#syntax-e
                                                              _%hd5126052283%_)))
                                                        (let ((_%tl5142451581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142251574%_)))
                      (_%hd5142351578%_
                       (let () (declare (not safe)) (##car _%e5142251574%_))))
                  (if (gx#stx-pair/null? _%tl5125852276%_)
                      (let ((_%__splice9148191482%_
                             (gx#syntax-split-splice->vector
                              _%tl5125852276%_
                              '0)))
                        (let ((_%tl5142751587%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '1)))
                              (_%target5142551584%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '0))))
                          (if (gx#stx-null? _%tl5142751587%_)
                              (_%__match9176791768%_
                               _%e5125352259%_
                               _%hd5125452263%_
                               _%tl5125552266%_
                               _%e5125652269%_
                               _%hd5125752273%_
                               _%tl5125852276%_
                               _%e5125952279%_
                               _%hd5126052283%_
                               _%tl5126152286%_
                               _%e5142251574%_
                               _%hd5142351578%_
                               _%tl5142451581%_
                               _%__splice9148191482%_
                               _%target5142551584%_
                               _%tl5142751587%_)
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5126052283%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5126052283%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5125852276%_)
                                                  (let ((_%__splice9148191482%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5125852276%_
                                                          '0)))
                                                    (let ((_%tl5142751587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '1)))
                                                          (_%target5142551584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5142751587%_)
                                                          (_%__match9176791768%_
                                                           _%e5125352259%_
                                                           _%hd5125452263%_
                                                           _%tl5125552266%_
                                                           _%e5125652269%_
                                                           _%hd5125752273%_
                                                           _%tl5125852276%_
                                                           _%e5125952279%_
                                                           _%hd5126052283%_
                                                           _%tl5126152286%_
                                                           _%e5142251574%_
                                                           _%hd5142351578%_
                                                           _%tl5142451581%_
                                                           _%__splice9148191482%_
                                                           _%target5142551584%_
                                                           _%tl5142751587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5124651455%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                  (if (gx#identifier? _%hd5126352293%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97740_|
                                           _%hd5126352293%_)
                                          (if (gx#stx-pair? _%tl5127052316%_)
                                              (let ((_%e5139751714%_
                                                     (gx#syntax-e
                                                      _%tl5127052316%_)))
                                                (let ((_%tl5139951721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5139751714%_)))
                                                      (_%hd5139851718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5139751714%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5139951721%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5125852276%_)
                                                          (let ((_%__splice9147791478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5125852276%_ '0)))
                    (let ((_%tl5140251727%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9147791478%_ '1)))
                          (_%target5140051724%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9147791478%_ '0))))
                      (if (gx#stx-null? _%tl5140251727%_)
                          (_%__match9173591736%_
                           _%e5125352259%_
                           _%hd5125452263%_
                           _%tl5125552266%_
                           _%e5125652269%_
                           _%hd5125752273%_
                           _%tl5125852276%_
                           _%e5125952279%_
                           _%hd5126052283%_
                           _%tl5126152286%_
                           _%e5126252289%_
                           _%hd5126352293%_
                           _%tl5126452296%_
                           _%e5126552299%_
                           _%hd5126652303%_
                           _%tl5126752306%_
                           _%e5126852309%_
                           _%hd5126952313%_
                           _%tl5127052316%_
                           _%e5139751714%_
                           _%hd5139851718%_
                           _%tl5139951721%_
                           _%__splice9147791478%_
                           _%target5140051724%_
                           _%tl5140251727%_)
                          (if (gx#stx-pair? _%hd5126052283%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5126052283%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_))))))
                  (if (gx#stx-pair? _%hd5126052283%_)
                      (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                        (let ((_%tl5142451581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5142251574%_)))
                              (_%hd5142351578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5142251574%_))))
                          (let () (declare (not safe)) (_%g5124651455%_))))
                      (let () (declare (not safe)) (_%g5124651455%_))))
              (if (gx#stx-pair? _%hd5126052283%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (if (gx#stx-pair/null? _%tl5125852276%_)
                          (let ((_%__splice9148191482%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5125852276%_
                                  '0)))
                            (let ((_%tl5142751587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9148191482%_ '1)))
                                  (_%target5142551584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9148191482%_
                                      '0))))
                              (if (gx#stx-null? _%tl5142751587%_)
                                  (_%__match9176791768%_
                                   _%e5125352259%_
                                   _%hd5125452263%_
                                   _%tl5125552266%_
                                   _%e5125652269%_
                                   _%hd5125752273%_
                                   _%tl5125852276%_
                                   _%e5125952279%_
                                   _%hd5126052283%_
                                   _%tl5126152286%_
                                   _%e5142251574%_
                                   _%hd5142351578%_
                                   _%tl5142451581%_
                                   _%__splice9148191482%_
                                   _%target5142551584%_
                                   _%tl5142751587%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5126052283%_)
                                                  (let ((_%e5142251574%_
                                                         (gx#syntax-e
                                                          _%hd5126052283%_)))
                                                    (let ((_%tl5142451581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5142251574%_)))
                                                          (_%hd5142351578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5142251574%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5125852276%_)
                                                          (let ((_%__splice9148191482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5125852276%_ '0)))
                    (let ((_%tl5142751587%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148191482%_ '1)))
                          (_%target5142551584%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9148191482%_ '0))))
                      (if (gx#stx-null? _%tl5142751587%_)
                          (_%__match9176791768%_
                           _%e5125352259%_
                           _%hd5125452263%_
                           _%tl5125552266%_
                           _%e5125652269%_
                           _%hd5125752273%_
                           _%tl5125852276%_
                           _%e5125952279%_
                           _%hd5126052283%_
                           _%tl5126152286%_
                           _%e5142251574%_
                           _%hd5142351578%_
                           _%tl5142451581%_
                           _%__splice9148191482%_
                           _%target5142551584%_
                           _%tl5142751587%_)
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_))))
                                          (if (gx#stx-pair? _%hd5126052283%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5126052283%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5125852276%_)
                                                      (let ((_%__splice9148191482%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5125852276%_
                                                              '0)))
                                                        (let ((_%tl5142751587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '1)))
                      (_%target5142551584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '0))))
                  (if (gx#stx-null? _%tl5142751587%_)
                      (_%__match9176791768%_
                       _%e5125352259%_
                       _%hd5125452263%_
                       _%tl5125552266%_
                       _%e5125652269%_
                       _%hd5125752273%_
                       _%tl5125852276%_
                       _%e5125952279%_
                       _%hd5126052283%_
                       _%tl5126152286%_
                       _%e5142251574%_
                       _%hd5142351578%_
                       _%tl5142451581%_
                       _%__splice9148191482%_
                       _%target5142551584%_
                       _%tl5142751587%_)
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                      (if (gx#stx-pair? _%hd5126052283%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5126052283%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5125852276%_)
                                                  (let ((_%__splice9148191482%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5125852276%_
                                                          '0)))
                                                    (let ((_%tl5142751587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '1)))
                                                          (_%target5142551584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5142751587%_)
                                                          (_%__match9176791768%_
                                                           _%e5125352259%_
                                                           _%hd5125452263%_
                                                           _%tl5125552266%_
                                                           _%e5125652269%_
                                                           _%hd5125752273%_
                                                           _%tl5125852276%_
                                                           _%e5125952279%_
                                                           _%hd5126052283%_
                                                           _%tl5126152286%_
                                                           _%e5142251574%_
                                                           _%hd5142351578%_
                                                           _%tl5142451581%_
                                                           _%__splice9148191482%_
                                                           _%target5142551584%_
                                                           _%tl5142751587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5124651455%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                              (if (gx#identifier? _%hd5126352293%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97740_|
                                       _%hd5126352293%_)
                                      (if (gx#stx-pair? _%tl5127052316%_)
                                          (let ((_%e5139751714%_
                                                 (gx#syntax-e
                                                  _%tl5127052316%_)))
                                            (let ((_%tl5139951721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5139751714%_)))
                                                  (_%hd5139851718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5139751714%_))))
                                              (if (gx#stx-null?
                                                   _%tl5139951721%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5125852276%_)
                                                      (let ((_%__splice9147791478%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5125852276%_
                                                              '0)))
                                                        (let ((_%tl5140251727%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9147791478%_ '1)))
                      (_%target5140051724%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9147791478%_ '0))))
                  (if (gx#stx-null? _%tl5140251727%_)
                      (_%__match9173591736%_
                       _%e5125352259%_
                       _%hd5125452263%_
                       _%tl5125552266%_
                       _%e5125652269%_
                       _%hd5125752273%_
                       _%tl5125852276%_
                       _%e5125952279%_
                       _%hd5126052283%_
                       _%tl5126152286%_
                       _%e5126252289%_
                       _%hd5126352293%_
                       _%tl5126452296%_
                       _%e5126552299%_
                       _%hd5126652303%_
                       _%tl5126752306%_
                       _%e5126852309%_
                       _%hd5126952313%_
                       _%tl5127052316%_
                       _%e5139751714%_
                       _%hd5139851718%_
                       _%tl5139951721%_
                       _%__splice9147791478%_
                       _%target5140051724%_
                       _%tl5140251727%_)
                      (if (gx#stx-pair? _%hd5126052283%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5126052283%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                          (let () (declare (not safe)) (_%g5124651455%_))))))
              (if (gx#stx-pair? _%hd5126052283%_)
                  (let ((_%e5142251574%_ (gx#syntax-e _%hd5126052283%_)))
                    (let ((_%tl5142451581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5142251574%_)))
                          (_%hd5142351578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5142251574%_))))
                      (let () (declare (not safe)) (_%g5124651455%_))))
                  (let () (declare (not safe)) (_%g5124651455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5126052283%_)
                                                      (let ((_%e5142251574%_
                                                             (gx#syntax-e
                                                              _%hd5126052283%_)))
                                                        (let ((_%tl5142451581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142251574%_)))
                      (_%hd5142351578%_
                       (let () (declare (not safe)) (##car _%e5142251574%_))))
                  (if (gx#stx-pair/null? _%tl5125852276%_)
                      (let ((_%__splice9148191482%_
                             (gx#syntax-split-splice->vector
                              _%tl5125852276%_
                              '0)))
                        (let ((_%tl5142751587%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '1)))
                              (_%target5142551584%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '0))))
                          (if (gx#stx-null? _%tl5142751587%_)
                              (_%__match9176791768%_
                               _%e5125352259%_
                               _%hd5125452263%_
                               _%tl5125552266%_
                               _%e5125652269%_
                               _%hd5125752273%_
                               _%tl5125852276%_
                               _%e5125952279%_
                               _%hd5126052283%_
                               _%tl5126152286%_
                               _%e5142251574%_
                               _%hd5142351578%_
                               _%tl5142451581%_
                               _%__splice9148191482%_
                               _%target5142551584%_
                               _%tl5142751587%_)
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5126052283%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5126052283%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5125852276%_)
                                                      (let ((_%__splice9148191482%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5125852276%_
                                                              '0)))
                                                        (let ((_%tl5142751587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '1)))
                      (_%target5142551584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '0))))
                  (if (gx#stx-null? _%tl5142751587%_)
                      (_%__match9176791768%_
                       _%e5125352259%_
                       _%hd5125452263%_
                       _%tl5125552266%_
                       _%e5125652269%_
                       _%hd5125752273%_
                       _%tl5125852276%_
                       _%e5125952279%_
                       _%hd5126052283%_
                       _%tl5126152286%_
                       _%e5142251574%_
                       _%hd5142351578%_
                       _%tl5142451581%_
                       _%__splice9148191482%_
                       _%target5142551584%_
                       _%tl5142751587%_)
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))
                                      (if (gx#stx-pair? _%hd5126052283%_)
                                          (let ((_%e5142251574%_
                                                 (gx#syntax-e
                                                  _%hd5126052283%_)))
                                            (let ((_%tl5142451581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5142251574%_)))
                                                  (_%hd5142351578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5142251574%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5125852276%_)
                                                  (let ((_%__splice9148191482%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5125852276%_
                                                          '0)))
                                                    (let ((_%tl5142751587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '1)))
                                                          (_%target5142551584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9148191482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5142751587%_)
                                                          (_%__match9176791768%_
                                                           _%e5125352259%_
                                                           _%hd5125452263%_
                                                           _%tl5125552266%_
                                                           _%e5125652269%_
                                                           _%hd5125752273%_
                                                           _%tl5125852276%_
                                                           _%e5125952279%_
                                                           _%hd5126052283%_
                                                           _%tl5126152286%_
                                                           _%e5142251574%_
                                                           _%hd5142351578%_
                                                           _%tl5142451581%_
                                                           _%__splice9148191482%_
                                                           _%target5142551584%_
                                                           _%tl5142751587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5124651455%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                  (if (gx#stx-pair? _%hd5126052283%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5126052283%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5125852276%_)
                                              (let ((_%__splice9148191482%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5125852276%_
                                                      '0)))
                                                (let ((_%tl5142751587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148191482%_
                                                          '1)))
                                                      (_%target5142551584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9148191482%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5142751587%_)
                                                      (_%__match9176791768%_
                                                       _%e5125352259%_
                                                       _%hd5125452263%_
                                                       _%tl5125552266%_
                                                       _%e5125652269%_
                                                       _%hd5125752273%_
                                                       _%tl5125852276%_
                                                       _%e5125952279%_
                                                       _%hd5126052283%_
                                                       _%tl5126152286%_
                                                       _%e5142251574%_
                                                       _%hd5142351578%_
                                                       _%tl5142451581%_
                                                       _%__splice9148191482%_
                                                       _%target5142551584%_
                                                       _%tl5142751587%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5124651455%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))))
                  (if (gx#stx-null? _%tl5126752306%_)
                      (if (gx#stx-pair/null? _%tl5125852276%_)
                          (let ((_%__splice9146991470%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5125852276%_
                                  '0)))
                            (let ((_%tl5134051987%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9146991470%_ '1)))
                                  (_%target5133851984%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9146991470%_
                                      '0))))
                              (if (gx#stx-null? _%tl5134051987%_)
                                  (_%__match9163591636%_
                                   _%e5125352259%_
                                   _%hd5125452263%_
                                   _%tl5125552266%_
                                   _%e5125652269%_
                                   _%hd5125752273%_
                                   _%tl5125852276%_
                                   _%e5125952279%_
                                   _%hd5126052283%_
                                   _%tl5126152286%_
                                   _%e5126252289%_
                                   _%hd5126352293%_
                                   _%tl5126452296%_
                                   _%e5126552299%_
                                   _%hd5126652303%_
                                   _%tl5126752306%_
                                   _%__splice9146991470%_
                                   _%target5133851984%_
                                   _%tl5134051987%_)
                                  (if (gx#stx-pair? _%hd5126052283%_)
                                      (let ((_%e5142251574%_
                                             (gx#syntax-e _%hd5126052283%_)))
                                        (let ((_%tl5142451581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5142251574%_)))
                                              (_%hd5142351578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5142251574%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))
                          (if (gx#stx-pair? _%hd5126052283%_)
                              (let ((_%e5142251574%_
                                     (gx#syntax-e _%hd5126052283%_)))
                                (let ((_%tl5142451581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5142251574%_)))
                                      (_%hd5142351578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5142251574%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_))))
                              (let () (declare (not safe)) (_%g5124651455%_))))
                      (if (gx#stx-pair? _%hd5126052283%_)
                          (let ((_%e5142251574%_
                                 (gx#syntax-e _%hd5126052283%_)))
                            (let ((_%tl5142451581%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5142251574%_)))
                                  (_%hd5142351578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5142251574%_))))
                              (if (gx#stx-pair/null? _%tl5125852276%_)
                                  (let ((_%__splice9148191482%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5125852276%_
                                          '0)))
                                    (let ((_%tl5142751587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '1)))
                                          (_%target5142551584%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9148191482%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5142751587%_)
                                          (_%__match9176791768%_
                                           _%e5125352259%_
                                           _%hd5125452263%_
                                           _%tl5125552266%_
                                           _%e5125652269%_
                                           _%hd5125752273%_
                                           _%tl5125852276%_
                                           _%e5125952279%_
                                           _%hd5126052283%_
                                           _%tl5126152286%_
                                           _%e5142251574%_
                                           _%hd5142351578%_
                                           _%tl5142451581%_
                                           _%__splice9148191482%_
                                           _%target5142551584%_
                                           _%tl5142751587%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5124651455%_)))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5126052283%_)
                                                      (let ((_%e5142251574%_
                                                             (gx#syntax-e
                                                              _%hd5126052283%_)))
                                                        (let ((_%tl5142451581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5142251574%_)))
                      (_%hd5142351578%_
                       (let () (declare (not safe)) (##car _%e5142251574%_))))
                  (if (gx#stx-pair/null? _%tl5125852276%_)
                      (let ((_%__splice9148191482%_
                             (gx#syntax-split-splice->vector
                              _%tl5125852276%_
                              '0)))
                        (let ((_%tl5142751587%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '1)))
                              (_%target5142551584%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9148191482%_ '0))))
                          (if (gx#stx-null? _%tl5142751587%_)
                              (_%__match9176791768%_
                               _%e5125352259%_
                               _%hd5125452263%_
                               _%tl5125552266%_
                               _%e5125652269%_
                               _%hd5125752273%_
                               _%tl5125852276%_
                               _%e5125952279%_
                               _%hd5126052283%_
                               _%tl5126152286%_
                               _%e5142251574%_
                               _%hd5142351578%_
                               _%tl5142451581%_
                               _%__splice9148191482%_
                               _%target5142551584%_
                               _%tl5142751587%_)
                              (let ()
                                (declare (not safe))
                                (_%g5124651455%_)))))
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5126052283%_)
                                              (let ((_%e5142251574%_
                                                     (gx#syntax-e
                                                      _%hd5126052283%_)))
                                                (let ((_%tl5142451581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5142251574%_)))
                                                      (_%hd5142351578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5142251574%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5125852276%_)
                                                      (let ((_%__splice9148191482%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5125852276%_
                                                              '0)))
                                                        (let ((_%tl5142751587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '1)))
                      (_%target5142551584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9148191482%_ '0))))
                  (if (gx#stx-null? _%tl5142751587%_)
                      (_%__match9176791768%_
                       _%e5125352259%_
                       _%hd5125452263%_
                       _%tl5125552266%_
                       _%e5125652269%_
                       _%hd5125752273%_
                       _%tl5125852276%_
                       _%e5125952279%_
                       _%hd5126052283%_
                       _%tl5126152286%_
                       _%e5142251574%_
                       _%hd5142351578%_
                       _%tl5142451581%_
                       _%__splice9148191482%_
                       _%target5142551584%_
                       _%tl5142751587%_)
                      (let () (declare (not safe)) (_%g5124651455%_)))))
              (let () (declare (not safe)) (_%g5124651455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5124651455%_))))))
                                  (if (gx#stx-null? _%hd5125752273%_)
                                      (if (gx#stx-pair/null? _%tl5125852276%_)
                                          (let ((_%__splice9148591486%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5125852276%_
                                                  '0)))
                                            (let ((_%tl5144351485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9148591486%_
                                                      '1)))
                                                  (_%target5144151482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9148591486%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5144351485%_)
                                                  (_%__match9178991790%_
                                                   _%e5125352259%_
                                                   _%hd5125452263%_
                                                   _%tl5125552266%_
                                                   _%e5125652269%_
                                                   _%hd5125752273%_
                                                   _%tl5125852276%_
                                                   _%__splice9148591486%_
                                                   _%target5144151482%_
                                                   _%tl5144351485%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5124651455%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5124651455%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5124651455%_))))))
                          (let () (declare (not safe)) (_%g5124651455%_)))))
                  (let () (declare (not safe)) (_%g5124651455%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52415%_)
        (let* ((_%g5241952453%_
                (lambda (_%g5242052449%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5242052449%_)))
               (_%g5241852574%_
                (lambda (_%g5242052457%_)
                  (if (gx#stx-pair? _%g5242052457%_)
                      (let ((_%e5242452460%_ (gx#syntax-e _%g5242052457%_)))
                        (let ((_%hd5242552464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5242452460%_)))
                              (_%tl5242652467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5242452460%_))))
                          (if (gx#stx-pair? _%tl5242652467%_)
                              (let ((_%e5242752470%_
                                     (gx#syntax-e _%tl5242652467%_)))
                                (let ((_%hd5242852474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5242752470%_)))
                                      (_%tl5242952477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5242752470%_))))
                                  (if (gx#stx-pair? _%hd5242852474%_)
                                      (let ((_%e5243052480%_
                                             (gx#syntax-e _%hd5242852474%_)))
                                        (let ((_%hd5243152484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5243052480%_)))
                                              (_%tl5243252487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5243052480%_))))
                                          (if (gx#stx-pair? _%tl5243252487%_)
                                              (let ((_%e5243352490%_
                                                     (gx#syntax-e
                                                      _%tl5243252487%_)))
                                                (let ((_%hd5243452494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5243352490%_)))
                                                      (_%tl5243552497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5243352490%_))))
                                                  (if (gx#identifier?
                                                       _%hd5243452494%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97742_|
                                                           _%hd5243452494%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5243552497%_)
                                                              (let ((_%e5243652500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5243552497%_)))
                        (let ((_%hd5243752504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5243652500%_)))
                              (_%tl5243852507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5243652500%_))))
                          (if (gx#stx-null? _%tl5243852507%_)
                              (if (gx#stx-pair/null? _%tl5242952477%_)
                                  (let ((_g97743_
                                         (gx#syntax-split-splice
                                          _%tl5242952477%_
                                          '0)))
                                    (begin
                                      (let ((_g97744_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g97743_)
                                                   (##values-length _g97743_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g97744_ 2)))
                                            (error "Context expects 2 values"
                                                   _g97744_)))
                                      (let ((_%target5243952510%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g97743_ 0)))
                                            (_%tl5244152513%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g97743_ 1))))
                                        (if (gx#stx-null? _%tl5244152513%_)
                                            (letrec ((_%loop5244252516%_
                                                      (lambda (_%hd5244052520%_
                                                               _%body5244652523%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5244052520%_)
                                                            (let ((_%e5244352525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5244052520%_)))
                      (let ((_%lp-hd5244452529%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5244352525%_)))
                            (_%lp-tl5244552532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5244352525%_))))
                        (_%loop5244252516%_
                         _%lp-tl5244552532%_
                         (cons _%lp-hd5244452529%_ _%body5244652523%_))))
                    (let ((_%body5244752535%_ (reverse _%body5244652523%_)))
                      ((lambda (_%g5242152538%_
                                _%g5242252540%_
                                _%g5242352541%_)
                         (if (gx#identifier? _%g5242352541%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5242252540%_
                                               (cons _%g5242352541%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5256552568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5256652571%_)
                            (cons _%g5256552568%_ _%g5256652571%_))
                          '()
                          _%g5242152538%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5242352541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5242252540%_ (cons _%g5242352541%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5241952453%_ _%g5242052457%_)))
                       _%body5244752535%_
                       _%hd5243752504%_
                       _%hd5243152484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5244252516%_
                                               _%target5243952510%_
                                               '()))
                                            (_%g5241952453%_
                                             _%g5242052457%_)))))
                                  (_%g5241952453%_ _%g5242052457%_))
                              (_%g5241952453%_ _%g5242052457%_))))
                      (_%g5241952453%_ _%g5242052457%_))
                  (_%g5241952453%_ _%g5242052457%_))
              (_%g5241952453%_ _%g5242052457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5241952453%_
                                               _%g5242052457%_))))
                                      (_%g5241952453%_ _%g5242052457%_))))
                              (_%g5241952453%_ _%g5242052457%_))))
                      (_%g5241952453%_ _%g5242052457%_)))))
          (_%g5241852574%_ _%$stx52415%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53138%_ _%slot53140%_)
        (let ((_%$e53142%_
               (let ((__obj97546 _%klass53138%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97546
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97546 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97546
                      'slot-types)))))
          (if _%$e53142%_
              ((lambda (_%slot-types53146%_)
                 (agetq _%slot53140%_ _%slot-types53146%_))
               _%$e53142%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53119%_ _%slot53121%_)
        (let ((_%$e53123%_
               (let ((__obj97547 _%klass53119%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97547
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97547 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97547
                      'slot-defaults)))))
          (if _%$e53123%_
              ((lambda (_%slot-defaults53127%_)
                 (let ((_%$e53130%_
                        (agetq _%slot53121%_ _%slot-defaults53127%_)))
                   (if _%$e53130%_
                       (gx#syntax-local-introduce _%$e53130%_)
                       '#f)))
               _%$e53123%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53100%_ _%slot53102%_)
        (let ((_%$e53104%_
               (let ((__obj97548 _%klass53100%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97548
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97548 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97548
                      'slot-defaults)))))
          (if _%$e53104%_
              ((lambda (_%slot-defaults53108%_)
                 (let ((_%$e53111%_
                        (agetq _%slot53102%_ _%slot-defaults53108%_)))
                   (if _%$e53111%_
                       (gx#syntax-local-introduce _%$e53111%_)
                       '#f)))
               _%$e53104%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52869%_ _%slot52871%_)
        (let ((_%contract5287252874%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52869%_
                _%slot52871%_)))
          (if _%contract5287252874%_
              (let* ((_%contract52877%_ _%contract5287252874%_)
                     (_%__stx9179291793%_ _%contract52877%_)
                     (_%g5288252919%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9179291793%_))))
                (let ((_%__kont9179591796%_
                       (lambda (_%g5288453069%_ _%g5288553071%_)
                         (not (gx#free-identifier=?
                               _%g5288553071%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9179791798%_
                       (lambda (_%g5289253009%_
                                _%g5289353011%_
                                _%g5289453012%_)
                         (not (gx#free-identifier=?
                               _%g5289353011%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9179991800%_ (lambda (_%g5290752946%_) '#f)))
                  (let* ((_%__match9184591846%_
                          (lambda (_%e5289552969%_
                                   _%hd5289652973%_
                                   _%tl5289752976%_
                                   _%e5289852979%_
                                   _%hd5289952983%_
                                   _%tl5290052986%_
                                   _%e5290152989%_
                                   _%hd5290252993%_
                                   _%tl5290352996%_
                                   _%e5290452999%_
                                   _%hd5290553003%_
                                   _%tl5290653006%_)
                            (let ((_%g5289253009%_ _%hd5290553003%_)
                                  (_%g5289353011%_ _%hd5290252993%_)
                                  (_%g5289453012%_ _%hd5289952983%_))
                              (if (and (gx#identifier? _%g5289353011%_)
                                       (or (gx#free-identifier=?
                                            _%g5289353011%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5289353011%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5289353011%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5289353011%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9179791798%_
                                   _%g5289253009%_
                                   _%g5289353011%_
                                   _%g5289453012%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5288252919%_))))))
                         (_%__match9181591816%_
                          (lambda (_%e5288653049%_
                                   _%hd5288753053%_
                                   _%tl5288853056%_
                                   _%e5288953059%_
                                   _%hd5289053063%_
                                   _%tl5289153066%_)
                            (let ((_%g5288453069%_ _%hd5289053063%_)
                                  (_%g5288553071%_ _%hd5288753053%_))
                              (if (and (gx#identifier? _%g5288553071%_)
                                       (or (gx#free-identifier=?
                                            _%g5288553071%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5288553071%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5288553071%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5288553071%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9179591796%_
                                   _%g5288453069%_
                                   _%g5288553071%_)
                                  (if (gx#identifier? _%hd5288753053%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97745_|
                                           _%hd5288753053%_)
                                          (_%__kont9179991800%_
                                           _%hd5289053063%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5288252919%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5288252919%_))))))))
                    (if (gx#stx-pair? _%__stx9179291793%_)
                        (let ((_%e5288653049%_
                               (gx#syntax-e _%__stx9179291793%_)))
                          (let ((_%tl5288853056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5288653049%_)))
                                (_%hd5288753053%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5288653049%_))))
                            (if (gx#stx-pair? _%tl5288853056%_)
                                (let ((_%e5288953059%_
                                       (gx#syntax-e _%tl5288853056%_)))
                                  (let ((_%tl5289153066%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5288953059%_)))
                                        (_%hd5289053063%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5288953059%_))))
                                    (if (gx#stx-null? _%tl5289153066%_)
                                        (_%__match9181591816%_
                                         _%e5288653049%_
                                         _%hd5288753053%_
                                         _%tl5288853056%_
                                         _%e5288953059%_
                                         _%hd5289053063%_
                                         _%tl5289153066%_)
                                        (if (gx#identifier? _%hd5288753053%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g97745_|
                                                 _%hd5288753053%_)
                                                (if (gx#stx-pair?
                                                     _%tl5289153066%_)
                                                    (let ((_%e5290152989%_
                                                           (gx#syntax-e
                                                            _%tl5289153066%_)))
                                                      (let ((_%tl5290352996%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5290152989%_)))
                    (_%hd5290252993%_
                     (let () (declare (not safe)) (##car _%e5290152989%_))))
                (if (gx#stx-pair? _%tl5290352996%_)
                    (let ((_%e5290452999%_ (gx#syntax-e _%tl5290352996%_)))
                      (let ((_%tl5290653006%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5290452999%_)))
                            (_%hd5290553003%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5290452999%_))))
                        (if (gx#stx-null? _%tl5290653006%_)
                            (_%__match9184591846%_
                             _%e5288653049%_
                             _%hd5288753053%_
                             _%tl5288853056%_
                             _%e5288953059%_
                             _%hd5289053063%_
                             _%tl5289153066%_
                             _%e5290152989%_
                             _%hd5290252993%_
                             _%tl5290352996%_
                             _%e5290452999%_
                             _%hd5290553003%_
                             _%tl5290653006%_)
                            (let () (declare (not safe)) (_%g5288252919%_)))))
                    (let () (declare (not safe)) (_%g5288252919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5288252919%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5288252919%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5288252919%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5288252919%_)))))
                        (let () (declare (not safe)) (_%g5288252919%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52638%_ _%slot52640%_)
        (let ((_%contract5264152643%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52638%_
                _%slot52640%_)))
          (if _%contract5264152643%_
              (let* ((_%contract52646%_ _%contract5264152643%_)
                     (_%__stx9186691867%_ _%contract52646%_)
                     (_%g5265152688%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9186691867%_))))
                (let ((_%__kont9186991870%_
                       (lambda (_%g5265352838%_ _%g5265452840%_)
                         (not (gx#free-identifier=?
                               _%g5265452840%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9187191872%_
                       (lambda (_%g5266152778%_
                                _%g5266252780%_
                                _%g5266352781%_)
                         '#t))
                      (_%__kont9187391874%_ (lambda (_%g5267652715%_) '#t)))
                  (let* ((_%__match9191991920%_
                          (lambda (_%e5266452738%_
                                   _%hd5266552742%_
                                   _%tl5266652745%_
                                   _%e5266752748%_
                                   _%hd5266852752%_
                                   _%tl5266952755%_
                                   _%e5267052758%_
                                   _%hd5267152762%_
                                   _%tl5267252765%_
                                   _%e5267352768%_
                                   _%hd5267452772%_
                                   _%tl5267552775%_)
                            (let ((_%g5266152778%_ _%hd5267452772%_)
                                  (_%g5266252780%_ _%hd5267152762%_)
                                  (_%g5266352781%_ _%hd5266852752%_))
                              (if (and (gx#identifier? _%g5266252780%_)
                                       (or (gx#free-identifier=?
                                            _%g5266252780%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5266252780%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5266252780%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5266252780%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9187191872%_
                                   _%g5266152778%_
                                   _%g5266252780%_
                                   _%g5266352781%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5265152688%_))))))
                         (_%__match9188991890%_
                          (lambda (_%e5265552818%_
                                   _%hd5265652822%_
                                   _%tl5265752825%_
                                   _%e5265852828%_
                                   _%hd5265952832%_
                                   _%tl5266052835%_)
                            (let ((_%g5265352838%_ _%hd5265952832%_)
                                  (_%g5265452840%_ _%hd5265652822%_))
                              (if (and (gx#identifier? _%g5265452840%_)
                                       (or (gx#free-identifier=?
                                            _%g5265452840%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5265452840%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5265452840%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5265452840%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9186991870%_
                                   _%g5265352838%_
                                   _%g5265452840%_)
                                  (if (gx#identifier? _%hd5265652822%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97746_|
                                           _%hd5265652822%_)
                                          (_%__kont9187391874%_
                                           _%hd5265952832%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5265152688%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5265152688%_))))))))
                    (if (gx#stx-pair? _%__stx9186691867%_)
                        (let ((_%e5265552818%_
                               (gx#syntax-e _%__stx9186691867%_)))
                          (let ((_%tl5265752825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5265552818%_)))
                                (_%hd5265652822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5265552818%_))))
                            (if (gx#stx-pair? _%tl5265752825%_)
                                (let ((_%e5265852828%_
                                       (gx#syntax-e _%tl5265752825%_)))
                                  (let ((_%tl5266052835%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5265852828%_)))
                                        (_%hd5265952832%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5265852828%_))))
                                    (if (gx#stx-null? _%tl5266052835%_)
                                        (_%__match9188991890%_
                                         _%e5265552818%_
                                         _%hd5265652822%_
                                         _%tl5265752825%_
                                         _%e5265852828%_
                                         _%hd5265952832%_
                                         _%tl5266052835%_)
                                        (if (gx#identifier? _%hd5265652822%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g97746_|
                                                 _%hd5265652822%_)
                                                (if (gx#stx-pair?
                                                     _%tl5266052835%_)
                                                    (let ((_%e5267052758%_
                                                           (gx#syntax-e
                                                            _%tl5266052835%_)))
                                                      (let ((_%tl5267252765%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5267052758%_)))
                    (_%hd5267152762%_
                     (let () (declare (not safe)) (##car _%e5267052758%_))))
                (if (gx#stx-pair? _%tl5267252765%_)
                    (let ((_%e5267352768%_ (gx#syntax-e _%tl5267252765%_)))
                      (let ((_%tl5267552775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5267352768%_)))
                            (_%hd5267452772%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5267352768%_))))
                        (if (gx#stx-null? _%tl5267552775%_)
                            (_%__match9191991920%_
                             _%e5265552818%_
                             _%hd5265652822%_
                             _%tl5265752825%_
                             _%e5265852828%_
                             _%hd5265952832%_
                             _%tl5266052835%_
                             _%e5267052758%_
                             _%hd5267152762%_
                             _%tl5267252765%_
                             _%e5267352768%_
                             _%hd5267452772%_
                             _%tl5267552775%_)
                            (let () (declare (not safe)) (_%g5265152688%_)))))
                    (let () (declare (not safe)) (_%g5265152688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5265152688%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5265152688%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5265152688%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5265152688%_)))))
                        (let () (declare (not safe)) (_%g5265152688%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52625%_)
        (if (gx#identifier? _%id52625%_)
            (let* ((_%str52628%_ (symbol->string (gx#stx-e _%id52625%_)))
                   (_%index5263052632%_ (string-index _%str52628%_ '#\.)))
              (if _%index5263052632%_
                  (let ((_%index52635%_ _%index5263052632%_))
                    (if (let () (declare (not safe)) (##fx> _%index52635%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52628%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52618%_ _%id52620%_)
        (let ((_%parts52622%_
               (string-split (symbol->string (gx#stx-e _%id52620%_)) '#\.)))
          (if (find string-empty? _%parts52622%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52618%_
               _%id52620%_)
              (cons (gx#stx-identifier _%id52620%_ (car _%parts52622%_))
                    (map string->symbol (cdr _%parts52622%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52599%_ _%klass-or-id52601%_ _%slot52602%_)
        (let* ((_%klass52604%_
                (if (gx#identifier? _%klass-or-id52601%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52599%_
                       _%klass-or-id52601%_))
                    _%klass-or-id52601%_))
               (_%accessors52607%_
                (let ((__obj97549 _%klass52604%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97549
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97549 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj97549
                       'unchecked-accessors))))
               (_%$e52612%_ (agetq _%slot52602%_ _%accessors52607%_)))
          (if _%$e52612%_
              _%$e52612%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52599%_
               _%klass52604%_
               _%slot52602%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52579%_
               _%klass-or-id52581%_
               _%slot52582%_
               _%checked?52583%_)
        (let* ((_%klass52585%_
                (if (gx#identifier? _%klass-or-id52581%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52579%_
                       _%klass-or-id52581%_))
                    _%klass-or-id52581%_))
               (_%mutators52588%_
                (if _%checked?52583%_
                    (let ((__obj97550 _%klass52585%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97550
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97550 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97550
                           'mutators)))
                    (let ((__obj97551 _%klass52585%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97551
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97551 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97551
                           'unchecked-mutators)))))
               (_%$e52593%_ (agetq _%slot52582%_ _%mutators52588%_)))
          (if _%$e52593%_
              _%$e52593%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52579%_
               _%klass52585%_
               _%slot52582%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53151%_)
        (letrec ((_%expand-body53154%_
                  (lambda (_%klass54052%_
                           _%var54054%_
                           _%Type54055%_
                           _%body54056%_
                           _%checked?54057%_)
                    (let* ((_%g5405954103%_
                            (lambda (_%g5406054099%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5406054099%_)))
                           (_%g5405854258%_
                            (lambda (_%g5406054107%_)
                              (if (gx#stx-pair? _%g5406054107%_)
                                  (let ((_%e5406854110%_
                                         (gx#syntax-e _%g5406054107%_)))
                                    (let ((_%hd5406954114%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5406854110%_)))
                                          (_%tl5407054117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5406854110%_))))
                                      (if (gx#stx-pair? _%tl5407054117%_)
                                          (let ((_%e5407154120%_
                                                 (gx#syntax-e
                                                  _%tl5407054117%_)))
                                            (let ((_%hd5407254124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5407154120%_)))
                                                  (_%tl5407354127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5407154120%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5407354127%_)
                                                  (let ((_%e5407454130%_
                                                         (gx#syntax-e
                                                          _%tl5407354127%_)))
                                                    (let ((_%hd5407554134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5407454130%_)))
                                                          (_%tl5407654137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5407454130%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5407654137%_)
                                                          (let ((_%e5407754140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5407654137%_)))
                    (let ((_%hd5407854144%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5407754140%_)))
                          (_%tl5407954147%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5407754140%_))))
                      (if (gx#stx-pair? _%tl5407954147%_)
                          (let ((_%e5408054150%_
                                 (gx#syntax-e _%tl5407954147%_)))
                            (let ((_%hd5408154154%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5408054150%_)))
                                  (_%tl5408254157%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5408054150%_))))
                              (if (gx#stx-pair? _%tl5408254157%_)
                                  (let ((_%e5408354160%_
                                         (gx#syntax-e _%tl5408254157%_)))
                                    (let ((_%hd5408454164%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5408354160%_)))
                                          (_%tl5408554167%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5408354160%_))))
                                      (if (gx#stx-pair? _%tl5408554167%_)
                                          (let ((_%e5408654170%_
                                                 (gx#syntax-e
                                                  _%tl5408554167%_)))
                                            (let ((_%hd5408754174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5408654170%_)))
                                                  (_%tl5408854177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5408654170%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5408754174%_)
                                                  (let ((_g97747_
                                                         (gx#syntax-split-splice
                                                          _%hd5408754174%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g97748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g97747_)
                           (##values-length _g97747_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97748_ 2)))
                    (error "Context expects 2 values" _g97748_)))
              (let ((_%target5408954180%_
                     (let () (declare (not safe)) (##values-ref _g97747_ 0)))
                    (_%tl5409154183%_
                     (let () (declare (not safe)) (##values-ref _g97747_ 1))))
                (if (gx#stx-null? _%tl5409154183%_)
                    (letrec ((_%loop5409254186%_
                              (lambda (_%hd5409054190%_ _%body5409654193%_)
                                (if (gx#stx-pair? _%hd5409054190%_)
                                    (let ((_%e5409354195%_
                                           (gx#syntax-e _%hd5409054190%_)))
                                      (let ((_%lp-hd5409454199%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5409354195%_)))
                                            (_%lp-tl5409554202%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5409354195%_))))
                                        (_%loop5409254186%_
                                         _%lp-tl5409554202%_
                                         (cons _%lp-hd5409454199%_
                                               _%body5409654193%_))))
                                    (let ((_%body5409754205%_
                                           (reverse _%body5409654193%_)))
                                      (if (gx#stx-null? _%tl5408854177%_)
                                          ((lambda (_%g5406154208%_
                                                    _%g5406254210%_
                                                    _%g5406354211%_
                                                    _%g5406454212%_
                                                    _%g5406554213%_
                                                    _%g5406654214%_
                                                    _%g5406754215%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5406554213%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5406654214%_ '()))
                                         (cons _%g5406554213%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5406754215%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5406554213%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5406454212%_ '()))
                               (cons _%g5406354211%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5406254210%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5424954252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5425054255%_)
                      (cons _%g5424954252%_ _%g5425054255%_))
                    '()
                    _%g5406154208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5409754205%_
                                           _%hd5408454164%_
                                           _%hd5408154154%_
                                           _%hd5407854144%_
                                           _%hd5407554134%_
                                           _%hd5407254124%_
                                           _%hd5406954114%_)
                                          (_%g5405954103%_
                                           _%g5406054107%_)))))))
                      (_%loop5409254186%_ _%target5408954180%_ '()))
                    (_%g5405954103%_ _%g5406054107%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5405954103%_
                                                   _%g5406054107%_))))
                                          (_%g5405954103%_ _%g5406054107%_))))
                                  (_%g5405954103%_ _%g5406054107%_))))
                          (_%g5405954103%_ _%g5406054107%_))))
                  (_%g5405954103%_ _%g5406054107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5405954103%_
                                                   _%g5406054107%_))))
                                          (_%g5405954103%_ _%g5406054107%_))))
                                  (_%g5405954103%_ _%g5406054107%_)))))
                      (_%g5405854258%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj97552 _%klass54052%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj97552
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj97552
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj97552
                                    'type-descriptor)))
                             _%var54054%_
                             _%klass54052%_
                             _%checked?54057%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54056%_)))))
                 (_%expand53156%_
                  (lambda (_%var53944%_
                           _%Type53946%_
                           _%body53947%_
                           _%checked?53948%_
                           _%checked-mutators?53949%_
                           _%maybe?53950%_)
                    (let* ((_%klass53952%_
                            (gx#syntax-local-value _%Type53946%_ false))
                           (_%expr-body53959%_
                            (_%expand-body53154%_
                             _%klass53952%_
                             _%var53944%_
                             _%Type53946%_
                             _%body53947%_
                             (let ((_%$e53955%_ _%checked?53948%_))
                               (if _%$e53955%_
                                   _%$e53955%_
                                   _%checked-mutators?53949%_)))))
                      (if _%checked?53948%_
                          (let* ((_%g5396453983%_
                                  (lambda (_%g5396553979%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5396553979%_)))
                                 (_%g5396354045%_
                                  (lambda (_%g5396553987%_)
                                    (if (gx#stx-pair? _%g5396553987%_)
                                        (let ((_%e5396953990%_
                                               (gx#syntax-e _%g5396553987%_)))
                                          (let ((_%hd5397053994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5396953990%_)))
                                                (_%tl5397153997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5396953990%_))))
                                            (if (gx#stx-pair? _%tl5397153997%_)
                                                (let ((_%e5397254000%_
                                                       (gx#syntax-e
                                                        _%tl5397153997%_)))
                                                  (let ((_%hd5397354004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5397254000%_)))
                                                        (_%tl5397454007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5397254000%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5397454007%_)
                                                        (let ((_%e5397554010%_
                                                               (gx#syntax-e
                                                                _%tl5397454007%_)))
                                                          (let ((_%hd5397654014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5397554010%_)))
                        (_%tl5397754017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5397554010%_))))
                    (if (gx#stx-null? _%tl5397754017%_)
                        ((lambda (_%g5396654020%_
                                  _%g5396754022%_
                                  _%g5396854023%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5396754022%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5396854023%_ '())))
                                       (cons _%g5396654020%_ '()))))
                         _%hd5397654014%_
                         _%hd5397354004%_
                         _%hd5397053994%_)
                        (_%g5396453983%_ _%g5396553987%_))))
                (_%g5396453983%_ _%g5396553987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5396453983%_
                                                 _%g5396553987%_))))
                                        (_%g5396453983%_ _%g5396553987%_)))))
                            (_%g5396354045%_
                             (list (let ((_%instance?54049%_
                                          (let ((__obj97553 _%klass53952%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj97553
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj97553
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj97553
                                                 'predicate)))))
                                     (if _%maybe?53950%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54049%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54049%_))
                                   _%var53944%_
                                   _%expr-body53959%_)))
                          _%expr-body53959%_)))))
          (let* ((_%__stx9194091941%_ _%stx53151%_)
                 (_%g5316253305%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9194091941%_))))
            (let ((_%__kont9194391944%_
                   (lambda (_%g5316453872%_
                            _%g5316553874%_
                            _%g5316653875%_
                            _%g5316753876%_)
                     (let* ((_%g5390153909%_
                             (lambda (_%g5390253905%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5390253905%_)))
                            (_%g5390053936%_
                             (lambda (_%g5390253913%_)
                               ((lambda (_%g5390353916%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5316753876%_
                                                    (cons _%g5316653875%_
                                                          (cons _%g5390353916%_
                                                                '())))
                                              (foldr (lambda (_%g5392753930%_
                                                              _%g5392853933%_)
                                                       (cons _%g5392753930%_
                                                             _%g5392853933%_))
                                                     '()
                                                     _%g5316453872%_))))
                                _%g5390253913%_))))
                       (_%g5390053936%_
                        (let ((__obj97554
                               (gx#syntax-local-value _%g5316553874%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj97554
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj97554
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj97554
                               'identifier)))))))
                  (_%__kont9194791948%_
                   (lambda (_%g5319253752%_ _%g5319353754%_ _%g5319453755%_)
                     (_%expand53156%_
                      _%g5319453755%_
                      _%g5319353754%_
                      (foldr (lambda (_%g5377853781%_ _%g5377953784%_)
                               (cons _%g5377853781%_ _%g5377953784%_))
                             '()
                             _%g5319253752%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9195191952%_
                   (lambda (_%g5321953632%_ _%g5322053634%_ _%g5322153635%_)
                     (_%expand53156%_
                      _%g5322153635%_
                      _%g5322053634%_
                      (foldr (lambda (_%g5365853661%_ _%g5365953664%_)
                               (cons _%g5365853661%_ _%g5365953664%_))
                             '()
                             _%g5321953632%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9195591956%_
                   (lambda (_%g5324653512%_ _%g5324753514%_ _%g5324853515%_)
                     (_%expand53156%_
                      _%g5324853515%_
                      _%g5324753514%_
                      (foldr (lambda (_%g5353853541%_ _%g5353953544%_)
                               (cons _%g5353853541%_ _%g5353953544%_))
                             '()
                             _%g5324653512%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9195991960%_
                   (lambda (_%g5327353390%_ _%g5327453392%_ _%g5327553393%_)
                     (_%expand53156%_
                      _%g5327553393%_
                      _%g5327453392%_
                      (foldr (lambda (_%g5341853421%_ _%g5341953424%_)
                               (cons _%g5341853421%_ _%g5341953424%_))
                             '()
                             _%g5327353390%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9217992180%_
                      (lambda (_%e5327653312%_
                               _%hd5327753316%_
                               _%tl5327853319%_
                               _%e5327953322%_
                               _%hd5328053326%_
                               _%tl5328153329%_
                               _%e5328253332%_
                               _%hd5328353336%_
                               _%tl5328453339%_
                               _%e5328553342%_
                               _%hd5328653346%_
                               _%tl5328753349%_
                               _%e5328853352%_
                               _%hd5328953356%_
                               _%tl5329053359%_
                               _%__splice9196191962%_
                               _%target5329153362%_
                               _%tl5329353365%_)
                        (letrec ((_%loop5329453368%_
                                  (lambda (_%hd5329253372%_ _%body5329853375%_)
                                    (if (gx#stx-pair? _%hd5329253372%_)
                                        (let ((_%e5329553377%_
                                               (gx#syntax-e _%hd5329253372%_)))
                                          (let ((_%lp-tl5329753384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5329553377%_)))
                                                (_%lp-hd5329653381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5329553377%_))))
                                            (_%loop5329453368%_
                                             _%lp-tl5329753384%_
                                             (cons _%lp-hd5329653381%_
                                                   _%body5329853375%_))))
                                        (let ((_%body5329953387%_
                                               (reverse _%body5329853375%_)))
                                          (let ((_%g5327353390%_
                                                 _%body5329953387%_)
                                                (_%g5327453392%_
                                                 _%hd5328953356%_)
                                                (_%g5327553393%_
                                                 _%hd5328353336%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5327453392%_))
                                                (_%__kont9195991960%_
                                                 _%g5327353390%_
                                                 _%g5327453392%_
                                                 _%g5327553393%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))))))))
                          (_%loop5329453368%_ _%target5329153362%_ '()))))
                     (_%__match9213592136%_
                      (lambda (_%e5324953434%_
                               _%hd5325053438%_
                               _%tl5325153441%_
                               _%e5325253444%_
                               _%hd5325353448%_
                               _%tl5325453451%_
                               _%e5325553454%_
                               _%hd5325653458%_
                               _%tl5325753461%_
                               _%e5325853464%_
                               _%hd5325953468%_
                               _%tl5326053471%_
                               _%e5326153474%_
                               _%hd5326253478%_
                               _%tl5326353481%_
                               _%__splice9195791958%_
                               _%target5326453484%_
                               _%tl5326653487%_)
                        (letrec ((_%loop5326753490%_
                                  (lambda (_%hd5326553494%_ _%body5327153497%_)
                                    (if (gx#stx-pair? _%hd5326553494%_)
                                        (let ((_%e5326853499%_
                                               (gx#syntax-e _%hd5326553494%_)))
                                          (let ((_%lp-tl5327053506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5326853499%_)))
                                                (_%lp-hd5326953503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5326853499%_))))
                                            (_%loop5326753490%_
                                             _%lp-tl5327053506%_
                                             (cons _%lp-hd5326953503%_
                                                   _%body5327153497%_))))
                                        (let ((_%body5327253509%_
                                               (reverse _%body5327153497%_)))
                                          (let ((_%g5324653512%_
                                                 _%body5327253509%_)
                                                (_%g5324753514%_
                                                 _%hd5326253478%_)
                                                (_%g5324853515%_
                                                 _%hd5325653458%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5324753514%_))
                                                (_%__kont9195591956%_
                                                 _%g5324653512%_
                                                 _%g5324753514%_
                                                 _%g5324853515%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))))))))
                          (_%loop5326753490%_ _%target5326453484%_ '()))))
                     (_%__match9209192092%_
                      (lambda (_%e5322253554%_
                               _%hd5322353558%_
                               _%tl5322453561%_
                               _%e5322553564%_
                               _%hd5322653568%_
                               _%tl5322753571%_
                               _%e5322853574%_
                               _%hd5322953578%_
                               _%tl5323053581%_
                               _%e5323153584%_
                               _%hd5323253588%_
                               _%tl5323353591%_
                               _%e5323453594%_
                               _%hd5323553598%_
                               _%tl5323653601%_
                               _%__splice9195391954%_
                               _%target5323753604%_
                               _%tl5323953607%_)
                        (letrec ((_%loop5324053610%_
                                  (lambda (_%hd5323853614%_ _%body5324453617%_)
                                    (if (gx#stx-pair? _%hd5323853614%_)
                                        (let ((_%e5324153619%_
                                               (gx#syntax-e _%hd5323853614%_)))
                                          (let ((_%lp-tl5324353626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5324153619%_)))
                                                (_%lp-hd5324253623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5324153619%_))))
                                            (_%loop5324053610%_
                                             _%lp-tl5324353626%_
                                             (cons _%lp-hd5324253623%_
                                                   _%body5324453617%_))))
                                        (let ((_%body5324553629%_
                                               (reverse _%body5324453617%_)))
                                          (let ((_%g5321953632%_
                                                 _%body5324553629%_)
                                                (_%g5322053634%_
                                                 _%hd5323553598%_)
                                                (_%g5322153635%_
                                                 _%hd5322953578%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5322053634%_))
                                                (_%__kont9195191952%_
                                                 _%g5321953632%_
                                                 _%g5322053634%_
                                                 _%g5322153635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))))))))
                          (_%loop5324053610%_ _%target5323753604%_ '()))))
                     (_%__match9204792048%_
                      (lambda (_%e5319553674%_
                               _%hd5319653678%_
                               _%tl5319753681%_
                               _%e5319853684%_
                               _%hd5319953688%_
                               _%tl5320053691%_
                               _%e5320153694%_
                               _%hd5320253698%_
                               _%tl5320353701%_
                               _%e5320453704%_
                               _%hd5320553708%_
                               _%tl5320653711%_
                               _%e5320753714%_
                               _%hd5320853718%_
                               _%tl5320953721%_
                               _%__splice9194991950%_
                               _%target5321053724%_
                               _%tl5321253727%_)
                        (letrec ((_%loop5321353730%_
                                  (lambda (_%hd5321153734%_ _%body5321753737%_)
                                    (if (gx#stx-pair? _%hd5321153734%_)
                                        (let ((_%e5321453739%_
                                               (gx#syntax-e _%hd5321153734%_)))
                                          (let ((_%lp-tl5321653746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5321453739%_)))
                                                (_%lp-hd5321553743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5321453739%_))))
                                            (_%loop5321353730%_
                                             _%lp-tl5321653746%_
                                             (cons _%lp-hd5321553743%_
                                                   _%body5321753737%_))))
                                        (let ((_%body5321853749%_
                                               (reverse _%body5321753737%_)))
                                          (let ((_%g5319253752%_
                                                 _%body5321853749%_)
                                                (_%g5319353754%_
                                                 _%hd5320853718%_)
                                                (_%g5319453755%_
                                                 _%hd5320253698%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5319353754%_))
                                                (_%__kont9194791948%_
                                                 _%g5319253752%_
                                                 _%g5319353754%_
                                                 _%g5319453755%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))))))))
                          (_%loop5321353730%_ _%target5321053724%_ '()))))
                     (_%__match9202792028%_
                      (lambda (_%e5319553674%_
                               _%hd5319653678%_
                               _%tl5319753681%_
                               _%e5319853684%_
                               _%hd5319953688%_
                               _%tl5320053691%_
                               _%e5320153694%_
                               _%hd5320253698%_
                               _%tl5320353701%_
                               _%e5320453704%_
                               _%hd5320553708%_
                               _%tl5320653711%_)
                        (if (gx#identifier? _%hd5320553708%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g97749_|
                                 _%hd5320553708%_)
                                (if (gx#stx-pair? _%tl5320653711%_)
                                    (let ((_%e5320753714%_
                                           (gx#syntax-e _%tl5320653711%_)))
                                      (let ((_%tl5320953721%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5320753714%_)))
                                            (_%hd5320853718%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5320753714%_))))
                                        (if (gx#stx-null? _%tl5320953721%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5320053691%_)
                                                (let ((_%__splice9194991950%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5320053691%_
                                                        '0)))
                                                  (let ((_%tl5321253727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9194991950%_
                                                            '1)))
                                                        (_%target5321053724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9194991950%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5321253727%_)
                                                        (_%__match9204792048%_
                                                         _%e5319553674%_
                                                         _%hd5319653678%_
                                                         _%tl5319753681%_
                                                         _%e5319853684%_
                                                         _%hd5319953688%_
                                                         _%tl5320053691%_
                                                         _%e5320153694%_
                                                         _%hd5320253698%_
                                                         _%tl5320353701%_
                                                         _%e5320453704%_
                                                         _%hd5320553708%_
                                                         _%tl5320653711%_
                                                         _%e5320753714%_
                                                         _%hd5320853718%_
                                                         _%tl5320953721%_
                                                         _%__splice9194991950%_
                                                         _%target5321053724%_
                                                         _%tl5321253727%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5316253305%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316253305%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5316253305%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g97750_|
                                     _%hd5320553708%_)
                                    (if (gx#stx-pair? _%tl5320653711%_)
                                        (let ((_%e5323453594%_
                                               (gx#syntax-e _%tl5320653711%_)))
                                          (let ((_%tl5323653601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5323453594%_)))
                                                (_%hd5323553598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5323453594%_))))
                                            (if (gx#stx-null? _%tl5323653601%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5320053691%_)
                                                    (let ((_%__splice9195391954%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5320053691%_
                                                            '0)))
                                                      (let ((_%tl5323953607%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9195391954%_ '1)))
                    (_%target5323753604%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9195391954%_ '0))))
                (if (gx#stx-null? _%tl5323953607%_)
                    (_%__match9209192092%_
                     _%e5319553674%_
                     _%hd5319653678%_
                     _%tl5319753681%_
                     _%e5319853684%_
                     _%hd5319953688%_
                     _%tl5320053691%_
                     _%e5320153694%_
                     _%hd5320253698%_
                     _%tl5320353701%_
                     _%e5320453704%_
                     _%hd5320553708%_
                     _%tl5320653711%_
                     _%e5323453594%_
                     _%hd5323553598%_
                     _%tl5323653601%_
                     _%__splice9195391954%_
                     _%target5323753604%_
                     _%tl5323953607%_)
                    (let () (declare (not safe)) (_%g5316253305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5316253305%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5316253305%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g97751_|
                                         _%hd5320553708%_)
                                        (if (gx#stx-pair? _%tl5320653711%_)
                                            (let ((_%e5326153474%_
                                                   (gx#syntax-e
                                                    _%tl5320653711%_)))
                                              (let ((_%tl5326353481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5326153474%_)))
                                                    (_%hd5326253478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5326153474%_))))
                                                (if (gx#stx-null?
                                                     _%tl5326353481%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5320053691%_)
                                                        (let ((_%__splice9195791958%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5320053691%_
                                                                '0)))
                                                          (let ((_%tl5326653487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9195791958%_ '1)))
                        (_%target5326453484%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9195791958%_ '0))))
                    (if (gx#stx-null? _%tl5326653487%_)
                        (_%__match9213592136%_
                         _%e5319553674%_
                         _%hd5319653678%_
                         _%tl5319753681%_
                         _%e5319853684%_
                         _%hd5319953688%_
                         _%tl5320053691%_
                         _%e5320153694%_
                         _%hd5320253698%_
                         _%tl5320353701%_
                         _%e5320453704%_
                         _%hd5320553708%_
                         _%tl5320653711%_
                         _%e5326153474%_
                         _%hd5326253478%_
                         _%tl5326353481%_
                         _%__splice9195791958%_
                         _%target5326453484%_
                         _%tl5326653487%_)
                        (let () (declare (not safe)) (_%g5316253305%_)))))
                (let () (declare (not safe)) (_%g5316253305%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5316253305%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316253305%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g97752_|
                                             _%hd5320553708%_)
                                            (if (gx#stx-pair? _%tl5320653711%_)
                                                (let ((_%e5328853352%_
                                                       (gx#syntax-e
                                                        _%tl5320653711%_)))
                                                  (let ((_%tl5329053359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5328853352%_)))
                                                        (_%hd5328953356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5328853352%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5329053359%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5320053691%_)
                                                            (let ((_%__splice9196191962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5320053691%_
                            '0)))
                      (let ((_%tl5329353365%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9196191962%_ '1)))
                            (_%target5329153362%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9196191962%_ '0))))
                        (if (gx#stx-null? _%tl5329353365%_)
                            (_%__match9217992180%_
                             _%e5319553674%_
                             _%hd5319653678%_
                             _%tl5319753681%_
                             _%e5319853684%_
                             _%hd5319953688%_
                             _%tl5320053691%_
                             _%e5320153694%_
                             _%hd5320253698%_
                             _%tl5320353701%_
                             _%e5320453704%_
                             _%hd5320553708%_
                             _%tl5320653711%_
                             _%e5328853352%_
                             _%hd5328953356%_
                             _%tl5329053359%_
                             _%__splice9196191962%_
                             _%target5329153362%_
                             _%tl5329353365%_)
                            (let () (declare (not safe)) (_%g5316253305%_)))))
                    (let () (declare (not safe)) (_%g5316253305%_)))
                (let () (declare (not safe)) (_%g5316253305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5316253305%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316253305%_))))))
                            (let () (declare (not safe)) (_%g5316253305%_)))))
                     (_%__match9200392004%_
                      (lambda (_%e5316853794%_
                               _%hd5316953798%_
                               _%tl5317053801%_
                               _%e5317153804%_
                               _%hd5317253808%_
                               _%tl5317353811%_
                               _%e5317453814%_
                               _%hd5317553818%_
                               _%tl5317653821%_
                               _%e5317753824%_
                               _%hd5317853828%_
                               _%tl5317953831%_
                               _%e5318053834%_
                               _%hd5318153838%_
                               _%tl5318253841%_
                               _%__splice9194591946%_
                               _%target5318353844%_
                               _%tl5318553847%_)
                        (letrec ((_%loop5318653850%_
                                  (lambda (_%hd5318453854%_ _%body5319053857%_)
                                    (if (gx#stx-pair? _%hd5318453854%_)
                                        (let ((_%e5318753859%_
                                               (gx#syntax-e _%hd5318453854%_)))
                                          (let ((_%lp-tl5318953866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5318753859%_)))
                                                (_%lp-hd5318853863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5318753859%_))))
                                            (_%loop5318653850%_
                                             _%lp-tl5318953866%_
                                             (cons _%lp-hd5318853863%_
                                                   _%body5319053857%_))))
                                        (let ((_%body5319153869%_
                                               (reverse _%body5319053857%_)))
                                          (let ((_%g5316453872%_
                                                 _%body5319153869%_)
                                                (_%g5316553874%_
                                                 _%hd5318153838%_)
                                                (_%g5316653875%_
                                                 _%hd5317853828%_)
                                                (_%g5316753876%_
                                                 _%hd5317553818%_))
                                            (if (let ((__tmp97753
                                                       (gx#syntax-local-value
                                                        _%g5316553874%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp97753))
                                                (_%__kont9194391944%_
                                                 _%g5316453872%_
                                                 _%g5316553874%_
                                                 _%g5316653875%_
                                                 _%g5316753876%_)
                                                (_%__match9202792028%_
                                                 _%e5316853794%_
                                                 _%hd5316953798%_
                                                 _%tl5317053801%_
                                                 _%e5317153804%_
                                                 _%hd5317253808%_
                                                 _%tl5317353811%_
                                                 _%e5317453814%_
                                                 _%hd5317553818%_
                                                 _%tl5317653821%_
                                                 _%e5317753824%_
                                                 _%hd5317853828%_
                                                 _%tl5317953831%_))))))))
                          (_%loop5318653850%_ _%target5318353844%_ '())))))
                (if (gx#stx-pair? _%__stx9194091941%_)
                    (let ((_%e5316853794%_ (gx#syntax-e _%__stx9194091941%_)))
                      (let ((_%tl5317053801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5316853794%_)))
                            (_%hd5316953798%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5316853794%_))))
                        (if (gx#stx-pair? _%tl5317053801%_)
                            (let ((_%e5317153804%_
                                   (gx#syntax-e _%tl5317053801%_)))
                              (let ((_%tl5317353811%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5317153804%_)))
                                    (_%hd5317253808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5317153804%_))))
                                (if (gx#stx-pair? _%hd5317253808%_)
                                    (let ((_%e5317453814%_
                                           (gx#syntax-e _%hd5317253808%_)))
                                      (let ((_%tl5317653821%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5317453814%_)))
                                            (_%hd5317553818%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5317453814%_))))
                                        (if (gx#stx-pair? _%tl5317653821%_)
                                            (let ((_%e5317753824%_
                                                   (gx#syntax-e
                                                    _%tl5317653821%_)))
                                              (let ((_%tl5317953831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5317753824%_)))
                                                    (_%hd5317853828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5317753824%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5317953831%_)
                                                    (let ((_%e5318053834%_
                                                           (gx#syntax-e
                                                            _%tl5317953831%_)))
                                                      (let ((_%tl5318253841%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5318053834%_)))
                    (_%hd5318153838%_
                     (let () (declare (not safe)) (##car _%e5318053834%_))))
                (if (gx#stx-null? _%tl5318253841%_)
                    (if (gx#stx-pair/null? _%tl5317353811%_)
                        (let ((_%__splice9194591946%_
                               (gx#syntax-split-splice->vector
                                _%tl5317353811%_
                                '0)))
                          (let ((_%tl5318553847%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9194591946%_ '1)))
                                (_%target5318353844%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9194591946%_ '0))))
                            (if (gx#stx-null? _%tl5318553847%_)
                                (_%__match9200392004%_
                                 _%e5316853794%_
                                 _%hd5316953798%_
                                 _%tl5317053801%_
                                 _%e5317153804%_
                                 _%hd5317253808%_
                                 _%tl5317353811%_
                                 _%e5317453814%_
                                 _%hd5317553818%_
                                 _%tl5317653821%_
                                 _%e5317753824%_
                                 _%hd5317853828%_
                                 _%tl5317953831%_
                                 _%e5318053834%_
                                 _%hd5318153838%_
                                 _%tl5318253841%_
                                 _%__splice9194591946%_
                                 _%target5318353844%_
                                 _%tl5318553847%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5316253305%_)))))
                        (let () (declare (not safe)) (_%g5316253305%_)))
                    (let () (declare (not safe)) (_%g5316253305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5316253305%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5316253305%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5316253305%_)))))
                            (let () (declare (not safe)) (_%g5316253305%_)))))
                    (let () (declare (not safe)) (_%g5316253305%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54268%_)
        (letrec ((_%expand-body54271%_
                  (lambda (_%var55262%_
                           _%Interface55264%_
                           _%body55265%_
                           _%checked?55266%_)
                    (let* ((_%type55268%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54268%_
                               _%Interface55264%_)))
                           (_%g5527155315%_
                            (lambda (_%g5527255311%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5527255311%_)))
                           (_%g5527055471%_
                            (lambda (_%g5527255319%_)
                              (if (gx#stx-pair? _%g5527255319%_)
                                  (let ((_%e5528055322%_
                                         (gx#syntax-e _%g5527255319%_)))
                                    (let ((_%hd5528155326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5528055322%_)))
                                          (_%tl5528255329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5528055322%_))))
                                      (if (gx#stx-pair? _%tl5528255329%_)
                                          (let ((_%e5528355332%_
                                                 (gx#syntax-e
                                                  _%tl5528255329%_)))
                                            (let ((_%hd5528455336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5528355332%_)))
                                                  (_%tl5528555339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5528355332%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5528555339%_)
                                                  (let ((_%e5528655342%_
                                                         (gx#syntax-e
                                                          _%tl5528555339%_)))
                                                    (let ((_%hd5528755346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5528655342%_)))
                                                          (_%tl5528855349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5528655342%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5528855349%_)
                                                          (let ((_%e5528955352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5528855349%_)))
                    (let ((_%hd5529055356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5528955352%_)))
                          (_%tl5529155359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5528955352%_))))
                      (if (gx#stx-pair? _%tl5529155359%_)
                          (let ((_%e5529255362%_
                                 (gx#syntax-e _%tl5529155359%_)))
                            (let ((_%hd5529355366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5529255362%_)))
                                  (_%tl5529455369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5529255362%_))))
                              (if (gx#stx-pair? _%tl5529455369%_)
                                  (let ((_%e5529555372%_
                                         (gx#syntax-e _%tl5529455369%_)))
                                    (let ((_%hd5529655376%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5529555372%_)))
                                          (_%tl5529755379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5529555372%_))))
                                      (if (gx#stx-pair? _%tl5529755379%_)
                                          (let ((_%e5529855382%_
                                                 (gx#syntax-e
                                                  _%tl5529755379%_)))
                                            (let ((_%hd5529955386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5529855382%_)))
                                                  (_%tl5530055389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5529855382%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5529955386%_)
                                                  (let ((_g97754_
                                                         (gx#syntax-split-splice
                                                          _%hd5529955386%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g97755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g97754_)
                           (##values-length _g97754_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97755_ 2)))
                    (error "Context expects 2 values" _g97755_)))
              (let ((_%target5530155392%_
                     (let () (declare (not safe)) (##values-ref _g97754_ 0)))
                    (_%tl5530355395%_
                     (let () (declare (not safe)) (##values-ref _g97754_ 1))))
                (if (gx#stx-null? _%tl5530355395%_)
                    (letrec ((_%loop5530455398%_
                              (lambda (_%hd5530255402%_ _%body5530855405%_)
                                (if (gx#stx-pair? _%hd5530255402%_)
                                    (let ((_%e5530555407%_
                                           (gx#syntax-e _%hd5530255402%_)))
                                      (let ((_%lp-hd5530655411%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5530555407%_)))
                                            (_%lp-tl5530755414%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5530555407%_))))
                                        (_%loop5530455398%_
                                         _%lp-tl5530755414%_
                                         (cons _%lp-hd5530655411%_
                                               _%body5530855405%_))))
                                    (let ((_%body5530955417%_
                                           (reverse _%body5530855405%_)))
                                      (if (gx#stx-null? _%tl5530055389%_)
                                          ((lambda (_%g5527355420%_
                                                    _%g5527455422%_
                                                    _%g5527555423%_
                                                    _%g5527655424%_
                                                    _%g5527755425%_
                                                    _%g5527855426%_
                                                    _%g5527955427%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5527655424%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5527755425%_ '()))
                                         (cons _%g5527655424%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5527955427%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5527655424%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5527855426%_ '()))
                               (cons _%g5527555423%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5527455422%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5546255465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5546355468%_)
                      (cons _%g5546255465%_ _%g5546355468%_))
                    '()
                    _%g5527355420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5530955417%_
                                           _%hd5529655376%_
                                           _%hd5529355366%_
                                           _%hd5529055356%_
                                           _%hd5528755346%_
                                           _%hd5528455336%_
                                           _%hd5528155326%_)
                                          (_%g5527155315%_
                                           _%g5527255319%_)))))))
                      (_%loop5530455398%_ _%target5530155392%_ '()))
                    (_%g5527155315%_ _%g5527255319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5527155315%_
                                                   _%g5527255319%_))))
                                          (_%g5527155315%_ _%g5527255319%_))))
                                  (_%g5527155315%_ _%g5527255319%_))))
                          (_%g5527155315%_ _%g5527255319%_))))
                  (_%g5527155315%_ _%g5527255319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5527155315%_
                                                   _%g5527255319%_))))
                                          (_%g5527155315%_ _%g5527255319%_))))
                                  (_%g5527155315%_ _%g5527255319%_)))))
                      (_%g5527055471%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55268%_
                             (let ((__obj97555 _%type55268%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj97555
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj97555
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj97555
                                    'type-descriptor)))
                             _%var55262%_
                             _%checked?55266%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55265%_)))))
                 (_%expand54273%_
                  (lambda (_%var55061%_
                           _%Interface55063%_
                           _%body55064%_
                           _%checked?55065%_
                           _%checked-methods?55066%_
                           _%maybe?55067%_)
                    (let* ((_%g5506955077%_
                            (lambda (_%g5507055073%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5507055073%_)))
                           (_%g5506855254%_
                            (lambda (_%g5507055081%_)
                              ((lambda (_%g5507155084%_)
                                 (if _%checked?55065%_
                                     (if _%maybe?55067%_
                                         (let* ((_%g5509655111%_
                                                 (lambda (_%g5509755107%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5509755107%_)))
                                                (_%g5509555157%_
                                                 (lambda (_%g5509755115%_)
                                                   (if (gx#stx-pair?
                                                        _%g5509755115%_)
                                                       (let ((_%e5510055118%_
                                                              (gx#syntax-e
                                                               _%g5509755115%_)))
                                                         (let ((_%hd5510155122%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5510055118%_)))
                       (_%tl5510255125%_
                        (let () (declare (not safe)) (##cdr _%e5510055118%_))))
                   (if (gx#stx-pair? _%tl5510255125%_)
                       (let ((_%e5510355128%_ (gx#syntax-e _%tl5510255125%_)))
                         (let ((_%hd5510455132%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5510355128%_)))
                               (_%tl5510555135%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5510355128%_))))
                           (if (gx#stx-null? _%tl5510555135%_)
                               ((lambda (_%g5509855138%_ _%g5509955140%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5509955140%_
                                                    (cons (cons _%g5509855138%_
                                                                (cons _%g5509955140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5509955140%_
                                                                (cons _%g5507155084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5509955140%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5510455132%_
                                _%hd5510155122%_)
                               (_%g5509655111%_ _%g5509755115%_))))
                       (_%g5509655111%_ _%g5509755115%_))))
               (_%g5509655111%_ _%g5509755115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5509555157%_
                                            (list _%var55061%_
                                                  _%Interface55063%_)))
                                         (let* ((_%g5516155176%_
                                                 (lambda (_%g5516255172%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5516255172%_)))
                                                (_%g5516055220%_
                                                 (lambda (_%g5516255180%_)
                                                   (if (gx#stx-pair?
                                                        _%g5516255180%_)
                                                       (let ((_%e5516555183%_
                                                              (gx#syntax-e
                                                               _%g5516255180%_)))
                                                         (let ((_%hd5516655187%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5516555183%_)))
                       (_%tl5516755190%_
                        (let () (declare (not safe)) (##cdr _%e5516555183%_))))
                   (if (gx#stx-pair? _%tl5516755190%_)
                       (let ((_%e5516855193%_ (gx#syntax-e _%tl5516755190%_)))
                         (let ((_%hd5516955197%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5516855193%_)))
                               (_%tl5517055200%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5516855193%_))))
                           (if (gx#stx-null? _%tl5517055200%_)
                               ((lambda (_%g5516355203%_ _%g5516455205%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5516455205%_
                                                    (cons (cons _%g5516355203%_
                                                                (cons _%g5516455205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5507155084%_ '()))))
                                _%hd5516955197%_
                                _%hd5516655187%_)
                               (_%g5516155176%_ _%g5516255180%_))))
                       (_%g5516155176%_ _%g5516255180%_))))
               (_%g5516155176%_ _%g5516255180%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5516055220%_
                                            (list _%var55061%_
                                                  _%Interface55063%_))))
                                     (if _%maybe?55067%_
                                         (let* ((_%g5522455232%_
                                                 (lambda (_%g5522555228%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5522555228%_)))
                                                (_%g5522355250%_
                                                 (lambda (_%g5522555236%_)
                                                   ((lambda (_%g5522655239%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5522655239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5507155084%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5522655239%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5522555236%_))))
                                           (_%g5522355250%_ _%var55061%_))
                                         _%g5507155084%_)))
                               _%g5507055081%_))))
                      (_%g5506855254%_
                       (_%expand-body54271%_
                        _%var55061%_
                        _%Interface55063%_
                        _%body55064%_
                        (let ((_%$e55258%_ _%checked?55065%_))
                          (if _%$e55258%_
                              _%$e55258%_
                              _%checked-methods?55066%_))))))))
          (let* ((_%__stx9218292183%_ _%stx54268%_)
                 (_%g5427954422%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9218292183%_))))
            (let ((_%__kont9218592186%_
                   (lambda (_%g5428154989%_
                            _%g5428254991%_
                            _%g5428354992%_
                            _%g5428454993%_)
                     (let* ((_%g5501855026%_
                             (lambda (_%g5501955022%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5501955022%_)))
                            (_%g5501755053%_
                             (lambda (_%g5501955030%_)
                               ((lambda (_%g5502055033%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5428454993%_
                                                    (cons _%g5428354992%_
                                                          (cons _%g5502055033%_
                                                                '())))
                                              (foldr (lambda (_%g5504455047%_
                                                              _%g5504555050%_)
                                                       (cons _%g5504455047%_
                                                             _%g5504555050%_))
                                                     '()
                                                     _%g5428154989%_))))
                                _%g5501955030%_))))
                       (_%g5501755053%_
                        (let ((__obj97556
                               (gx#syntax-local-value _%g5428254991%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj97556
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj97556
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj97556
                               'identifier)))))))
                  (_%__kont9218992190%_
                   (lambda (_%g5430954869%_ _%g5431054871%_ _%g5431154872%_)
                     (_%expand54273%_
                      _%g5431154872%_
                      _%g5431054871%_
                      (foldr (lambda (_%g5489554898%_ _%g5489654901%_)
                               (cons _%g5489554898%_ _%g5489654901%_))
                             '()
                             _%g5430954869%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9219392194%_
                   (lambda (_%g5433654749%_ _%g5433754751%_ _%g5433854752%_)
                     (_%expand54273%_
                      _%g5433854752%_
                      _%g5433754751%_
                      (foldr (lambda (_%g5477554778%_ _%g5477654781%_)
                               (cons _%g5477554778%_ _%g5477654781%_))
                             '()
                             _%g5433654749%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9219792198%_
                   (lambda (_%g5436354629%_ _%g5436454631%_ _%g5436554632%_)
                     (_%expand54273%_
                      _%g5436554632%_
                      _%g5436454631%_
                      (foldr (lambda (_%g5465554658%_ _%g5465654661%_)
                               (cons _%g5465554658%_ _%g5465654661%_))
                             '()
                             _%g5436354629%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9220192202%_
                   (lambda (_%g5439054507%_ _%g5439154509%_ _%g5439254510%_)
                     (_%expand54273%_
                      _%g5439254510%_
                      _%g5439154509%_
                      (foldr (lambda (_%g5453554538%_ _%g5453654541%_)
                               (cons _%g5453554538%_ _%g5453654541%_))
                             '()
                             _%g5439054507%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9242192422%_
                      (lambda (_%e5439354429%_
                               _%hd5439454433%_
                               _%tl5439554436%_
                               _%e5439654439%_
                               _%hd5439754443%_
                               _%tl5439854446%_
                               _%e5439954449%_
                               _%hd5440054453%_
                               _%tl5440154456%_
                               _%e5440254459%_
                               _%hd5440354463%_
                               _%tl5440454466%_
                               _%e5440554469%_
                               _%hd5440654473%_
                               _%tl5440754476%_
                               _%__splice9220392204%_
                               _%target5440854479%_
                               _%tl5441054482%_)
                        (letrec ((_%loop5441154485%_
                                  (lambda (_%hd5440954489%_ _%body5441554492%_)
                                    (if (gx#stx-pair? _%hd5440954489%_)
                                        (let ((_%e5441254494%_
                                               (gx#syntax-e _%hd5440954489%_)))
                                          (let ((_%lp-tl5441454501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5441254494%_)))
                                                (_%lp-hd5441354498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5441254494%_))))
                                            (_%loop5441154485%_
                                             _%lp-tl5441454501%_
                                             (cons _%lp-hd5441354498%_
                                                   _%body5441554492%_))))
                                        (let ((_%body5441654504%_
                                               (reverse _%body5441554492%_)))
                                          (let ((_%g5439054507%_
                                                 _%body5441654504%_)
                                                (_%g5439154509%_
                                                 _%hd5440654473%_)
                                                (_%g5439254510%_
                                                 _%hd5440054453%_))
                                            (if (and (gx#identifier?
                                                      _%g5439254510%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5439154509%_)))
                                                (_%__kont9220192202%_
                                                 _%g5439054507%_
                                                 _%g5439154509%_
                                                 _%g5439254510%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))))))))
                          (_%loop5441154485%_ _%target5440854479%_ '()))))
                     (_%__match9237792378%_
                      (lambda (_%e5436654551%_
                               _%hd5436754555%_
                               _%tl5436854558%_
                               _%e5436954561%_
                               _%hd5437054565%_
                               _%tl5437154568%_
                               _%e5437254571%_
                               _%hd5437354575%_
                               _%tl5437454578%_
                               _%e5437554581%_
                               _%hd5437654585%_
                               _%tl5437754588%_
                               _%e5437854591%_
                               _%hd5437954595%_
                               _%tl5438054598%_
                               _%__splice9219992200%_
                               _%target5438154601%_
                               _%tl5438354604%_)
                        (letrec ((_%loop5438454607%_
                                  (lambda (_%hd5438254611%_ _%body5438854614%_)
                                    (if (gx#stx-pair? _%hd5438254611%_)
                                        (let ((_%e5438554616%_
                                               (gx#syntax-e _%hd5438254611%_)))
                                          (let ((_%lp-tl5438754623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5438554616%_)))
                                                (_%lp-hd5438654620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5438554616%_))))
                                            (_%loop5438454607%_
                                             _%lp-tl5438754623%_
                                             (cons _%lp-hd5438654620%_
                                                   _%body5438854614%_))))
                                        (let ((_%body5438954626%_
                                               (reverse _%body5438854614%_)))
                                          (let ((_%g5436354629%_
                                                 _%body5438954626%_)
                                                (_%g5436454631%_
                                                 _%hd5437954595%_)
                                                (_%g5436554632%_
                                                 _%hd5437354575%_))
                                            (if (and (gx#identifier?
                                                      _%g5436554632%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5436454631%_)))
                                                (_%__kont9219792198%_
                                                 _%g5436354629%_
                                                 _%g5436454631%_
                                                 _%g5436554632%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))))))))
                          (_%loop5438454607%_ _%target5438154601%_ '()))))
                     (_%__match9233392334%_
                      (lambda (_%e5433954671%_
                               _%hd5434054675%_
                               _%tl5434154678%_
                               _%e5434254681%_
                               _%hd5434354685%_
                               _%tl5434454688%_
                               _%e5434554691%_
                               _%hd5434654695%_
                               _%tl5434754698%_
                               _%e5434854701%_
                               _%hd5434954705%_
                               _%tl5435054708%_
                               _%e5435154711%_
                               _%hd5435254715%_
                               _%tl5435354718%_
                               _%__splice9219592196%_
                               _%target5435454721%_
                               _%tl5435654724%_)
                        (letrec ((_%loop5435754727%_
                                  (lambda (_%hd5435554731%_ _%body5436154734%_)
                                    (if (gx#stx-pair? _%hd5435554731%_)
                                        (let ((_%e5435854736%_
                                               (gx#syntax-e _%hd5435554731%_)))
                                          (let ((_%lp-tl5436054743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5435854736%_)))
                                                (_%lp-hd5435954740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5435854736%_))))
                                            (_%loop5435754727%_
                                             _%lp-tl5436054743%_
                                             (cons _%lp-hd5435954740%_
                                                   _%body5436154734%_))))
                                        (let ((_%body5436254746%_
                                               (reverse _%body5436154734%_)))
                                          (let ((_%g5433654749%_
                                                 _%body5436254746%_)
                                                (_%g5433754751%_
                                                 _%hd5435254715%_)
                                                (_%g5433854752%_
                                                 _%hd5434654695%_))
                                            (if (and (gx#identifier?
                                                      _%g5433854752%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5433754751%_)))
                                                (_%__kont9219392194%_
                                                 _%g5433654749%_
                                                 _%g5433754751%_
                                                 _%g5433854752%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))))))))
                          (_%loop5435754727%_ _%target5435454721%_ '()))))
                     (_%__match9228992290%_
                      (lambda (_%e5431254791%_
                               _%hd5431354795%_
                               _%tl5431454798%_
                               _%e5431554801%_
                               _%hd5431654805%_
                               _%tl5431754808%_
                               _%e5431854811%_
                               _%hd5431954815%_
                               _%tl5432054818%_
                               _%e5432154821%_
                               _%hd5432254825%_
                               _%tl5432354828%_
                               _%e5432454831%_
                               _%hd5432554835%_
                               _%tl5432654838%_
                               _%__splice9219192192%_
                               _%target5432754841%_
                               _%tl5432954844%_)
                        (letrec ((_%loop5433054847%_
                                  (lambda (_%hd5432854851%_ _%body5433454854%_)
                                    (if (gx#stx-pair? _%hd5432854851%_)
                                        (let ((_%e5433154856%_
                                               (gx#syntax-e _%hd5432854851%_)))
                                          (let ((_%lp-tl5433354863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5433154856%_)))
                                                (_%lp-hd5433254860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5433154856%_))))
                                            (_%loop5433054847%_
                                             _%lp-tl5433354863%_
                                             (cons _%lp-hd5433254860%_
                                                   _%body5433454854%_))))
                                        (let ((_%body5433554866%_
                                               (reverse _%body5433454854%_)))
                                          (let ((_%g5430954869%_
                                                 _%body5433554866%_)
                                                (_%g5431054871%_
                                                 _%hd5432554835%_)
                                                (_%g5431154872%_
                                                 _%hd5431954815%_))
                                            (if (and (gx#identifier?
                                                      _%g5431154872%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5431054871%_)))
                                                (_%__kont9218992190%_
                                                 _%g5430954869%_
                                                 _%g5431054871%_
                                                 _%g5431154872%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))))))))
                          (_%loop5433054847%_ _%target5432754841%_ '()))))
                     (_%__match9226992270%_
                      (lambda (_%e5431254791%_
                               _%hd5431354795%_
                               _%tl5431454798%_
                               _%e5431554801%_
                               _%hd5431654805%_
                               _%tl5431754808%_
                               _%e5431854811%_
                               _%hd5431954815%_
                               _%tl5432054818%_
                               _%e5432154821%_
                               _%hd5432254825%_
                               _%tl5432354828%_)
                        (if (gx#identifier? _%hd5432254825%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g97756_|
                                 _%hd5432254825%_)
                                (if (gx#stx-pair? _%tl5432354828%_)
                                    (let ((_%e5432454831%_
                                           (gx#syntax-e _%tl5432354828%_)))
                                      (let ((_%tl5432654838%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5432454831%_)))
                                            (_%hd5432554835%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5432454831%_))))
                                        (if (gx#stx-null? _%tl5432654838%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5431754808%_)
                                                (let ((_%__splice9219192192%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5431754808%_
                                                        '0)))
                                                  (let ((_%tl5432954844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9219192192%_
                                                            '1)))
                                                        (_%target5432754841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9219192192%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5432954844%_)
                                                        (_%__match9228992290%_
                                                         _%e5431254791%_
                                                         _%hd5431354795%_
                                                         _%tl5431454798%_
                                                         _%e5431554801%_
                                                         _%hd5431654805%_
                                                         _%tl5431754808%_
                                                         _%e5431854811%_
                                                         _%hd5431954815%_
                                                         _%tl5432054818%_
                                                         _%e5432154821%_
                                                         _%hd5432254825%_
                                                         _%tl5432354828%_
                                                         _%e5432454831%_
                                                         _%hd5432554835%_
                                                         _%tl5432654838%_
                                                         _%__splice9219192192%_
                                                         _%target5432754841%_
                                                         _%tl5432954844%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5427954422%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5427954422%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5427954422%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g97757_|
                                     _%hd5432254825%_)
                                    (if (gx#stx-pair? _%tl5432354828%_)
                                        (let ((_%e5435154711%_
                                               (gx#syntax-e _%tl5432354828%_)))
                                          (let ((_%tl5435354718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5435154711%_)))
                                                (_%hd5435254715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5435154711%_))))
                                            (if (gx#stx-null? _%tl5435354718%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5431754808%_)
                                                    (let ((_%__splice9219592196%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5431754808%_
                                                            '0)))
                                                      (let ((_%tl5435654724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9219592196%_ '1)))
                    (_%target5435454721%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9219592196%_ '0))))
                (if (gx#stx-null? _%tl5435654724%_)
                    (_%__match9233392334%_
                     _%e5431254791%_
                     _%hd5431354795%_
                     _%tl5431454798%_
                     _%e5431554801%_
                     _%hd5431654805%_
                     _%tl5431754808%_
                     _%e5431854811%_
                     _%hd5431954815%_
                     _%tl5432054818%_
                     _%e5432154821%_
                     _%hd5432254825%_
                     _%tl5432354828%_
                     _%e5435154711%_
                     _%hd5435254715%_
                     _%tl5435354718%_
                     _%__splice9219592196%_
                     _%target5435454721%_
                     _%tl5435654724%_)
                    (let () (declare (not safe)) (_%g5427954422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5427954422%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5427954422%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g97758_|
                                         _%hd5432254825%_)
                                        (if (gx#stx-pair? _%tl5432354828%_)
                                            (let ((_%e5437854591%_
                                                   (gx#syntax-e
                                                    _%tl5432354828%_)))
                                              (let ((_%tl5438054598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5437854591%_)))
                                                    (_%hd5437954595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5437854591%_))))
                                                (if (gx#stx-null?
                                                     _%tl5438054598%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5431754808%_)
                                                        (let ((_%__splice9219992200%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5431754808%_
                                                                '0)))
                                                          (let ((_%tl5438354604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9219992200%_ '1)))
                        (_%target5438154601%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9219992200%_ '0))))
                    (if (gx#stx-null? _%tl5438354604%_)
                        (_%__match9237792378%_
                         _%e5431254791%_
                         _%hd5431354795%_
                         _%tl5431454798%_
                         _%e5431554801%_
                         _%hd5431654805%_
                         _%tl5431754808%_
                         _%e5431854811%_
                         _%hd5431954815%_
                         _%tl5432054818%_
                         _%e5432154821%_
                         _%hd5432254825%_
                         _%tl5432354828%_
                         _%e5437854591%_
                         _%hd5437954595%_
                         _%tl5438054598%_
                         _%__splice9219992200%_
                         _%target5438154601%_
                         _%tl5438354604%_)
                        (let () (declare (not safe)) (_%g5427954422%_)))))
                (let () (declare (not safe)) (_%g5427954422%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5427954422%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5427954422%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g97759_|
                                             _%hd5432254825%_)
                                            (if (gx#stx-pair? _%tl5432354828%_)
                                                (let ((_%e5440554469%_
                                                       (gx#syntax-e
                                                        _%tl5432354828%_)))
                                                  (let ((_%tl5440754476%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5440554469%_)))
                                                        (_%hd5440654473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5440554469%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5440754476%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5431754808%_)
                                                            (let ((_%__splice9220392204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5431754808%_
                            '0)))
                      (let ((_%tl5441054482%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9220392204%_ '1)))
                            (_%target5440854479%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9220392204%_ '0))))
                        (if (gx#stx-null? _%tl5441054482%_)
                            (_%__match9242192422%_
                             _%e5431254791%_
                             _%hd5431354795%_
                             _%tl5431454798%_
                             _%e5431554801%_
                             _%hd5431654805%_
                             _%tl5431754808%_
                             _%e5431854811%_
                             _%hd5431954815%_
                             _%tl5432054818%_
                             _%e5432154821%_
                             _%hd5432254825%_
                             _%tl5432354828%_
                             _%e5440554469%_
                             _%hd5440654473%_
                             _%tl5440754476%_
                             _%__splice9220392204%_
                             _%target5440854479%_
                             _%tl5441054482%_)
                            (let () (declare (not safe)) (_%g5427954422%_)))))
                    (let () (declare (not safe)) (_%g5427954422%_)))
                (let () (declare (not safe)) (_%g5427954422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5427954422%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5427954422%_))))))
                            (let () (declare (not safe)) (_%g5427954422%_)))))
                     (_%__match9224592246%_
                      (lambda (_%e5428554911%_
                               _%hd5428654915%_
                               _%tl5428754918%_
                               _%e5428854921%_
                               _%hd5428954925%_
                               _%tl5429054928%_
                               _%e5429154931%_
                               _%hd5429254935%_
                               _%tl5429354938%_
                               _%e5429454941%_
                               _%hd5429554945%_
                               _%tl5429654948%_
                               _%e5429754951%_
                               _%hd5429854955%_
                               _%tl5429954958%_
                               _%__splice9218792188%_
                               _%target5430054961%_
                               _%tl5430254964%_)
                        (letrec ((_%loop5430354967%_
                                  (lambda (_%hd5430154971%_ _%body5430754974%_)
                                    (if (gx#stx-pair? _%hd5430154971%_)
                                        (let ((_%e5430454976%_
                                               (gx#syntax-e _%hd5430154971%_)))
                                          (let ((_%lp-tl5430654983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5430454976%_)))
                                                (_%lp-hd5430554980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5430454976%_))))
                                            (_%loop5430354967%_
                                             _%lp-tl5430654983%_
                                             (cons _%lp-hd5430554980%_
                                                   _%body5430754974%_))))
                                        (let ((_%body5430854986%_
                                               (reverse _%body5430754974%_)))
                                          (let ((_%g5428154989%_
                                                 _%body5430854986%_)
                                                (_%g5428254991%_
                                                 _%hd5429854955%_)
                                                (_%g5428354992%_
                                                 _%hd5429554945%_)
                                                (_%g5428454993%_
                                                 _%hd5429254935%_))
                                            (if (let ((__tmp97760
                                                       (gx#syntax-local-value
                                                        _%g5428254991%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp97760))
                                                (_%__kont9218592186%_
                                                 _%g5428154989%_
                                                 _%g5428254991%_
                                                 _%g5428354992%_
                                                 _%g5428454993%_)
                                                (_%__match9226992270%_
                                                 _%e5428554911%_
                                                 _%hd5428654915%_
                                                 _%tl5428754918%_
                                                 _%e5428854921%_
                                                 _%hd5428954925%_
                                                 _%tl5429054928%_
                                                 _%e5429154931%_
                                                 _%hd5429254935%_
                                                 _%tl5429354938%_
                                                 _%e5429454941%_
                                                 _%hd5429554945%_
                                                 _%tl5429654948%_))))))))
                          (_%loop5430354967%_ _%target5430054961%_ '())))))
                (if (gx#stx-pair? _%__stx9218292183%_)
                    (let ((_%e5428554911%_ (gx#syntax-e _%__stx9218292183%_)))
                      (let ((_%tl5428754918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5428554911%_)))
                            (_%hd5428654915%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5428554911%_))))
                        (if (gx#stx-pair? _%tl5428754918%_)
                            (let ((_%e5428854921%_
                                   (gx#syntax-e _%tl5428754918%_)))
                              (let ((_%tl5429054928%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5428854921%_)))
                                    (_%hd5428954925%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5428854921%_))))
                                (if (gx#stx-pair? _%hd5428954925%_)
                                    (let ((_%e5429154931%_
                                           (gx#syntax-e _%hd5428954925%_)))
                                      (let ((_%tl5429354938%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5429154931%_)))
                                            (_%hd5429254935%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5429154931%_))))
                                        (if (gx#stx-pair? _%tl5429354938%_)
                                            (let ((_%e5429454941%_
                                                   (gx#syntax-e
                                                    _%tl5429354938%_)))
                                              (let ((_%tl5429654948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5429454941%_)))
                                                    (_%hd5429554945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5429454941%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5429654948%_)
                                                    (let ((_%e5429754951%_
                                                           (gx#syntax-e
                                                            _%tl5429654948%_)))
                                                      (let ((_%tl5429954958%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5429754951%_)))
                    (_%hd5429854955%_
                     (let () (declare (not safe)) (##car _%e5429754951%_))))
                (if (gx#stx-null? _%tl5429954958%_)
                    (if (gx#stx-pair/null? _%tl5429054928%_)
                        (let ((_%__splice9218792188%_
                               (gx#syntax-split-splice->vector
                                _%tl5429054928%_
                                '0)))
                          (let ((_%tl5430254964%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9218792188%_ '1)))
                                (_%target5430054961%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9218792188%_ '0))))
                            (if (gx#stx-null? _%tl5430254964%_)
                                (_%__match9224592246%_
                                 _%e5428554911%_
                                 _%hd5428654915%_
                                 _%tl5428754918%_
                                 _%e5428854921%_
                                 _%hd5428954925%_
                                 _%tl5429054928%_
                                 _%e5429154931%_
                                 _%hd5429254935%_
                                 _%tl5429354938%_
                                 _%e5429454941%_
                                 _%hd5429554945%_
                                 _%tl5429654948%_
                                 _%e5429754951%_
                                 _%hd5429854955%_
                                 _%tl5429954958%_
                                 _%__splice9218792188%_
                                 _%target5430054961%_
                                 _%tl5430254964%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5427954422%_)))))
                        (let () (declare (not safe)) (_%g5427954422%_)))
                    (let () (declare (not safe)) (_%g5427954422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5427954422%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5427954422%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5427954422%_)))))
                            (let () (declare (not safe)) (_%g5427954422%_)))))
                    (let () (declare (not safe)) (_%g5427954422%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55481%_)
        (let* ((_%__stx9242492425%_ _%stx55481%_)
               (_%g5548655546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9242492425%_))))
          (let ((_%__kont9242792428%_
                 (lambda (_%g5548856102%_ _%g5548956104%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5548956104%_ '()))
                               (foldr (lambda (_%g5612056123%_ _%g5612156126%_)
                                        (cons _%g5612056123%_ _%g5612156126%_))
                                      '()
                                      _%g5548856102%_)))))
                (_%__kont9243192432%_
                 (lambda (_%g5550555690%_ _%g5550655692%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5550655692%_)
                       (let* ((_%g5571255719%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55481%_
                                _%g5550655692%_))
                              (_%E5571455725%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5571255719%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5571556023%_
                               (lambda (_%parts55729%_ _%var55731%_)
                                 (let ((_%$e55733%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55731%_))))
                                   (if _%$e55733%_
                                       ((lambda (_%te55737%_)
                                          (let _%loop55740%_ ((_%parts55743%_
                                                               _%parts55729%_)
                                                              (_%type55745%_
                                                               (##direct-structure-ref
                                                                _%te55737%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55746%_
                                                               _%var55731%_)
                                                              (_%checked-method?55747%_
                                                               (##direct-structure-ref
                                                                _%te55737%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55748%_
                                                               '#f))
                                            (let* ((_%parts5574955757%_
                                                    _%parts55743%_)
                                                   (_%else5575155818%_
                                                    (lambda ()
                                                      (let* ((_%g5576955777%_
                                                              (lambda (_%g5577055773%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5577055773%_)))
                     (_%g5576855814%_
                      (lambda (_%g5577055781%_)
                        ((lambda (_%g5577155784%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5577155784%_
                                       (foldr (lambda (_%g5580555808%_
                                                       _%g5580655811%_)
                                                (cons _%g5580555808%_
                                                      _%g5580655811%_))
                                              '()
                                              _%g5550555690%_))))
                         _%g5577055781%_))))
                (_%g5576855814%_ _%object55746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5575355997%_
                                                    (lambda (_%rest55822%_
                                                             _%part55824%_)
                                                      (if (and (not _%nil-check?55748%_)
                                                               (let ((__tmp97761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55824%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp97761)))
                  (let ((_%str55828%_ (symbol->string _%part55824%_)))
                    (_%loop55740%_
                     (cons (let ((__tmp97762
                                  (substring
                                   _%str55828%_
                                   '1
                                   (string-length _%str55828%_))))
                             (declare (not safe))
                             (##string->symbol __tmp97762))
                           _%rest55822%_)
                     _%type55745%_
                     _%object55746%_
                     _%checked-method?55747%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55745%_))
                      (let* ((_%g5583355848%_
                              (lambda (_%g5583455844%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5583455844%_)))
                             (_%g5583255917%_
                              (lambda (_%g5583455852%_)
                                (if (gx#stx-pair? _%g5583455852%_)
                                    (let ((_%e5583755855%_
                                           (gx#syntax-e _%g5583455852%_)))
                                      (let ((_%hd5583855859%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5583755855%_)))
                                            (_%tl5583955862%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5583755855%_))))
                                        (if (gx#stx-pair? _%tl5583955862%_)
                                            (let ((_%e5584055865%_
                                                   (gx#syntax-e
                                                    _%tl5583955862%_)))
                                              (let ((_%hd5584155869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5584055865%_)))
                                                    (_%tl5584255872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5584055865%_))))
                                                (if (gx#stx-null?
                                                     _%tl5584255872%_)
                                                    ((lambda (_%g5583555875%_
                                                              _%g5583655877%_)
                                                       (if (null? _%rest55822%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5583555875%_
                                     (cons _%g5583655877%_ '()))
                               (foldr (lambda (_%g5589655899%_ _%g5589755902%_)
                                        (cons _%g5589655899%_ _%g5589755902%_))
                                      '()
                                      _%g5550555690%_)))
                   (let ((_%$e55905%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55745%_
                           _%part55824%_)))
                     (if _%$e55905%_
                         ((lambda (_%slot-type55909%_)
                            (let ((_%slot-type55912%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55481%_
                                      _%slot-type55909%_))))
                              (_%loop55740%_
                               _%rest55822%_
                               _%slot-type55912%_
                               (cons _%g5583555875%_
                                     (cons _%g5583655877%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55745%_
                                _%part55824%_)
                               '#f)))
                          _%$e55905%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55481%_
                          _%g5550655692%_
                          _%part55824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5584155869%_
                                                     _%hd5583855859%_)
                                                    (_%g5583355848%_
                                                     _%g5583455852%_))))
                                            (_%g5583355848%_
                                             _%g5583455852%_))))
                                    (_%g5583355848%_ _%g5583455852%_)))))
                        (_%g5583255917%_
                         (list (if _%nil-check?55748%_
                                   (cons 'check-nil!
                                         (cons _%object55746%_ '()))
                                   _%object55746%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55481%_
                                _%type55745%_
                                _%part55824%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55745%_))
                          (if (null? _%rest55822%_)
                              (let* ((_%g5592355938%_
                                      (lambda (_%g5592455934%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5592455934%_)))
                                     (_%g5592255991%_
                                      (lambda (_%g5592455942%_)
                                        (if (gx#stx-pair? _%g5592455942%_)
                                            (let ((_%e5592755945%_
                                                   (gx#syntax-e
                                                    _%g5592455942%_)))
                                              (let ((_%hd5592855949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5592755945%_)))
                                                    (_%tl5592955952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5592755945%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5592955952%_)
                                                    (let ((_%e5593055955%_
                                                           (gx#syntax-e
                                                            _%tl5592955952%_)))
                                                      (let ((_%hd5593155959%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5593055955%_)))
                    (_%tl5593255962%_
                     (let () (declare (not safe)) (##cdr _%e5593055955%_))))
                (if (gx#stx-null? _%tl5593255962%_)
                    ((lambda (_%g5592555965%_ _%g5592655967%_)
                       (cons _%g5592555965%_
                             (cons _%g5592655967%_
                                   (foldr (lambda (_%g5598255985%_
                                                   _%g5598355988%_)
                                            (cons _%g5598255985%_
                                                  _%g5598355988%_))
                                          '()
                                          _%g5550555690%_))))
                     _%hd5593155959%_
                     _%hd5592855949%_)
                    (_%g5592355938%_ _%g5592455942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5592355938%_
                                                     _%g5592455942%_))))
                                            (_%g5592355938%_
                                             _%g5592455942%_)))))
                                (_%g5592255991%_
                                 (list (if _%nil-check?55748%_
                                           (cons 'check-nil!
                                                 (cons _%object55746%_ '()))
                                           _%object55746%_)
                                       (gx#stx-identifier
                                        _%g5550655692%_
                                        (if _%checked-method?55747%_ '"" '"&")
                                        (let ((__obj97557 _%type55745%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj97557
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj97557
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj97557
                                               'name)))
                                        '"-"
                                        _%part55824%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55481%_
                               _%g5550655692%_
                               _%part55824%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55481%_
                           _%type55745%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5574955757%_)
                                                  (let ((_%hd5575456001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5574955757%_)))
                                                        (_%tl5575556004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5574955757%_))))
                                                    (let* ((_%part56007%_
                                                            _%hd5575456001%_)
                                                           (_%rest56010%_
                                                            _%tl5575556004%_))
                                                      (_%K5575355997%_
                                                       _%rest56010%_
                                                       _%part56007%_)))
                                                  (_%else5575155818%_)))))
                                        _%$e55733%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5550655692%_
                                                   (foldr (lambda (_%g5601456017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5601556020%_)
                    (cons _%g5601456017%_ _%g5601556020%_))
                  '()
                  _%g5550555690%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5571255719%_)
                             (let ((_%hd5571656027%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5571255719%_)))
                                   (_%tl5571756030%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5571255719%_))))
                               (let* ((_%var56033%_ _%hd5571656027%_)
                                      (_%parts56036%_ _%tl5571756030%_))
                                 (_%K5571556023%_
                                  _%parts56036%_
                                  _%var56033%_)))
                             (_%E5571455725%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5550655692%_
                                   (foldr (lambda (_%g5603856041%_
                                                   _%g5603956044%_)
                                            (cons _%g5603856041%_
                                                  _%g5603956044%_))
                                          '()
                                          _%g5550555690%_))))))
                (_%__kont9243592436%_
                 (lambda (_%g5552855591%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5560655609%_ _%g5560755612%_)
                                  (cons _%g5560655609%_ _%g5560755612%_))
                                '()
                                _%g5552855591%_)))))
            (let* ((_%__match9251192512%_
                    (lambda (_%e5552955553%_
                             _%hd5553055557%_
                             _%tl5553155560%_
                             _%__splice9243792438%_
                             _%target5553255563%_
                             _%tl5553455566%_)
                      (letrec ((_%loop5553555569%_
                                (lambda (_%hd5553355573%_ _%arg5553955576%_)
                                  (if (gx#stx-pair? _%hd5553355573%_)
                                      (let ((_%e5553655578%_
                                             (gx#syntax-e _%hd5553355573%_)))
                                        (let ((_%lp-tl5553855585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5553655578%_)))
                                              (_%lp-hd5553755582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5553655578%_))))
                                          (_%loop5553555569%_
                                           _%lp-tl5553855585%_
                                           (cons _%lp-hd5553755582%_
                                                 _%arg5553955576%_))))
                                      (let ((_%arg5554055588%_
                                             (reverse _%arg5553955576%_)))
                                        (_%__kont9243592436%_
                                         _%arg5554055588%_))))))
                        (_%loop5553555569%_ _%target5553255563%_ '()))))
                   (_%__match9249792498%_
                    (lambda (_%e5550755622%_
                             _%hd5550855626%_
                             _%tl5550955629%_
                             _%e5551055632%_
                             _%hd5551155636%_
                             _%tl5551255639%_
                             _%e5551355642%_
                             _%hd5551455646%_
                             _%tl5551555649%_
                             _%e5551655652%_
                             _%hd5551755656%_
                             _%tl5551855659%_
                             _%__splice9243392434%_
                             _%target5551955662%_
                             _%tl5552155665%_)
                      (letrec ((_%loop5552255668%_
                                (lambda (_%hd5552055672%_ _%rand5552655675%_)
                                  (if (gx#stx-pair? _%hd5552055672%_)
                                      (let ((_%e5552355677%_
                                             (gx#syntax-e _%hd5552055672%_)))
                                        (let ((_%lp-tl5552555684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5552355677%_)))
                                              (_%lp-hd5552455681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5552355677%_))))
                                          (_%loop5552255668%_
                                           _%lp-tl5552555684%_
                                           (cons _%lp-hd5552455681%_
                                                 _%rand5552655675%_))))
                                      (let ((_%rand5552755687%_
                                             (reverse _%rand5552655675%_)))
                                        (_%__kont9243192432%_
                                         _%rand5552755687%_
                                         _%hd5551755656%_))))))
                        (_%loop5552255668%_ _%target5551955662%_ '()))))
                   (_%__match9247192472%_
                    (lambda (_%e5550755622%_
                             _%hd5550855626%_
                             _%tl5550955629%_
                             _%e5551055632%_
                             _%hd5551155636%_
                             _%tl5551255639%_)
                      (if (gx#stx-pair? _%hd5551155636%_)
                          (let ((_%e5551355642%_
                                 (gx#syntax-e _%hd5551155636%_)))
                            (let ((_%tl5551555649%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5551355642%_)))
                                  (_%hd5551455646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5551355642%_))))
                              (if (gx#identifier? _%hd5551455646%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97763_|
                                       _%hd5551455646%_)
                                      (if (gx#stx-pair? _%tl5551555649%_)
                                          (let ((_%e5551655652%_
                                                 (gx#syntax-e
                                                  _%tl5551555649%_)))
                                            (let ((_%tl5551855659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5551655652%_)))
                                                  (_%hd5551755656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5551655652%_))))
                                              (if (gx#stx-null?
                                                   _%tl5551855659%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5551255639%_)
                                                      (let ((_%__splice9243392434%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5551255639%_
                                                              '0)))
                                                        (let ((_%tl5552155665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9243392434%_ '1)))
                      (_%target5551955662%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9243392434%_ '0))))
                  (if (gx#stx-null? _%tl5552155665%_)
                      (_%__match9249792498%_
                       _%e5550755622%_
                       _%hd5550855626%_
                       _%tl5550955629%_
                       _%e5551055632%_
                       _%hd5551155636%_
                       _%tl5551255639%_
                       _%e5551355642%_
                       _%hd5551455646%_
                       _%tl5551555649%_
                       _%e5551655652%_
                       _%hd5551755656%_
                       _%tl5551855659%_
                       _%__splice9243392434%_
                       _%target5551955662%_
                       _%tl5552155665%_)
                      (if (gx#stx-pair/null? _%tl5550955629%_)
                          (let ((_%__splice9243792438%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5550955629%_
                                  '0)))
                            (let ((_%tl5553455566%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9243792438%_ '1)))
                                  (_%target5553255563%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9243792438%_
                                      '0))))
                              (if (gx#stx-null? _%tl5553455566%_)
                                  (_%__match9251192512%_
                                   _%e5550755622%_
                                   _%hd5550855626%_
                                   _%tl5550955629%_
                                   _%__splice9243792438%_
                                   _%target5553255563%_
                                   _%tl5553455566%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5548655546%_)))))
                          (let () (declare (not safe)) (_%g5548655546%_))))))
              (if (gx#stx-pair/null? _%tl5550955629%_)
                  (let ((_%__splice9243792438%_
                         (gx#syntax-split-splice->vector _%tl5550955629%_ '0)))
                    (let ((_%tl5553455566%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9243792438%_ '1)))
                          (_%target5553255563%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9243792438%_ '0))))
                      (if (gx#stx-null? _%tl5553455566%_)
                          (_%__match9251192512%_
                           _%e5550755622%_
                           _%hd5550855626%_
                           _%tl5550955629%_
                           _%__splice9243792438%_
                           _%target5553255563%_
                           _%tl5553455566%_)
                          (let () (declare (not safe)) (_%g5548655546%_)))))
                  (let () (declare (not safe)) (_%g5548655546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5550955629%_)
                                                      (let ((_%__splice9243792438%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5550955629%_
                                                              '0)))
                                                        (let ((_%tl5553455566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9243792438%_ '1)))
                      (_%target5553255563%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9243792438%_ '0))))
                  (if (gx#stx-null? _%tl5553455566%_)
                      (_%__match9251192512%_
                       _%e5550755622%_
                       _%hd5550855626%_
                       _%tl5550955629%_
                       _%__splice9243792438%_
                       _%target5553255563%_
                       _%tl5553455566%_)
                      (let () (declare (not safe)) (_%g5548655546%_)))))
              (let () (declare (not safe)) (_%g5548655546%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5550955629%_)
                                              (let ((_%__splice9243792438%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5550955629%_
                                                      '0)))
                                                (let ((_%tl5553455566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9243792438%_
                                                          '1)))
                                                      (_%target5553255563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9243792438%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5553455566%_)
                                                      (_%__match9251192512%_
                                                       _%e5550755622%_
                                                       _%hd5550855626%_
                                                       _%tl5550955629%_
                                                       _%__splice9243792438%_
                                                       _%target5553255563%_
                                                       _%tl5553455566%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5548655546%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5548655546%_))))
                                      (if (gx#stx-pair/null? _%tl5550955629%_)
                                          (let ((_%__splice9243792438%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5550955629%_
                                                  '0)))
                                            (let ((_%tl5553455566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9243792438%_
                                                      '1)))
                                                  (_%target5553255563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9243792438%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5553455566%_)
                                                  (_%__match9251192512%_
                                                   _%e5550755622%_
                                                   _%hd5550855626%_
                                                   _%tl5550955629%_
                                                   _%__splice9243792438%_
                                                   _%target5553255563%_
                                                   _%tl5553455566%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5548655546%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5548655546%_))))
                                  (if (gx#stx-pair/null? _%tl5550955629%_)
                                      (let ((_%__splice9243792438%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5550955629%_
                                              '0)))
                                        (let ((_%tl5553455566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9243792438%_
                                                  '1)))
                                              (_%target5553255563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9243792438%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5553455566%_)
                                              (_%__match9251192512%_
                                               _%e5550755622%_
                                               _%hd5550855626%_
                                               _%tl5550955629%_
                                               _%__splice9243792438%_
                                               _%target5553255563%_
                                               _%tl5553455566%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5548655546%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5548655546%_))))))
                          (if (gx#stx-pair/null? _%tl5550955629%_)
                              (let ((_%__splice9243792438%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5550955629%_
                                      '0)))
                                (let ((_%tl5553455566%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9243792438%_
                                          '1)))
                                      (_%target5553255563%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9243792438%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5553455566%_)
                                      (_%__match9251192512%_
                                       _%e5550755622%_
                                       _%hd5550855626%_
                                       _%tl5550955629%_
                                       _%__splice9243792438%_
                                       _%target5553255563%_
                                       _%tl5553455566%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5548655546%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5548655546%_))))))
                   (_%__match9245992460%_
                    (lambda (_%e5549056054%_
                             _%hd5549156058%_
                             _%tl5549256061%_
                             _%e5549356064%_
                             _%hd5549456068%_
                             _%tl5549556071%_
                             _%__splice9242992430%_
                             _%target5549656074%_
                             _%tl5549856077%_)
                      (letrec ((_%loop5549956080%_
                                (lambda (_%hd5549756084%_ _%rand5550356087%_)
                                  (if (gx#stx-pair? _%hd5549756084%_)
                                      (let ((_%e5550056089%_
                                             (gx#syntax-e _%hd5549756084%_)))
                                        (let ((_%lp-tl5550256096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5550056089%_)))
                                              (_%lp-hd5550156093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5550056089%_))))
                                          (_%loop5549956080%_
                                           _%lp-tl5550256096%_
                                           (cons _%lp-hd5550156093%_
                                                 _%rand5550356087%_))))
                                      (let ((_%rand5550456099%_
                                             (reverse _%rand5550356087%_)))
                                        (let ((_%g5548856102%_
                                               _%rand5550456099%_)
                                              (_%g5548956104%_
                                               _%hd5549456068%_))
                                          (if (gx#identifier? _%g5548956104%_)
                                              (_%__kont9242792428%_
                                               _%g5548856102%_
                                               _%g5548956104%_)
                                              (_%__match9247192472%_
                                               _%e5549056054%_
                                               _%hd5549156058%_
                                               _%tl5549256061%_
                                               _%e5549356064%_
                                               _%hd5549456068%_
                                               _%tl5549556071%_))))))))
                        (_%loop5549956080%_ _%target5549656074%_ '())))))
              (if (gx#stx-pair? _%__stx9242492425%_)
                  (let ((_%e5549056054%_ (gx#syntax-e _%__stx9242492425%_)))
                    (let ((_%tl5549256061%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5549056054%_)))
                          (_%hd5549156058%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5549056054%_))))
                      (if (gx#stx-pair? _%tl5549256061%_)
                          (let ((_%e5549356064%_
                                 (gx#syntax-e _%tl5549256061%_)))
                            (let ((_%tl5549556071%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5549356064%_)))
                                  (_%hd5549456068%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5549356064%_))))
                              (if (gx#stx-pair/null? _%tl5549556071%_)
                                  (let ((_%__splice9242992430%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5549556071%_
                                          '0)))
                                    (let ((_%tl5549856077%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9242992430%_
                                              '1)))
                                          (_%target5549656074%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9242992430%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5549856077%_)
                                          (_%__match9245992460%_
                                           _%e5549056054%_
                                           _%hd5549156058%_
                                           _%tl5549256061%_
                                           _%e5549356064%_
                                           _%hd5549456068%_
                                           _%tl5549556071%_
                                           _%__splice9242992430%_
                                           _%target5549656074%_
                                           _%tl5549856077%_)
                                          (if (gx#stx-pair? _%hd5549456068%_)
                                              (let ((_%e5551355642%_
                                                     (gx#syntax-e
                                                      _%hd5549456068%_)))
                                                (let ((_%tl5551555649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5551355642%_)))
                                                      (_%hd5551455646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5551355642%_))))
                                                  (if (gx#identifier?
                                                       _%hd5551455646%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97763_|
                                                           _%hd5551455646%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5551555649%_)
                                                              (let ((_%e5551655652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5551555649%_)))
                        (let ((_%tl5551855659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5551655652%_)))
                              (_%hd5551755656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5551655652%_))))
                          (if (gx#stx-pair/null? _%tl5549256061%_)
                              (let ((_%__splice9243792438%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5549256061%_
                                      '0)))
                                (let ((_%tl5553455566%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9243792438%_
                                          '1)))
                                      (_%target5553255563%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9243792438%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5553455566%_)
                                      (_%__match9251192512%_
                                       _%e5549056054%_
                                       _%hd5549156058%_
                                       _%tl5549256061%_
                                       _%__splice9243792438%_
                                       _%target5553255563%_
                                       _%tl5553455566%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5548655546%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5548655546%_)))))
                      (if (gx#stx-pair/null? _%tl5549256061%_)
                          (let ((_%__splice9243792438%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5549256061%_
                                  '0)))
                            (let ((_%tl5553455566%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9243792438%_ '1)))
                                  (_%target5553255563%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9243792438%_
                                      '0))))
                              (if (gx#stx-null? _%tl5553455566%_)
                                  (_%__match9251192512%_
                                   _%e5549056054%_
                                   _%hd5549156058%_
                                   _%tl5549256061%_
                                   _%__splice9243792438%_
                                   _%target5553255563%_
                                   _%tl5553455566%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5548655546%_)))))
                          (let () (declare (not safe)) (_%g5548655546%_))))
                  (if (gx#stx-pair/null? _%tl5549256061%_)
                      (let ((_%__splice9243792438%_
                             (gx#syntax-split-splice->vector
                              _%tl5549256061%_
                              '0)))
                        (let ((_%tl5553455566%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9243792438%_ '1)))
                              (_%target5553255563%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9243792438%_ '0))))
                          (if (gx#stx-null? _%tl5553455566%_)
                              (_%__match9251192512%_
                               _%e5549056054%_
                               _%hd5549156058%_
                               _%tl5549256061%_
                               _%__splice9243792438%_
                               _%target5553255563%_
                               _%tl5553455566%_)
                              (let ()
                                (declare (not safe))
                                (_%g5548655546%_)))))
                      (let () (declare (not safe)) (_%g5548655546%_))))
              (if (gx#stx-pair/null? _%tl5549256061%_)
                  (let ((_%__splice9243792438%_
                         (gx#syntax-split-splice->vector _%tl5549256061%_ '0)))
                    (let ((_%tl5553455566%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9243792438%_ '1)))
                          (_%target5553255563%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9243792438%_ '0))))
                      (if (gx#stx-null? _%tl5553455566%_)
                          (_%__match9251192512%_
                           _%e5549056054%_
                           _%hd5549156058%_
                           _%tl5549256061%_
                           _%__splice9243792438%_
                           _%target5553255563%_
                           _%tl5553455566%_)
                          (let () (declare (not safe)) (_%g5548655546%_)))))
                  (let () (declare (not safe)) (_%g5548655546%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5549256061%_)
                                                  (let ((_%__splice9243792438%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5549256061%_
                                                          '0)))
                                                    (let ((_%tl5553455566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9243792438%_
                                                              '1)))
                                                          (_%target5553255563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9243792438%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5553455566%_)
                                                          (_%__match9251192512%_
                                                           _%e5549056054%_
                                                           _%hd5549156058%_
                                                           _%tl5549256061%_
                                                           _%__splice9243792438%_
                                                           _%target5553255563%_
                                                           _%tl5553455566%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5548655546%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5548655546%_)))))))
                                  (if (gx#stx-pair? _%hd5549456068%_)
                                      (let ((_%e5551355642%_
                                             (gx#syntax-e _%hd5549456068%_)))
                                        (let ((_%tl5551555649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5551355642%_)))
                                              (_%hd5551455646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5551355642%_))))
                                          (if (gx#identifier? _%hd5551455646%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g97763_|
                                                   _%hd5551455646%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5551555649%_)
                                                      (let ((_%e5551655652%_
                                                             (gx#syntax-e
                                                              _%tl5551555649%_)))
                                                        (let ((_%tl5551855659%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5551655652%_)))
                      (_%hd5551755656%_
                       (let () (declare (not safe)) (##car _%e5551655652%_))))
                  (if (gx#stx-pair/null? _%tl5549256061%_)
                      (let ((_%__splice9243792438%_
                             (gx#syntax-split-splice->vector
                              _%tl5549256061%_
                              '0)))
                        (let ((_%tl5553455566%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9243792438%_ '1)))
                              (_%target5553255563%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9243792438%_ '0))))
                          (if (gx#stx-null? _%tl5553455566%_)
                              (_%__match9251192512%_
                               _%e5549056054%_
                               _%hd5549156058%_
                               _%tl5549256061%_
                               _%__splice9243792438%_
                               _%target5553255563%_
                               _%tl5553455566%_)
                              (let ()
                                (declare (not safe))
                                (_%g5548655546%_)))))
                      (let () (declare (not safe)) (_%g5548655546%_)))))
              (if (gx#stx-pair/null? _%tl5549256061%_)
                  (let ((_%__splice9243792438%_
                         (gx#syntax-split-splice->vector _%tl5549256061%_ '0)))
                    (let ((_%tl5553455566%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9243792438%_ '1)))
                          (_%target5553255563%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9243792438%_ '0))))
                      (if (gx#stx-null? _%tl5553455566%_)
                          (_%__match9251192512%_
                           _%e5549056054%_
                           _%hd5549156058%_
                           _%tl5549256061%_
                           _%__splice9243792438%_
                           _%target5553255563%_
                           _%tl5553455566%_)
                          (let () (declare (not safe)) (_%g5548655546%_)))))
                  (let () (declare (not safe)) (_%g5548655546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5549256061%_)
                                                      (let ((_%__splice9243792438%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5549256061%_
                                                              '0)))
                                                        (let ((_%tl5553455566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9243792438%_ '1)))
                      (_%target5553255563%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9243792438%_ '0))))
                  (if (gx#stx-null? _%tl5553455566%_)
                      (_%__match9251192512%_
                       _%e5549056054%_
                       _%hd5549156058%_
                       _%tl5549256061%_
                       _%__splice9243792438%_
                       _%target5553255563%_
                       _%tl5553455566%_)
                      (let () (declare (not safe)) (_%g5548655546%_)))))
              (let () (declare (not safe)) (_%g5548655546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5549256061%_)
                                                  (let ((_%__splice9243792438%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5549256061%_
                                                          '0)))
                                                    (let ((_%tl5553455566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9243792438%_
                                                              '1)))
                                                          (_%target5553255563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9243792438%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5553455566%_)
                                                          (_%__match9251192512%_
                                                           _%e5549056054%_
                                                           _%hd5549156058%_
                                                           _%tl5549256061%_
                                                           _%__splice9243792438%_
                                                           _%target5553255563%_
                                                           _%tl5553455566%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5548655546%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5548655546%_))))))
                                      (if (gx#stx-pair/null? _%tl5549256061%_)
                                          (let ((_%__splice9243792438%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5549256061%_
                                                  '0)))
                                            (let ((_%tl5553455566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9243792438%_
                                                      '1)))
                                                  (_%target5553255563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9243792438%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5553455566%_)
                                                  (_%__match9251192512%_
                                                   _%e5549056054%_
                                                   _%hd5549156058%_
                                                   _%tl5549256061%_
                                                   _%__splice9243792438%_
                                                   _%target5553255563%_
                                                   _%tl5553455566%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5548655546%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5548655546%_)))))))
                          (if (gx#stx-pair/null? _%tl5549256061%_)
                              (let ((_%__splice9243792438%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5549256061%_
                                      '0)))
                                (let ((_%tl5553455566%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9243792438%_
                                          '1)))
                                      (_%target5553255563%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9243792438%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5553455566%_)
                                      (_%__match9251192512%_
                                       _%e5549056054%_
                                       _%hd5549156058%_
                                       _%tl5549256061%_
                                       _%__splice9243792438%_
                                       _%target5553255563%_
                                       _%tl5553455566%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5548655546%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5548655546%_))))))
                  (let () (declare (not safe)) (_%g5548655546%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56136%_)
        (let* ((_%__stx9251492515%_ _%stx56136%_)
               (_%g5614056161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9251492515%_))))
          (let ((_%__kont9251792518%_
                 (lambda (_%g5614256229%_)
                   (let* ((_%g5624156248%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56136%_
                            _%g5614256229%_))
                          (_%E5624356254%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5624156248%_
                                    '([var . parts]))
                             (void)))
                          (_%K5624456470%_
                           (lambda (_%parts56258%_ _%var56260%_)
                             (let ((_%$e56262%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56260%_))))
                               (if _%$e56262%_
                                   ((lambda (_%te56266%_)
                                      (let _%loop56269%_ ((_%parts56272%_
                                                           _%parts56258%_)
                                                          (_%type56274%_
                                                           (##direct-structure-ref
                                                            _%te56266%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56275%_
                                                           _%var56260%_)
                                                          (_%nil-check?56276%_
                                                           '#f))
                                        (let* ((_%parts5627756285%_
                                                _%parts56272%_)
                                               (_%else5627956297%_
                                                (lambda () _%object56275%_))
                                               (_%K5628156452%_
                                                (lambda (_%rest56301%_
                                                         _%part56303%_)
                                                  (if (and (not _%nil-check?56276%_)
                                                           (let ((__tmp97764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56303%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp97764)))
              (let ((_%str56307%_ (symbol->string _%part56303%_)))
                (_%loop56269%_
                 (cons (let ((__tmp97765
                              (substring
                               _%str56307%_
                               '1
                               (string-length _%str56307%_))))
                         (declare (not safe))
                         (##string->symbol __tmp97765))
                       _%rest56301%_)
                 _%type56274%_
                 _%object56275%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56274%_))
                  (let* ((_%g5631256327%_
                          (lambda (_%g5631356323%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5631356323%_)))
                         (_%g5631156444%_
                          (lambda (_%g5631356331%_)
                            (if (gx#stx-pair? _%g5631356331%_)
                                (let ((_%e5631656334%_
                                       (gx#syntax-e _%g5631356331%_)))
                                  (let ((_%hd5631756338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5631656334%_)))
                                        (_%tl5631856341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5631656334%_))))
                                    (if (gx#stx-pair? _%tl5631856341%_)
                                        (let ((_%e5631956344%_
                                               (gx#syntax-e _%tl5631856341%_)))
                                          (let ((_%hd5632056348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5631956344%_)))
                                                (_%tl5632156351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5631956344%_))))
                                            (if (gx#stx-null? _%tl5632156351%_)
                                                ((lambda (_%g5631456354%_
                                                          _%g5631556356%_)
                                                   (if (null? _%rest56301%_)
                                                       (let ((_%$e56386%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56274%_
                                                               _%part56303%_)))
                                                         (if _%$e56386%_
                                                             ((lambda (_%slot-type56390%_)
                                                                (let* ((_%g5639356401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5639456397%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5639456397%_)))
                               (_%g5639256424%_
                                (lambda (_%g5639456405%_)
                                  ((lambda (_%g5639556408%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5639556408%_
                                                             '()))
                                                 (cons (cons _%g5631456354%_
                                                             (cons _%g5631556356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5639456405%_))))
                          (_%g5639256424%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56136%_
                              _%slot-type56390%_)))))
                      _%$e56386%_)
                     (if _%nil-check?56276%_
                         (cons _%g5631456354%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5631556356%_ '()))
                                     '()))
                         (cons _%g5631456354%_ (cons _%g5631556356%_ '())))))
               (let ((_%$e56432%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56274%_
                       _%part56303%_)))
                 (if _%$e56432%_
                     ((lambda (_%type56436%_)
                        (let ((_%type56439%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56136%_
                                  _%type56436%_))))
                          (if _%nil-check?56276%_
                              (_%loop56269%_
                               _%rest56301%_
                               _%type56439%_
                               (cons _%g5631456354%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5631556356%_ '()))
                                           '()))
                               '#f)
                              (_%loop56269%_
                               _%rest56301%_
                               _%type56439%_
                               (cons _%g5631456354%_
                                     (cons _%g5631556356%_ '()))
                               '#f))))
                      _%$e56432%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56136%_
                      _%g5614256229%_
                      _%part56303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5632056348%_
                                                 _%hd5631756338%_)
                                                (_%g5631256327%_
                                                 _%g5631356331%_))))
                                        (_%g5631256327%_ _%g5631356331%_))))
                                (_%g5631256327%_ _%g5631356331%_)))))
                    (_%g5631156444%_
                     (list (if _%nil-check?56276%_
                               (cons 'check-nil! (cons _%object56275%_ '()))
                               _%object56275%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56136%_
                            _%type56274%_
                            _%part56303%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56274%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56136%_
                       _%type56274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5627756285%_)
                                              (let ((_%hd5628256456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5627756285%_)))
                                                    (_%tl5628356459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5627756285%_))))
                                                (let* ((_%part56462%_
                                                        _%hd5628256456%_)
                                                       (_%rest56465%_
                                                        _%tl5628356459%_))
                                                  (_%K5628156452%_
                                                   _%rest56465%_
                                                   _%part56462%_)))
                                              (_%else5627956297%_)))))
                                    _%$e56262%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5614256229%_ '())))))))
                     (if (pair? _%g5624156248%_)
                         (let ((_%hd5624556474%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5624156248%_)))
                               (_%tl5624656477%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5624156248%_))))
                           (let* ((_%var56480%_ _%hd5624556474%_)
                                  (_%parts56483%_ _%tl5624656477%_))
                             (_%K5624456470%_ _%parts56483%_ _%var56480%_)))
                         (_%E5624356254%_)))))
                (_%__kont9251992520%_
                 (lambda (_%g5614956188%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5614956188%_ '())))))
            (let ((_%__match9253592536%_
                   (lambda (_%e5614356209%_
                            _%hd5614456213%_
                            _%tl5614556216%_
                            _%e5614656219%_
                            _%hd5614756223%_
                            _%tl5614856226%_)
                     (let ((_%g5614256229%_ _%hd5614756223%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5614256229%_)
                           (_%__kont9251792518%_ _%g5614256229%_)
                           (_%__kont9251992520%_ _%hd5614756223%_))))))
              (if (gx#stx-pair? _%__stx9251492515%_)
                  (let ((_%e5614356209%_ (gx#syntax-e _%__stx9251492515%_)))
                    (let ((_%tl5614556216%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5614356209%_)))
                          (_%hd5614456213%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5614356209%_))))
                      (if (gx#stx-pair? _%tl5614556216%_)
                          (let ((_%e5614656219%_
                                 (gx#syntax-e _%tl5614556216%_)))
                            (let ((_%tl5614856226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5614656219%_)))
                                  (_%hd5614756223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5614656219%_))))
                              (if (gx#stx-null? _%tl5614856226%_)
                                  (_%__match9253592536%_
                                   _%e5614356209%_
                                   _%hd5614456213%_
                                   _%tl5614556216%_
                                   _%e5614656219%_
                                   _%hd5614756223%_
                                   _%tl5614856226%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5614056161%_)))))
                          (let () (declare (not safe)) (_%g5614056161%_)))))
                  (let () (declare (not safe)) (_%g5614056161%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56490%_)
        (let* ((_%__stx9255292553%_ _%stx56490%_)
               (_%g5649456523%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9255292553%_))))
          (let ((_%__kont9255592556%_
                 (lambda (_%g5649656615%_ _%g5649756617%_)
                   (let* ((_%g5663156638%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56490%_
                            _%g5649756617%_))
                          (_%E5663356644%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5663156638%_
                                    '([var . parts]))
                             (void)))
                          (_%K5663456874%_
                           (lambda (_%parts56648%_ _%var56650%_)
                             (let ((_%$e56652%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56650%_))))
                               (if _%$e56652%_
                                   ((lambda (_%te56656%_)
                                      (let _%loop56659%_ ((_%parts56662%_
                                                           _%parts56648%_)
                                                          (_%type56664%_
                                                           (##direct-structure-ref
                                                            _%te56656%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56665%_
                                                           _%var56650%_)
                                                          (_%checked-mutator?56666%_
                                                           (##direct-structure-ref
                                                            _%te56656%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56667%_
                                                           '#f))
                                        (let* ((_%parts5666856675%_
                                                _%parts56662%_)
                                               (_%E5667056681%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5666856675%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5667156856%_
                                                (lambda (_%rest56685%_
                                                         _%part56687%_)
                                                  (if (and (not _%nil-check?56667%_)
                                                           (let ((__tmp97766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56687%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp97766)))
              (let ((_%str56691%_ (symbol->string _%part56687%_)))
                (_%loop56659%_
                 (cons (let ((__tmp97767
                              (substring
                               _%str56691%_
                               '1
                               (string-length _%str56691%_))))
                         (declare (not safe))
                         (##string->symbol __tmp97767))
                       _%rest56685%_)
                 _%type56664%_
                 _%object56665%_
                 _%checked-mutator?56666%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56664%_))
                  (if (null? _%rest56685%_)
                      (let* ((_%g5669856713%_
                              (lambda (_%g5669956709%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5669956709%_)))
                             (_%g5669756770%_
                              (lambda (_%g5669956717%_)
                                (if (gx#stx-pair? _%g5669956717%_)
                                    (let ((_%e5670256720%_
                                           (gx#syntax-e _%g5669956717%_)))
                                      (let ((_%hd5670356724%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5670256720%_)))
                                            (_%tl5670456727%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5670256720%_))))
                                        (if (gx#stx-pair? _%tl5670456727%_)
                                            (let ((_%e5670556730%_
                                                   (gx#syntax-e
                                                    _%tl5670456727%_)))
                                              (let ((_%hd5670656734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5670556730%_)))
                                                    (_%tl5670756737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5670556730%_))))
                                                (if (gx#stx-null?
                                                     _%tl5670756737%_)
                                                    ((lambda (_%g5670056740%_
                                                              _%g5670156742%_)
                                                       (if _%nil-check?56667%_
                                                           (cons _%g5670056740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5670156742%_ '()))
                               (cons _%g5649656615%_ '())))
                   (cons _%g5670056740%_
                         (cons _%g5670156742%_ (cons _%g5649656615%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5670656734%_
                                                     _%hd5670356724%_)
                                                    (_%g5669856713%_
                                                     _%g5669956717%_))))
                                            (_%g5669856713%_
                                             _%g5669956717%_))))
                                    (_%g5669856713%_ _%g5669956717%_)))))
                        (_%g5669756770%_
                         (list _%object56665%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56490%_
                                _%type56664%_
                                _%part56687%_
                                (if _%checked-mutator?56666%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56664%_
                                     _%part56687%_)
                                    '#f)))))
                      (let ((_%$e56774%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56664%_
                              _%part56687%_)))
                        (if _%$e56774%_
                            ((lambda (_%type56778%_)
                               (let* ((_%type56781%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56490%_
                                          _%type56778%_)))
                                      (_%g5678456799%_
                                       (lambda (_%g5678556795%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5678556795%_)))
                                      (_%g5678356846%_
                                       (lambda (_%g5678556803%_)
                                         (if (gx#stx-pair? _%g5678556803%_)
                                             (let ((_%e5678856806%_
                                                    (gx#syntax-e
                                                     _%g5678556803%_)))
                                               (let ((_%hd5678956810%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5678856806%_)))
                                                     (_%tl5679056813%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5678856806%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5679056813%_)
                                                     (let ((_%e5679156816%_
                                                            (gx#syntax-e
                                                             _%tl5679056813%_)))
                                                       (let ((_%hd5679256820%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5679156816%_)))
                     (_%tl5679356823%_
                      (let () (declare (not safe)) (##cdr _%e5679156816%_))))
                 (if (gx#stx-null? _%tl5679356823%_)
                     ((lambda (_%g5678656826%_ _%g5678756828%_)
                        (_%loop56659%_
                         _%rest56685%_
                         _%type56781%_
                         (cons _%g5678656826%_ (cons _%g5678756828%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56781%_
                          _%part56687%_)
                         '#f))
                      _%hd5679256820%_
                      _%hd5678956810%_)
                     (_%g5678456799%_ _%g5678556803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5678456799%_
                                                      _%g5678556803%_))))
                                             (_%g5678456799%_
                                              _%g5678556803%_)))))
                                 (_%g5678356846%_
                                  (list (if _%nil-check?56667%_
                                            (cons 'check-nil!
                                                  (cons _%object56665%_ '()))
                                            _%object56665%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56490%_
                                         _%type56781%_
                                         _%part56687%_)))))
                             _%$e56774%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56490%_
                             _%g5649756617%_
                             _%part56687%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56664%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56490%_
                       _%type56664%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5666856675%_)
                                              (let ((_%hd5667256860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5666856675%_)))
                                                    (_%tl5667356863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5666856675%_))))
                                                (let* ((_%part56866%_
                                                        _%hd5667256860%_)
                                                       (_%rest56869%_
                                                        _%tl5667356863%_))
                                                  (_%K5667156856%_
                                                   _%rest56869%_
                                                   _%part56866%_)))
                                              (_%E5667056681%_)))))
                                    _%$e56652%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56490%_)))))))
                     (if (pair? _%g5663156638%_)
                         (let ((_%hd5663556878%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5663156638%_)))
                               (_%tl5663656881%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5663156638%_))))
                           (let* ((_%var56884%_ _%hd5663556878%_)
                                  (_%parts56887%_ _%tl5663656881%_))
                             (_%K5663456874%_ _%parts56887%_ _%var56884%_)))
                         (_%E5663356644%_)))))
                (_%__kont9255792558%_
                 (lambda (_%g5650756560%_ _%g5650856562%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56490%_)))))
            (let ((_%__match9257992580%_
                   (lambda (_%e5649856585%_
                            _%hd5649956589%_
                            _%tl5650056592%_
                            _%e5650156595%_
                            _%hd5650256599%_
                            _%tl5650356602%_
                            _%e5650456605%_
                            _%hd5650556609%_
                            _%tl5650656612%_)
                     (let ((_%g5649656615%_ _%hd5650556609%_)
                           (_%g5649756617%_ _%hd5650256599%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5649756617%_)
                           (_%__kont9255592556%_
                            _%g5649656615%_
                            _%g5649756617%_)
                           (_%__kont9255792558%_
                            _%hd5650556609%_
                            _%hd5650256599%_))))))
              (if (gx#stx-pair? _%__stx9255292553%_)
                  (let ((_%e5649856585%_ (gx#syntax-e _%__stx9255292553%_)))
                    (let ((_%tl5650056592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5649856585%_)))
                          (_%hd5649956589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5649856585%_))))
                      (if (gx#stx-pair? _%tl5650056592%_)
                          (let ((_%e5650156595%_
                                 (gx#syntax-e _%tl5650056592%_)))
                            (let ((_%tl5650356602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5650156595%_)))
                                  (_%hd5650256599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5650156595%_))))
                              (if (gx#stx-pair? _%tl5650356602%_)
                                  (let ((_%e5650456605%_
                                         (gx#syntax-e _%tl5650356602%_)))
                                    (let ((_%tl5650656612%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5650456605%_)))
                                          (_%hd5650556609%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5650456605%_))))
                                      (if (gx#stx-null? _%tl5650656612%_)
                                          (_%__match9257992580%_
                                           _%e5649856585%_
                                           _%hd5649956589%_
                                           _%tl5650056592%_
                                           _%e5650156595%_
                                           _%hd5650256599%_
                                           _%tl5650356602%_
                                           _%e5650456605%_
                                           _%hd5650556609%_
                                           _%tl5650656612%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5649456523%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5649456523%_)))))
                          (let () (declare (not safe)) (_%g5649456523%_)))))
                  (let () (declare (not safe)) (_%g5649456523%_))))))))))
